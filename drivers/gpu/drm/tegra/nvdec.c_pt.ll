; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tegra/nvdec.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/nvdec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.host1x_client_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_drm_client_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nvdec_config = type { ptr, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.nvdec = type { %struct.falcon, ptr, %struct.tegra_drm_client, ptr, ptr, ptr, ptr }
%struct.falcon = type { ptr, ptr, %struct.falcon_firmware }
%struct.falcon_firmware = type { ptr, i32, i32, ptr, i32, %struct.falcon_firmware_section, %struct.falcon_firmware_section, %struct.falcon_firmware_section }
%struct.falcon_firmware_section = type { i32, i32 }
%struct.tegra_drm_client = type { %struct.host1x_client, %struct.list_head, ptr, ptr, i32, ptr }
%struct.host1x_client = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.host1x_bo_cache }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.87, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.93, ptr, i32, ptr, i8, i32 }
%struct.anon.87 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.93 = type { i32, ptr }
%struct.tegra_drm_context = type { ptr, ptr, i32, %struct.xarray }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.dev_iommu = type { %struct.mutex, ptr, ptr, ptr, ptr, ptr }
%struct.iommu_fwspec = type { ptr, ptr, i32, i32, [0 x i32] }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tegra-nvdec\00", [20 x i8] zeroinitializer }, align 32
@tegra_nvdec_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-nvdec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @nvdec_t210_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-nvdec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @nvdec_t186_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-nvdec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @nvdec_t194_config }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@nvdec_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nvdec_runtime_suspend, ptr @nvdec_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_nvdec_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @nvdec_probe, ptr @nvdec_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_nvdec_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nvdec_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@nvdec_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 356, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to set DMA mask: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nvdec_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/tegra/nvdec.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvdec_probe._entry_ptr = internal global ptr @nvdec_probe._entry, section ".printk_index", align 4
@nvdec_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 376, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@nvdec_probe._entry_ptr.8 = internal global ptr @nvdec_probe._entry.6, section ".printk_index", align 4
@nvdec_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 382, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to set clock rate\0A\00", [38 x i8] zeroinitializer }, align 32
@nvdec_probe._entry_ptr.11 = internal global ptr @nvdec_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvidia,host1x-class\00", [44 x i8] zeroinitializer }, align 32
@nvdec_client_ops = internal constant { %struct.host1x_client_ops, [40 x i8] } { %struct.host1x_client_ops { ptr null, ptr @nvdec_init, ptr @nvdec_exit, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nvdec_ops = internal constant { %struct.tegra_drm_client_ops, [44 x i8] } { %struct.tegra_drm_client_ops { ptr @nvdec_open_channel, ptr @nvdec_close_channel, ptr null, ptr null, ptr @tegra_drm_submit }, [44 x i8] zeroinitializer }, align 32
@nvdec_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@nvdec_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 413, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to register host1x client: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@nvdec_probe._entry_ptr.15 = internal global ptr @nvdec_probe._entry.13, section ".printk_index", align 4
@nvdec_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 100, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to attach to domain: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nvdec_init\00", [21 x i8] zeroinitializer }, align 32
@nvdec_init._entry_ptr = internal global ptr @nvdec_init._entry, section ".printk_index", align 4
@nvdec_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 433, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to unregister host1x client: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nvdec_remove\00", [19 x i8] zeroinitializer }, align 32
@nvdec_remove._entry_ptr = internal global ptr @nvdec_remove._entry, section ".printk_index", align 4
@nvdec_t210_config = internal constant { %struct.nvdec_config, [20 x i8] } { %struct.nvdec_config { ptr @.str.20, i32 33, i8 0 }, [20 x i8] zeroinitializer }, align 32
@nvdec_t186_config = internal constant { %struct.nvdec_config, [20 x i8] } { %struct.nvdec_config { ptr @.str.21, i32 24, i8 1 }, [20 x i8] zeroinitializer }, align 32
@nvdec_t194_config = internal constant { %struct.nvdec_config, [20 x i8] } { %struct.nvdec_config { ptr @.str.22, i32 25, i8 1 }, [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nvidia/tegra210/nvdec.bin\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nvidia/tegra186/nvdec.bin\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nvidia/tegra194/nvdec.bin\00", [38 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@nvdec_boot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 83, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"falcon boot timed out\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nvdec_boot\00", [21 x i8] zeroinitializer }, align 32
@nvdec_boot._entry_ptr = internal global ptr @nvdec_boot._entry, section ".printk_index", align 4
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 450, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [21 x i8] c"tegra_nvdec_of_match\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 337, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [13 x i8] c"nvdec_pm_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 442, i32 32 }
@___asan_gen_.36 = private unnamed_addr constant [19 x i8] c"tegra_nvdec_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 448, i32 24 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 356, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 376, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 382, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 386, i32 43 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"nvdec_client_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 184, i32 39 }
@___asan_gen_.75 = private unnamed_addr constant [10 x i8] c"nvdec_ops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 307, i32 42 }
@___asan_gen_.78 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 411, i32 8 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 413, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 100, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 432, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [18 x i8] c"nvdec_t210_config\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 315, i32 34 }
@___asan_gen_.108 = private unnamed_addr constant [18 x i8] c"nvdec_t186_config\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 323, i32 34 }
@___asan_gen_.111 = private unnamed_addr constant [18 x i8] c"nvdec_t194_config\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 331, i32 34 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 316, i32 14 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 324, i32 14 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 332, i32 14 }
@___asan_gen_.127 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 326, i32 6 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private constant [33 x i8] c"../drivers/gpu/drm/tegra/nvdec.c\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 83, i32 3 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @nvdec_boot._entry, ptr @nvdec_boot._entry_ptr, ptr @nvdec_init._entry, ptr @nvdec_init._entry_ptr, ptr @nvdec_probe._entry, ptr @nvdec_probe._entry.13, ptr @nvdec_probe._entry.6, ptr @nvdec_probe._entry.9, ptr @nvdec_probe._entry_ptr, ptr @nvdec_probe._entry_ptr.11, ptr @nvdec_probe._entry_ptr.15, ptr @nvdec_probe._entry_ptr.8, ptr @nvdec_remove._entry, ptr @nvdec_remove._entry_ptr, ptr @.str, ptr @tegra_nvdec_of_match, ptr @nvdec_pm_ops, ptr @tegra_nvdec_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @nvdec_client_ops, ptr @nvdec_ops, ptr @nvdec_probe.__key, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @nvdec_t210_config, ptr @nvdec_t186_config, ptr @nvdec_t194_config, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nvdec_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvdec_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nvdec_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvdec_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvdec_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvdec_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvdec_client_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvdec_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvdec_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvdec_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvdec_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvdec_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvdec_t210_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvdec_t186_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvdec_t194_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvdec_boot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvdec_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %host_class = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %host_class) #5
  %0 = ptrtoint ptr %host_class to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %host_class, align 4, !annotation !76
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %dma_mask = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 18
  %3 = ptrtoint ptr %dma_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dma_mask, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %4, align 8
  %coherent_dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 19
  %dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 18
  %7 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %dma_coerce_mask_and_coherent.exit.thread, label %dma_coerce_mask_and_coherent.exit

dma_coerce_mask_and_coherent.exit.thread:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef %6) #5
  br label %if.end

dma_coerce_mask_and_coherent.exit:                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %dma_coerce_mask_and_coherent.exit.if.end_crit_edge

dma_coerce_mask_and_coherent.exit.if.end_crit_edge: ; preds = %dma_coerce_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %dma_coerce_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %call.i.i) #8
  br label %cleanup

