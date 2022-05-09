; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tegra/vic.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/vic.c"
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
%struct.vic_config = type { ptr, i32, i8 }
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
%struct.vic = type { %struct.falcon, ptr, %struct.tegra_drm_client, ptr, ptr, ptr, ptr, ptr }
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

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra-vic\00", [22 x i8] zeroinitializer }, align 32
@tegra_vic_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-vic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vic_t124_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-vic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vic_t210_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-vic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vic_t186_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-vic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vic_t194_config }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@vic_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vic_runtime_suspend, ptr @vic_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_vic_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vic_probe, ptr @vic_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_vic_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vic_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_firmware341 = internal constant [51 x i8] c"tegra_drm.firmware=nvidia/tegra124/vic03_ucode.bin\00", section ".modinfo", align 1
@vic_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 419, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to set DMA mask: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vic_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/gpu/drm/tegra/vic.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vic_probe._entry_ptr = internal global ptr @vic_probe._entry, section ".printk_index", align 4
@vic_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 435, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get registers\0A\00", [39 x i8] zeroinitializer }, align 32
@vic_probe._entry_ptr.8 = internal global ptr @vic_probe._entry.6, section ".printk_index", align 4
@vic_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 445, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@vic_probe._entry_ptr.11 = internal global ptr @vic_probe._entry.9, section ".printk_index", align 4
@vic_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 451, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to set clock rate\0A\00", [38 x i8] zeroinitializer }, align 32
@vic_probe._entry_ptr.14 = internal global ptr @vic_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vic\00", [28 x i8] zeroinitializer }, align 32
@vic_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 458, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get reset\0A\00", [43 x i8] zeroinitializer }, align 32
@vic_probe._entry_ptr.18 = internal global ptr @vic_probe._entry.16, section ".printk_index", align 4
@vic_client_ops = internal constant { %struct.host1x_client_ops, [40 x i8] } { %struct.host1x_client_ops { ptr null, ptr @vic_init, ptr @vic_exit, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vic_ops = internal constant { %struct.tegra_drm_client_ops, [44 x i8] } { %struct.tegra_drm_client_ops { ptr @vic_open_channel, ptr @vic_close_channel, ptr null, ptr null, ptr @tegra_drm_submit }, [44 x i8] zeroinitializer }, align 32
@vic_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@vic_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 486, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to register host1x client: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@vic_probe._entry_ptr.21 = internal global ptr @vic_probe._entry.19, section ".printk_index", align 4
@vic_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 139, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to attach to domain: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vic_init\00", [23 x i8] zeroinitializer }, align 32
@vic_init._entry_ptr = internal global ptr @vic_init._entry, section ".printk_index", align 4
@vic_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 506, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to unregister host1x client: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vic_remove\00", [21 x i8] zeroinitializer }, align 32
@vic_remove._entry_ptr = internal global ptr @vic_remove._entry, section ".printk_index", align 4
@vic_t124_config = internal constant { %struct.vic_config, [20 x i8] } { %struct.vic_config { ptr @.str.26, i32 64, i8 0 }, [20 x i8] zeroinitializer }, align 32
@vic_t210_config = internal constant { %struct.vic_config, [20 x i8] } { %struct.vic_config { ptr @.str.27, i32 33, i8 0 }, [20 x i8] zeroinitializer }, align 32
@vic_t186_config = internal constant { %struct.vic_config, [20 x i8] } { %struct.vic_config { ptr @.str.28, i32 24, i8 1 }, [20 x i8] zeroinitializer }, align 32
@vic_t194_config = internal constant { %struct.vic_config, [20 x i8] } { %struct.vic_config { ptr @.str.29, i32 25, i8 1 }, [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nvidia/tegra124/vic03_ucode.bin\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nvidia/tegra210/vic04_ucode.bin\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nvidia/tegra186/vic04_ucode.bin\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nvidia/tegra194/vic.bin\00", [40 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@vic_boot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 122, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to set application ID and FCE base\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vic_boot\00", [23 x i8] zeroinitializer }, align 32
@vic_boot._entry_ptr = internal global ptr @vic_boot._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2779096485]
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 523, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [19 x i8] c"tegra_vic_of_match\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 399, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant [11 x i8] c"vic_pm_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 515, i32 32 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"tegra_vic_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 521, i32 24 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 419, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 435, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 445, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 451, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 456, i32 42 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 458, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant [15 x i8] c"vic_client_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 223, i32 39 }
@___asan_gen_.94 = private unnamed_addr constant [8 x i8] c"vic_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 361, i32 42 }
@___asan_gen_.97 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 484, i32 8 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 486, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 139, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 505, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [16 x i8] c"vic_t124_config\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 369, i32 32 }
@___asan_gen_.127 = private unnamed_addr constant [16 x i8] c"vic_t210_config\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 377, i32 32 }
@___asan_gen_.130 = private unnamed_addr constant [16 x i8] c"vic_t186_config\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 385, i32 32 }
@___asan_gen_.133 = private unnamed_addr constant [16 x i8] c"vic_t194_config\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 393, i32 32 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 370, i32 14 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 378, i32 14 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 386, i32 14 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 394, i32 14 }
@___asan_gen_.152 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 326, i32 6 }
@___asan_gen_.154 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.161 = private constant [31 x i8] c"../drivers/gpu/drm/tegra/vic.c\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 121, i32 3 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_firmware341, ptr @vic_boot._entry, ptr @vic_boot._entry_ptr, ptr @vic_init._entry, ptr @vic_init._entry_ptr, ptr @vic_probe._entry, ptr @vic_probe._entry.12, ptr @vic_probe._entry.16, ptr @vic_probe._entry.19, ptr @vic_probe._entry.6, ptr @vic_probe._entry.9, ptr @vic_probe._entry_ptr, ptr @vic_probe._entry_ptr.11, ptr @vic_probe._entry_ptr.14, ptr @vic_probe._entry_ptr.18, ptr @vic_probe._entry_ptr.21, ptr @vic_probe._entry_ptr.8, ptr @vic_remove._entry, ptr @vic_remove._entry_ptr, ptr @.str, ptr @tegra_vic_of_match, ptr @vic_pm_ops, ptr @tegra_vic_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @vic_client_ops, ptr @vic_ops, ptr @vic_probe.__key, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @vic_t124_config, ptr @vic_t210_config, ptr @vic_t186_config, ptr @vic_t194_config, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vic_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vic_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vic_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vic_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vic_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vic_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vic_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vic_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vic_client_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vic_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vic_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vic_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vic_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vic_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vic_t124_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vic_t210_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vic_t186_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vic_t194_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vic_boot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vic_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %dma_mask = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %dma_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_mask, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %3, align 8
  %coherent_dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 19
  %dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 18
  %6 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %dma_coerce_mask_and_coherent.exit.thread, label %dma_coerce_mask_and_coherent.exit

