; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/pl111/pl111_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/pl111/pl111_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_id = type { i32, i32, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pl111_variant_data = type { ptr, i8, i8, i8, i8, i8, i8, ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.86, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.93, ptr, i32, ptr, i8, i32 }
%struct.anon.86 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.93 = type { i32, ptr }
%struct.pl111_drm_dev_private = type { ptr, ptr, ptr, ptr, %struct.drm_simple_display_pipe, ptr, i32, i32, i32, ptr, %struct.clk_hw, %struct.spinlock, ptr, ptr, ptr, i8 }
%struct.drm_simple_display_pipe = type { %struct.drm_crtc, %struct.drm_plane, %struct.drm_encoder, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }

@__initcall__kmod_pl111_drm__322_441_pl111_amba_driver_init6 = internal global ptr @pl111_amba_driver_init, section ".initcall6.init", align 4
@pl111_amba_driver = internal global { %struct.amba_driver, [36 x i8] } { %struct.amba_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @pl111_amba_probe, ptr @pl111_amba_remove, ptr null, ptr @pl111_id_table }, [36 x i8] zeroinitializer }, align 32
@__exitcall_pl111_amba_driver_exit = internal global ptr @pl111_amba_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description323 = internal constant [43 x i8] c"pl111_drm.description=DRM module for PL111\00", section ".modinfo", align 1
@__UNIQUE_ID_author324 = internal constant [26 x i8] c"pl111_drm.author=ARM Ltd.\00", section ".modinfo", align 1
@__UNIQUE_ID_file325 = internal constant [47 x i8] c"pl111_drm.file=drivers/gpu/drm/pl111/pl111_drm\00", section ".modinfo", align 1
@__UNIQUE_ID_license326 = internal constant [22 x i8] c"pl111_drm.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"drm-clcd-pl111\00", [17 x i8] zeroinitializer }, align 32
@pl111_id_table = internal constant { [4 x %struct.amba_id], [48 x i8] } { [4 x %struct.amba_id] [%struct.amba_id { i32 266512, i32 1048575, ptr @pl110_variant }, %struct.amba_id { i32 1573136, i32 16777214, ptr @pl110_nomadik_variant }, %struct.amba_id { i32 266513, i32 1048575, ptr @pl111_variant }, %struct.amba_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@pl111_drm_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pl111_debugfs_init, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @pl111_gem_import_sg_table, ptr @drm_gem_prime_mmap, ptr @drm_gem_cma_dumb_create, ptr null, ptr null, i32 1, i32 0, i32 0, ptr @.str.17, ptr @.str.18, ptr @.str.19, i32 19, ptr null, i32 0, ptr @drm_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@pl111_amba_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 260, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"using device-specific reserved memory\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pl111_amba_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/pl111/pl111_drv.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pl111_amba_probe._entry_ptr = internal global ptr @pl111_amba_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max-memory-bandwidth\00", [43 x i8] zeroinitializer }, align 32
@pl111_amba_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 266, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"no max memory bandwidth specified, assume unlimited\0A\00", [43 x i8] zeroinitializer }, align 32
@pl111_amba_probe._entry_ptr.9 = internal global ptr @pl111_amba_probe._entry.7, section ".printk_index", align 4
@pl111_amba_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 281, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s failed mmio\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@pl111_amba_probe._entry_ptr.13 = internal global ptr @pl111_amba_probe._entry.10, section ".printk_index", align 4
@pl111_amba_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 299, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s failed irq %d\0A\00", [46 x i8] zeroinitializer }, align 32
@pl111_amba_probe._entry_ptr.16 = internal global ptr @pl111_amba_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pl111\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DRM module for PL111\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20170317\00", [23 x i8] zeroinitializer }, align 32
@drm_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@mode_config_funcs = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @drm_gem_fb_create, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@pl111_modeset_init.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl111_drm\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pl111_modeset_init\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"checking endpoint %d\0A\00", [42 x i8] zeroinitializer }, align 32
@pl111_modeset_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.3, i32 117, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"endpoint %d returns %d\0A\00", [40 x i8] zeroinitializer }, align 32
@pl111_modeset_init._entry_ptr = internal global ptr @pl111_modeset_init._entry, section ".printk_index", align 4
@pl111_modeset_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.21, ptr @.str.3, i32 123, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"found panel on endpoint %d\0A\00", [36 x i8] zeroinitializer }, align 32
@pl111_modeset_init._entry_ptr.26 = internal global ptr @pl111_modeset_init._entry.24, section ".printk_index", align 4
@pl111_modeset_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.21, ptr @.str.3, i32 128, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"found bridge on endpoint %d\0A\00", [35 x i8] zeroinitializer }, align 32
@pl111_modeset_init._entry_ptr.29 = internal global ptr @pl111_modeset_init._entry.27, section ".printk_index", align 4
@pl111_modeset_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.21, ptr @.str.3, i32 151, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Using non-panel bridge\0A\00", [40 x i8] zeroinitializer }, align 32
@pl111_modeset_init._entry_ptr.32 = internal global ptr @pl111_modeset_init._entry.30, section ".printk_index", align 4
@pl111_modeset_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.21, ptr @.str.3, i32 153, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No bridge, exiting\0A\00", [44 x i8] zeroinitializer }, align 32
@pl111_modeset_init._entry_ptr.35 = internal global ptr @pl111_modeset_init._entry.33, section ".printk_index", align 4
@pl111_modeset_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.21, ptr @.str.3, i32 165, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to init display\0A\00", [40 x i8] zeroinitializer }, align 32
@pl111_modeset_init._entry_ptr.38 = internal global ptr @pl111_modeset_init._entry.36, section ".printk_index", align 4
@pl111_modeset_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.21, ptr @.str.3, i32 177, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to init vblank\0A\00", [41 x i8] zeroinitializer }, align 32
@pl111_modeset_init._entry_ptr.41 = internal global ptr @pl111_modeset_init._entry.39, section ".printk_index", align 4
@pl110_variant = internal constant { %struct.pl111_variant_data, [40 x i8] } { %struct.pl111_variant_data { ptr @.str.42, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @pl110_pixel_formats, i32 8, i32 16 }, [40 x i8] zeroinitializer }, align 32
@pl110_nomadik_variant = internal constant { %struct.pl111_variant_data, [40 x i8] } { %struct.pl111_variant_data { ptr @.str.43, i8 0, i8 1, i8 0, i8 0, i8 1, i8 1, ptr @pl110_nomadik_pixel_formats, i32 16, i32 16 }, [40 x i8] zeroinitializer }, align 32
@pl111_variant = internal constant { %struct.pl111_variant_data, [40 x i8] } { %struct.pl111_variant_data { ptr @.str.44, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @pl111_pixel_formats, i32 14, i32 32 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PL110\00", [26 x i8] zeroinitializer }, align 32
@pl110_pixel_formats = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 875708993, i32 875709016, i32 875713089, i32 875713112, i32 892420673, i32 892420696, i32 892424769, i32 892424792], [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"LCDC (PL110 Nomadik)\00", [43 x i8] zeroinitializer }, align 32
@pl110_nomadik_pixel_formats = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 875710290, i32 875710274, i32 875708993, i32 875709016, i32 875713089, i32 875713112, i32 909199170, i32 909199186, i32 892420673, i32 892420696, i32 892424769, i32 892424792, i32 842089025, i32 842089048, i32 842093121, i32 842093144], [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PL111\00", [26 x i8] zeroinitializer }, align 32
@pl111_pixel_formats = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 875708993, i32 875709016, i32 875713089, i32 875713112, i32 909199170, i32 909199186, i32 892420673, i32 892420696, i32 892424769, i32 892424792, i32 842089025, i32 842089048, i32 842093121, i32 842093144], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294966779, i64 4294967277]
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"pl111_amba_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 431, i32 27 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 433, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [15 x i8] c"pl111_id_table\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 411, i32 29 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"pl111_drm_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 215, i32 32 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 260, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 264, i32 41 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 266, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 281, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 299, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 220, i32 10 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 221, i32 10 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 222, i32 10 }
@___asan_gen_.108 = private unnamed_addr constant [9 x i8] c"drm_fops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 213, i32 1 }
@___asan_gen_.111 = private unnamed_addr constant [18 x i8] c"mode_config_funcs\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 66, i32 43 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 100, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 116, i32 5 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 122, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 127, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 151, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 153, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 165, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 177, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant [14 x i8] c"pl110_variant\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 349, i32 40 }
@___asan_gen_.168 = private unnamed_addr constant [22 x i8] c"pl110_nomadik_variant\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 401, i32 40 }
@___asan_gen_.171 = private unnamed_addr constant [14 x i8] c"pl111_variant\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 375, i32 40 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 350, i32 10 }
@___asan_gen_.177 = private unnamed_addr constant [20 x i8] c"pl110_pixel_formats\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 338, i32 18 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 402, i32 10 }
@___asan_gen_.183 = private unnamed_addr constant [28 x i8] c"pl110_nomadik_pixel_formats\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 382, i32 18 }
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 376, i32 10 }
@___asan_gen_.189 = private unnamed_addr constant [20 x i8] c"pl111_pixel_formats\00", align 1
@___asan_gen_.190 = private constant [37 x i8] c"../drivers/gpu/drm/pl111/pl111_drv.c\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 358, i32 18 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_author324, ptr @__UNIQUE_ID_description323, ptr @__UNIQUE_ID_file325, ptr @__UNIQUE_ID_license326, ptr @__exitcall_pl111_amba_driver_exit, ptr @__initcall__kmod_pl111_drm__322_441_pl111_amba_driver_init6, ptr @pl111_amba_driver_exit, ptr @pl111_amba_probe._entry, ptr @pl111_amba_probe._entry.10, ptr @pl111_amba_probe._entry.14, ptr @pl111_amba_probe._entry.7, ptr @pl111_amba_probe._entry_ptr, ptr @pl111_amba_probe._entry_ptr.13, ptr @pl111_amba_probe._entry_ptr.16, ptr @pl111_amba_probe._entry_ptr.9, ptr @pl111_modeset_init._entry, ptr @pl111_modeset_init._entry.24, ptr @pl111_modeset_init._entry.27, ptr @pl111_modeset_init._entry.30, ptr @pl111_modeset_init._entry.33, ptr @pl111_modeset_init._entry.36, ptr @pl111_modeset_init._entry.39, ptr @pl111_modeset_init._entry_ptr, ptr @pl111_modeset_init._entry_ptr.26, ptr @pl111_modeset_init._entry_ptr.29, ptr @pl111_modeset_init._entry_ptr.32, ptr @pl111_modeset_init._entry_ptr.35, ptr @pl111_modeset_init._entry_ptr.38, ptr @pl111_modeset_init._entry_ptr.41, ptr @pl111_amba_driver, ptr @.str, ptr @pl111_id_table, ptr @pl111_drm_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @drm_fops, ptr @mode_config_funcs, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @pl110_variant, ptr @pl110_nomadik_variant, ptr @pl111_variant, ptr @.str.42, ptr @pl110_pixel_formats, ptr @.str.43, ptr @pl110_nomadik_pixel_formats, ptr @.str.44, ptr @pl111_pixel_formats], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_amba_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_drm_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_amba_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_amba_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_amba_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_amba_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_config_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_modeset_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_modeset_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_modeset_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_modeset_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_modeset_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_modeset_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_modeset_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl110_variant to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl110_nomadik_variant to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_variant to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl110_pixel_formats to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl110_nomadik_pixel_formats to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_pixel_formats to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pl111_amba_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amba_driver_register(ptr noundef nonnull @pl111_amba_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pl111_amba_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @amba_driver_unregister(ptr noundef nonnull @pl111_amba_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl111_amba_probe(ptr noundef %amba_dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.amba_id, ptr %id, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %amba_dev, i32 noundef 1712, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @drm_dev_alloc(ptr noundef nonnull @pl111_drm_driver, ptr noundef %amba_dev) #5
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %driver_data.i = getelementptr inbounds %struct.device, ptr %amba_dev, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %call.i, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %call2, i32 0, i32 5
  %5 = ptrtoint ptr %dev_private to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %dev_private, align 4
  %variant9 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %call.i, i32 0, i32 12
  %6 = ptrtoint ptr %variant9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %variant9, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %amba_dev, i32 0, i32 27
  %7 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node.i, align 8
  %call.i117 = tail call i32 @of_reserved_mem_device_init_by_idx(ptr noundef %amba_dev, ptr noundef %8, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117)
  %tobool11.not = icmp eq i32 %call.i117, 0
  br i1 %tobool11.not, label %do.end, label %if.end6.if.end13_crit_edge

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %amba_dev, ptr noundef nonnull @.str.1) #8
  %use_device_memory = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %call.i, i32 0, i32 15
  %9 = ptrtoint ptr %use_device_memory to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %use_device_memory, align 8
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.end6.if.end13_crit_edge
  %10 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node.i, align 8
  %memory_bw = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %call.i, i32 0, i32 6
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %11, ptr noundef nonnull @.str.6, ptr noundef %memory_bw, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool15.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool15.not, label %if.end13.if.end21_crit_edge, label %do.end19

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %amba_dev, ptr noundef nonnull @.str.8) #8
  %12 = ptrtoint ptr %memory_bw to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %memory_bw, align 4
  br label %if.end21

