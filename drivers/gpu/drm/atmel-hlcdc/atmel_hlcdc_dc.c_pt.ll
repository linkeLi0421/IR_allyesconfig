; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c_pt.bc'
source_filename = "../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atmel_hlcdc_dc_desc = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, i32 }
%struct.atmel_hlcdc_layer_desc = type { ptr, i32, i32, i32, i32, i32, ptr, %struct.atmel_hlcdc_layer_cfg_layout, i32, i32 }
%struct.atmel_hlcdc_layer_cfg_layout = type { [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon, i32, i32, i32 }
%struct.anon = type { i32, i32 }
%struct.atmel_hlcdc_formats = type { i32, ptr }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.79, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.90, ptr, i32, ptr, i8, i32 }
%struct.anon.79 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.90 = type { i32, ptr }
%struct.atmel_hlcdc_dc = type { ptr, ptr, ptr, ptr, [6 x ptr], %struct.anon.91 }
%struct.anon.91 = type { i32, ptr }
%struct.atmel_hlcdc = type { ptr, ptr, ptr, ptr, i32 }

@__initcall__kmod_atmel_hlcdc_dc__319_836_atmel_hlcdc_dc_platform_driver_init6 = internal global ptr @atmel_hlcdc_dc_platform_driver_init, section ".initcall6.init", align 4
@atmel_hlcdc_dc_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @atmel_hlcdc_dc_drm_probe, ptr @atmel_hlcdc_dc_drm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_hlcdc_dc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_hlcdc_dc_drm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_atmel_hlcdc_dc_platform_driver_exit = internal global ptr @atmel_hlcdc_dc_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author320 = internal constant [69 x i8] c"atmel_hlcdc_dc.author=Jean-Jacques Hiblot <jjhiblot@traphandler.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author321 = internal constant [75 x i8] c"atmel_hlcdc_dc.author=Boris Brezillon <boris.brezillon@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description322 = internal constant [69 x i8] c"atmel_hlcdc_dc.description=Atmel HLCDC Display Controller DRM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file323 = internal constant [63 x i8] c"atmel_hlcdc_dc.file=drivers/gpu/drm/atmel-hlcdc/atmel-hlcdc-dc\00", section ".modinfo", align 1
@__UNIQUE_ID_license324 = internal constant [27 x i8] c"atmel_hlcdc_dc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias325 = internal constant [45 x i8] c"atmel_hlcdc_dc.alias=platform:atmel-hlcdc-dc\00", section ".modinfo", align 1
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"atmel-hlcdc-display-controller\00", [33 x i8] zeroinitializer }, align 32
@atmel_hlcdc_dc_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,hlcdc-display-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@atmel_hlcdc_dc_drm_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @atmel_hlcdc_dc_drm_suspend, ptr @atmel_hlcdc_dc_drm_resume, ptr @atmel_hlcdc_dc_drm_suspend, ptr @atmel_hlcdc_dc_drm_resume, ptr @atmel_hlcdc_dc_drm_suspend, ptr @atmel_hlcdc_dc_drm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@atmel_hlcdc_dc_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @drm_gem_cma_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @drm_gem_cma_dumb_create, ptr null, ptr null, i32 1, i32 0, i32 0, ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 19, ptr null, i32 0, ptr @fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atmel-hlcdc\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Atmel HLCD Controller DRM\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20141504\00", [23 x i8] zeroinitializer }, align 32
@fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@atmel_hlcdc_of_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9n12-hlcdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_hlcdc_dc_at91sam9n12 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-hlcdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_hlcdc_dc_at91sam9x5 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-hlcdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_hlcdc_dc_sama5d4 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3-hlcdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_hlcdc_dc_sama5d3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d4-hlcdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_hlcdc_dc_sama5d4 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-hlcdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_hlcdc_dc_sam9x60 }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@atmel_hlcdc_dc_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 654, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid compatible string\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmel_hlcdc_dc_load\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c\00", [51 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atmel_hlcdc_dc_load._entry_ptr = internal global ptr @atmel_hlcdc_dc_load._entry, section ".printk_index", align 4
@atmel_hlcdc_dc_load._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 659, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid hlcdc description\0A\00", [37 x i8] zeroinitializer }, align 32
@atmel_hlcdc_dc_load._entry_ptr.11 = internal global ptr @atmel_hlcdc_dc_load._entry.9, section ".printk_index", align 4
@atmel_hlcdc_dc_load._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 673, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable periph_clk\0A\00", [35 x i8] zeroinitializer }, align 32
@atmel_hlcdc_dc_load._entry_ptr.14 = internal global ptr @atmel_hlcdc_dc_load._entry.12, section ".printk_index", align 4
@atmel_hlcdc_dc_load._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.6, i32 681, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to initialize vblank\0A\00", [35 x i8] zeroinitializer }, align 32
@atmel_hlcdc_dc_load._entry_ptr.17 = internal global ptr @atmel_hlcdc_dc_load._entry.15, section ".printk_index", align 4
@atmel_hlcdc_dc_load._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.6, i32 687, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to initialize mode setting\0A\00", [61 x i8] zeroinitializer }, align 32
@atmel_hlcdc_dc_load._entry_ptr.20 = internal global ptr @atmel_hlcdc_dc_load._entry.18, section ".printk_index", align 4
@atmel_hlcdc_dc_load._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.5, ptr @.str.6, i32 697, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to install IRQ handler\0A\00", [33 x i8] zeroinitializer }, align 32
@atmel_hlcdc_dc_load._entry_ptr.23 = internal global ptr @atmel_hlcdc_dc_load._entry.21, section ".printk_index", align 4
@atmel_hlcdc_dc_at91sam9n12 = internal constant { %struct.atmel_hlcdc_dc_desc, [56 x i8] } { %struct.atmel_hlcdc_dc_desc { i32 0, i32 0, i32 1280, i32 860, i32 63, i32 63, i32 255, i8 1, i8 0, ptr @atmel_hlcdc_at91sam9n12_layers, i32 1 }, [56 x i8] zeroinitializer }, align 32
@atmel_hlcdc_dc_at91sam9x5 = internal constant { %struct.atmel_hlcdc_dc_desc, [56 x i8] } { %struct.atmel_hlcdc_dc_desc { i32 0, i32 0, i32 800, i32 600, i32 63, i32 63, i32 255, i8 1, i8 0, ptr @atmel_hlcdc_at91sam9x5_layers, i32 4 }, [56 x i8] zeroinitializer }, align 32
@atmel_hlcdc_dc_sama5d4 = internal constant { %struct.atmel_hlcdc_dc_desc, [56 x i8] } { %struct.atmel_hlcdc_dc_desc { i32 0, i32 0, i32 2048, i32 2048, i32 255, i32 255, i32 1023, i8 0, i8 0, ptr @atmel_hlcdc_sama5d4_layers, i32 4 }, [56 x i8] zeroinitializer }, align 32
@atmel_hlcdc_dc_sama5d3 = internal constant { %struct.atmel_hlcdc_dc_desc, [56 x i8] } { %struct.atmel_hlcdc_dc_desc { i32 0, i32 0, i32 2048, i32 2048, i32 63, i32 63, i32 511, i8 1, i8 0, ptr @atmel_hlcdc_sama5d3_layers, i32 5 }, [56 x i8] zeroinitializer }, align 32
@atmel_hlcdc_dc_sam9x60 = internal constant { %struct.atmel_hlcdc_dc_desc, [56 x i8] } { %struct.atmel_hlcdc_dc_desc { i32 0, i32 0, i32 2048, i32 2048, i32 255, i32 255, i32 1023, i8 0, i8 1, ptr @atmel_hlcdc_sam9x60_layers, i32 4 }, [56 x i8] zeroinitializer }, align 32
@atmel_hlcdc_at91sam9n12_layers = internal constant { [1 x %struct.atmel_hlcdc_layer_desc], [48 x i8] } { [1 x %struct.atmel_hlcdc_layer_desc] [%struct.atmel_hlcdc_layer_desc { ptr @.str.24, i32 1, i32 0, i32 64, i32 44, i32 1024, ptr @atmel_hlcdc_plane_rgb_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 2, i32 0, i32 0], [3 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 4, i32 0, %struct.anon zeroinitializer, i32 0, i32 0, i32 0 }, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"base\00", [27 x i8] zeroinitializer }, align 32
@atmel_hlcdc_plane_rgb_formats = external dso_local global %struct.atmel_hlcdc_formats, align 4
@atmel_hlcdc_at91sam9x5_layers = internal constant { [4 x %struct.atmel_hlcdc_layer_desc], [96 x i8] } { [4 x %struct.atmel_hlcdc_layer_desc] [%struct.atmel_hlcdc_layer_desc { ptr @.str.24, i32 1, i32 0, i32 64, i32 44, i32 1024, ptr @atmel_hlcdc_plane_rgb_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 2, i32 0, i32 0], [3 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 4, i32 0, %struct.anon zeroinitializer, i32 5, i32 6, i32 0 }, i32 0, i32 0 }, %struct.atmel_hlcdc_layer_desc { ptr @.str.25, i32 2, i32 1, i32 256, i32 44, i32 2048, ptr @atmel_hlcdc_plane_rgb_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 4, i32 0, i32 0], [3 x i32] [i32 5, i32 0, i32 0], i32 2, i32 3, i32 0, i32 6, i32 7, i32 8, i32 9, i32 0, %struct.anon zeroinitializer, i32 0, i32 0, i32 0 }, i32 0, i32 0 }, %struct.atmel_hlcdc_layer_desc { ptr @.str.26, i32 2, i32 2, i32 640, i32 76, i32 4096, ptr @atmel_hlcdc_plane_rgb_and_yuv_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 5, i32 7, i32 0], [3 x i32] [i32 6, i32 8, i32 0], i32 2, i32 3, i32 4, i32 9, i32 10, i32 11, i32 12, i32 13, %struct.anon zeroinitializer, i32 0, i32 0, i32 14 }, i32 0, i32 0 }, %struct.atmel_hlcdc_layer_desc { ptr @.str.27, i32 3, i32 3, i32 832, i32 44, i32 5120, ptr @atmel_hlcdc_plane_rgb_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 4, i32 0, i32 0], [3 x i32] zeroinitializer, i32 2, i32 3, i32 0, i32 6, i32 7, i32 8, i32 9, i32 0, %struct.anon zeroinitializer, i32 0, i32 0, i32 0 }, i32 128, i32 128 }], [96 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"overlay1\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"high-end-overlay\00", [47 x i8] zeroinitializer }, align 32
@atmel_hlcdc_plane_rgb_and_yuv_formats = external dso_local global %struct.atmel_hlcdc_formats, align 4
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cursor\00", [25 x i8] zeroinitializer }, align 32
@atmel_hlcdc_sama5d4_layers = internal constant { [4 x %struct.atmel_hlcdc_layer_desc], [96 x i8] } { [4 x %struct.atmel_hlcdc_layer_desc] [%struct.atmel_hlcdc_layer_desc { ptr @.str.24, i32 1, i32 0, i32 64, i32 44, i32 1536, ptr @atmel_hlcdc_plane_rgb_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 2, i32 0, i32 0], [3 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 4, i32 0, %struct.anon zeroinitializer, i32 5, i32 6, i32 0 }, i32 0, i32 0 }, %struct.atmel_hlcdc_layer_desc { ptr @.str.25, i32 2, i32 1, i32 320, i32 44, i32 2560, ptr @atmel_hlcdc_plane_rgb_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 4, i32 0, i32 0], [3 x i32] [i32 5, i32 0, i32 0], i32 2, i32 3, i32 0, i32 6, i32 7, i32 8, i32 9, i32 0, %struct.anon zeroinitializer, i32 0, i32 0, i32 0 }, i32 0, i32 0 }, %struct.atmel_hlcdc_layer_desc { ptr @.str.28, i32 2, i32 2, i32 576, i32 44, i32 3584, ptr @atmel_hlcdc_plane_rgb_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 4, i32 0, i32 0], [3 x i32] [i32 5, i32 0, i32 0], i32 2, i32 3, i32 0, i32 6, i32 7, i32 8, i32 9, i32 0, %struct.anon zeroinitializer, i32 0, i32 0, i32 0 }, i32 0, i32 0 }, %struct.atmel_hlcdc_layer_desc { ptr @.str.26, i32 2, i32 3, i32 832, i32 76, i32 4608, ptr @atmel_hlcdc_plane_rgb_and_yuv_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 5, i32 7, i32 0], [3 x i32] [i32 6, i32 8, i32 0], i32 2, i32 3, i32 4, i32 9, i32 10, i32 11, i32 12, i32 13, %struct.anon { i32 17, i32 33 }, i32 0, i32 0, i32 14 }, i32 0, i32 0 }], [96 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"overlay2\00", [23 x i8] zeroinitializer }, align 32
@atmel_hlcdc_sama5d3_layers = internal constant { [5 x %struct.atmel_hlcdc_layer_desc], [144 x i8] } { [5 x %struct.atmel_hlcdc_layer_desc] [%struct.atmel_hlcdc_layer_desc { ptr @.str.24, i32 1, i32 0, i32 64, i32 44, i32 1536, ptr @atmel_hlcdc_plane_rgb_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 2, i32 0, i32 0], [3 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 4, i32 0, %struct.anon zeroinitializer, i32 5, i32 6, i32 0 }, i32 0, i32 0 }, %struct.atmel_hlcdc_layer_desc { ptr @.str.25, i32 2, i32 1, i32 320, i32 44, i32 2560, ptr @atmel_hlcdc_plane_rgb_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 4, i32 0, i32 0], [3 x i32] [i32 5, i32 0, i32 0], i32 2, i32 3, i32 0, i32 6, i32 7, i32 8, i32 9, i32 0, %struct.anon zeroinitializer, i32 0, i32 0, i32 0 }, i32 0, i32 0 }, %struct.atmel_hlcdc_layer_desc { ptr @.str.28, i32 2, i32 2, i32 576, i32 44, i32 3584, ptr @atmel_hlcdc_plane_rgb_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 4, i32 0, i32 0], [3 x i32] [i32 5, i32 0, i32 0], i32 2, i32 3, i32 0, i32 6, i32 7, i32 8, i32 9, i32 0, %struct.anon zeroinitializer, i32 0, i32 0, i32 0 }, i32 0, i32 0 }, %struct.atmel_hlcdc_layer_desc { ptr @.str.26, i32 2, i32 3, i32 832, i32 76, i32 4608, ptr @atmel_hlcdc_plane_rgb_and_yuv_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 5, i32 7, i32 0], [3 x i32] [i32 6, i32 8, i32 0], i32 2, i32 3, i32 4, i32 9, i32 10, i32 11, i32 12, i32 13, %struct.anon { i32 17, i32 33 }, i32 0, i32 0, i32 14 }, i32 0, i32 0 }, %struct.atmel_hlcdc_layer_desc { ptr @.str.27, i32 3, i32 4, i32 1088, i32 44, i32 5632, ptr @atmel_hlcdc_plane_rgb_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 4, i32 0, i32 0], [3 x i32] [i32 5, i32 0, i32 0], i32 2, i32 3, i32 0, i32 6, i32 7, i32 8, i32 9, i32 13, %struct.anon zeroinitializer, i32 0, i32 0, i32 0 }, i32 128, i32 128 }], [144 x i8] zeroinitializer }, align 32
@atmel_hlcdc_sam9x60_layers = internal constant { [4 x %struct.atmel_hlcdc_layer_desc], [96 x i8] } { [4 x %struct.atmel_hlcdc_layer_desc] [%struct.atmel_hlcdc_layer_desc { ptr @.str.24, i32 1, i32 0, i32 96, i32 44, i32 1536, ptr @atmel_hlcdc_plane_rgb_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 2, i32 0, i32 0], [3 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 4, i32 0, %struct.anon zeroinitializer, i32 5, i32 6, i32 0 }, i32 0, i32 0 }, %struct.atmel_hlcdc_layer_desc { ptr @.str.25, i32 2, i32 1, i32 352, i32 44, i32 2560, ptr @atmel_hlcdc_plane_rgb_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 4, i32 0, i32 0], [3 x i32] [i32 5, i32 0, i32 0], i32 2, i32 3, i32 0, i32 6, i32 7, i32 8, i32 9, i32 0, %struct.anon zeroinitializer, i32 0, i32 0, i32 0 }, i32 0, i32 0 }, %struct.atmel_hlcdc_layer_desc { ptr @.str.28, i32 2, i32 2, i32 608, i32 44, i32 3584, ptr @atmel_hlcdc_plane_rgb_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 4, i32 0, i32 0], [3 x i32] [i32 5, i32 0, i32 0], i32 2, i32 3, i32 0, i32 6, i32 7, i32 8, i32 9, i32 0, %struct.anon zeroinitializer, i32 0, i32 0, i32 0 }, i32 0, i32 0 }, %struct.atmel_hlcdc_layer_desc { ptr @.str.26, i32 2, i32 3, i32 864, i32 76, i32 4608, ptr @atmel_hlcdc_plane_rgb_and_yuv_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 5, i32 7, i32 0], [3 x i32] [i32 6, i32 8, i32 0], i32 2, i32 3, i32 4, i32 9, i32 10, i32 11, i32 12, i32 13, %struct.anon { i32 17, i32 33 }, i32 0, i32 0, i32 14 }, i32 0, i32 0 }], [96 x i8] zeroinitializer }, align 32
@atmel_hlcdc_dc_modeset_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.6, i32 619, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to create HLCDC outputs: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"atmel_hlcdc_dc_modeset_init\00", [36 x i8] zeroinitializer }, align 32
@atmel_hlcdc_dc_modeset_init._entry_ptr = internal global ptr @atmel_hlcdc_dc_modeset_init._entry, section ".printk_index", align 4
@atmel_hlcdc_dc_modeset_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.6, i32 625, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create planes: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@atmel_hlcdc_dc_modeset_init._entry_ptr.33 = internal global ptr @atmel_hlcdc_dc_modeset_init._entry.31, section ".printk_index", align 4
@atmel_hlcdc_dc_modeset_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.6, i32 631, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to create crtc\0A\00", [41 x i8] zeroinitializer }, align 32
@atmel_hlcdc_dc_modeset_init._entry_ptr.36 = internal global ptr @atmel_hlcdc_dc_modeset_init._entry.34, section ".printk_index", align 4
@mode_config_funcs = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @drm_gem_fb_create, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.37 = private unnamed_addr constant [31 x i8] c"atmel_hlcdc_dc_platform_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 827, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 831, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [24 x i8] c"atmel_hlcdc_dc_of_match\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 822, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant [26 x i8] c"atmel_hlcdc_dc_drm_pm_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 819, i32 8 }
@___asan_gen_.49 = private unnamed_addr constant [22 x i8] c"atmel_hlcdc_dc_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 734, i32 32 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 738, i32 10 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 739, i32 10 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 740, i32 10 }
@___asan_gen_.61 = private unnamed_addr constant [5 x i8] c"fops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 732, i32 1 }
@___asan_gen_.64 = private unnamed_addr constant [21 x i8] c"atmel_hlcdc_of_match\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 464, i32 34 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 654, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 659, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 673, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 681, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 687, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 697, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [27 x i8] c"atmel_hlcdc_dc_at91sam9n12\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 49, i32 41 }
@___asan_gen_.118 = private unnamed_addr constant [26 x i8] c"atmel_hlcdc_dc_at91sam9x5\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 142, i32 41 }
@___asan_gen_.121 = private unnamed_addr constant [23 x i8] c"atmel_hlcdc_dc_sama5d4\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 356, i32 41 }
@___asan_gen_.124 = private unnamed_addr constant [23 x i8] c"atmel_hlcdc_dc_sama5d3\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 260, i32 41 }
@___asan_gen_.127 = private unnamed_addr constant [23 x i8] c"atmel_hlcdc_dc_sam9x60\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 451, i32 41 }
@___asan_gen_.130 = private unnamed_addr constant [31 x i8] c"atmel_hlcdc_at91sam9n12_layers\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 32, i32 44 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 34, i32 11 }
@___asan_gen_.136 = private unnamed_addr constant [30 x i8] c"atmel_hlcdc_at91sam9x5_layers\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 62, i32 44 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 80, i32 11 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 99, i32 11 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 121, i32 11 }
@___asan_gen_.148 = private unnamed_addr constant [27 x i8] c"atmel_hlcdc_sama5d4_layers\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 273, i32 44 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 310, i32 11 }
@___asan_gen_.154 = private unnamed_addr constant [27 x i8] c"atmel_hlcdc_sama5d3_layers\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 155, i32 44 }
@___asan_gen_.157 = private unnamed_addr constant [27 x i8] c"atmel_hlcdc_sam9x60_layers\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 368, i32 44 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 619, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 625, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 631, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant [18 x i8] c"mode_config_funcs\00", align 1
@___asan_gen_.182 = private constant [48 x i8] c"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 604, i32 43 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_alias325, ptr @__UNIQUE_ID_author320, ptr @__UNIQUE_ID_author321, ptr @__UNIQUE_ID_description322, ptr @__UNIQUE_ID_file323, ptr @__UNIQUE_ID_license324, ptr @__exitcall_atmel_hlcdc_dc_platform_driver_exit, ptr @__initcall__kmod_atmel_hlcdc_dc__319_836_atmel_hlcdc_dc_platform_driver_init6, ptr @atmel_hlcdc_dc_load._entry, ptr @atmel_hlcdc_dc_load._entry.12, ptr @atmel_hlcdc_dc_load._entry.15, ptr @atmel_hlcdc_dc_load._entry.18, ptr @atmel_hlcdc_dc_load._entry.21, ptr @atmel_hlcdc_dc_load._entry.9, ptr @atmel_hlcdc_dc_load._entry_ptr, ptr @atmel_hlcdc_dc_load._entry_ptr.11, ptr @atmel_hlcdc_dc_load._entry_ptr.14, ptr @atmel_hlcdc_dc_load._entry_ptr.17, ptr @atmel_hlcdc_dc_load._entry_ptr.20, ptr @atmel_hlcdc_dc_load._entry_ptr.23, ptr @atmel_hlcdc_dc_modeset_init._entry, ptr @atmel_hlcdc_dc_modeset_init._entry.31, ptr @atmel_hlcdc_dc_modeset_init._entry.34, ptr @atmel_hlcdc_dc_modeset_init._entry_ptr, ptr @atmel_hlcdc_dc_modeset_init._entry_ptr.33, ptr @atmel_hlcdc_dc_modeset_init._entry_ptr.36, ptr @atmel_hlcdc_dc_platform_driver_exit, ptr @atmel_hlcdc_dc_platform_driver, ptr @.str, ptr @atmel_hlcdc_dc_of_match, ptr @atmel_hlcdc_dc_drm_pm_ops, ptr @atmel_hlcdc_dc_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @fops, ptr @atmel_hlcdc_of_match, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @atmel_hlcdc_dc_at91sam9n12, ptr @atmel_hlcdc_dc_at91sam9x5, ptr @atmel_hlcdc_dc_sama5d4, ptr @atmel_hlcdc_dc_sama5d3, ptr @atmel_hlcdc_dc_sam9x60, ptr @atmel_hlcdc_at91sam9n12_layers, ptr @.str.24, ptr @atmel_hlcdc_at91sam9x5_layers, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @atmel_hlcdc_sama5d4_layers, ptr @.str.28, ptr @atmel_hlcdc_sama5d3_layers, ptr @atmel_hlcdc_sam9x60_layers, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @mode_config_funcs], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_dc_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_dc_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_dc_drm_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_dc_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_of_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_dc_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_dc_load._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_dc_load._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_dc_load._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_dc_load._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_dc_load._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_dc_at91sam9n12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_dc_at91sam9x5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_dc_sama5d4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_dc_sama5d3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_dc_sam9x60 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_at91sam9n12_layers to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_at91sam9x5_layers to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_sama5d4_layers to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_sama5d3_layers to i32), i32 560, i32 704, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_sam9x60_layers to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_dc_modeset_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_dc_modeset_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_dc_modeset_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_config_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @atmel_hlcdc_dc_mode_valid(ptr nocapture noundef readonly %dc, ptr nocapture noundef readonly %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 7
  %0 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vsync_start, align 4
  %conv = zext i16 %1 to i32
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %2 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vdisplay, align 2
  %conv1 = zext i16 %3 to i32
  %sub = sub nsw i32 %conv, %conv1
  %vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %4 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vtotal, align 4
  %conv2 = zext i16 %5 to i32
  %vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 8
  %6 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vsync_end, align 2
  %conv3 = zext i16 %7 to i32
  %sub4 = sub nsw i32 %conv2, %conv3
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  %8 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hsync_start, align 2
  %conv10 = zext i16 %9 to i32
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %10 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hdisplay, align 4
  %conv11 = zext i16 %11 to i32
  %sub12 = sub nsw i32 %conv10, %conv11
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %12 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %htotal, align 2
  %conv13 = zext i16 %13 to i32
  %hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 3
  %14 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hsync_end, align 4
  %conv14 = zext i16 %15 to i32
  %sub15 = sub nsw i32 %conv13, %conv14
  %sub20 = sub nsw i32 %conv14, %conv10
  %16 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dc, align 4
  %max_spw = getelementptr inbounds %struct.atmel_hlcdc_dc_desc, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %max_spw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_spw, align 4
  %add = add i32 %19, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub20, i32 %add)
  %cmp = icmp sgt i32 %sub20, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub20)
  %cmp22 = icmp slt i32 %sub20, 1
  %or.cond = or i1 %cmp22, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub9 = sub nsw i32 %conv3, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %sub9, i32 %add)
  %cmp27 = icmp sgt i32 %sub9, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub9)
  %cmp30 = icmp slt i32 %sub9, 1
  %or.cond108 = or i1 %cmp30, %cmp27
  br i1 %or.cond108, label %if.end.cleanup_crit_edge, label %if.end33

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %if.end
  %max_hpw = getelementptr inbounds %struct.atmel_hlcdc_dc_desc, ptr %17, i32 0, i32 6
  %20 = ptrtoint ptr %max_hpw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_hpw, align 4
  %add35 = add i32 %21, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub12, i32 %add35)
  %cmp36 = icmp sgt i32 %sub12, %add35
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub12)
  %cmp39 = icmp slt i32 %sub12, 1
  %or.cond109 = or i1 %cmp39, %cmp36
  call void @__sanitizer_cov_trace_cmp4(i32 %sub15, i32 %add35)
  %cmp45 = icmp sgt i32 %sub15, %add35
  %or.cond110 = select i1 %or.cond109, i1 true, i1 %cmp45
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub15)
  %cmp48 = icmp slt i32 %sub15, 1
  %or.cond111 = select i1 %or.cond110, i1 true, i1 %cmp48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp53 = icmp eq i16 %11, 0
  %or.cond112 = select i1 %or.cond111, i1 true, i1 %cmp53
  br i1 %or.cond112, label %if.end33.cleanup_crit_edge, label %if.end56

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end56:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %max_vpw = getelementptr inbounds %struct.atmel_hlcdc_dc_desc, ptr %17, i32 0, i32 5
  %22 = ptrtoint ptr %max_vpw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_vpw, align 4
  %add58 = add i32 %23, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %add58)
  %cmp59 = icmp sgt i32 %sub, %add58
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp62 = icmp slt i32 %sub, 1
  %or.cond113 = or i1 %cmp62, %cmp59
  call void @__sanitizer_cov_trace_cmp4(i32 %sub4, i32 %23)
  %cmp67 = icmp sgt i32 %sub4, %23
  %or.cond114 = select i1 %or.cond113, i1 true, i1 %cmp67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub4)
  %cmp70 = icmp slt i32 %sub4, 0
  %or.cond115 = select i1 %or.cond114, i1 true, i1 %cmp70
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp75 = icmp eq i16 %3, 0
  %or.cond116 = select i1 %or.cond115, i1 true, i1 %cmp75
  %spec.select = select i1 %or.cond116, i32 4, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.end33.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ 3, %if.end33.cleanup_crit_edge ], [ %spec.select, %if.end56 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_hlcdc_dc_platform_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @atmel_hlcdc_dc_platform_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atmel_hlcdc_dc_platform_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @atmel_hlcdc_dc_platform_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_hlcdc_dc_drm_probe(ptr noundef %pdev) #4 align 64 {
entry:
  %isr.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @drm_dev_alloc(ptr noundef nonnull @atmel_hlcdc_dc_driver, ptr noundef %dev) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1.i, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 27
  %5 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call ptr @of_match_node(ptr noundef nonnull @atmel_hlcdc_of_match, ptr noundef %6) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #9
  br label %err_put

if.end.i:                                         ; preds = %if.end
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %tobool4.not.i = icmp eq ptr %8, null
  br i1 %tobool4.not.i, label %do.end8.i, label %if.end10.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10) #9
  br label %err_put

