; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/vc4/vc4_v3d.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_v3d.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.debugfs_reg32 = type { ptr, i32 }
%struct.vc4_dev = type { %struct.drm_device, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.vc4_bo_cache, i32, ptr, %struct.mutex, %struct.anon.87, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, ptr, %struct.list_head, ptr, i32, i32, i32, %struct.atomic_t, %struct.work_struct, i32, i8, %struct.mutex, %struct.anon.88, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.drm_private_obj, %struct.drm_private_obj, %struct.list_head, %struct.mutex, %struct.kref }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.86 = type { i32, ptr }
%struct.vc4_bo_cache = type { ptr, i32, %struct.list_head, %struct.work_struct, %struct.timer_list }
%struct.anon.87 = type { %struct.list_head, i32, i32, i32, i32, %struct.mutex }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.88 = type { %struct.timer_list, %struct.work_struct }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.vc4_v3d = type { ptr, ptr, ptr, ptr, %struct.debugfs_regset32 }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.vc4_bo = type { %struct.drm_gem_cma_object, i64, i64, i8, %struct.list_head, i32, %struct.list_head, ptr, i32, %struct.refcount_struct, i32, %struct.mutex }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }

@vc4_v3d_dt_match = dso_local constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-v3d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,cygnus-v3d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,vc4-v3d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vc4_v3d\00", [24 x i8] zeroinitializer }, align 32
@vc4_v3d_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vc4_v3d_runtime_suspend, ptr @vc4_v3d_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@vc4_v3d_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vc4_v3d_dev_probe, ptr @vc4_v3d_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vc4_v3d_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vc4_v3d_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@bin_bo_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 257, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"Failed to allocate memory for tile binning: %d. You may need to enable CMA or give it more memory.\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bin_bo_alloc\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/vc4/vc4_v3d.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bin_bo_alloc._entry_ptr = internal global ptr @bin_bo_alloc._entry, section ".printk_index", align 4
@bin_bo_alloc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@bin_bo_release.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@vc4_v3d_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @vc4_v3d_bind, ptr @vc4_v3d_unbind }, [24 x i8] zeroinitializer }, align 32
@v3d_regs = internal constant { [78 x %struct.debugfs_reg32], [144 x i8] } { [78 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.12, i32 0 }, %struct.debugfs_reg32 { ptr @.str.13, i32 4 }, %struct.debugfs_reg32 { ptr @.str.14, i32 8 }, %struct.debugfs_reg32 { ptr @.str.15, i32 16 }, %struct.debugfs_reg32 { ptr @.str.16, i32 32 }, %struct.debugfs_reg32 { ptr @.str.17, i32 36 }, %struct.debugfs_reg32 { ptr @.str.18, i32 48 }, %struct.debugfs_reg32 { ptr @.str.19, i32 52 }, %struct.debugfs_reg32 { ptr @.str.20, i32 56 }, %struct.debugfs_reg32 { ptr @.str.21, i32 256 }, %struct.debugfs_reg32 { ptr @.str.22, i32 260 }, %struct.debugfs_reg32 { ptr @.str.23, i32 264 }, %struct.debugfs_reg32 { ptr @.str.24, i32 268 }, %struct.debugfs_reg32 { ptr @.str.25, i32 272 }, %struct.debugfs_reg32 { ptr @.str.26, i32 276 }, %struct.debugfs_reg32 { ptr @.str.27, i32 280 }, %struct.debugfs_reg32 { ptr @.str.28, i32 284 }, %struct.debugfs_reg32 { ptr @.str.29, i32 288 }, %struct.debugfs_reg32 { ptr @.str.30, i32 292 }, %struct.debugfs_reg32 { ptr @.str.31, i32 296 }, %struct.debugfs_reg32 { ptr @.str.32, i32 300 }, %struct.debugfs_reg32 { ptr @.str.33, i32 304 }, %struct.debugfs_reg32 { ptr @.str.34, i32 308 }, %struct.debugfs_reg32 { ptr @.str.35, i32 312 }, %struct.debugfs_reg32 { ptr @.str.36, i32 768 }, %struct.debugfs_reg32 { ptr @.str.37, i32 772 }, %struct.debugfs_reg32 { ptr @.str.38, i32 776 }, %struct.debugfs_reg32 { ptr @.str.39, i32 780 }, %struct.debugfs_reg32 { ptr @.str.40, i32 784 }, %struct.debugfs_reg32 { ptr @.str.41, i32 1040 }, %struct.debugfs_reg32 { ptr @.str.42, i32 1044 }, %struct.debugfs_reg32 { ptr @.str.43, i32 1048 }, %struct.debugfs_reg32 { ptr @.str.44, i32 1072 }, %struct.debugfs_reg32 { ptr @.str.45, i32 1076 }, %struct.debugfs_reg32 { ptr @.str.46, i32 1080 }, %struct.debugfs_reg32 { ptr @.str.47, i32 1084 }, %struct.debugfs_reg32 { ptr @.str.48, i32 1280 }, %struct.debugfs_reg32 { ptr @.str.49, i32 1284 }, %struct.debugfs_reg32 { ptr @.str.50, i32 1648 }, %struct.debugfs_reg32 { ptr @.str.51, i32 1652 }, %struct.debugfs_reg32 { ptr @.str.52, i32 1664 }, %struct.debugfs_reg32 { ptr @.str.53, i32 1668 }, %struct.debugfs_reg32 { ptr @.str.54, i32 1672 }, %struct.debugfs_reg32 { ptr @.str.55, i32 1676 }, %struct.debugfs_reg32 { ptr @.str.56, i32 1680 }, %struct.debugfs_reg32 { ptr @.str.57, i32 1684 }, %struct.debugfs_reg32 { ptr @.str.58, i32 1688 }, %struct.debugfs_reg32 { ptr @.str.59, i32 1692 }, %struct.debugfs_reg32 { ptr @.str.60, i32 1696 }, %struct.debugfs_reg32 { ptr @.str.61, i32 1700 }, %struct.debugfs_reg32 { ptr @.str.62, i32 1704 }, %struct.debugfs_reg32 { ptr @.str.63, i32 1708 }, %struct.debugfs_reg32 { ptr @.str.64, i32 1712 }, %struct.debugfs_reg32 { ptr @.str.65, i32 1716 }, %struct.debugfs_reg32 { ptr @.str.66, i32 1720 }, %struct.debugfs_reg32 { ptr @.str.67, i32 1724 }, %struct.debugfs_reg32 { ptr @.str.68, i32 1728 }, %struct.debugfs_reg32 { ptr @.str.69, i32 1732 }, %struct.debugfs_reg32 { ptr @.str.70, i32 1736 }, %struct.debugfs_reg32 { ptr @.str.71, i32 1740 }, %struct.debugfs_reg32 { ptr @.str.72, i32 1744 }, %struct.debugfs_reg32 { ptr @.str.73, i32 1748 }, %struct.debugfs_reg32 { ptr @.str.74, i32 1752 }, %struct.debugfs_reg32 { ptr @.str.75, i32 1756 }, %struct.debugfs_reg32 { ptr @.str.76, i32 1760 }, %struct.debugfs_reg32 { ptr @.str.77, i32 1764 }, %struct.debugfs_reg32 { ptr @.str.78, i32 1768 }, %struct.debugfs_reg32 { ptr @.str.79, i32 1772 }, %struct.debugfs_reg32 { ptr @.str.80, i32 1776 }, %struct.debugfs_reg32 { ptr @.str.81, i32 1780 }, %struct.debugfs_reg32 { ptr @.str.82, i32 1784 }, %struct.debugfs_reg32 { ptr @.str.83, i32 1788 }, %struct.debugfs_reg32 { ptr @.str.84, i32 3840 }, %struct.debugfs_reg32 { ptr @.str.85, i32 3844 }, %struct.debugfs_reg32 { ptr @.str.86, i32 3848 }, %struct.debugfs_reg32 { ptr @.str.87, i32 3852 }, %struct.debugfs_reg32 { ptr @.str.88, i32 3856 }, %struct.debugfs_reg32 { ptr @.str.89, i32 3872 }], [144 x i8] zeroinitializer }, align 32
@vc4_v3d_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 426, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get V3D clock: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vc4_v3d_bind\00", [19 x i8] zeroinitializer }, align 32
@vc4_v3d_bind._entry_ptr = internal global ptr @vc4_v3d_bind._entry, section ".printk_index", align 4
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"V3D_IDENT0 read 0x%08x instead of 0x%08x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to install IRQ handler\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"v3d_ident\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"v3d_regs\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"V3D_IDENT0\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"V3D_IDENT1\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"V3D_IDENT2\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"V3D_SCRATCH\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"V3D_L2CACTL\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"V3D_SLCACTL\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"V3D_INTCTL\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"V3D_INTENA\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"V3D_INTDIS\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"V3D_CT0CS\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"V3D_CT1CS\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"V3D_CT0EA\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"V3D_CT1EA\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"V3D_CT0CA\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"V3D_CT1CA\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"V3D_CT00RA0\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"V3D_CT01RA0\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"V3D_CT0LC\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"V3D_CT1LC\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"V3D_CT0PC\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"V3D_CT1PC\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"V3D_PCS\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"V3D_BFC\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"V3D_RFC\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"V3D_BPCA\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"V3D_BPCS\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"V3D_BPOA\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"V3D_BPOS\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"V3D_BXCF\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"V3D_SQRSV0\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"V3D_SQRSV1\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"V3D_SQCNTL\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"V3D_SRQPC\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"V3D_SRQUA\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"V3D_SRQUL\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"V3D_SRQCS\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"V3D_VPACNTL\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"V3D_VPMBASE\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"V3D_PCTRC\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"V3D_PCTRE\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"V3D_PCTR(0)\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"V3D_PCTRS(0)\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"V3D_PCTR(1)\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"V3D_PCTRS(1)\00", [19 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"V3D_PCTR(2)\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"V3D_PCTRS(2)\00", [19 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"V3D_PCTR(3)\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"V3D_PCTRS(3)\00", [19 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"V3D_PCTR(4)\00", [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"V3D_PCTRS(4)\00", [19 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"V3D_PCTR(5)\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"V3D_PCTRS(5)\00", [19 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"V3D_PCTR(6)\00", [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"V3D_PCTRS(6)\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"V3D_PCTR(7)\00", [20 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"V3D_PCTRS(7)\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"V3D_PCTR(8)\00", [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"V3D_PCTRS(8)\00", [19 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"V3D_PCTR(9)\00", [20 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"V3D_PCTRS(9)\00", [19 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"V3D_PCTR(10)\00", [19 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"V3D_PCTRS(10)\00", [18 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"V3D_PCTR(11)\00", [19 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"V3D_PCTRS(11)\00", [18 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"V3D_PCTR(12)\00", [19 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"V3D_PCTRS(12)\00", [18 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"V3D_PCTR(13)\00", [19 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"V3D_PCTRS(13)\00", [18 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"V3D_PCTR(14)\00", [19 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"V3D_PCTRS(14)\00", [18 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"V3D_PCTR(15)\00", [19 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"V3D_PCTRS(15)\00", [18 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"V3D_DBGE\00", [23 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"V3D_FDBGO\00", [22 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"V3D_FDBGB\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"V3D_FDBGR\00", [22 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"V3D_FDBGS\00", [22 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"V3D_ERRSTAT\00", [20 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Revision:   %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Slices:     %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TMUs:       %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"QPUs:       %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Semaphores: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294966779, i64 4294967294]
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"vc4_v3d_dt_match\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 511, i32 27 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 522, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant [15 x i8] c"vc4_v3d_pm_ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 491, i32 32 }
@___asan_gen_.104 = private unnamed_addr constant [15 x i8] c"vc4_v3d_driver\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 518, i32 24 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 253, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant [12 x i8] c"vc4_v3d_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 495, i32 35 }
@___asan_gen_.128 = private unnamed_addr constant [9 x i8] c"v3d_regs\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 16, i32 35 }
@___asan_gen_.131 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 425, i32 5 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 432, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 456, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 465, i32 28 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 466, i32 32 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 17, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 18, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 19, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 20, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 21, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 22, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 23, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 24, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 25, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 26, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 27, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 28, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 29, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 30, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 31, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 32, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 33, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 34, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 35, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 36, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 37, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 38, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 39, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 40, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 41, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 42, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 43, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 44, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 45, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 46, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 47, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 48, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 49, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 50, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 51, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 52, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 53, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 54, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 55, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 56, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 57, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 58, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 59, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 60, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 61, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 62, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 63, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 64, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 65, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 66, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 67, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 68, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 69, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 70, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 71, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 72, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 73, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 74, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 75, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 76, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 77, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 78, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 79, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 80, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 81, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 82, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 83, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 84, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 85, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 86, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 87, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 88, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 89, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 90, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 91, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 92, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 93, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 94, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 110, i32 17 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 112, i32 17 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 113, i32 17 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 114, i32 17 }
@___asan_gen_.398 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.399 = private constant [33 x i8] c"../drivers/gpu/drm/vc4/vc4_v3d.c\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 115, i32 17 }
@llvm.compiler.used = appending global [104 x ptr] [ptr @bin_bo_alloc._entry, ptr @bin_bo_alloc._entry_ptr, ptr @vc4_v3d_bind._entry, ptr @vc4_v3d_bind._entry_ptr, ptr @vc4_v3d_dt_match, ptr @.str, ptr @vc4_v3d_pm_ops, ptr @vc4_v3d_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @vc4_v3d_ops, ptr @v3d_regs, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94], section "llvm.metadata"
@0 = internal global [102 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_v3d_dt_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_v3d_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_v3d_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_bo_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_v3d_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3d_regs to i32), i32 624, i32 768, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_v3d_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vc4_v3d_pm_get(ptr noundef %vc4) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %power_lock = getelementptr inbounds %struct.vc4_dev, ptr %vc4, i32 0, i32 32
  tail call void @mutex_lock_nested(ptr noundef %power_lock, i32 noundef 0) #6
  %power_refcount = getelementptr inbounds %struct.vc4_dev, ptr %vc4, i32 0, i32 30
  %0 = ptrtoint ptr %power_refcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power_refcount, align 8
  %inc = add i32 %1, 1
  store i32 %inc, ptr %power_refcount, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %entry
  %v3d = getelementptr inbounds %struct.vc4_dev, ptr %vc4, i32 0, i32 3
  %2 = ptrtoint ptr %v3d to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v3d, align 4
  %pdev = getelementptr inbounds %struct.vc4_v3d, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1 = icmp slt i32 %call.i, 0
  br i1 %cmp1, label %cleanup, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %power_refcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %power_refcount, align 8
  %dec = add i32 %7, -1
  store i32 %dec, ptr %power_refcount, align 8
  br label %return

return:                                           ; preds = %cleanup, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ %call.i, %cleanup ], [ 0, %if.then.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %power_lock) #6
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc4_v3d_pm_put(ptr noundef %vc4) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %power_lock = getelementptr inbounds %struct.vc4_dev, ptr %vc4, i32 0, i32 32
  tail call void @mutex_lock_nested(ptr noundef %power_lock, i32 noundef 0) #6
  %power_refcount = getelementptr inbounds %struct.vc4_dev, ptr %vc4, i32 0, i32 30
  %0 = ptrtoint ptr %power_refcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power_refcount, align 8
  %dec = add i32 %1, -1
  store i32 %dec, ptr %power_refcount, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %v3d = getelementptr inbounds %struct.vc4_dev, ptr %vc4, i32 0, i32 3
  %2 = ptrtoint ptr %v3d to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v3d, align 4
  %pdev = getelementptr inbounds %struct.vc4_v3d, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 12, i32 22
  %6 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %7 = ptrtoint ptr %v3d to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %v3d, align 4
  %pdev2 = getelementptr inbounds %struct.vc4_v3d, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev2, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  %call.i9 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev3, i32 noundef 13) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %power_lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vc4_v3d_get_bin_slot(ptr noundef %vc4) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %job_lock = getelementptr inbounds %struct.vc4_dev, ptr %vc4, i32 0, i32 19
  %bin_alloc_used = getelementptr inbounds %struct.vc4_dev, ptr %vc4, i32 0, i32 26
  %render_job_list.i = getelementptr inbounds %struct.vc4_dev, ptr %vc4, i32 0, i32 17
  %prev.i = getelementptr inbounds %struct.vc4_dev, ptr %vc4, i32 0, i32 17, i32 1
  br label %try_again

try_again:                                        ; preds = %if.then15.try_again_crit_edge, %entry
  %seqno.0 = phi i64 [ 0, %entry ], [ %seqno.1, %if.then15.try_again_crit_edge ]
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %job_lock) #6
  %0 = ptrtoint ptr %bin_alloc_used to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bin_alloc_used, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %iszero = icmp eq i32 %1, -1
  br i1 %iszero, label %if.end, label %if.then

if.then:                                          ; preds = %try_again
  call void @__sanitizer_cov_trace_pc() #8
  %neg = xor i32 %1, -1
  %2 = tail call i32 @llvm.cttz.i32(i32 %neg, i1 true), !range !212
  %shl = shl nuw i32 1, %2
  %or = or i32 %shl, %1
  %3 = ptrtoint ptr %bin_alloc_used to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or, ptr %bin_alloc_used, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %job_lock, i32 noundef %call2) #6
  br label %cleanup22

if.end:                                           ; preds = %try_again
  %4 = ptrtoint ptr %render_job_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %render_job_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %render_job_list.i
  br i1 %cmp.i.not.i, label %if.end.if.end12_crit_edge, label %vc4_last_render_job.exit

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

vc4_last_render_job.exit:                         ; preds = %if.end
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 -60
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %vc4_last_render_job.exit.if.end12_crit_edge, label %if.then10

vc4_last_render_job.exit.if.end12_crit_edge:      ; preds = %vc4_last_render_job.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then10:                                        ; preds = %vc4_last_render_job.exit
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr.i, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %vc4_last_render_job.exit.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %seqno.1 = phi i64 [ %9, %if.then10 ], [ %seqno.0, %vc4_last_render_job.exit.if.end12_crit_edge ], [ %seqno.0, %if.end.if.end12_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %job_lock, i32 noundef %call2) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %seqno.1)
  %tobool14.not = icmp eq i64 %seqno.1, 0
  br i1 %tobool14.not, label %if.end12.cleanup22_crit_edge, label %if.then15