if.end21:                                         ; preds = %do.end19, %if.end13.if.end21_crit_edge
  %is_pl110 = getelementptr inbounds %struct.pl111_variant_data, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %is_pl110 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_pl110, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool22.not = icmp eq i8 %14, 0
  br i1 %tobool22.not, label %lor.lhs.false, label %if.end21.if.end27_crit_edge

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

lor.lhs.false:                                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %is_lcdc = getelementptr inbounds %struct.pl111_variant_data, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %is_lcdc to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %is_lcdc, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool23.not = icmp eq i8 %16, 0
  %spec.select = select i1 %tobool23.not, i32 28, i32 24
  %spec.select121 = select i1 %tobool23.not, i32 24, i32 28
  br label %if.end27

if.end27:                                         ; preds = %lor.lhs.false, %if.end21.if.end27_crit_edge
  %.sink120 = phi i32 [ 24, %if.end21.if.end27_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %.sink = phi i32 [ 28, %if.end21.if.end27_crit_edge ], [ %spec.select121, %lor.lhs.false ]
  %ienb25 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %call.i, i32 0, i32 7
  %17 = ptrtoint ptr %ienb25 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink120, ptr %ienb25, align 8
  %ctrl26 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %call.i, i32 0, i32 8
  %18 = ptrtoint ptr %ctrl26 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %ctrl26, align 4
  %res = getelementptr inbounds %struct.amba_device, ptr %amba_dev, i32 0, i32 1
  %call28 = tail call ptr @devm_ioremap_resource(ptr noundef %amba_dev, ptr noundef %res) #5
  %regs = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call28, ptr %regs, align 8
  %cmp.i118 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i118, label %do.end34, label %if.end37

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %amba_dev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2) #8
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 8
  %22 = ptrtoint ptr %21 to i32
  br label %dev_put