if.end10.i:                                       ; preds = %if.end.i
  %9 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1.i, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef 48, i32 noundef 3520) #6
  %tobool13.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool13.not.i, label %if.end10.i.err_put_crit_edge, label %if.end15.i

if.end10.i.err_put_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_put

if.end15.i:                                       ; preds = %if.end10.i
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %13 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %call.i.i, align 4
  %14 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1.i, align 4
  %parent18.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %parent18.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent18.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i, align 4
  %hlcdc.i = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %call.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %hlcdc.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %hlcdc.i, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 5
  %21 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i, ptr %dev_private.i, align 4
  %periph_clk.i = getelementptr inbounds %struct.atmel_hlcdc, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %periph_clk.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %periph_clk.i, align 4
  %call.i97.i = tail call i32 @clk_prepare(ptr noundef %23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97.i)
  %tobool.not.i.i = icmp eq i32 %call.i97.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end15.i.do.end26.i_crit_edge

if.end15.i.do.end26.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end26.i

if.end.i.i:                                       ; preds = %if.end15.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end28.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %23) #6
  br label %do.end26.i

do.end26.i:                                       ; preds = %if.then3.i.i, %if.end15.i.do.end26.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i97.i, %if.end15.i.do.end26.i_crit_edge ]
  %24 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev1.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.13) #9
  br label %err_put