if.end12.cleanup22_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup22

if.then15:                                        ; preds = %if.end12
  %call16 = tail call i32 @vc4_wait_for_seqno(ptr noundef %vc4, i64 noundef %seqno.1, i64 noundef -1, i1 noundef zeroext true) #6
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then15.try_again_crit_edge, label %if.then15.cleanup22_crit_edge

if.then15.cleanup22_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup22

if.then15.try_again_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %try_again

cleanup22:                                        ; preds = %if.then15.cleanup22_crit_edge, %if.end12.cleanup22_crit_edge, %if.then
  %retval.2 = phi i32 [ %2, %if.then ], [ -12, %if.end12.cleanup22_crit_edge ], [ %call16, %if.then15.cleanup22_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_wait_for_seqno(ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vc4_v3d_bin_bo_get(ptr noundef %vc4, ptr noundef %used) local_unnamed_addr #0 align 64 {
entry:
  %list.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bin_bo_lock = getelementptr inbounds %struct.vc4_dev, ptr %vc4, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %bin_bo_lock, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %used, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %used, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.complete_crit_edge

land.lhs.true.complete_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %complete

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %bin_bo = getelementptr inbounds %struct.vc4_dev, ptr %vc4, i32 0, i32 24
  %2 = ptrtoint ptr %bin_bo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bin_bo, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %bin_bo_kref = getelementptr inbounds %struct.vc4_dev, ptr %vc4, i32 0, i32 40
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bin_bo_kref, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %bin_bo_kref, i32 1, i32 3, i32 1) #6
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bin_bo_kref, ptr %bin_bo_kref, i32 1, ptr elementtype(i32) %bin_bo_kref) #6, !srcloc !214
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then3.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !215