if.end37:                                         ; preds = %if.end27
  %call38 = tail call i32 @pl111_versatile_init(ptr noundef %amba_dev, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.dev_put_crit_edge

if.end37.dev_put_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_put

if.end41:                                         ; preds = %if.end37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 8
  %ienb46 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %call.i, i32 0, i32 7
  %25 = ptrtoint ptr %ienb46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ienb46, align 8
  %add.ptr = getelementptr i8, ptr %24, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !113
  %irq = getelementptr inbounds %struct.amba_device, ptr %amba_dev, i32 0, i32 7
  %27 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq, align 8
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %call.i119 = tail call i32 @devm_request_threaded_irq(ptr noundef %amba_dev, i32 noundef %28, ptr noundef nonnull @pl111_irq, ptr noundef null, i32 noundef 0, ptr noundef %30, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %cmp.not = icmp eq i32 %call.i119, 0
  br i1 %cmp.not, label %if.end52, label %do.end51

do.end51:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %amba_dev, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef %call.i119) #8
  br label %cleanup

if.end52:                                         ; preds = %if.end41
  %call53 = tail call fastcc i32 @pl111_modeset_init(ptr noundef %call2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54.not = icmp eq i32 %call53, 0
  br i1 %cmp54.not, label %if.end56, label %if.end52.dev_put_crit_edge

if.end52.dev_put_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_put

if.end56:                                         ; preds = %if.end52
  %call57 = tail call i32 @drm_dev_register(ptr noundef %call2, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.end56.dev_put_crit_edge, label %if.end60

if.end56.dev_put_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_put

if.end60:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %variant9 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %variant9, align 4
  %fb_bpp = getelementptr inbounds %struct.pl111_variant_data, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %fb_bpp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fb_bpp, align 4
  tail call void @drm_fbdev_generic_setup(ptr noundef %call2, i32 noundef %34) #5
  br label %cleanup

dev_put:                                          ; preds = %if.end56.dev_put_crit_edge, %if.end52.dev_put_crit_edge, %if.end37.dev_put_crit_edge, %do.end34
  %ret.0 = phi i32 [ %22, %do.end34 ], [ %call38, %if.end37.dev_put_crit_edge ], [ %call53, %if.end52.dev_put_crit_edge ], [ %call57, %if.end56.dev_put_crit_edge ]
  tail call void @drm_dev_put(ptr noundef %call2) #5
  tail call void @of_reserved_mem_device_release(ptr noundef %amba_dev) #5
  br label %cleanup

cleanup:                                          ; preds = %dev_put, %if.end60, %do.end51, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then4 ], [ %ret.0, %dev_put ], [ %call.i119, %do.end51 ], [ 0, %if.end60 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl111_amba_remove(ptr noundef %amba_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %amba_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  tail call void @drm_dev_unregister(ptr noundef %1) #5
  %panel = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %panel, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bridge = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bridge, align 4
  tail call void @drm_panel_bridge_remove(ptr noundef %7) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @drm_dev_put(ptr noundef %1) #5
  tail call void @of_reserved_mem_device_release(ptr noundef %amba_dev) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pl111_versatile_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pl111_irq(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pl111_modeset_init(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %tmp_panel = alloca ptr, align 4
  %tmp_bridge = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @drmm_mode_config_init(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %funcs = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 27
  %6 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @mode_config_funcs, ptr %funcs, align 4
  %min_width = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 23
  %7 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 25
  %8 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1024, ptr %max_width, align 4
  %min_height = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 24
  %9 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 26
  %10 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 768, ptr %max_height, align 4
  %call3 = tail call ptr @of_graph_get_next_endpoint(ptr noundef %5, ptr noundef null) #5
  %cmp.not169 = icmp eq ptr %call3, null
  br i1 %cmp.not169, label %if.end.do.end65_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.do.end65_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end65

for.body:                                         ; preds = %if.end40.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0174 = phi i32 [ %inc, %if.end40.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %defer.0.off0173 = phi i1 [ %defer.1.off0, %if.end40.for.body_crit_edge ], [ false, %if.end.for.body_crit_edge ]
  %bridge.0172 = phi ptr [ %bridge.1, %if.end40.for.body_crit_edge ], [ null, %if.end.for.body_crit_edge ]
  %panel.0171 = phi ptr [ %panel.1, %if.end40.for.body_crit_edge ], [ null, %if.end.for.body_crit_edge ]
  %remote.0170 = phi ptr [ %call41, %if.end40.for.body_crit_edge ], [ %call3, %if.end.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_panel) #5
  %11 = ptrtoint ptr %tmp_panel to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %tmp_panel, align 4, !annotation !114
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_bridge) #5
  %12 = ptrtoint ptr %tmp_bridge to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %tmp_bridge, align 4, !annotation !114
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl111_modeset_init.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl111_modeset_init, %if.then8)) #5
          to label %do.end [label %if.then8], !srcloc !115

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl111_modeset_init.__UNIQUE_ID_ddebug321, ptr noundef %14, ptr noundef nonnull @.str.22, i32 noundef %i.0174) #5
  br label %do.end

do.end:                                           ; preds = %if.then8, %for.body
  %15 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1, align 4
  %of_node12 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %of_node12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node12, align 8
  %call13 = call i32 @drm_of_find_panel_or_bridge(ptr noundef %18, i32 noundef 0, i32 noundef %i.0174, ptr noundef nonnull %tmp_panel, ptr noundef nonnull %tmp_bridge) #5
  %19 = zext i32 %call13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call13, label %do.end22 [
    i32 0, label %do.end.if.end26_crit_edge
    i32 -517, label %if.then17
    i32 -19, label %do.end.if.end26_crit_edge199
  ]

do.end.if.end26_crit_edge199:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

do.end.if.end26_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

do.end22:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.23, i32 noundef %i.0174, i32 noundef %call13) #8
  br label %if.end26

if.end26:                                         ; preds = %do.end22, %if.then17, %do.end.if.end26_crit_edge, %do.end.if.end26_crit_edge199
  %defer.1.off0 = phi i1 [ true, %if.then17 ], [ %defer.0.off0173, %do.end22 ], [ %defer.0.off0173, %do.end.if.end26_crit_edge ], [ %defer.0.off0173, %do.end.if.end26_crit_edge199 ]
  %22 = ptrtoint ptr %tmp_panel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tmp_panel, align 4
  %tobool27.not = icmp eq ptr %23, null
  br i1 %tobool27.not, label %if.end26.if.end33_crit_edge, label %do.end31

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

do.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.25, i32 noundef %i.0174) #8
  %26 = ptrtoint ptr %tmp_panel to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tmp_panel, align 4
  br label %if.end33

if.end33:                                         ; preds = %do.end31, %if.end26.if.end33_crit_edge
  %panel.1 = phi ptr [ %27, %do.end31 ], [ %panel.0171, %if.end26.if.end33_crit_edge ]
  %28 = ptrtoint ptr %tmp_bridge to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tmp_bridge, align 4
  %tobool34.not = icmp eq ptr %29, null
  br i1 %tobool34.not, label %if.end33.if.end40_crit_edge, label %do.end38

if.end33.if.end40_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

do.end38:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.28, i32 noundef %i.0174) #8
  %32 = ptrtoint ptr %tmp_bridge to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tmp_bridge, align 4
  br label %if.end40

if.end40:                                         ; preds = %do.end38, %if.end33.if.end40_crit_edge
  %bridge.1 = phi ptr [ %33, %do.end38 ], [ %bridge.0172, %if.end33.if.end40_crit_edge ]
  %inc = add i32 %i.0174, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_bridge) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_panel) #5
  %call41 = call ptr @of_graph_get_next_endpoint(ptr noundef %5, ptr noundef nonnull %remote.0170) #5
  %cmp.not = icmp eq ptr %call41, null
  br i1 %cmp.not, label %for.end, label %if.end40.for.body_crit_edge