dma_coerce_mask_and_coherent.exit.thread:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef %5) #5
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 340, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #5
  %config = getelementptr inbounds %struct.vic, ptr %call.i, i32 0, i32 7
  %7 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6, ptr %config, align 4
  %call.i166 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 4, i32 noundef 3520) #5
  %tobool8.not = icmp eq ptr %call.i166, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %call11 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %do.end16, label %if.end18

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %call19 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call11) #5
  %regs20 = getelementptr inbounds %struct.vic, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %regs20 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call19, ptr %regs20, align 4
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %call19 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end18
  %call27 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #5
  %clk = getelementptr inbounds %struct.vic, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call27, ptr %clk, align 4
  %cmp.i167 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i167, label %do.end33, label %if.end37

do.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #8
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

if.end37:                                         ; preds = %if.end26
  %call39 = tail call i32 @clk_set_rate(ptr noundef %call27, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %do.end44, label %if.end46

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #8
  br label %cleanup

if.end46:                                         ; preds = %if.end37
  %pm_domain = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 13
  %14 = ptrtoint ptr %pm_domain to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pm_domain, align 8
  %tobool47.not = icmp eq ptr %15, null
  br i1 %tobool47.not, label %if.then48, label %if.end46.if.end60_crit_edge

if.end46.if.end60_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.then48:                                        ; preds = %if.end46
  %call.i.i168 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #5
  %rst = getelementptr inbounds %struct.vic, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i168, ptr %rst, align 4
  %cmp.i169 = icmp ugt ptr %call.i.i168, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i169, label %do.end55, label %if.then48.if.end60_crit_edge

if.then48.if.end60_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

do.end55:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #8
  %17 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rst, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup

if.end60:                                         ; preds = %if.then48.if.end60_crit_edge, %if.end46.if.end60_crit_edge
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev1, ptr %call.i, align 4
  %21 = ptrtoint ptr %regs20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs20, align 4
  %regs64 = getelementptr inbounds %struct.falcon, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %regs64 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %regs64, align 4
  %call66 = tail call i32 @falcon_init(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.end60.cleanup_crit_edge, label %if.end69

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end69:                                         ; preds = %if.end60
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %client = getelementptr inbounds %struct.vic, ptr %call.i, i32 0, i32 2
  %25 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %client, ptr %client, align 4
  %prev.i = getelementptr inbounds %struct.vic, ptr %call.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %client, ptr %prev.i, align 4
  %ops = getelementptr inbounds %struct.vic, ptr %call.i, i32 0, i32 2, i32 0, i32 4
  %27 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @vic_client_ops, ptr %ops, align 4
  %dev74 = getelementptr inbounds %struct.vic, ptr %call.i, i32 0, i32 2, i32 0, i32 2
  %28 = ptrtoint ptr %dev74 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %dev1, ptr %dev74, align 4
  %class = getelementptr inbounds %struct.vic, ptr %call.i, i32 0, i32 2, i32 0, i32 5
  %29 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 93, ptr %class, align 4
  %syncpts79 = getelementptr inbounds %struct.vic, ptr %call.i, i32 0, i32 2, i32 0, i32 7
  %30 = ptrtoint ptr %syncpts79 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i166, ptr %syncpts79, align 4
  %num_syncpts = getelementptr inbounds %struct.vic, ptr %call.i, i32 0, i32 2, i32 0, i32 8
  %31 = ptrtoint ptr %num_syncpts to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %num_syncpts, align 4
  %dev82 = getelementptr inbounds %struct.vic, ptr %call.i, i32 0, i32 4
  %32 = ptrtoint ptr %dev82 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %dev1, ptr %dev82, align 4
  %list84 = getelementptr inbounds %struct.vic, ptr %call.i, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %list84 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %list84, ptr %list84, align 4
  %prev.i170 = getelementptr inbounds %struct.vic, ptr %call.i, i32 0, i32 2, i32 1, i32 1
  %34 = ptrtoint ptr %prev.i170 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %list84, ptr %prev.i170, align 4
  %35 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %config, align 4
  %version = getelementptr inbounds %struct.vic_config, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %version, align 4
  %version87 = getelementptr inbounds %struct.vic, ptr %call.i, i32 0, i32 2, i32 4
  %39 = ptrtoint ptr %version87 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %version87, align 4
  %ops89 = getelementptr inbounds %struct.vic, ptr %call.i, i32 0, i32 2, i32 5
  %40 = ptrtoint ptr %ops89 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @vic_ops, ptr %ops89, align 4
  tail call void @__host1x_client_init(ptr noundef %client, ptr noundef nonnull @vic_probe.__key) #5
  %call94 = tail call i32 @__host1x_client_register(ptr noundef %client) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp95 = icmp slt i32 %call94, 0
  br i1 %cmp95, label %do.end99, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end99:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %call94) #8
  tail call void @falcon_exit(ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end99, %if.end69.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %do.end55, %do.end44, %do.end33, %if.then23, %do.end16, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ %9, %if.then23 ], [ %13, %do.end33 ], [ %call39, %do.end44 ], [ %call94, %do.end99 ], [ %19, %do.end55 ], [ -6, %do.end16 ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ %call66, %if.end60.cleanup_crit_edge ], [ 0, %if.end69.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vic_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %client = getelementptr inbounds %struct.vic, ptr %1, i32 0, i32 2
  %call1 = tail call i32 @host1x_client_unregister(ptr noundef %client) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %call1) #8
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
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

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
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vic_init(ptr noundef %client) #0 align 64 {
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.22, i32 noundef %call3) #8
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
define internal i32 @vic_exit(ptr noundef %client) #0 align 64 {
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
define internal i32 @vic_open_channel(ptr nocapture noundef readonly %client, ptr nocapture noundef writeonly %context) #0 align 64 {
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
define internal void @vic_close_channel(ptr nocapture noundef readonly %context) #0 align 64 {
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
define internal i32 @vic_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %channel = getelementptr inbounds %struct.vic, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 4
  tail call void @host1x_channel_stop(ptr noundef %3) #5
  %rst = getelementptr inbounds %struct.vic, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rst, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #5
  %clk = getelementptr inbounds %struct.vic, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vic_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  %iova.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.vic, ptr %1, i32 0, i32 5
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
  %rst = getelementptr inbounds %struct.vic, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rst, align 4
  %call2 = tail call i32 @reset_control_deassert(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.disable_crit_edge, label %if.end5

if.end.disable_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %disable

if.end5:                                          ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #5
  %drm.i = getelementptr inbounds %struct.vic, ptr %1, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %drm.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drm.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iova.i) #5
  %8 = ptrtoint ptr %iova.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %iova.i, align 4, !annotation !90
  %virt3.i = getelementptr inbounds %struct.falcon, ptr %1, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %virt3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %virt3.i, align 4
  %tobool.not.i28 = icmp eq ptr %10, null
  br i1 %tobool.not.i28, label %if.end.i30, label %if.end5.vic_load_firmware.exit.thread45_crit_edge