if.then3.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then3
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end4_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !216

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end4_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then3.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then3.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %bin_bo_kref, i32 noundef %.sink.i.i.i.i) #6
  br label %if.end4

if.else:                                          ; preds = %if.end
  %v3d1.i = getelementptr inbounds %struct.vc4_dev, ptr %vc4, i32 0, i32 3
  %6 = ptrtoint ptr %v3d1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %v3d1.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list.i) #6
  %8 = getelementptr inbounds %struct.list_head, ptr %list.i, i32 0, i32 1
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.else.bin_bo_alloc.exit_crit_edge, label %if.end.i

if.else.bin_bo_alloc.exit_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %bin_bo_alloc.exit

if.end.i:                                         ; preds = %if.else
  %9 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list.i, ptr %list.i, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list.i, ptr %8, align 4
  %bin_alloc_size.i = getelementptr inbounds %struct.vc4_dev, ptr %vc4, i32 0, i32 25
  %bin_alloc_used.i = getelementptr inbounds %struct.vc4_dev, ptr %vc4, i32 0, i32 26
  %bin_alloc_overflow.i = getelementptr inbounds %struct.vc4_dev, ptr %vc4, i32 0, i32 27
  %bin_bo_kref.i = getelementptr inbounds %struct.vc4_dev, ptr %vc4, i32 0, i32 40
  %pdev.i = getelementptr inbounds %struct.vc4_v3d, ptr %7, i32 0, i32 1
  %call.i20 = call ptr @vc4_bo_create(ptr noundef %vc4, i32 noundef 16777216, i1 noundef zeroext true, i32 noundef 4) #6
  %cmp.i.i21 = icmp ugt ptr %call.i20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i21, label %if.end.i.if.then3.i_crit_edge, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  br label %if.end5.i