if.end28.i:                                       ; preds = %if.end.i.i
  %26 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev1.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %27) #6
  %call30.i = tail call i32 @drm_vblank_init(ptr noundef %call, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp.i19 = icmp slt i32 %call30.i, 0
  br i1 %cmp.i19, label %do.end34.i, label %if.end36.i

do.end34.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev1.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.16) #9
  br label %err_periph_clk_disable.i

if.end36.i:                                       ; preds = %if.end28.i
  %30 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_private.i, align 4
  %call.i.i.i = tail call i32 @drmm_mode_config_init(ptr noundef %call) #6
  %call1.i98.i = tail call i32 @atmel_hlcdc_create_outputs(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i98.i)
  %tobool.not.i99.i = icmp eq i32 %call1.i98.i, 0
  br i1 %tobool.not.i99.i, label %if.end.i100.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev1.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.29, i32 noundef %call1.i98.i) #9
  br label %atmel_hlcdc_dc_modeset_init.exit.i

if.end.i100.i:                                    ; preds = %if.end36.i
  %call3.i.i = tail call i32 @atmel_hlcdc_create_planes(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end10.i.i, label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.end.i100.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev1.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.32, i32 noundef %call3.i.i) #9
  br label %atmel_hlcdc_dc_modeset_init.exit.i