if.end5.vic_load_firmware.exit.thread45_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %vic_load_firmware.exit.thread45

if.end.i30:                                       ; preds = %if.end5
  %config.i = getelementptr inbounds %struct.vic, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %config.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call.i29 = tail call i32 @falcon_read_firmware(ptr noundef %1, ptr noundef %14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %cmp.i = icmp slt i32 %call.i29, 0
  br i1 %cmp.i, label %if.end.i30.vic_load_firmware.exit.thread_crit_edge, label %if.end7.i

if.end.i30.vic_load_firmware.exit.thread_crit_edge: ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #7
  br label %vic_load_firmware.exit.thread

if.end7.i:                                        ; preds = %if.end.i30
  %size10.i = getelementptr inbounds %struct.falcon, ptr %1, i32 0, i32 2, i32 4
  %15 = ptrtoint ptr %size10.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size10.i, align 4
  %group.i = getelementptr inbounds %struct.vic, ptr %1, i32 0, i32 2, i32 0, i32 3
  %17 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %group.i, align 4
  %tobool11.not.i = icmp eq ptr %18, null
  br i1 %tobool11.not.i, label %if.then12.i, label %if.else.i

if.then12.i:                                      ; preds = %if.end7.i
  %dev.i = getelementptr inbounds %struct.vic, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %20, i32 noundef %16, ptr noundef nonnull %iova.i, i32 noundef 3264, i32 noundef 0) #5
  %tobool14.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool14.not.i, label %if.then12.i.vic_load_firmware.exit.thread_crit_edge, label %if.then12.i.if.end22.i_crit_edge