if.end.i.if.then3.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i

if.then3.i:                                       ; preds = %cleanup.i.if.then3.i_crit_edge, %if.end.i.if.then3.i_crit_edge
  %call.i.lcssa = phi ptr [ %call.i20, %if.end.i.if.then3.i_crit_edge ], [ %call.i, %cleanup.i.if.then3.i_crit_edge ]
  %11 = ptrtoint ptr %call.i.lcssa to i32
  %12 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.1, i32 noundef %11) #9
  br label %while.cond64.preheader.i

if.end5.i:                                        ; preds = %cleanup.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  %call.i22 = phi ptr [ %call.i, %cleanup.i.if.end5.i_crit_edge ], [ %call.i20, %if.end.i.if.end5.i_crit_edge ]
  %paddr.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call.i22, i32 0, i32 1
  %14 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %paddr.i, align 8
  %size11.i = getelementptr inbounds %struct.drm_gem_object, ptr %call.i22, i32 0, i32 5
  %16 = ptrtoint ptr %size11.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size11.i, align 8
  %add.i = add i32 %15, -1
  %sub.i = add i32 %add.i, %17
  %18 = xor i32 %sub.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %18)
  %cmp.i = icmp ult i32 %18, 268435456
  br i1 %cmp.i, label %if.then13.i, label %if.end63.i

if.then13.i:                                      ; preds = %if.end5.i
  %size11.i.le = getelementptr inbounds %struct.drm_gem_object, ptr %call.i22, i32 0, i32 5
  %19 = ptrtoint ptr %bin_bo to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i22, ptr %bin_bo, align 8
  %20 = ptrtoint ptr %bin_alloc_size.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 524288, ptr %bin_alloc_size.i, align 4
  %21 = ptrtoint ptr %bin_alloc_used.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %bin_alloc_used.i, align 8
  %22 = ptrtoint ptr %bin_alloc_overflow.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %bin_alloc_overflow.i, align 4
  %23 = ptrtoint ptr %size11.i.le to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size11.i.le, align 8
  %div101.mask.i = and i32 %24, -524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %div101.mask.i)
  %cmp18.not.i = icmp eq i32 %div101.mask.i, 16777216
  br i1 %cmp18.not.i, label %if.then13.i.if.end51.i_crit_edge, label %land.rhs.i

if.then13.i.if.end51.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51.i

land.rhs.i:                                       ; preds = %if.then13.i
  %.b102.i = load i1, ptr @bin_bo_alloc.__already_done, align 1
  br i1 %.b102.i, label %land.rhs.i.if.end51.i_crit_edge, label %if.then26.i, !prof !216

land.rhs.i.if.end51.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51.i