if.end10.i.i:                                     ; preds = %if.end.i100.i
  %call11.i.i = tail call i32 @atmel_hlcdc_crtc_create(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %atmel_hlcdc_dc_modeset_init.exit.thread.i, label %do.end16.i.i

do.end16.i.i:                                     ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev1.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.35) #9
  br label %atmel_hlcdc_dc_modeset_init.exit.i

atmel_hlcdc_dc_modeset_init.exit.thread.i:        ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %31, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %min_width19.i.i = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 23
  %42 = ptrtoint ptr %min_width19.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %min_width19.i.i, align 4
  %43 = load ptr, ptr %31, align 4
  %min_height.i.i = getelementptr inbounds %struct.atmel_hlcdc_dc_desc, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %min_height.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %min_height.i.i, align 4
  %min_height22.i.i = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 24
  %46 = ptrtoint ptr %min_height22.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %min_height22.i.i, align 4
  %47 = load ptr, ptr %31, align 4
  %max_width.i.i = getelementptr inbounds %struct.atmel_hlcdc_dc_desc, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %max_width.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max_width.i.i, align 4
  %max_width25.i.i = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 25
  %50 = ptrtoint ptr %max_width25.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %max_width25.i.i, align 4
  %51 = load ptr, ptr %31, align 4
  %max_height.i.i = getelementptr inbounds %struct.atmel_hlcdc_dc_desc, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %max_height.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %max_height.i.i, align 4
  %max_height28.i.i = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 26
  %54 = ptrtoint ptr %max_height28.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %max_height28.i.i, align 4
  %funcs.i.i = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 27
  %55 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @mode_config_funcs, ptr %funcs.i.i, align 4
  %async_page_flip.i.i = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 96
  %56 = ptrtoint ptr %async_page_flip.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %async_page_flip.i.i, align 1
  br label %if.end44.i