if.end:                                           ; preds = %dma_coerce_mask_and_coherent.exit.if.end_crit_edge, %dma_coerce_mask_and_coherent.exit.thread
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 336, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #5
  %config = getelementptr inbounds %struct.nvdec, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6, ptr %config, align 4
  %call.i140 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 4, i32 noundef 3520) #5
  %tobool8.not = icmp eq ptr %call.i140, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %call11 = tail call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef null) #5
  %regs = getelementptr inbounds %struct.nvdec, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call11, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %call18 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #5
  %clk = getelementptr inbounds %struct.nvdec, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call18, ptr %clk, align 4
  %cmp.i141 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i141, label %do.end24, label %if.end28

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #8
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end17
  %call30 = tail call i32 @clk_set_rate(ptr noundef %call18, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %do.end35, label %if.end37

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #8
  br label %cleanup

if.end37:                                         ; preds = %if.end28
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  %call.i.i142 = call i32 @of_property_read_variable_u32_array(ptr noundef %16, ptr noundef nonnull @.str.12, ptr noundef nonnull %host_class, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i142)
  %cmp39 = icmp slt i32 %call.i.i142, 0
  br i1 %cmp39, label %if.then40, label %if.end37.if.end41_crit_edge

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %host_class to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 240, ptr %host_class, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end37.if.end41_crit_edge
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev1, ptr %call.i, align 4
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %regs45 = getelementptr inbounds %struct.falcon, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %regs45 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %regs45, align 4
  %call47 = call i32 @falcon_init(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.end41.cleanup_crit_edge, label %if.end50

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end50:                                         ; preds = %if.end41
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %client = getelementptr inbounds %struct.nvdec, ptr %call.i, i32 0, i32 2
  %23 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %client, ptr %client, align 4
  %prev.i = getelementptr inbounds %struct.nvdec, ptr %call.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %client, ptr %prev.i, align 4
  %ops = getelementptr inbounds %struct.nvdec, ptr %call.i, i32 0, i32 2, i32 0, i32 4
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @nvdec_client_ops, ptr %ops, align 4
  %dev55 = getelementptr inbounds %struct.nvdec, ptr %call.i, i32 0, i32 2, i32 0, i32 2
  %26 = ptrtoint ptr %dev55 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev1, ptr %dev55, align 4
  %27 = ptrtoint ptr %host_class to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %host_class, align 4
  %class = getelementptr inbounds %struct.nvdec, ptr %call.i, i32 0, i32 2, i32 0, i32 5
  %29 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %class, align 4
  %syncpts60 = getelementptr inbounds %struct.nvdec, ptr %call.i, i32 0, i32 2, i32 0, i32 7
  %30 = ptrtoint ptr %syncpts60 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i140, ptr %syncpts60, align 4
  %num_syncpts = getelementptr inbounds %struct.nvdec, ptr %call.i, i32 0, i32 2, i32 0, i32 8
  %31 = ptrtoint ptr %num_syncpts to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %num_syncpts, align 4
  %dev63 = getelementptr inbounds %struct.nvdec, ptr %call.i, i32 0, i32 4
  %32 = ptrtoint ptr %dev63 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %dev1, ptr %dev63, align 4
  %list65 = getelementptr inbounds %struct.nvdec, ptr %call.i, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %list65 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %list65, ptr %list65, align 4
  %prev.i143 = getelementptr inbounds %struct.nvdec, ptr %call.i, i32 0, i32 2, i32 1, i32 1
  %34 = ptrtoint ptr %prev.i143 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %list65, ptr %prev.i143, align 4
  %35 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %config, align 4
  %version = getelementptr inbounds %struct.nvdec_config, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %version, align 4
  %version68 = getelementptr inbounds %struct.nvdec, ptr %call.i, i32 0, i32 2, i32 4
  %39 = ptrtoint ptr %version68 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %version68, align 4
  %ops70 = getelementptr inbounds %struct.nvdec, ptr %call.i, i32 0, i32 2, i32 5
  %40 = ptrtoint ptr %ops70 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @nvdec_ops, ptr %ops70, align 4
  call void @__host1x_client_init(ptr noundef %client, ptr noundef nonnull @nvdec_probe.__key) #5
  %call75 = call i32 @__host1x_client_register(ptr noundef %client) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %do.end80, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end80:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %call75) #8
  call void @falcon_exit(ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end80, %if.end50.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %do.end35, %do.end24, %if.then14, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ %10, %if.then14 ], [ %14, %do.end24 ], [ %call30, %do.end35 ], [ %call75, %do.end80 ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ %call47, %if.end41.cleanup_crit_edge ], [ 0, %if.end50.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %host_class) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvdec_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %client = getelementptr inbounds %struct.nvdec, ptr %1, i32 0, i32 2
  %call1 = tail call i32 @host1x_client_unregister(ptr noundef %client) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @falcon_exit(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @falcon_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__host1x_client_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__host1x_client_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @falcon_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvdec_init(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 1
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %call3 = tail call i32 @host1x_client_iommu_attach(ptr noundef %client) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp = icmp sgt i32 %call3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, -19
  %or.cond = or i1 %cmp, %cmp4.not
  br i1 %or.cond, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev5 = getelementptr i8, ptr %client, i32 268
  %6 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.16, i32 noundef %call3) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @host1x_channel_request(ptr noundef %client) #5
  %channel = getelementptr i8, ptr %client, i32 264
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6, ptr %channel, align 4
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.end.detach_crit_edge, label %if.end9

if.end.detach_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %detach

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @host1x_syncpt_request(ptr noundef %client, i32 noundef 0) #5
  %syncpts = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 7
  %9 = ptrtoint ptr %syncpts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %syncpts, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call10, ptr %10, align 4
  %12 = load ptr, ptr %syncpts, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %tobool13.not = icmp eq ptr %14, null
  br i1 %tobool13.not, label %if.end9.free_channel_crit_edge, label %if.end15

if.end9.free_channel_crit_edge:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_channel

if.end15:                                         ; preds = %if.end9
  %dev16 = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 2
  %15 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev16, align 4
  tail call void @pm_runtime_enable(ptr noundef %16) #5
  %17 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev16, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %18, i1 noundef zeroext true) #5
  %19 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev16, align 4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %20, i32 noundef 500) #5
  %call19 = tail call i32 @tegra_drm_register_client(ptr noundef %5, ptr noundef %client) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %disable_rpm, label %if.end22