if.then26.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @bin_bo_alloc.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 286, i32 noundef 9, ptr noundef null) #6
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then26.i, %land.rhs.i.if.end51.i_crit_edge, %if.then13.i.if.end51.i_crit_edge
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %bin_bo_kref.i, i32 noundef 4) #6
  %25 = ptrtoint ptr %bin_bo_kref.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 1, ptr %bin_bo_kref.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !217
  call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %v3d1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %v3d1.i, align 4
  %regs.i = getelementptr inbounds %struct.vc4_v3d, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 67108864) #6, !srcloc !218
  br label %while.cond64.preheader.i

if.end63.i:                                       ; preds = %if.end5.i
  %unref_head.i = getelementptr inbounds %struct.vc4_bo, ptr %call.i22, i32 0, i32 4
  %30 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %list.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %unref_head.i, ptr noundef nonnull %list.i, ptr noundef %31) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end63.i.cleanup.i_crit_edge

if.end63.i.cleanup.i_crit_edge:                   ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end.i.i.i:                                     ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %unref_head.i, ptr %prev1.i.i.i, align 4
  %33 = ptrtoint ptr %unref_head.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %unref_head.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.vc4_bo, ptr %call.i22, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %list.i, ptr %prev3.i.i.i, align 4
  %35 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %unref_head.i, ptr %list.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i.i.i, %if.end63.i.cleanup.i_crit_edge
  %call.i = call ptr @vc4_bo_create(ptr noundef %vc4, i32 noundef 16777216, i1 noundef zeroext true, i32 noundef 4) #6
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %cleanup.i.if.then3.i_crit_edge, label %cleanup.i.if.end5.i_crit_edge

cleanup.i.if.end5.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

cleanup.i.if.then3.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i

while.cond64.preheader.i:                         ; preds = %if.end51.i, %if.then3.i
  %ret.1.ph.i = phi i32 [ %11, %if.then3.i ], [ 0, %if.end51.i ]
  %36 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %list.i, align 4
  %cmp.i103.not107.i = icmp eq ptr %37, %list.i
  br i1 %cmp.i103.not107.i, label %while.cond64.preheader.i.bin_bo_alloc.exit_crit_edge, label %while.cond64.preheader.i.while.body69.i_crit_edge

while.cond64.preheader.i.while.body69.i_crit_edge: ; preds = %while.cond64.preheader.i
  br label %while.body69.i

while.cond64.preheader.i.bin_bo_alloc.exit_crit_edge: ; preds = %while.cond64.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bin_bo_alloc.exit

while.body69.i:                                   ; preds = %drm_gem_object_put.exit.i.while.body69.i_crit_edge, %while.cond64.preheader.i.while.body69.i_crit_edge
  %38 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %8, align 4
  %add.ptr72.i = getelementptr i8, ptr %39, i32 -388
  %call.i.i104.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %39) #6
  br i1 %call.i.i104.i, label %if.end.i.i105.i, label %while.body69.i.list_del.exit.i_crit_edge

while.body69.i.list_del.exit.i_crit_edge:         ; preds = %while.body69.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i

if.end.i.i105.i:                                  ; preds = %while.body69.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i.i, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %39, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i105.i, %while.body69.i.list_del.exit.i_crit_edge
  %46 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 256 to ptr), ptr %39, align 4
  %prev.i106.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i106.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i106.i, align 4
  %tobool.not.i.i = icmp eq ptr %add.ptr72.i, null
  br i1 %tobool.not.i.i, label %list_del.exit.i.drm_gem_object_put.exit.i_crit_edge, label %if.then.i.i

list_del.exit.i.drm_gem_object_put.exit.i_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %drm_gem_object_put.exit.i

if.then.i.i:                                      ; preds = %list_del.exit.i
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %add.ptr72.i, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !219
  call void @llvm.prefetch.p0(ptr nonnull %add.ptr72.i, i32 1, i32 3, i32 1) #6
  %48 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %add.ptr72.i, ptr nonnull %add.ptr72.i, i32 1, ptr nonnull elementtype(i32) %add.ptr72.i) #6, !srcloc !220
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.drm_gem_object_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !216

if.end5.i.i.i.i.i.i.i.drm_gem_object_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %drm_gem_object_put.exit.i

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef nonnull %add.ptr72.i, i32 noundef 3) #6
  br label %drm_gem_object_put.exit.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !221
  call void @drm_gem_object_free(ptr noundef nonnull %add.ptr72.i) #6, !callees !222
  br label %drm_gem_object_put.exit.i

drm_gem_object_put.exit.i:                        ; preds = %if.then.i.i.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.drm_gem_object_put.exit.i_crit_edge, %list_del.exit.i.drm_gem_object_put.exit.i_crit_edge
  %49 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %list.i, align 4
  %cmp.i103.not.i = icmp eq ptr %50, %list.i
  br i1 %cmp.i103.not.i, label %drm_gem_object_put.exit.i.bin_bo_alloc.exit_crit_edge, label %drm_gem_object_put.exit.i.while.body69.i_crit_edge

drm_gem_object_put.exit.i.while.body69.i_crit_edge: ; preds = %drm_gem_object_put.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body69.i

drm_gem_object_put.exit.i.bin_bo_alloc.exit_crit_edge: ; preds = %drm_gem_object_put.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bin_bo_alloc.exit

bin_bo_alloc.exit:                                ; preds = %drm_gem_object_put.exit.i.bin_bo_alloc.exit_crit_edge, %while.cond64.preheader.i.bin_bo_alloc.exit_crit_edge, %if.else.bin_bo_alloc.exit_crit_edge
  %retval.0.i = phi i32 [ -19, %if.else.bin_bo_alloc.exit_crit_edge ], [ %ret.1.ph.i, %while.cond64.preheader.i.bin_bo_alloc.exit_crit_edge ], [ %ret.1.ph.i, %drm_gem_object_put.exit.i.bin_bo_alloc.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list.i) #6
  br label %if.end4