atmel_hlcdc_dc_modeset_init.exit.i:               ; preds = %do.end16.i.i, %do.end8.i.i, %do.end.i.i
  %retval.0.i101.i = phi i32 [ %call1.i98.i, %do.end.i.i ], [ %call3.i.i, %do.end8.i.i ], [ %call11.i.i, %do.end16.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i101.i)
  %cmp38.i = icmp slt i32 %retval.0.i101.i, 0
  br i1 %cmp38.i, label %do.end42.i, label %atmel_hlcdc_dc_modeset_init.exit.i.if.end44.i_crit_edge

atmel_hlcdc_dc_modeset_init.exit.i.if.end44.i_crit_edge: ; preds = %atmel_hlcdc_dc_modeset_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.i

do.end42.i:                                       ; preds = %atmel_hlcdc_dc_modeset_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev1.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.19) #9
  br label %err_periph_clk_disable.i

if.end44.i:                                       ; preds = %atmel_hlcdc_dc_modeset_init.exit.i.if.end44.i_crit_edge, %atmel_hlcdc_dc_modeset_init.exit.thread.i
  tail call void @drm_mode_config_reset(ptr noundef %call) #6
  %59 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev1.i, align 4
  %call.i102.i = tail call i32 @__pm_runtime_resume(ptr noundef %60, i32 noundef 4) #6
  %61 = ptrtoint ptr %hlcdc.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hlcdc.i, align 4
  %irq.i = getelementptr inbounds %struct.atmel_hlcdc, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %irq.i, align 4
  %65 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev_private.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %isr.i.i.i) #6
  %67 = ptrtoint ptr %isr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %isr.i.i.i, align 4, !annotation !116
  %hlcdc.i.i.i = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %66, i32 0, i32 2
  %68 = ptrtoint ptr %hlcdc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hlcdc.i.i.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %call.i.i103.i = tail call i32 @regmap_write(ptr noundef %71, i32 noundef 48, i32 noundef -1) #6
  %72 = ptrtoint ptr %hlcdc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hlcdc.i.i.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %call3.i.i.i = call i32 @regmap_read(ptr noundef %75, i32 noundef 56, ptr noundef nonnull %isr.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %isr.i.i.i) #6
  %76 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev1.i, align 4
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 4
  %78 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %driver.i.i, align 4
  %name.i.i = getelementptr inbounds %struct.drm_driver, ptr %79, i32 0, i32 21
  %80 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %name.i.i, align 4
  %call.i7.i.i = call i32 @devm_request_threaded_irq(ptr noundef %77, i32 noundef %64, ptr noundef nonnull @atmel_hlcdc_dc_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %81, ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i.i)
  %tobool.not.i104.i = icmp eq i32 %call.i7.i.i, 0
  br i1 %tobool.not.i104.i, label %atmel_hlcdc_dc_irq_install.exit.thread.i, label %atmel_hlcdc_dc_irq_install.exit.i