if.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %host, align 4
  %dma_parms = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 22
  %23 = ptrtoint ptr %dma_parms to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dma_parms, align 4
  %25 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev16, align 4
  %dma_parms25 = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 22
  %27 = ptrtoint ptr %dma_parms25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %dma_parms25, align 4
  br label %cleanup

disable_rpm:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev16, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %29, i1 noundef zeroext false) #5
  %30 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev16, align 4
  %call28 = tail call i32 @pm_runtime_force_suspend(ptr noundef %31) #5
  %32 = ptrtoint ptr %syncpts to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %syncpts, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  tail call void @host1x_syncpt_put(ptr noundef %35) #5
  br label %free_channel

free_channel:                                     ; preds = %disable_rpm, %if.end9.free_channel_crit_edge
  %err.0 = phi i32 [ %call19, %disable_rpm ], [ -12, %if.end9.free_channel_crit_edge ]
  %36 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %channel, align 4
  tail call void @host1x_channel_put(ptr noundef %37) #5
  br label %detach

detach:                                           ; preds = %free_channel, %if.end.detach_crit_edge
  %err.1 = phi i32 [ %err.0, %free_channel ], [ -12, %if.end.detach_crit_edge ]
  tail call void @host1x_client_iommu_detach(ptr noundef %client) #5
  br label %cleanup