if.end4:                                          ; preds = %bin_bo_alloc.exit, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end4_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %bin_bo_alloc.exit ], [ 0, %if.else.i.i.i.i.if.end4_crit_edge ], [ 0, %if.end15.sink.split.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp = icmp ne i32 %ret.0, 0
  %brmerge = or i1 %tobool.not, %cmp
  br i1 %brmerge, label %if.end4.complete_crit_edge, label %if.then7

if.end4.complete_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %complete

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %used to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %used, align 1
  br label %complete

complete:                                         ; preds = %if.then7, %if.end4.complete_crit_edge, %land.lhs.true.complete_crit_edge
  %ret.1 = phi i32 [ 0, %land.lhs.true.complete_crit_edge ], [ 0, %if.then7 ], [ %ret.0, %if.end4.complete_crit_edge ]
  call void @mutex_unlock(ptr noundef %bin_bo_lock) #6
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc4_v3d_bin_bo_put(ptr noundef %vc4) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bin_bo_lock = getelementptr inbounds %struct.vc4_dev, ptr %vc4, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %bin_bo_lock, i32 noundef 0) #6
  %bin_bo_kref = getelementptr inbounds %struct.vc4_dev, ptr %vc4, i32 0, i32 40
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bin_bo_kref, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !219
  tail call void @llvm.prefetch.p0(ptr %bin_bo_kref, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bin_bo_kref, ptr %bin_bo_kref, i32 1, ptr elementtype(i32) %bin_bo_kref) #6, !srcloc !220
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !216

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %bin_bo_kref, i32 noundef 3) #6
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !221
  %bin_bo.i = getelementptr %struct.vc4_dev, ptr %vc4, i32 0, i32 24
  %1 = ptrtoint ptr %bin_bo.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bin_bo.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.then.i.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b48.i = load i1, ptr @bin_bo_release.__already_done, align 1
  br i1 %.b48.i, label %land.rhs.i.kref_put.exit_crit_edge, label %if.then.i4, !prof !216

land.rhs.i.kref_put.exit_crit_edge:               ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_put.exit

if.then.i4:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @bin_bo_release.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 342, i32 noundef 9, ptr noundef null) #6
  br label %kref_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %2, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !219
  tail call void @llvm.prefetch.p0(ptr nonnull %2, i32 1, i32 3, i32 1) #6
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %2, ptr nonnull %2, i32 1, ptr nonnull elementtype(i32) %2) #6, !srcloc !220
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.drm_gem_object_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !216

if.end5.i.i.i.i.i.i.i.drm_gem_object_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %drm_gem_object_put.exit.i

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %2, i32 noundef 3) #6
  br label %drm_gem_object_put.exit.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !221
  tail call void @drm_gem_object_free(ptr noundef nonnull %2) #6, !callees !222
  br label %drm_gem_object_put.exit.i

drm_gem_object_put.exit.i:                        ; preds = %if.then.i.i.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.drm_gem_object_put.exit.i_crit_edge
  %4 = ptrtoint ptr %bin_bo.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %bin_bo.i, align 8
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %drm_gem_object_put.exit.i, %if.then.i4, %land.rhs.i.kref_put.exit_crit_edge, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %bin_bo_lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_v3d_dev_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @component_add(ptr noundef %dev, ptr noundef nonnull @vc4_v3d_ops) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_v3d_dev_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @vc4_v3d_ops) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vc4_bo_create(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_v3d_bind(ptr noundef %dev, ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %driver_data.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup77_crit_edge, label %if.end

entry.cleanup77_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup77

if.end:                                           ; preds = %entry
  %driver_data.i130 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i130 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i130, align 4
  %pdev4 = getelementptr inbounds %struct.vc4_v3d, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %pdev4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %pdev4, align 4
  %call5 = tail call ptr @vc4_ioremap_regs(ptr noundef %add.ptr, i32 noundef 0) #6
  %regs = getelementptr inbounds %struct.vc4_v3d, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call5 to i32
  br label %cleanup77

if.end11:                                         ; preds = %if.end
  %regset = getelementptr inbounds %struct.vc4_v3d, ptr %call.i, i32 0, i32 4
  %base = getelementptr inbounds %struct.vc4_v3d, ptr %call.i, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %base, align 4
  %7 = ptrtoint ptr %regset to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @v3d_regs, ptr %regset, align 4
  %nregs = getelementptr inbounds %struct.vc4_v3d, ptr %call.i, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %nregs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 78, ptr %nregs, align 4
  %v3d16 = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %v3d16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %v3d16, align 4
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %call.i, align 4
  %call18 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.vc4_v3d, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call18, ptr %clk, align 4
  %cmp.i131 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i131, label %if.then21, label %if.end11.if.end31_crit_edge

if.end11.if.end31_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then21:                                        ; preds = %if.end11
  %12 = ptrtoint ptr %call18 to i32
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %do.end [
    i32 -2, label %if.then25
    i32 -517, label %if.then21.cleanup77_crit_edge
  ]

if.then21.cleanup77_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup77

if.then25:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %clk, align 4
  br label %if.end31

do.end:                                           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %12) #9
  br label %cleanup77

if.end31:                                         ; preds = %if.then25, %if.end11.if.end31_crit_edge
  %15 = ptrtoint ptr %v3d16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %v3d16, align 4
  %regs33 = getelementptr inbounds %struct.vc4_v3d, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %regs33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs33, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #6, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 1446200322, i32 %19)
  %cmp38.not = icmp eq i32 %19, 1446200322
  br i1 %cmp38.not, label %if.end48, label %if.then39

if.then39:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %v3d16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %v3d16, align 4
  %regs43 = getelementptr inbounds %struct.vc4_v3d, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %regs43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs43, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #6, !srcloc !223
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !225
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8, i32 noundef %25, i32 noundef 38024022) #6
  br label %cleanup77

if.end48:                                         ; preds = %if.end31
  %26 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk, align 4
  %call.i132 = tail call i32 @clk_prepare(ptr noundef %27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %tobool.not.i = icmp eq i32 %call.i132, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end48.cleanup77_crit_edge

if.end48.cleanup77_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup77

if.end.i:                                         ; preds = %if.end48
  %call1.i = tail call i32 @clk_enable(ptr noundef %27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.body54, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %27) #6
  br label %cleanup77

do.body54:                                        ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !226
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %v3d16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %v3d16, align 4
  %regs58 = getelementptr inbounds %struct.vc4_v3d, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %regs58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs58, align 4
  %add.ptr59 = getelementptr i8, ptr %31, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 0) #6, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !227
  tail call void @arm_heavy_mb() #6
  %32 = ptrtoint ptr %v3d16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %v3d16, align 4
  %regs64 = getelementptr inbounds %struct.vc4_v3d, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %regs64 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs64, align 4
  %add.ptr65 = getelementptr i8, ptr %35, i32 780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 0) #6, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %36 = ptrtoint ptr %v3d16 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %v3d16, align 4
  %regs.i = getelementptr inbounds %struct.vc4_v3d, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %39, i32 1284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !218
  %call66 = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %do.body54.cleanup77_crit_edge, label %if.end69