atmel_hlcdc_dc_irq_install.exit.thread.i:         ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev_private.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.atmel_hlcdc_dc, ptr %83, i32 0, i32 4, i32 0
  %84 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %85, null
  %or.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 256
  %arrayidx.1.i.i.i = getelementptr %struct.atmel_hlcdc_dc, ptr %83, i32 0, i32 4, i32 1
  %86 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.1.i.i.i, align 4
  %tobool.not.1.i.i.i = icmp eq ptr %87, null
  %or.1.i.i.i = select i1 %tobool.not.1.i.i.i, i32 0, i32 512
  %cfg.1.1.i.i.i = or i32 %or.1.i.i.i, %or.i.i.i
  %arrayidx.2.i.i.i = getelementptr %struct.atmel_hlcdc_dc, ptr %83, i32 0, i32 4, i32 2
  %88 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.2.i.i.i, align 4
  %tobool.not.2.i.i.i = icmp eq ptr %89, null
  %or.2.i.i.i = select i1 %tobool.not.2.i.i.i, i32 0, i32 1024
  %cfg.1.2.i.i.i = or i32 %cfg.1.1.i.i.i, %or.2.i.i.i
  %arrayidx.3.i.i.i = getelementptr %struct.atmel_hlcdc_dc, ptr %83, i32 0, i32 4, i32 3
  %90 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx.3.i.i.i, align 4
  %tobool.not.3.i.i.i = icmp eq ptr %91, null
  %or.3.i.i.i = select i1 %tobool.not.3.i.i.i, i32 0, i32 2048
  %cfg.1.3.i.i.i = or i32 %cfg.1.2.i.i.i, %or.3.i.i.i
  %arrayidx.4.i.i.i = getelementptr %struct.atmel_hlcdc_dc, ptr %83, i32 0, i32 4, i32 4
  %92 = ptrtoint ptr %arrayidx.4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx.4.i.i.i, align 4
  %tobool.not.4.i.i.i = icmp eq ptr %93, null
  %or.4.i.i.i = select i1 %tobool.not.4.i.i.i, i32 0, i32 4096
  %cfg.1.4.i.i.i = or i32 %cfg.1.3.i.i.i, %or.4.i.i.i
  %arrayidx.5.i.i.i = getelementptr %struct.atmel_hlcdc_dc, ptr %83, i32 0, i32 4, i32 5
  %94 = ptrtoint ptr %arrayidx.5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.5.i.i.i, align 4
  %tobool.not.5.i.i.i = icmp eq ptr %95, null
  %or.5.i.i.i = select i1 %tobool.not.5.i.i.i, i32 0, i32 8192
  %cfg.1.5.i.i.i = or i32 %cfg.1.4.i.i.i, %or.5.i.i.i
  %hlcdc.i9.i.i = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %83, i32 0, i32 2
  %96 = ptrtoint ptr %hlcdc.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hlcdc.i9.i.i, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %call.i10.i.i = call i32 @regmap_write(ptr noundef %99, i32 noundef 44, i32 noundef %cfg.1.5.i.i.i) #6
  %100 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev1.i, align 4
  %call.i106112.i = call i32 @__pm_runtime_idle(ptr noundef %101, i32 noundef 4) #6
  br label %if.end5

atmel_hlcdc_dc_irq_install.exit.i:                ; preds = %if.end44.i
  %102 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev1.i, align 4
  %call.i106.i = call i32 @__pm_runtime_idle(ptr noundef %103, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i.i)
  %cmp51.i = icmp slt i32 %call.i7.i.i, 0
  br i1 %cmp51.i, label %do.end55.i, label %atmel_hlcdc_dc_irq_install.exit.i.if.end5_crit_edge

atmel_hlcdc_dc_irq_install.exit.i.if.end5_crit_edge: ; preds = %atmel_hlcdc_dc_irq_install.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

do.end55.i:                                       ; preds = %atmel_hlcdc_dc_irq_install.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %104 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev1.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.22) #9
  br label %err_periph_clk_disable.i

err_periph_clk_disable.i:                         ; preds = %do.end55.i, %do.end42.i, %do.end34.i
  %ret.0.i = phi i32 [ %call30.i, %do.end34.i ], [ %retval.0.i101.i, %do.end42.i ], [ %call.i7.i.i, %do.end55.i ]
  %106 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev1.i, align 4
  call void @__pm_runtime_disable(ptr noundef %107, i1 noundef zeroext true) #6
  %108 = ptrtoint ptr %hlcdc.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hlcdc.i, align 4
  %periph_clk60.i = getelementptr inbounds %struct.atmel_hlcdc, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %periph_clk60.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %periph_clk60.i, align 4
  call void @clk_disable(ptr noundef %111) #6
  call void @clk_unprepare(ptr noundef %111) #6
  br label %err_put