cleanup:                                          ; preds = %detach, %if.end22, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ %err.1, %detach ], [ 0, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvdec_exit(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 1
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %dev3 = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 2
  %6 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev3, align 4
  %dma_parms = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %dma_parms to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %dma_parms, align 4
  %call4 = tail call i32 @tegra_drm_unregister_client(ptr noundef %5, ptr noundef %client) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev3, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %10, i1 noundef zeroext false) #5
  %11 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev3, align 4
  %call7 = tail call i32 @pm_runtime_force_suspend(ptr noundef %12) #5
  %syncpts = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 7
  %13 = ptrtoint ptr %syncpts to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %syncpts, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  tail call void @host1x_syncpt_put(ptr noundef %16) #5
  %channel = getelementptr i8, ptr %client, i32 264
  %17 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %channel, align 4
  tail call void @host1x_channel_put(ptr noundef %18) #5
  tail call void @host1x_client_iommu_detach(ptr noundef %client) #5
  %19 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %channel, align 4
  %group = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 3
  %20 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %group, align 4
  %tobool.not = icmp eq ptr %21, null
  %dev20 = getelementptr i8, ptr %client, i32 268
  %22 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev20, align 4
  br i1 %tobool.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %phys = getelementptr i8, ptr %client, i32 -40
  %24 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %phys, align 4
  %size = getelementptr i8, ptr %client, i32 -32
  %26 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef 1, i32 noundef 0) #5
  %28 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size, align 4
  %virt = getelementptr i8, ptr %client, i32 -36
  %30 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %virt, align 4
  %iova = getelementptr i8, ptr %client, i32 -44
  %32 = ptrtoint ptr %iova to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iova, align 4
  tail call void @tegra_drm_free(ptr noundef %5, i32 noundef %29, ptr noundef %31, i32 noundef %33) #5
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %size23 = getelementptr i8, ptr %client, i32 -32
  %34 = ptrtoint ptr %size23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size23, align 4
  %virt26 = getelementptr i8, ptr %client, i32 -36
  %36 = ptrtoint ptr %virt26 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %virt26, align 4
  %iova29 = getelementptr i8, ptr %client, i32 -44
  %38 = ptrtoint ptr %iova29 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %iova29, align 4
  tail call void @dma_free_attrs(ptr noundef %23, i32 noundef %35, ptr noundef %37, i32 noundef %39, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_iommu_attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_channel_request(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_syncpt_request(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_drm_register_client(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_syncpt_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_channel_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_client_iommu_detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_drm_unregister_client(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_drm_free(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvdec_open_channel(ptr nocapture noundef readonly %client, ptr nocapture noundef writeonly %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr i8, ptr %client, i32 264
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 4
  %call1 = tail call ptr @host1x_channel_get(ptr noundef %1) #5
  %channel2 = getelementptr inbounds %struct.tegra_drm_context, ptr %context, i32 0, i32 1
  %2 = ptrtoint ptr %channel2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %channel2, align 4
  %tobool.not = icmp eq ptr %call1, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvdec_close_channel(ptr nocapture noundef readonly %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.tegra_drm_context, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 4
  tail call void @host1x_channel_put(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_drm_submit(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_channel_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvdec_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %channel = getelementptr inbounds %struct.nvdec, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 4
  tail call void @host1x_channel_stop(ptr noundef %3) #5
  %clk = getelementptr inbounds %struct.nvdec, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvdec_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  %iova.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.nvdec, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %3) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end_crit_edge

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %clk_prepare_enable.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #5
  %drm.i = getelementptr inbounds %struct.nvdec, ptr %1, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %drm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drm.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iova.i) #5
  %6 = ptrtoint ptr %iova.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %iova.i, align 4, !annotation !76
  %virt3.i = getelementptr inbounds %struct.falcon, ptr %1, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %virt3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %virt3.i, align 4
  %tobool.not.i19 = icmp eq ptr %8, null
  br i1 %tobool.not.i19, label %if.end.i21, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.end.i21:                                       ; preds = %if.end
  %config.i = getelementptr inbounds %struct.nvdec, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call.i20 = tail call i32 @falcon_read_firmware(ptr noundef %1, ptr noundef %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %cmp.i = icmp slt i32 %call.i20, 0
  br i1 %cmp.i, label %if.end.i21.nvdec_load_firmware.exit.thread_crit_edge, label %if.end7.i

if.end.i21.nvdec_load_firmware.exit.thread_crit_edge: ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvdec_load_firmware.exit.thread

if.end7.i:                                        ; preds = %if.end.i21
  %size10.i = getelementptr inbounds %struct.falcon, ptr %1, i32 0, i32 2, i32 4
  %13 = ptrtoint ptr %size10.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size10.i, align 4
  %group.i = getelementptr inbounds %struct.nvdec, ptr %1, i32 0, i32 2, i32 0, i32 3
  %15 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %group.i, align 4
  %tobool11.not.i = icmp eq ptr %16, null
  br i1 %tobool11.not.i, label %if.then12.i, label %if.else.i

if.then12.i:                                      ; preds = %if.end7.i
  %dev.i = getelementptr inbounds %struct.nvdec, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %18, i32 noundef %14, ptr noundef nonnull %iova.i, i32 noundef 3264, i32 noundef 0) #5
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %21 = ptrtoint ptr %iova.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iova.i, align 4
  call void @debug_dma_mapping_error(ptr noundef %20, i32 noundef %22) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp.i.i = icmp eq i32 %22, -1
  br i1 %cmp.i.i, label %if.then12.i.nvdec_load_firmware.exit.thread_crit_edge, label %if.then12.i.if.end20.i_crit_edge

if.then12.i.if.end20.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i

if.then12.i.nvdec_load_firmware.exit.thread_crit_edge: ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvdec_load_firmware.exit.thread

if.else.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  %call19.i = call ptr @tegra_drm_alloc(ptr noundef %5, i32 noundef %14, ptr noundef nonnull %iova.i) #5
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else.i, %if.then12.i.if.end20.i_crit_edge
  %virt.0.i = phi ptr [ %call19.i, %if.else.i ], [ %call.i.i, %if.then12.i.if.end20.i_crit_edge ]
  %23 = ptrtoint ptr %virt3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %virt.0.i, ptr %virt3.i, align 4
  %24 = ptrtoint ptr %iova.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iova.i, align 4
  %iova26.i = getelementptr inbounds %struct.falcon, ptr %1, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %iova26.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %iova26.i, align 4
  %call28.i = call i32 @falcon_load_firmware(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp slt i32 %call28.i, 0
  br i1 %cmp29.i, label %if.end20.i.cleanup46.i_crit_edge, label %if.end31.i

if.end20.i.cleanup46.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup46.i

if.end31.i:                                       ; preds = %if.end20.i
  %27 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %group.i, align 4
  %tobool33.not.i = icmp eq ptr %28, null
  br i1 %tobool33.not.i, label %if.end31.i.if.end5_crit_edge, label %if.then34.i

if.end31.i.if.end5_crit_edge:                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then34.i:                                      ; preds = %if.end31.i
  %dev35.i = getelementptr inbounds %struct.nvdec, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %dev35.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev35.i, align 4
  %call.i91.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %virt.0.i) #5
  br i1 %call.i91.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.then34.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !77

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = call ptr @dev_driver_string(ptr noundef %30) #5
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %30, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %34, %if.end.i.i.i ], [ %32, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #5
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %35 = ptrtoint ptr %dev35.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev35.i, align 4
  call void @debug_dma_mapping_error(ptr noundef %36, i32 noundef -1) #5
  br label %cleanup46.i

dma_map_single_attrs.exit.i:                      ; preds = %if.then34.i
  call void @debug_dma_map_single(ptr noundef %30, ptr noundef %virt.0.i, i32 noundef %14) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %37 = load ptr, ptr @mem_map, align 4
  %38 = ptrtoint ptr %virt.0.i to i32
  %sub.i.i = add i32 %38, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %37, i32 %shr.i.i
  %and.i.i = and i32 %38, 4095
  %call41.i.i = call i32 @dma_map_page_attrs(ptr noundef %30, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %14, i32 noundef 1, i32 noundef 0) #5
  %39 = ptrtoint ptr %dev35.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev35.i, align 4
  call void @debug_dma_mapping_error(ptr noundef %40, i32 noundef %call41.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i92.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i92.i, label %dma_map_single_attrs.exit.i.cleanup46.i_crit_edge, label %cleanup.thread.i

dma_map_single_attrs.exit.i.cleanup46.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup46.i

cleanup.thread.i:                                 ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %phys44.i = getelementptr inbounds %struct.falcon, ptr %1, i32 0, i32 2, i32 2
  %41 = ptrtoint ptr %phys44.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call41.i.i, ptr %phys44.i, align 4
  br label %if.end5

cleanup46.i:                                      ; preds = %dma_map_single_attrs.exit.i.cleanup46.i_crit_edge, %dma_map_single_attrs.exit.thread.i, %if.end20.i.cleanup46.i_crit_edge
  %err.0.i = phi i32 [ %call28.i, %if.end20.i.cleanup46.i_crit_edge ], [ -12, %dma_map_single_attrs.exit.i.cleanup46.i_crit_edge ], [ -12, %dma_map_single_attrs.exit.thread.i ]
  %42 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %group.i, align 4
  %tobool48.not.i = icmp eq ptr %43, null
  br i1 %tobool48.not.i, label %if.then49.i, label %if.else51.i

if.then49.i:                                      ; preds = %cleanup46.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev50.i = getelementptr inbounds %struct.nvdec, ptr %1, i32 0, i32 4
  %44 = ptrtoint ptr %dev50.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev50.i, align 4
  %46 = ptrtoint ptr %iova.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %iova.i, align 4
  call void @dma_free_attrs(ptr noundef %45, i32 noundef %14, ptr noundef %virt.0.i, i32 noundef %47, i32 noundef 0) #5
  br label %nvdec_load_firmware.exit.thread

if.else51.i:                                      ; preds = %cleanup46.i
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %iova.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %iova.i, align 4
  call void @tegra_drm_free(ptr noundef %5, i32 noundef %14, ptr noundef %virt.0.i, i32 noundef %49) #5
  br label %nvdec_load_firmware.exit.thread

nvdec_load_firmware.exit.thread:                  ; preds = %if.else51.i, %if.then49.i, %if.then12.i.nvdec_load_firmware.exit.thread_crit_edge, %if.end.i21.nvdec_load_firmware.exit.thread_crit_edge
  %retval.0.i22.ph = phi i32 [ %err.0.i, %if.then49.i ], [ %err.0.i, %if.else51.i ], [ -12, %if.then12.i.nvdec_load_firmware.exit.thread_crit_edge ], [ %call.i20, %if.end.i21.nvdec_load_firmware.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iova.i) #5
  br label %disable

if.end5:                                          ; preds = %cleanup.thread.i, %if.end31.i.if.end5_crit_edge, %if.end.if.end5_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iova.i) #5
  %dev.i23 = getelementptr inbounds %struct.nvdec, ptr %1, i32 0, i32 4
  %50 = ptrtoint ptr %dev.i23 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i23, align 4
  %iommu.i.i = getelementptr inbounds %struct.device, ptr %51, i32 0, i32 37
  %52 = ptrtoint ptr %iommu.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %iommu.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %53, null
  br i1 %tobool.not.i.i, label %if.end5.if.end3.i_crit_edge, label %dev_iommu_fwspec_get.exit.i

if.end5.if.end3.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3.i

dev_iommu_fwspec_get.exit.i:                      ; preds = %if.end5
  %fwspec.i.i = getelementptr inbounds %struct.dev_iommu, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %fwspec.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fwspec.i.i, align 4
  %config.i24 = getelementptr inbounds %struct.nvdec, ptr %1, i32 0, i32 6
  %56 = ptrtoint ptr %config.i24 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %config.i24, align 4
  %supports_sid.i = getelementptr inbounds %struct.nvdec_config, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %supports_sid.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %supports_sid.i, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i25 = icmp eq i8 %59, 0
  %tobool1.not.i = icmp eq ptr %55, null
  %or.cond.i = select i1 %tobool.not.i25, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %dev_iommu_fwspec_get.exit.i.if.end3.i_crit_edge, label %if.then.i

dev_iommu_fwspec_get.exit.i.if.end3.i_crit_edge:  ; preds = %dev_iommu_fwspec_get.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3.i

if.then.i:                                        ; preds = %dev_iommu_fwspec_get.exit.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  call void @arm_heavy_mb() #5
  %regs.i.i = getelementptr inbounds %struct.nvdec, ptr %1, i32 0, i32 1
  %60 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i26 = getelementptr i8, ptr %61, i32 8260
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i26, i32 536870912) #5, !srcloc !80
  %num_ids.i = getelementptr inbounds %struct.iommu_fwspec, ptr %55, i32 0, i32 3
  %62 = ptrtoint ptr %num_ids.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_ids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.not.i = icmp eq i32 %63, 0
  br i1 %cmp.not.i, label %if.then.i.if.end3.i_crit_edge, label %if.then2.i

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %ids.i = getelementptr inbounds %struct.iommu_fwspec, ptr %55, i32 0, i32 4
  %64 = ptrtoint ptr %ids.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ids.i, align 4
  %and.i = and i32 %65, 65535
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  call void @arm_heavy_mb() #5
  %66 = call i32 @llvm.bswap.i32(i32 %and.i) #5
  %67 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %68, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i, i32 %66) #5, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  call void @arm_heavy_mb() #5
  %69 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %70, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 %66) #5, !srcloc !80
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.then.i.if.end3.i_crit_edge, %dev_iommu_fwspec_get.exit.i.if.end3.i_crit_edge, %if.end5.if.end3.i_crit_edge
  %call4.i = call i32 @falcon_boot(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end3.i.disable_crit_edge, label %if.end7.i27

if.end3.i.disable_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %disable

if.end7.i27:                                      ; preds = %if.end3.i
  %call9.i = call i32 @falcon_wait_idle(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %do.end.i, label %if.end7.i27.cleanup_crit_edge

if.end7.i27.cleanup_crit_edge:                    ; preds = %if.end7.i27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end.i:                                         ; preds = %if.end7.i27
  call void @__sanitizer_cov_trace_pc() #7
  %71 = ptrtoint ptr %dev.i23 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i23, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.25) #8
  br label %disable

disable:                                          ; preds = %do.end.i, %if.end3.i.disable_crit_edge, %nvdec_load_firmware.exit.thread
  %err.0 = phi i32 [ %retval.0.i22.ph, %nvdec_load_firmware.exit.thread ], [ %call4.i, %if.end3.i.disable_crit_edge ], [ %call9.i, %do.end.i ]
  %73 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %74) #5
  call void @clk_unprepare(ptr noundef %74) #5
  br label %cleanup

cleanup:                                          ; preds = %disable, %if.end7.i27.cleanup_crit_edge, %clk_prepare_enable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %disable ], [ %retval.0.i, %clk_prepare_enable.exit.cleanup_crit_edge ], [ 0, %if.end7.i27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_channel_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @falcon_read_firmware(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_drm_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @falcon_load_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @falcon_boot(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @falcon_wait_idle(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !24, !26, !27, !28, !30, !32, !33, !34, !35, !37, !39, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62, !64, !65, !66}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tegra/nvdec.c", i32 450, i32 11}
!2 = !{ptr @tegra_nvdec_driver, !3, !"tegra_nvdec_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/tegra/nvdec.c", i32 448, i32 24}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/tegra/nvdec.c", i32 356, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @nvdec_probe._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @nvdec_probe._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/tegra/nvdec.c", i32 376, i32 3}
!14 = !{ptr @nvdec_probe._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @nvdec_probe._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/tegra/nvdec.c", i32 382, i32 3}
!18 = !{ptr @nvdec_probe._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @nvdec_probe._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/tegra/nvdec.c", i32 386, i32 43}
!22 = !{ptr @nvdec_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/tegra/nvdec.c", i32 411, i32 8}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/tegra/nvdec.c", i32 413, i32 3}
!26 = !{ptr @nvdec_probe._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @nvdec_probe._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @nvdec_client_ops, !29, !"nvdec_client_ops", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/tegra/nvdec.c", i32 184, i32 39}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/tegra/nvdec.c", i32 100, i32 3}
!32 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @nvdec_init._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @nvdec_init._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @nvdec_ops, !36, !"nvdec_ops", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/tegra/nvdec.c", i32 307, i32 42}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/tegra/nvdec.c", i32 432, i32 3}
!39 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @nvdec_remove._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @nvdec_remove._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @tegra_nvdec_of_match, !43, !"tegra_nvdec_of_match", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/tegra/nvdec.c", i32 337, i32 34}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/tegra/nvdec.c", i32 316, i32 14}
!46 = !{ptr @nvdec_t210_config, !47, !"nvdec_t210_config", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/tegra/nvdec.c", i32 315, i32 34}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/tegra/nvdec.c", i32 324, i32 14}
!50 = !{ptr @nvdec_t186_config, !51, !"nvdec_t186_config", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/tegra/nvdec.c", i32 323, i32 34}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/tegra/nvdec.c", i32 332, i32 14}
!54 = !{ptr @nvdec_t194_config, !55, !"nvdec_t194_config", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/tegra/nvdec.c", i32 331, i32 34}
!56 = !{ptr @nvdec_pm_ops, !57, !"nvdec_pm_ops", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/tegra/nvdec.c", i32 442, i32 32}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!60 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/tegra/nvdec.c", i32 83, i32 3}
!64 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @nvdec_boot._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @nvdec_boot._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"auto-init"}
!77 = !{!"branch_weights", i32 2000, i32 1}
!78 = !{i8 0, i8 2}
!79 = !{i64 2157248946}
!80 = !{i64 6297233}