do.body54.cleanup77_crit_edge:                    ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup77

if.end69:                                         ; preds = %do.body54
  %irq = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call66, ptr %irq, align 4
  %call71 = tail call i32 @vc4_irq_install(ptr noundef %1, i32 noundef %call66) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.then73

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #6
  br label %cleanup77

if.end74:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  %call.i133 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #6
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #6
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 40) #6
  tail call void @pm_runtime_enable(ptr noundef %dev) #6
  tail call void @vc4_debugfs_add_file(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull @vc4_v3d_debugfs_ident, ptr noundef null) #6
  tail call void @vc4_debugfs_add_regset32(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef %regset) #6
  br label %cleanup77

cleanup77:                                        ; preds = %if.end74, %if.then73, %do.body54.cleanup77_crit_edge, %if.then3.i, %if.end48.cleanup77_crit_edge, %if.then39, %do.end, %if.then21.cleanup77_crit_edge, %if.then8, %entry.cleanup77_crit_edge
  %retval.1 = phi i32 [ %5, %if.then8 ], [ -22, %if.then39 ], [ %call71, %if.then73 ], [ 0, %if.end74 ], [ -12, %entry.cleanup77_crit_edge ], [ %12, %do.end ], [ %call66, %do.body54.cleanup77_crit_edge ], [ %12, %if.then21.cleanup77_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i132, %if.end48.cleanup77_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_v3d_unbind(ptr noundef %dev, ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  tail call void @vc4_irq_uninstall(ptr noundef %1) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %v3d = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %v3d to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v3d, align 4
  %regs = getelementptr inbounds %struct.vc4_v3d, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !230
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %v3d to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %v3d, align 4
  %regs6 = getelementptr inbounds %struct.vc4_v3d, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %regs6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs6, align 4
  %add.ptr7 = getelementptr i8, ptr %9, i32 780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 0) #6, !srcloc !218
  %10 = ptrtoint ptr %v3d to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %v3d, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vc4_ioremap_regs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_irq_install(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_debugfs_add_file(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_v3d_debugfs_ident(ptr noundef %m, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev1 = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %power_lock.i = getelementptr inbounds %struct.vc4_dev, ptr %5, i32 0, i32 32
  tail call void @mutex_lock_nested(ptr noundef %power_lock.i, i32 noundef 0) #6
  %power_refcount.i = getelementptr inbounds %struct.vc4_dev, ptr %5, i32 0, i32 30
  %6 = ptrtoint ptr %power_refcount.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %power_refcount.i, align 8
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %power_refcount.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %if.then.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then.i:                                        ; preds = %entry
  %v3d.i = getelementptr inbounds %struct.vc4_dev, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %v3d.i, align 4
  %pdev.i = getelementptr inbounds %struct.vc4_v3d, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp1.i, label %vc4_v3d_pm_get.exit, label %if.then.i.if.then_crit_edge

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

vc4_v3d_pm_get.exit:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %power_refcount.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %power_refcount.i, align 8
  %dec.i = add i32 %13, -1
  store i32 %dec.i, ptr %power_refcount.i, align 8
  br label %if.end

if.then:                                          ; preds = %if.then.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @mutex_unlock(ptr noundef %power_lock.i) #6
  %v3d = getelementptr inbounds %struct.vc4_dev, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %v3d to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %v3d, align 4
  %regs = getelementptr inbounds %struct.vc4_v3d, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !223
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !231
  %and = lshr i32 %19, 4
  %shr = and i32 %and, 15
  %and34 = lshr i32 %19, 12
  %shr35 = and i32 %and34, 15
  %and52 = lshr i32 %19, 8
  %shr53 = and i32 %and52, 15
  %and70 = and i32 %19, 15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.90, i32 noundef %and70) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.91, i32 noundef %shr) #6
  %mul = mul nuw nsw i32 %shr, %shr35
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.92, i32 noundef %mul) #6
  %mul72 = mul nuw nsw i32 %shr, %shr53
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.93, i32 noundef %mul72) #6
  %and89 = lshr i32 %19, 16
  %shr90 = and i32 %and89, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.94, i32 noundef %shr90) #6
  tail call void @mutex_lock_nested(ptr noundef %power_lock.i, i32 noundef 0) #6
  %20 = ptrtoint ptr %power_refcount.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %power_refcount.i, align 8
  %dec.i106 = add i32 %21, -1
  store i32 %dec.i106, ptr %power_refcount.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i106)
  %cmp.i107 = icmp eq i32 %dec.i106, 0
  br i1 %cmp.i107, label %if.then.i111, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i111:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %v3d to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %v3d, align 4
  %pdev.i109 = getelementptr inbounds %struct.vc4_v3d, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %pdev.i109 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev.i109, align 4
  %call.i.i110 = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i.i = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3, i32 12, i32 22
  %26 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store volatile i64 %call.i.i110, ptr %last_busy.i.i, align 8
  %27 = ptrtoint ptr %v3d to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %v3d, align 4
  %pdev2.i = getelementptr inbounds %struct.vc4_v3d, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %pdev2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev2.i, align 4
  %dev3.i = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  %call.i9.i = tail call i32 @__pm_runtime_suspend(ptr noundef %dev3.i, i32 noundef 13) #6
  br label %if.end