if.then12.i.if.end22.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.i

if.then12.i.vic_load_firmware.exit.thread_crit_edge: ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vic_load_firmware.exit.thread

if.else.i:                                        ; preds = %if.end7.i
  %call17.i = call ptr @tegra_drm_alloc(ptr noundef %7, i32 noundef %16, ptr noundef nonnull %iova.i) #5
  %cmp.i.i = icmp ugt ptr %call17.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %vic_load_firmware.exit, label %if.else.i.if.end22.i_crit_edge

if.else.i.if.end22.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else.i.if.end22.i_crit_edge, %if.then12.i.if.end22.i_crit_edge
  %virt.0.i = phi ptr [ %call17.i, %if.else.i.if.end22.i_crit_edge ], [ %call.i.i, %if.then12.i.if.end22.i_crit_edge ]
  %21 = ptrtoint ptr %virt3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %virt.0.i, ptr %virt3.i, align 4
  %22 = ptrtoint ptr %iova.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iova.i, align 4
  %iova28.i = getelementptr inbounds %struct.falcon, ptr %1, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %iova28.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %iova28.i, align 4
  %call30.i = call i32 @falcon_load_firmware(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp31.i = icmp slt i32 %call30.i, 0
  br i1 %cmp31.i, label %if.end22.i.cleanup48.i_crit_edge, label %if.end33.i

if.end22.i.cleanup48.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup48.i

if.end33.i:                                       ; preds = %if.end22.i
  %25 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %group.i, align 4
  %tobool35.not.i = icmp eq ptr %26, null
  br i1 %tobool35.not.i, label %if.end33.i.vic_load_firmware.exit.thread45_crit_edge, label %if.then36.i

if.end33.i.vic_load_firmware.exit.thread45_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vic_load_firmware.exit.thread45

if.then36.i:                                      ; preds = %if.end33.i
  %dev37.i = getelementptr inbounds %struct.vic, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %dev37.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev37.i, align 4
  %call.i93.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %virt.0.i) #5
  br i1 %call.i93.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.then36.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !91

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = call ptr @dev_driver_string(ptr noundef %28) #5
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %32, %if.end.i.i.i ], [ %30, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.31, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #5
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %33 = ptrtoint ptr %dev37.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev37.i, align 4
  call void @debug_dma_mapping_error(ptr noundef %34, i32 noundef -1) #5
  br label %cleanup48.i

dma_map_single_attrs.exit.i:                      ; preds = %if.then36.i
  call void @debug_dma_map_single(ptr noundef %28, ptr noundef %virt.0.i, i32 noundef %16) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %35 = load ptr, ptr @mem_map, align 4
  %36 = ptrtoint ptr %virt.0.i to i32
  %sub.i.i = add i32 %36, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %35, i32 %shr.i.i
  %and.i.i = and i32 %36, 4095
  %call41.i.i = call i32 @dma_map_page_attrs(ptr noundef %28, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %16, i32 noundef 1, i32 noundef 0) #5
  %37 = ptrtoint ptr %dev37.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev37.i, align 4
  call void @debug_dma_mapping_error(ptr noundef %38, i32 noundef %call41.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i94.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i94.i, label %dma_map_single_attrs.exit.i.cleanup48.i_crit_edge, label %cleanup.thread.i

dma_map_single_attrs.exit.i.cleanup48.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup48.i

cleanup.thread.i:                                 ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %phys46.i = getelementptr inbounds %struct.falcon, ptr %1, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %phys46.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call41.i.i, ptr %phys46.i, align 4
  br label %vic_load_firmware.exit.thread45

cleanup48.i:                                      ; preds = %dma_map_single_attrs.exit.i.cleanup48.i_crit_edge, %dma_map_single_attrs.exit.thread.i, %if.end22.i.cleanup48.i_crit_edge
  %err.0.i = phi i32 [ %call30.i, %if.end22.i.cleanup48.i_crit_edge ], [ -12, %dma_map_single_attrs.exit.i.cleanup48.i_crit_edge ], [ -12, %dma_map_single_attrs.exit.thread.i ]
  %40 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %group.i, align 4
  %tobool50.not.i = icmp eq ptr %41, null
  br i1 %tobool50.not.i, label %if.then51.i, label %if.else53.i

if.then51.i:                                      ; preds = %cleanup48.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev52.i = getelementptr inbounds %struct.vic, ptr %1, i32 0, i32 4
  %42 = ptrtoint ptr %dev52.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev52.i, align 4
  %44 = ptrtoint ptr %iova.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %iova.i, align 4
  call void @dma_free_attrs(ptr noundef %43, i32 noundef %16, ptr noundef %virt.0.i, i32 noundef %45, i32 noundef 0) #5
  br label %vic_load_firmware.exit.thread

if.else53.i:                                      ; preds = %cleanup48.i
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %iova.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %iova.i, align 4
  call void @tegra_drm_free(ptr noundef %7, i32 noundef %16, ptr noundef %virt.0.i, i32 noundef %47) #5
  br label %vic_load_firmware.exit.thread

vic_load_firmware.exit.thread:                    ; preds = %if.else53.i, %if.then51.i, %if.then12.i.vic_load_firmware.exit.thread_crit_edge, %if.end.i30.vic_load_firmware.exit.thread_crit_edge
  %retval.0.i31.ph = phi i32 [ %err.0.i, %if.then51.i ], [ %err.0.i, %if.else53.i ], [ -12, %if.then12.i.vic_load_firmware.exit.thread_crit_edge ], [ %call.i29, %if.end.i30.vic_load_firmware.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iova.i) #5
  br label %assert

vic_load_firmware.exit.thread45:                  ; preds = %cleanup.thread.i, %if.end33.i.vic_load_firmware.exit.thread45_crit_edge, %if.end5.vic_load_firmware.exit.thread45_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iova.i) #5
  br label %if.end9

vic_load_firmware.exit:                           ; preds = %if.else.i
  %48 = ptrtoint ptr %call17.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iova.i) #5
  %cmp7 = icmp slt ptr %call17.i, null
  br i1 %cmp7, label %vic_load_firmware.exit.assert_crit_edge, label %vic_load_firmware.exit.if.end9_crit_edge