if.end5:                                          ; preds = %atmel_hlcdc_dc_irq_install.exit.i.if.end5_crit_edge, %atmel_hlcdc_dc_irq_install.exit.thread.i
  %driver_data.i.i.i = getelementptr i8, ptr %2, i32 164
  %112 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call, ptr %driver_data.i.i.i, align 4
  call void @drm_kms_helper_poll_init(ptr noundef %call) #6
  %call6 = call i32 @drm_dev_register(ptr noundef %call, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %err_unload

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  call void @drm_fbdev_generic_setup(ptr noundef %call, i32 noundef 24) #6
  br label %cleanup

err_unload:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @atmel_hlcdc_dc_unload(ptr noundef %call)
  br label %err_put

err_put:                                          ; preds = %err_unload, %err_periph_clk_disable.i, %do.end26.i, %if.end10.i.err_put_crit_edge, %do.end8.i, %do.end.i
  %ret.0 = phi i32 [ %call6, %err_unload ], [ -12, %if.end10.i.err_put_crit_edge ], [ -19, %do.end.i ], [ -22, %do.end8.i ], [ %ret.0.i, %err_periph_clk_disable.i ], [ %retval.0.i.ph.i, %do.end26.i ]
  call void @drm_dev_put(ptr noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %err_put, %if.end9, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %ret.0, %err_put ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_hlcdc_dc_drm_remove(ptr nocapture noundef readonly %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_dev_unregister(ptr noundef %1) #6
  tail call fastcc void @atmel_hlcdc_dc_unload(ptr noundef %1)
  tail call void @drm_dev_put(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fbdev_generic_setup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_hlcdc_dc_unload(ptr noundef %dev) unnamed_addr #4 align 64 {
entry:
  %isr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  tail call void @drm_kms_helper_poll_fini(ptr noundef %dev) #6
  tail call void @drm_atomic_helper_shutdown(ptr noundef %dev) #6
  tail call void @drm_mode_config_cleanup(ptr noundef %dev) #6
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #6
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %isr.i.i) #6
  %6 = ptrtoint ptr %isr.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %isr.i.i, align 4, !annotation !116
  %hlcdc.i.i = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %hlcdc.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hlcdc.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 48, i32 noundef -1) #6
  %11 = ptrtoint ptr %hlcdc.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hlcdc.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call3.i.i = call i32 @regmap_read(ptr noundef %14, i32 noundef 56, ptr noundef nonnull %isr.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %isr.i.i) #6
  %15 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1, align 4
  %call.i14 = call i32 @__pm_runtime_idle(ptr noundef %16, i32 noundef 4) #6
  %17 = ptrtoint ptr %dev_private to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %dev_private, align 4
  %18 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1, align 4
  call void @__pm_runtime_disable(ptr noundef %19, i1 noundef zeroext true) #6
  %hlcdc = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %hlcdc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hlcdc, align 4
  %periph_clk = getelementptr inbounds %struct.atmel_hlcdc, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %periph_clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %periph_clk, align 4
  call void @clk_disable(ptr noundef %23) #6
  call void @clk_unprepare(ptr noundef %23) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_cma_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_cma_dumb_create(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_poll(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ioctl(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_open(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_hlcdc_create_outputs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_hlcdc_create_planes(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_hlcdc_crtc_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_create(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_hlcdc_dc_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  %imr = alloca i32, align 4
  %isr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %imr) #6
  %2 = ptrtoint ptr %imr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %imr, align 4, !annotation !116
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %isr) #6
  %3 = ptrtoint ptr %isr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %isr, align 4, !annotation !116
  %hlcdc = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %hlcdc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hlcdc, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call = call i32 @regmap_read(ptr noundef %7, i32 noundef 52, ptr noundef nonnull %imr) #6
  %8 = ptrtoint ptr %hlcdc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hlcdc, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call3 = call i32 @regmap_read(ptr noundef %11, i32 noundef 56, ptr noundef nonnull %isr) #6
  %12 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %imr, align 4
  %14 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %isr, align 4
  %and = and i32 %15, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and4 = and i32 %and, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %crtc = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %crtc, align 4
  call void @atmel_hlcdc_crtc_irq(ptr noundef %17) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %and8 = and i32 %and, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.for.inc_crit_edge, label %if.then10

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then10:                                        ; preds = %if.end7
  %arrayidx = getelementptr %struct.atmel_hlcdc_dc, ptr %1, i32 0, i32 4, i32 0
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.then10.for.inc_crit_edge, label %if.end.i

if.then10.for.inc_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.i:                                         ; preds = %if.then10
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %type.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type.i, align 4
  %.off.i = add i32 %23, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %if.then8.i, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 -528
  call void @atmel_hlcdc_plane_irq(ptr noundef %add.ptr.i.i) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then8.i, %if.end.i.for.inc_crit_edge, %if.then10.for.inc_crit_edge, %if.end7.for.inc_crit_edge
  %and8.1 = and i32 %and, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.1)
  %tobool9.not.1 = icmp eq i32 %and8.1, 0
  br i1 %tobool9.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then10.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then10.1:                                      ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.atmel_hlcdc_dc, ptr %1, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.i.1 = icmp eq ptr %25, null
  br i1 %tobool.not.i.1, label %if.then10.1.for.inc.1_crit_edge, label %if.end.i.1

if.then10.1.for.inc.1_crit_edge:                  ; preds = %if.then10.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.end.i.1:                                       ; preds = %if.then10.1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %type.i.1 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %type.i.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type.i.1, align 4
  %.off.i.1 = add i32 %29, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i.1)
  %switch.i.1 = icmp ult i32 %.off.i.1, 3
  br i1 %switch.i.1, label %if.then8.i.1, label %if.end.i.1.for.inc.1_crit_edge

if.end.i.1.for.inc.1_crit_edge:                   ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then8.i.1:                                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i.1 = getelementptr i8, ptr %25, i32 -528
  call void @atmel_hlcdc_plane_irq(ptr noundef %add.ptr.i.i.1) #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then8.i.1, %if.end.i.1.for.inc.1_crit_edge, %if.then10.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %and8.2 = and i32 %and, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.2)
  %tobool9.not.2 = icmp eq i32 %and8.2, 0
  br i1 %tobool9.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then10.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then10.2:                                      ; preds = %for.inc.1
  %arrayidx.2 = getelementptr %struct.atmel_hlcdc_dc, ptr %1, i32 0, i32 4, i32 2
  %30 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.i.2 = icmp eq ptr %31, null
  br i1 %tobool.not.i.2, label %if.then10.2.for.inc.2_crit_edge, label %if.end.i.2

if.then10.2.for.inc.2_crit_edge:                  ; preds = %if.then10.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.end.i.2:                                       ; preds = %if.then10.2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %type.i.2 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %type.i.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type.i.2, align 4
  %.off.i.2 = add i32 %35, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i.2)
  %switch.i.2 = icmp ult i32 %.off.i.2, 3
  br i1 %switch.i.2, label %if.then8.i.2, label %if.end.i.2.for.inc.2_crit_edge

if.end.i.2.for.inc.2_crit_edge:                   ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then8.i.2:                                     ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i.2 = getelementptr i8, ptr %31, i32 -528
  call void @atmel_hlcdc_plane_irq(ptr noundef %add.ptr.i.i.2) #6
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then8.i.2, %if.end.i.2.for.inc.2_crit_edge, %if.then10.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %and8.3 = and i32 %and, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.3)
  %tobool9.not.3 = icmp eq i32 %and8.3, 0
  br i1 %tobool9.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then10.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.then10.3:                                      ; preds = %for.inc.2
  %arrayidx.3 = getelementptr %struct.atmel_hlcdc_dc, ptr %1, i32 0, i32 4, i32 3
  %36 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.i.3 = icmp eq ptr %37, null
  br i1 %tobool.not.i.3, label %if.then10.3.for.inc.3_crit_edge, label %if.end.i.3

if.then10.3.for.inc.3_crit_edge:                  ; preds = %if.then10.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.end.i.3:                                       ; preds = %if.then10.3
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %type.i.3 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %type.i.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %type.i.3, align 4
  %.off.i.3 = add i32 %41, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i.3)
  %switch.i.3 = icmp ult i32 %.off.i.3, 3
  br i1 %switch.i.3, label %if.then8.i.3, label %if.end.i.3.for.inc.3_crit_edge

if.end.i.3.for.inc.3_crit_edge:                   ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.then8.i.3:                                     ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i.3 = getelementptr i8, ptr %37, i32 -528
  call void @atmel_hlcdc_plane_irq(ptr noundef %add.ptr.i.i.3) #6
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then8.i.3, %if.end.i.3.for.inc.3_crit_edge, %if.then10.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %and8.4 = and i32 %and, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.4)
  %tobool9.not.4 = icmp eq i32 %and8.4, 0
  br i1 %tobool9.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then10.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

if.then10.4:                                      ; preds = %for.inc.3
  %arrayidx.4 = getelementptr %struct.atmel_hlcdc_dc, ptr %1, i32 0, i32 4, i32 4
  %42 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.i.4 = icmp eq ptr %43, null
  br i1 %tobool.not.i.4, label %if.then10.4.for.inc.4_crit_edge, label %if.end.i.4

if.then10.4.for.inc.4_crit_edge:                  ; preds = %if.then10.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

if.end.i.4:                                       ; preds = %if.then10.4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %type.i.4 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %type.i.4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %type.i.4, align 4
  %.off.i.4 = add i32 %47, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i.4)
  %switch.i.4 = icmp ult i32 %.off.i.4, 3
  br i1 %switch.i.4, label %if.then8.i.4, label %if.end.i.4.for.inc.4_crit_edge

if.end.i.4.for.inc.4_crit_edge:                   ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

if.then8.i.4:                                     ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i.4 = getelementptr i8, ptr %43, i32 -528
  call void @atmel_hlcdc_plane_irq(ptr noundef %add.ptr.i.i.4) #6
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then8.i.4, %if.end.i.4.for.inc.4_crit_edge, %if.then10.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %and8.5 = and i32 %and, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.5)
  %tobool9.not.5 = icmp eq i32 %and8.5, 0
  br i1 %tobool9.not.5, label %for.inc.4.cleanup_crit_edge, label %if.then10.5

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.5:                                      ; preds = %for.inc.4
  %arrayidx.5 = getelementptr %struct.atmel_hlcdc_dc, ptr %1, i32 0, i32 4, i32 5
  %48 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.i.5 = icmp eq ptr %49, null
  br i1 %tobool.not.i.5, label %if.then10.5.cleanup_crit_edge, label %if.end.i.5

if.then10.5.cleanup_crit_edge:                    ; preds = %if.then10.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.5:                                       ; preds = %if.then10.5
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %type.i.5 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %type.i.5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %type.i.5, align 4
  %.off.i.5 = add i32 %53, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i.5)
  %switch.i.5 = icmp ult i32 %.off.i.5, 3
  br i1 %switch.i.5, label %if.then8.i.5, label %if.end.i.5.cleanup_crit_edge