if.end:                                           ; preds = %if.then.i111, %if.then.if.end_crit_edge, %vc4_v3d_pm_get.exit
  tail call void @mutex_unlock(ptr noundef %power_lock.i) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_debugfs_add_regset32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_irq_uninstall(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_v3d_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @vc4_irq_disable(ptr noundef %3) #6
  %clk = getelementptr inbounds %struct.vc4_v3d, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_v3d_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %clk = getelementptr inbounds %struct.vc4_v3d, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %v3d.i = getelementptr inbounds %struct.vc4_dev, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %v3d.i, align 4
  %regs.i = getelementptr inbounds %struct.vc4_v3d, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 1284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !218
  %irq = getelementptr inbounds %struct.vc4_dev, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %11) #6
  tail call void @vc4_irq_enable(ptr noundef %3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_irq_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_irq_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !20, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201}
!llvm.module.flags = !{!203, !204, !205, !206, !207, !208, !209, !210}
!llvm.ident = !{!211}

!0 = !{ptr @vc4_v3d_dt_match, !1, !"vc4_v3d_dt_match", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 511, i32 27}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 522, i32 11}
!4 = !{ptr @vc4_v3d_driver, !5, !"vc4_v3d_driver", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 518, i32 24}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 253, i32 4}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @bin_bo_alloc._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @bin_bo_alloc._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 285, i32 4}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 342, i32 6}
!18 = !{ptr @vc4_v3d_ops, !19, !"vc4_v3d_ops", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 495, i32 35}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 425, i32 5}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @vc4_v3d_bind._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @vc4_v3d_bind._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 432, i32 3}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 456, i32 3}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 465, i32 28}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 466, i32 32}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 17, i32 2}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 18, i32 2}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 19, i32 2}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 20, i32 2}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 21, i32 2}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 22, i32 2}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 23, i32 2}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 24, i32 2}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 25, i32 2}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 26, i32 2}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 27, i32 2}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 28, i32 2}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 29, i32 2}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 30, i32 2}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 31, i32 2}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 32, i32 2}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 33, i32 2}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 34, i32 2}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 35, i32 2}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 36, i32 2}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 37, i32 2}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 38, i32 2}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 39, i32 2}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 40, i32 2}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 41, i32 2}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 42, i32 2}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 43, i32 2}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 44, i32 2}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 45, i32 2}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 46, i32 2}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 47, i32 2}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 48, i32 2}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 49, i32 2}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 50, i32 2}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 51, i32 2}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 52, i32 2}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 53, i32 2}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 54, i32 2}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 55, i32 2}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 56, i32 2}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 57, i32 2}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 58, i32 2}
!117 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 59, i32 2}
!119 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 60, i32 2}
!121 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 61, i32 2}
!123 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 62, i32 2}
!125 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 63, i32 2}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 64, i32 2}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 65, i32 2}
!131 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 66, i32 2}
!133 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 67, i32 2}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 68, i32 2}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 69, i32 2}
!139 = !{ptr @.str.65, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 70, i32 2}
!141 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 71, i32 2}
!143 = !{ptr @.str.67, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 72, i32 2}
!145 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 73, i32 2}
!147 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 74, i32 2}
!149 = !{ptr @.str.70, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 75, i32 2}
!151 = !{ptr @.str.71, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 76, i32 2}
!153 = !{ptr @.str.72, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 77, i32 2}
!155 = !{ptr @.str.73, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 78, i32 2}
!157 = !{ptr @.str.74, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 79, i32 2}
!159 = !{ptr @.str.75, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 80, i32 2}
!161 = !{ptr @.str.76, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 81, i32 2}
!163 = !{ptr @.str.77, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 82, i32 2}
!165 = !{ptr @.str.78, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 83, i32 2}
!167 = !{ptr @.str.79, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 84, i32 2}
!169 = !{ptr @.str.80, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 85, i32 2}
!171 = !{ptr @.str.81, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 86, i32 2}
!173 = !{ptr @.str.82, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 87, i32 2}
!175 = !{ptr @.str.83, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 88, i32 2}
!177 = !{ptr @.str.84, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 89, i32 2}
!179 = !{ptr @.str.85, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 90, i32 2}
!181 = !{ptr @.str.86, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 91, i32 2}
!183 = !{ptr @.str.87, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 92, i32 2}
!185 = !{ptr @.str.88, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 93, i32 2}
!187 = !{ptr @.str.89, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 94, i32 2}
!189 = !{ptr @v3d_regs, !190, !"v3d_regs", i1 false, i1 false}
!190 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 16, i32 35}
!191 = !{ptr @.str.90, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 110, i32 17}
!193 = !{ptr @.str.91, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 112, i32 17}
!195 = !{ptr @.str.92, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 113, i32 17}
!197 = !{ptr @.str.93, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 114, i32 17}
!199 = !{ptr @.str.94, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 115, i32 17}
!201 = !{ptr @vc4_v3d_pm_ops, !202, !"vc4_v3d_pm_ops", i1 false, i1 false}
!202 = !{!"../drivers/gpu/drm/vc4/vc4_v3d.c", i32 491, i32 32}
!203 = !{i32 1, !"wchar_size", i32 2}
!204 = !{i32 1, !"min_enum_size", i32 4}
!205 = !{i32 8, !"branch-target-enforcement", i32 0}
!206 = !{i32 8, !"sign-return-address", i32 0}
!207 = !{i32 8, !"sign-return-address-all", i32 0}
!208 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!209 = !{i32 7, !"uwtable", i32 1}
!210 = !{i32 7, !"frame-pointer", i32 2}
!211 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!212 = !{i32 0, i32 33}
!213 = !{i8 0, i8 2}
!214 = !{i64 2148252546, i64 2148252578, i64 2148252607, i64 2148252641, i64 2148252672, i64 2148252695}
!215 = !{!"branch_weights", i32 1, i32 2000}
!216 = !{!"branch_weights", i32 2000, i32 1}
!217 = !{i64 2157094584}
!218 = !{i64 7035801}
!219 = !{i64 2148340547}
!220 = !{i64 2148255011, i64 2148255043, i64 2148255072, i64 2148255106, i64 2148255137, i64 2148255160}
!221 = !{i64 2149841131}
!222 = distinct !{null, ptr @drm_gem_object_free}
!223 = !{i64 7036219}
!224 = !{i64 2157102592}
!225 = !{i64 2157103332}
!226 = !{i64 2157103671}
!227 = !{i64 2157104121}
!228 = !{i64 2157089989}
!229 = !{i64 2157104647}
!230 = !{i64 2157105097}
!231 = !{i64 2156877642}