vic_load_firmware.exit.if.end9_crit_edge:         ; preds = %vic_load_firmware.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

vic_load_firmware.exit.assert_crit_edge:          ; preds = %vic_load_firmware.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %assert

if.end9:                                          ; preds = %vic_load_firmware.exit.if.end9_crit_edge, %vic_load_firmware.exit.thread45
  %dev.i32 = getelementptr inbounds %struct.vic, ptr %1, i32 0, i32 4
  %49 = ptrtoint ptr %dev.i32 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i32, align 4
  %iommu.i.i = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 37
  %51 = ptrtoint ptr %iommu.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %iommu.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %52, null
  br i1 %tobool.not.i.i, label %if.end9.if.end3.i_crit_edge, label %dev_iommu_fwspec_get.exit.i

if.end9.if.end3.i_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3.i

dev_iommu_fwspec_get.exit.i:                      ; preds = %if.end9
  %fwspec.i.i = getelementptr inbounds %struct.dev_iommu, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %fwspec.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fwspec.i.i, align 4
  %config.i33 = getelementptr inbounds %struct.vic, ptr %1, i32 0, i32 7
  %55 = ptrtoint ptr %config.i33 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %config.i33, align 4
  %supports_sid.i = getelementptr inbounds %struct.vic_config, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %supports_sid.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %supports_sid.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i34 = icmp eq i8 %58, 0
  %tobool1.not.i = icmp eq ptr %54, null
  %or.cond.i = select i1 %tobool.not.i34, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %dev_iommu_fwspec_get.exit.i.if.end3.i_crit_edge, label %if.then.i