if.end40.for.body_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end40
  %tobool42.not = icmp eq ptr %panel.1, null
  %tobool43.not = icmp eq ptr %bridge.1, null
  %or.cond = select i1 %tobool42.not, i1 %tobool43.not, i1 false
  %34 = select i1 %or.cond, i1 %defer.1.off0, i1 false
  br i1 %34, label %for.end.cleanup_crit_edge, label %if.end47

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end47:                                         ; preds = %for.end
  br i1 %tobool42.not, label %if.else55, label %if.then49

if.then49:                                        ; preds = %if.end47
  %call50 = call ptr @drm_panel_bridge_add_typed(ptr noundef nonnull %panel.1, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then52, label %if.then71

if.then52:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %call50 to i32
  br label %cleanup

if.else55:                                        ; preds = %if.end47
  br i1 %tobool43.not, label %if.else55.do.end65_crit_edge, label %if.end68.thread

if.else55.do.end65_crit_edge:                     ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end65

if.end68.thread:                                  ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.31) #8
  %bridge69167 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %1, i32 0, i32 3
  %38 = ptrtoint ptr %bridge69167 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %bridge.1, ptr %bridge69167, align 4
  br label %if.end74

do.end65:                                         ; preds = %if.else55.do.end65_crit_edge, %if.end.do.end65_crit_edge
  %39 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.34) #8
  br label %cleanup