if.end.i.5.cleanup_crit_edge:                     ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8.i.5:                                     ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i.5 = getelementptr i8, ptr %49, i32 -528
  call void @atmel_hlcdc_plane_irq(ptr noundef %add.ptr.i.i.5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then8.i.5, %if.end.i.5.cleanup_crit_edge, %if.then10.5.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then8.i.5 ], [ 1, %if.end.i.5.cleanup_crit_edge ], [ 1, %if.then10.5.cleanup_crit_edge ], [ 1, %for.inc.4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %isr) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %imr) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @atmel_hlcdc_crtc_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @atmel_hlcdc_plane_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_hlcdc_dc_drm_suspend(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %hlcdc = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %hlcdc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hlcdc, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call2 = tail call ptr @drm_atomic_helper_suspend(ptr noundef %1) #6
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %suspend = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %3, i32 0, i32 5
  %state5 = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %3, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %state5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call2, ptr %state5, align 4
  %call7 = tail call i32 @regmap_read(ptr noundef %7, i32 noundef 52, ptr noundef %suspend) #6
  %10 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %suspend, align 4
  %call10 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 48, i32 noundef %11) #6
  %12 = ptrtoint ptr %hlcdc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hlcdc, align 4
  %periph_clk = getelementptr inbounds %struct.atmel_hlcdc, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %periph_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %periph_clk, align 4
  tail call void @clk_disable(ptr noundef %15) #6
  tail call void @clk_unprepare(ptr noundef %15) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %8, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_hlcdc_dc_drm_resume(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %hlcdc = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %hlcdc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hlcdc, align 4
  %periph_clk = getelementptr inbounds %struct.atmel_hlcdc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %periph_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %periph_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %8 = ptrtoint ptr %hlcdc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hlcdc, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %suspend = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %suspend, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 44, i32 noundef %13) #6
  %state = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %3, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state, align 4
  %call5 = tail call i32 @drm_atomic_helper_resume(ptr noundef %1, ptr noundef %15) #6
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_resume(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !105}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @__initcall__kmod_atmel_hlcdc_dc__319_836_atmel_hlcdc_dc_platform_driver_init6, !1, !"__initcall__kmod_atmel_hlcdc_dc__319_836_atmel_hlcdc_dc_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 836, i32 1}
!2 = !{ptr @__exitcall_atmel_hlcdc_dc_platform_driver_exit, !1, !"__exitcall_atmel_hlcdc_dc_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author320, !4, !"__UNIQUE_ID_author320", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 838, i32 1}
!5 = !{ptr @__UNIQUE_ID_author321, !6, !"__UNIQUE_ID_author321", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 839, i32 1}
!7 = !{ptr @__UNIQUE_ID_description322, !8, !"__UNIQUE_ID_description322", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 840, i32 1}
!9 = !{ptr @__UNIQUE_ID_file323, !10, !"__UNIQUE_ID_file323", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 841, i32 1}
!11 = !{ptr @__UNIQUE_ID_license324, !10, !"__UNIQUE_ID_license324", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_alias325, !13, !"__UNIQUE_ID_alias325", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 842, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 831, i32 11}
!16 = !{ptr @atmel_hlcdc_dc_platform_driver, !17, !"atmel_hlcdc_dc_platform_driver", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 827, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 738, i32 10}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 739, i32 10}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 740, i32 10}
!24 = !{ptr @atmel_hlcdc_dc_driver, !25, !"atmel_hlcdc_dc_driver", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 734, i32 32}
!26 = !{ptr @fops, !27, !"fops", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 732, i32 1}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 654, i32 3}
!30 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @atmel_hlcdc_dc_load._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @atmel_hlcdc_dc_load._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 659, i32 3}
!38 = !{ptr @atmel_hlcdc_dc_load._entry.9, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @atmel_hlcdc_dc_load._entry_ptr.11, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 673, i32 3}
!42 = !{ptr @atmel_hlcdc_dc_load._entry.12, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @atmel_hlcdc_dc_load._entry_ptr.14, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 681, i32 3}
!46 = !{ptr @atmel_hlcdc_dc_load._entry.15, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @atmel_hlcdc_dc_load._entry_ptr.17, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 687, i32 3}
!50 = !{ptr @atmel_hlcdc_dc_load._entry.18, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @atmel_hlcdc_dc_load._entry_ptr.20, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 697, i32 3}
!54 = !{ptr @atmel_hlcdc_dc_load._entry.21, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @atmel_hlcdc_dc_load._entry_ptr.23, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @atmel_hlcdc_of_match, !57, !"atmel_hlcdc_of_match", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 464, i32 34}
!58 = !{ptr @atmel_hlcdc_dc_at91sam9n12, !59, !"atmel_hlcdc_dc_at91sam9n12", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 49, i32 41}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 34, i32 11}
!62 = !{ptr @atmel_hlcdc_at91sam9n12_layers, !63, !"atmel_hlcdc_at91sam9n12_layers", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 32, i32 44}
!64 = !{ptr @atmel_hlcdc_dc_at91sam9x5, !65, !"atmel_hlcdc_dc_at91sam9x5", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 142, i32 41}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 80, i32 11}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 99, i32 11}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 121, i32 11}
!72 = !{ptr @atmel_hlcdc_at91sam9x5_layers, !73, !"atmel_hlcdc_at91sam9x5_layers", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 62, i32 44}
!74 = !{ptr @atmel_hlcdc_dc_sama5d4, !75, !"atmel_hlcdc_dc_sama5d4", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 356, i32 41}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 310, i32 11}
!78 = !{ptr @atmel_hlcdc_sama5d4_layers, !79, !"atmel_hlcdc_sama5d4_layers", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 273, i32 44}
!80 = !{ptr @atmel_hlcdc_dc_sama5d3, !81, !"atmel_hlcdc_dc_sama5d3", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 260, i32 41}
!82 = !{ptr @atmel_hlcdc_sama5d3_layers, !83, !"atmel_hlcdc_sama5d3_layers", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 155, i32 44}
!84 = !{ptr @atmel_hlcdc_dc_sam9x60, !85, !"atmel_hlcdc_dc_sam9x60", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 451, i32 41}
!86 = !{ptr @atmel_hlcdc_sam9x60_layers, !87, !"atmel_hlcdc_sam9x60_layers", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 368, i32 44}
!88 = !{ptr @.str.29, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 619, i32 3}
!90 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @atmel_hlcdc_dc_modeset_init._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @atmel_hlcdc_dc_modeset_init._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 625, i32 3}
!95 = !{ptr @atmel_hlcdc_dc_modeset_init._entry.31, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @atmel_hlcdc_dc_modeset_init._entry_ptr.33, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 631, i32 3}
!99 = !{ptr @atmel_hlcdc_dc_modeset_init._entry.34, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @atmel_hlcdc_dc_modeset_init._entry_ptr.36, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @mode_config_funcs, !102, !"mode_config_funcs", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 604, i32 43}
!103 = !{ptr @atmel_hlcdc_dc_of_match, !104, !"atmel_hlcdc_dc_of_match", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 822, i32 34}
!105 = !{ptr @atmel_hlcdc_dc_drm_pm_ops, !106, !"atmel_hlcdc_dc_drm_pm_ops", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c", i32 819, i32 8}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!116 = !{!"auto-init"}