dev_iommu_fwspec_get.exit.i.if.end3.i_crit_edge:  ; preds = %dev_iommu_fwspec_get.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3.i

if.then.i:                                        ; preds = %dev_iommu_fwspec_get.exit.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  call void @arm_heavy_mb() #5
  %regs.i.i = getelementptr inbounds %struct.vic, ptr %1, i32 0, i32 1
  %59 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i35 = getelementptr i8, ptr %60, i32 8260
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i35, i32 536870912) #5, !srcloc !94
  %num_ids.i = getelementptr inbounds %struct.iommu_fwspec, ptr %54, i32 0, i32 3
  %61 = ptrtoint ptr %num_ids.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_ids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp.not.i = icmp eq i32 %62, 0
  br i1 %cmp.not.i, label %if.then.i.if.end3.i_crit_edge, label %if.then2.i

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %ids.i = getelementptr inbounds %struct.iommu_fwspec, ptr %54, i32 0, i32 4
  %63 = ptrtoint ptr %ids.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ids.i, align 4
  %and.i = and i32 %64, 65535
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  call void @arm_heavy_mb() #5
  %65 = call i32 @llvm.bswap.i32(i32 %and.i) #5
  %66 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i59.i = getelementptr i8, ptr %67, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.i, i32 %65) #5, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  call void @arm_heavy_mb() #5
  %68 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i61.i = getelementptr i8, ptr %69, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i, i32 %65) #5, !srcloc !94
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.then.i.if.end3.i_crit_edge, %dev_iommu_fwspec_get.exit.i.if.end3.i_crit_edge, %if.end9.if.end3.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  call void @arm_heavy_mb() #5
  %regs.i62.i = getelementptr inbounds %struct.vic, ptr %1, i32 0, i32 1
  %70 = ptrtoint ptr %regs.i62.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs.i62.i, align 4
  %add.ptr.i63.i = getelementptr i8, ptr %71, i32 5840
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63.i, i32 1140851712) #5, !srcloc !94
  %call4.i = call i32 @falcon_boot(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end3.i.assert_crit_edge, label %if.end7.i36

if.end3.i.assert_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %assert

if.end7.i36:                                      ; preds = %if.end3.i
  %72 = ptrtoint ptr %virt3.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %virt3.i, align 4
  %add.ptr.i = getelementptr i8, ptr %73, i32 28
  %74 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %add.ptr.i, align 4
  %76 = zext i32 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values)
  switch i32 %75, label %if.then12.i38 [
    i32 0, label %if.end7.i36.if.end23.i_crit_edge
    i32 -1515870811, label %if.end7.i36.if.end23.i_crit_edge50
  ]