if.then71:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #7
  %bridge69 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %1, i32 0, i32 3
  %41 = ptrtoint ptr %bridge69 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call50, ptr %bridge69, align 4
  %panel72 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %1, i32 0, i32 2
  %42 = ptrtoint ptr %panel72 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %panel.1, ptr %panel72, align 8
  %call73 = call ptr @drm_panel_bridge_connector(ptr noundef %call50) #5
  %connector = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %connector to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call73, ptr %connector, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %if.end68.thread
  %bridge.2168 = phi ptr [ %bridge.1, %if.end68.thread ], [ %call50, %if.then71 ]
  %call75 = call i32 @pl111_display_init(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76.not = icmp eq i32 %call75, 0
  br i1 %cmp76.not, label %if.end82, label %if.end74.out_bridge_crit_edge

if.end74.out_bridge_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_bridge

if.end82:                                         ; preds = %if.end74
  %pipe = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %1, i32 0, i32 4
  %call83 = call i32 @drm_simple_display_pipe_attach_bridge(ptr noundef %pipe, ptr noundef %bridge.2168) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %if.end82.cleanup_crit_edge

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end86:                                         ; preds = %if.end82
  %variant = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %1, i32 0, i32 12
  %44 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %variant, align 4
  %broken_vblank = getelementptr inbounds %struct.pl111_variant_data, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %broken_vblank to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %broken_vblank, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool87.not = icmp eq i8 %47, 0
  br i1 %tobool87.not, label %if.then88, label %if.end86.if.end97_crit_edge

if.end86.if.end97_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

if.then88:                                        ; preds = %if.end86
  %call89 = call i32 @drm_vblank_init(ptr noundef %dev, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp90.not = icmp eq i32 %call89, 0
  br i1 %cmp90.not, label %if.then88.if.end97_crit_edge, label %if.then88.out_bridge_crit_edge

if.then88.out_bridge_crit_edge:                   ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_bridge

if.then88.if.end97_crit_edge:                     ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

if.end97:                                         ; preds = %if.then88.if.end97_crit_edge, %if.end86.if.end97_crit_edge
  call void @drm_mode_config_reset(ptr noundef %dev) #5
  call void @drm_kms_helper_poll_init(ptr noundef %dev) #5
  br label %cleanup

out_bridge:                                       ; preds = %if.then88.out_bridge_crit_edge, %if.end74.out_bridge_crit_edge
  %.str.40.sink = phi ptr [ @.str.37, %if.end74.out_bridge_crit_edge ], [ @.str.40, %if.then88.out_bridge_crit_edge ]
  %ret.1 = phi i32 [ %call75, %if.end74.out_bridge_crit_edge ], [ %call89, %if.then88.out_bridge_crit_edge ]
  %48 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull %.str.40.sink) #8
  br i1 %tobool42.not, label %out_bridge.cleanup_crit_edge, label %if.then99

out_bridge.cleanup_crit_edge:                     ; preds = %out_bridge
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then99:                                        ; preds = %out_bridge
  call void @__sanitizer_cov_trace_pc() #7
  call void @drm_panel_bridge_remove(ptr noundef %bridge.2168) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then99, %out_bridge.cleanup_crit_edge, %if.end97, %if.end82.cleanup_crit_edge, %do.end65, %if.then52, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end65 ], [ %call, %entry.cleanup_crit_edge ], [ -517, %for.end.cleanup_crit_edge ], [ %call83, %if.end82.cleanup_crit_edge ], [ %35, %if.then52 ], [ %ret.1, %if.then99 ], [ %ret.1, %out_bridge.cleanup_crit_edge ], [ 0, %if.end97 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fbdev_generic_setup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_reserved_mem_device_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pl111_debugfs_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pl111_gem_import_sg_table(ptr noundef %dev, ptr noundef %attach, ptr noundef %sgt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %use_device_memory = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %use_device_memory to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_device_memory, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call ptr @drm_gem_cma_prime_import_sg_table(ptr noundef %dev, ptr noundef %attach, ptr noundef %sgt) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1, %if.end ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_cma_dumb_create(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_cma_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ioctl(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_reserved_mem_device_init_by_idx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_panel_bridge_add_typed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_panel_bridge_connector(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pl111_display_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_display_pipe_attach_bridge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_create(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !41, !43, !45, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @__initcall__kmod_pl111_drm__322_441_pl111_amba_driver_init6, !1, !"__initcall__kmod_pl111_drm__322_441_pl111_amba_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/pl111/pl111_drv.c", i32 441, i32 1}
!2 = !{ptr @__exitcall_pl111_amba_driver_exit, !1, !"__exitcall_pl111_amba_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description323, !4, !"__UNIQUE_ID_description323", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/pl111/pl111_drv.c", i32 444, i32 1}
!5 = !{ptr @__UNIQUE_ID_author324, !6, !"__UNIQUE_ID_author324", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/pl111/pl111_drv.c", i32 445, i32 1}
!7 = !{ptr @__UNIQUE_ID_file325, !8, !"__UNIQUE_ID_file325", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/pl111/pl111_drv.c", i32 446, i32 1}
!9 = !{ptr @__UNIQUE_ID_license326, !8, !"__UNIQUE_ID_license326", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/pl111/pl111_drv.c", i32 433, i32 11}
!12 = !{ptr @pl111_amba_driver, !13, !"pl111_amba_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/pl111/pl111_drv.c", i32 431, i32 27}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/pl111/pl111_drv.c", i32 260, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pl111_amba_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @pl111_amba_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/pl111/pl111_drv.c", i32 264, i32 41}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/pl111/pl111_drv.c", i32 266, i32 3}
!26 = !{ptr @pl111_amba_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @pl111_amba_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/pl111/pl111_drv.c", i32 281, i32 3}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @pl111_amba_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @pl111_amba_probe._entry_ptr.13, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/pl111/pl111_drv.c", i32 299, i32 3}
!35 = !{ptr @pl111_amba_probe._entry.14, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @pl111_amba_probe._entry_ptr.16, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/pl111/pl111_drv.c", i32 220, i32 10}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/pl111/pl111_drv.c", i32 221, i32 10}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/pl111/pl111_drv.c", i32 222, i32 10}
!43 = !{ptr @pl111_drm_driver, !44, !"pl111_drm_driver", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/pl111/pl111_drv.c", i32 215, i32 32}
!45 = !{ptr @drm_fops, !46, !"drm_fops", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/pl111/pl111_drv.c", i32 213, i32 1}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/pl111/pl111_drv.c", i32 100, i32 3}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @pl111_modeset_init.__UNIQUE_ID_ddebug321, !48, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/pl111/pl111_drv.c", i32 116, i32 5}
!54 = !{ptr @pl111_modeset_init._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @pl111_modeset_init._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/pl111/pl111_drv.c", i32 122, i32 4}
!58 = !{ptr @pl111_modeset_init._entry.24, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @pl111_modeset_init._entry_ptr.26, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/pl111/pl111_drv.c", i32 127, i32 4}
!62 = !{ptr @pl111_modeset_init._entry.27, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @pl111_modeset_init._entry_ptr.29, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/pl111/pl111_drv.c", i32 151, i32 3}
!66 = !{ptr @pl111_modeset_init._entry.30, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @pl111_modeset_init._entry_ptr.32, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/pl111/pl111_drv.c", i32 153, i32 3}
!70 = !{ptr @pl111_modeset_init._entry.33, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @pl111_modeset_init._entry_ptr.35, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/pl111/pl111_drv.c", i32 165, i32 3}
!74 = !{ptr @pl111_modeset_init._entry.36, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @pl111_modeset_init._entry_ptr.38, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/pl111/pl111_drv.c", i32 177, i32 4}
!78 = !{ptr @pl111_modeset_init._entry.39, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @pl111_modeset_init._entry_ptr.41, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @mode_config_funcs, !81, !"mode_config_funcs", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/pl111/pl111_drv.c", i32 66, i32 43}
!82 = !{ptr @pl111_id_table, !83, !"pl111_id_table", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/pl111/pl111_drv.c", i32 411, i32 29}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/pl111/pl111_drv.c", i32 350, i32 10}
!86 = !{ptr @pl110_variant, !87, !"pl110_variant", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/pl111/pl111_drv.c", i32 349, i32 40}
!88 = !{ptr @pl110_pixel_formats, !89, !"pl110_pixel_formats", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/pl111/pl111_drv.c", i32 338, i32 18}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/pl111/pl111_drv.c", i32 402, i32 10}
!92 = !{ptr @pl110_nomadik_variant, !93, !"pl110_nomadik_variant", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/pl111/pl111_drv.c", i32 401, i32 40}
!94 = !{ptr @pl110_nomadik_pixel_formats, !95, !"pl110_nomadik_pixel_formats", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/pl111/pl111_drv.c", i32 382, i32 18}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/pl111/pl111_drv.c", i32 376, i32 10}
!98 = !{ptr @pl111_variant, !99, !"pl111_variant", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/pl111/pl111_drv.c", i32 375, i32 40}
!100 = !{ptr @pl111_pixel_formats, !101, !"pl111_pixel_formats", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/pl111/pl111_drv.c", i32 358, i32 18}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{i8 0, i8 2}
!112 = !{i64 2157162237}
!113 = !{i64 5848815}
!114 = !{!"auto-init"}
!115 = !{i64 2148736959, i64 2148736964, i64 2148736977, i64 2148737021, i64 2148737055, i64 2148737076}