if.end7.i36.if.end23.i_crit_edge50:               ; preds = %if.end7.i36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.i

if.end7.i36.if.end23.i_crit_edge:                 ; preds = %if.end7.i36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.i

if.then12.i38:                                    ; preds = %if.end7.i36
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr16.i = getelementptr i8, ptr %73, i32 24
  %77 = ptrtoint ptr %add.ptr16.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %add.ptr16.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %73, i32 %78
  %add.ptr18.i = getelementptr i8, ptr %add.ptr17.i, i32 8
  %79 = ptrtoint ptr %add.ptr18.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %add.ptr18.i, align 4
  call void @falcon_execute_method(ptr noundef %1, i32 noundef 1820, i32 noundef %80) #5
  %iova.i37 = getelementptr inbounds %struct.falcon, ptr %1, i32 0, i32 2, i32 1
  %81 = ptrtoint ptr %iova.i37 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %iova.i37, align 4
  %add.i = add i32 %82, %75
  %shr.i = lshr i32 %add.i, 8
  call void @falcon_execute_method(ptr noundef %1, i32 noundef 1836, i32 noundef %shr.i) #5
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then12.i38, %if.end7.i36.if.end23.i_crit_edge, %if.end7.i36.if.end23.i_crit_edge50
  %call25.i = call i32 @falcon_wait_idle(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp slt i32 %call25.i, 0
  br i1 %cmp26.i, label %do.end.i, label %if.end23.i.cleanup_crit_edge

if.end23.i.cleanup_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end.i:                                         ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  %83 = ptrtoint ptr %dev.i32 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev.i32, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.32) #8
  br label %assert

assert:                                           ; preds = %do.end.i, %if.end3.i.assert_crit_edge, %vic_load_firmware.exit.assert_crit_edge, %vic_load_firmware.exit.thread
  %err.0 = phi i32 [ %48, %vic_load_firmware.exit.assert_crit_edge ], [ %retval.0.i31.ph, %vic_load_firmware.exit.thread ], [ %call4.i, %if.end3.i.assert_crit_edge ], [ %call25.i, %do.end.i ]
  %85 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rst, align 4
  %call15 = call i32 @reset_control_assert(ptr noundef %86) #5
  br label %disable

disable:                                          ; preds = %assert, %if.end.disable_crit_edge
  %err.1 = phi i32 [ %call2, %if.end.disable_crit_edge ], [ %err.0, %assert ]
  %87 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %88) #5
  call void @clk_unprepare(ptr noundef %88) #5
  br label %cleanup

cleanup:                                          ; preds = %disable, %if.end23.i.cleanup_crit_edge, %clk_prepare_enable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %disable ], [ %retval.0.i, %clk_prepare_enable.exit.cleanup_crit_edge ], [ 0, %if.end23.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_channel_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @falcon_read_firmware(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_drm_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @falcon_load_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

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
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @falcon_boot(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @falcon_execute_method(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

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

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38, !40, !42, !43, !44, !45, !47, !49, !50, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !75, !76, !78, !79, !80}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tegra/vic.c", i32 523, i32 11}
!2 = !{ptr @tegra_vic_driver, !3, !"tegra_vic_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/tegra/vic.c", i32 521, i32 24}
!4 = !{ptr @__UNIQUE_ID_firmware341, !5, !"__UNIQUE_ID_firmware341", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/tegra/vic.c", i32 532, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/tegra/vic.c", i32 419, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @vic_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @vic_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/tegra/vic.c", i32 435, i32 3}
!16 = !{ptr @vic_probe._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @vic_probe._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/tegra/vic.c", i32 445, i32 3}
!20 = !{ptr @vic_probe._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @vic_probe._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/tegra/vic.c", i32 451, i32 3}
!24 = !{ptr @vic_probe._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @vic_probe._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/tegra/vic.c", i32 456, i32 42}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/tegra/vic.c", i32 458, i32 4}
!30 = !{ptr @vic_probe._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @vic_probe._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @vic_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/tegra/vic.c", i32 484, i32 8}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/tegra/vic.c", i32 486, i32 3}
!36 = !{ptr @vic_probe._entry.19, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @vic_probe._entry_ptr.21, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @vic_client_ops, !39, !"vic_client_ops", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/tegra/vic.c", i32 223, i32 39}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/tegra/vic.c", i32 139, i32 3}
!42 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @vic_init._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @vic_init._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @vic_ops, !46, !"vic_ops", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/tegra/vic.c", i32 361, i32 42}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/tegra/vic.c", i32 505, i32 3}
!49 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @vic_remove._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @vic_remove._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @tegra_vic_of_match, !53, !"tegra_vic_of_match", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/tegra/vic.c", i32 399, i32 34}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/tegra/vic.c", i32 370, i32 14}
!56 = !{ptr @vic_t124_config, !57, !"vic_t124_config", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/tegra/vic.c", i32 369, i32 32}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/tegra/vic.c", i32 378, i32 14}
!60 = !{ptr @vic_t210_config, !61, !"vic_t210_config", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/tegra/vic.c", i32 377, i32 32}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/tegra/vic.c", i32 386, i32 14}
!64 = !{ptr @vic_t186_config, !65, !"vic_t186_config", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/tegra/vic.c", i32 385, i32 32}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/tegra/vic.c", i32 394, i32 14}
!68 = !{ptr @vic_t194_config, !69, !"vic_t194_config", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/tegra/vic.c", i32 393, i32 32}
!70 = !{ptr @vic_pm_ops, !71, !"vic_pm_ops", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/tegra/vic.c", i32 515, i32 32}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!74 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/tegra/vic.c", i32 121, i32 3}
!78 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @vic_boot._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @vic_boot._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{!"auto-init"}
!91 = !{!"branch_weights", i32 2000, i32 1}
!92 = !{i8 0, i8 2}
!93 = !{i64 2157250492}
!94 = !{i64 6266531}
