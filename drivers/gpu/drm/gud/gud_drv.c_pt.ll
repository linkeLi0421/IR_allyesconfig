; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/gud/gud_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/gud/gud_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.85, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.85 = type { [4 x i8] }
%struct.drm_simple_display_pipe_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.atomic_t = type { i32 }
%struct.anon.88 = type { i32, ptr }
%struct.gud_device = type { %struct.drm_device, %struct.drm_simple_display_pipe, ptr, %struct.work_struct, i32, ptr, ptr, i32, i32, ptr, i32, %struct.sg_table, i8, ptr, ptr, i64, i64, i32, %struct.mutex, %struct.mutex, ptr, %struct.drm_rect, i8 }
%struct.drm_simple_display_pipe = type { %struct.drm_crtc, %struct.drm_plane, %struct.drm_encoder, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.sg_table = type { ptr, i32, i32 }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
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
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.gud_property_req = type <{ i16, i64 }>
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_gud__325_685_gud_usb_driver_init6 = internal global ptr @gud_usb_driver_init, section ".initcall6.init", align 4
@gud_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.9, ptr @gud_probe, ptr @gud_disconnect, ptr null, ptr @gud_suspend, ptr @gud_resume, ptr @gud_resume, ptr null, ptr null, ptr @gud_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_gud_usb_driver_exit = internal global ptr @gud_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author326 = internal constant [27 x i8] c"gud.author=Noralf Tr\C3\B8nnes\00", section ".modinfo", align 1
@__UNIQUE_ID_file327 = internal constant [33 x i8] c"gud.file=drivers/gpu/drm/gud/gud\00", section ".modinfo", align 1
@__UNIQUE_ID_license328 = internal constant [25 x i8] c"gud.license=Dual MIT/GPL\00", section ".modinfo", align 1
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: request=0x%x index=%u len=%zu\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"get\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"set\00", [28 x i8] zeroinitializer }, align 32
@gud_usb_transfer.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@gud_usb_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 174, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Unexpected status OK for failed transfer\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gud_usb_transfer\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/gud/gud_drv.c\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gud_usb_transfer._entry_ptr = internal global ptr @gud_usb_transfer._entry, section ".printk_index", align 4
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ret=%d\0A\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gud\00", [28 x i8] zeroinitializer }, align 32
@gud_id_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 131, i16 7504, i16 24909, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 131, i16 5840, i16 4265, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Not a display interface: ret=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@gud_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 460, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Protocol version %u is not supported\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gud_probe\00", [22 x i8] zeroinitializer }, align 32
@gud_probe._entry_ptr = internal global ptr @gud_probe._entry, section ".printk_index", align 4
@gud_drm_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gud_debugfs_init, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr @gud_gem_prime_import, ptr @drm_gem_shmem_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @drm_gem_shmem_dumb_create, ptr null, ptr null, i32 1, i32 0, i32 0, ptr @.str.9, ptr @.str.33, ptr @.str.34, i32 19, ptr null, i32 0, ptr @gud_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gud_mode_config_funcs = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @drm_gem_fb_create_with_dirty, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@gud_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&gdrm->ctrl_lock\00", [47 x i8] zeroinitializer }, align 32
@gud_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&gdrm->damage_lock\00", [45 x i8] zeroinitializer }, align 32
@gud_probe.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&gdrm->work)\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported format: 0x%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@gud_drm_format_r1 = internal constant { %struct.drm_format_info, [40 x i8] } { %struct.drm_format_info { i32 290, i8 0, i8 1, %union.anon.85 { [4 x i8] c"\01\00\00\00" }, [4 x i8] c"\08\00\00\00", [4 x i8] c"\01\00\00\00", i8 1, i8 1, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@gud_drm_format_xrgb1111 = internal constant { %struct.drm_format_info, [40 x i8] } { %struct.drm_format_info { i32 51517218, i8 0, i8 1, %union.anon.85 { [4 x i8] c"\01\00\00\00" }, [4 x i8] c"\02\00\00\00", [4 x i8] c"\01\00\00\00", i8 1, i8 1, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@gud_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.5, i32 557, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"No supported pixel formats found\0A\00", [62 x i8] zeroinitializer }, align 32
@gud_probe._entry_ptr.21 = internal global ptr @gud_probe._entry.19, section ".printk_index", align 4
@gud_pipe_funcs = internal constant { %struct.drm_simple_display_pipe_funcs, [36 x i8] } { %struct.drm_simple_display_pipe_funcs { ptr null, ptr null, ptr null, ptr @gud_pipe_check, ptr @gud_pipe_update, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@gud_pipe_modifiers = internal constant { [2 x i64], [16 x i8] } { [2 x i64] [i64 0, i64 72057594037927935], [16 x i8] zeroinitializer }, align 32
@gud_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.12, ptr @.str.5, i32 604, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to get properties (error=%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@gud_probe._entry_ptr.24 = internal global ptr @gud_probe._entry.22, section ".printk_index", align 4
@gud_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.12, ptr @.str.5, i32 612, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to get connectors (error=%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@gud_probe._entry_ptr.27 = internal global ptr @gud_probe._entry.25, section ".printk_index", align 4
@gud_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.12, ptr @.str.5, i32 622, ptr @.str.30, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"buffer sharing not supported\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@gud_probe._entry_ptr.31 = internal global ptr @gud_probe._entry.28, section ".printk_index", align 4
@.str.32 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"version=%u flags=0x%x compression=0x%x max_buffer_size=%u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Generic USB Display\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20200422\00", [23 x i8] zeroinitializer }, align 32
@gud_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@gud_debugfs_list = internal constant { [1 x %struct.drm_info_list], [16 x i8] } { [1 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.35, ptr @gud_stats_debugfs, i32 0, ptr null }], [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stats\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Max buffer size: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Number of errors:  %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Compression:      \00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" lz4\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" none\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Compression ratio: %llu.%llu\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Ignoring unknown property: %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s:\0A\00", [27 x i8] zeroinitializer }, align 32
@__func__.gud_disconnect = private unnamed_addr constant [15 x i8] c"gud_disconnect\00", align 1
@switch.table.gud_usb_transfer = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 -16, i32 -95, i32 -71, i32 -22, i32 -121], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 8, i64 32, i64 48, i64 64, i64 80, i64 128, i64 129]
@___asan_gen_.45 = private unnamed_addr constant [15 x i8] c"gud_usb_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 675, i32 26 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 157, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 173, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 180, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 685, i32 1 }
@___asan_gen_.81 = private unnamed_addr constant [13 x i8] c"gud_id_table\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 667, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 455, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 460, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [15 x i8] c"gud_drm_driver\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 382, i32 32 }
@___asan_gen_.99 = private unnamed_addr constant [22 x i8] c"gud_mode_config_funcs\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 369, i32 43 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 480, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 481, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 482, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 512, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant [18 x i8] c"gud_drm_format_r1\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 34, i32 37 }
@___asan_gen_.126 = private unnamed_addr constant [24 x i8] c"gud_drm_format_xrgb1111\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 44, i32 37 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 557, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [15 x i8] c"gud_pipe_funcs\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 364, i32 51 }
@___asan_gen_.138 = private unnamed_addr constant [19 x i8] c"gud_pipe_modifiers\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 375, i32 18 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 604, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 612, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 622, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 98, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 390, i32 12 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 391, i32 12 }
@___asan_gen_.171 = private unnamed_addr constant [9 x i8] c"gud_fops\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 380, i32 1 }
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"gud_debugfs_list\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 354, i32 35 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 355, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 332, i32 16 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 333, i32 16 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 335, i32 14 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 337, i32 15 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 339, i32 15 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 340, i32 14 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 348, i32 17 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 295, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.205 = private constant [33 x i8] c"../drivers/gpu/drm/gud/gud_drv.c\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 642, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant [30 x i8] c"switch.table.gud_usb_transfer\00", align 1
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_author326, ptr @__UNIQUE_ID_file327, ptr @__UNIQUE_ID_license328, ptr @__exitcall_gud_usb_driver_exit, ptr @__initcall__kmod_gud__325_685_gud_usb_driver_init6, ptr @gud_probe._entry, ptr @gud_probe._entry.19, ptr @gud_probe._entry.22, ptr @gud_probe._entry.25, ptr @gud_probe._entry.28, ptr @gud_probe._entry_ptr, ptr @gud_probe._entry_ptr.21, ptr @gud_probe._entry_ptr.24, ptr @gud_probe._entry_ptr.27, ptr @gud_probe._entry_ptr.31, ptr @gud_usb_driver_exit, ptr @gud_usb_transfer._entry, ptr @gud_usb_transfer._entry_ptr, ptr @gud_usb_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @gud_id_table, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @gud_drm_driver, ptr @gud_mode_config_funcs, ptr @gud_probe.__key, ptr @.str.13, ptr @gud_probe.__key.14, ptr @.str.15, ptr @gud_probe.__key.16, ptr @.str.17, ptr @.str.18, ptr @gud_drm_format_r1, ptr @gud_drm_format_xrgb1111, ptr @.str.20, ptr @gud_pipe_funcs, ptr @gud_pipe_modifiers, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @gud_fops, ptr @gud_debugfs_list, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @switch.table.gud_usb_transfer], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gud_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gud_usb_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gud_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gud_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gud_drm_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gud_mode_config_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gud_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gud_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gud_probe.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gud_drm_format_r1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gud_drm_format_xrgb1111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gud_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gud_pipe_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gud_pipe_modifiers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gud_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gud_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gud_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gud_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gud_debugfs_list to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gud_usb_transfer to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gud_usb_get(ptr noundef %gdrm, i8 noundef zeroext %request, i16 noundef zeroext %index, ptr noundef %buf, i32 noundef %max_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @gud_usb_transfer(ptr noundef %gdrm, i1 noundef zeroext true, i8 noundef zeroext %request, i16 noundef zeroext %index, ptr noundef %buf, i32 noundef %max_len)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gud_usb_transfer(ptr noundef %gdrm, i1 noundef zeroext %in, i8 noundef zeroext %request, i16 noundef zeroext %index, ptr noundef %buf, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_device, ptr %gdrm, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #8
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %idx, align 4, !annotation !115
  %tobool.not = icmp eq ptr %gdrm, null
  %spec.select = select i1 %tobool.not, ptr null, ptr %1
  %cond5 = select i1 %in, ptr @.str.1, ptr @.str.2
  %conv = zext i8 %request to i32
  %conv6 = zext i16 %index to i32
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %spec.select, i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull %cond5, i32 noundef %conv, i32 noundef %conv6, i32 noundef %len) #8
  %call = call zeroext i1 @drm_dev_enter(ptr noundef %gdrm, ptr noundef nonnull %idx) #8
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctrl_lock = getelementptr inbounds %struct.gud_device, ptr %gdrm, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %ctrl_lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not.i = icmp ne i32 %len, 0
  %tobool1.not.i = icmp eq ptr %buf, null
  %or.cond.i = and i1 %tobool1.not.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end.lor.lhs.false_crit_edge, label %gud_usb_control_msg.exit

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

gud_usb_control_msg.exit:                         ; preds = %if.end
  %parent.i.i = getelementptr i8, ptr %1, i32 136
  %3 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 -128
  %cur_altsetting.i = getelementptr i8, ptr %1, i32 -28
  %5 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cur_altsetting.i, align 4
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bInterfaceNumber.i, align 2
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i.i = shl i32 %10, 8
  %..i = select i1 %in, i32 -2147483520, i32 -2147483648
  %.28.i = select i1 %in, i8 -63, i8 65
  %or9.i = or i32 %shl.i.i, %..i
  %conv14.i = zext i8 %8 to i16
  %conv15.i = trunc i32 %len to i16
  %call16.i = call i32 @usb_control_msg(ptr noundef %add.ptr.i.i, i32 noundef %or9.i, i8 noundef zeroext %request, i8 noundef zeroext %.28.i, i16 noundef zeroext %index, i16 noundef zeroext %conv14.i, ptr noundef %buf, i16 noundef zeroext %conv15.i, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %call16.i)
  %cmp = icmp eq i32 %call16.i, -32
  br i1 %cmp, label %gud_usb_control_msg.exit.if.then16_crit_edge, label %gud_usb_control_msg.exit.lor.lhs.false_crit_edge

gud_usb_control_msg.exit.lor.lhs.false_crit_edge: ; preds = %gud_usb_control_msg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

gud_usb_control_msg.exit.if.then16_crit_edge:     ; preds = %gud_usb_control_msg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

lor.lhs.false:                                    ; preds = %gud_usb_control_msg.exit.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %retval.0.i77 = phi i32 [ %call16.i, %gud_usb_control_msg.exit.lor.lhs.false_crit_edge ], [ -22, %if.end.lor.lhs.false_crit_edge ]
  %flags = getelementptr inbounds %struct.gud_device, ptr %gdrm, i32 0, i32 4
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 8
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  %brmerge = or i1 %tobool11.not, %in
  %brmerge.not = xor i1 %brmerge, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i77)
  %cmp14 = icmp sgt i32 %retval.0.i77, -1
  %or.cond = select i1 %brmerge.not, i1 %cmp14, i1 false
  br i1 %or.cond, label %lor.lhs.false.if.then16_crit_edge, label %if.end34

lor.lhs.false.if.then16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

if.then16:                                        ; preds = %lor.lhs.false.if.then16_crit_edge, %gud_usb_control_msg.exit.if.then16_crit_edge
  %retval.0.i78 = phi i32 [ %retval.0.i77, %lor.lhs.false.if.then16_crit_edge ], [ -32, %gud_usb_control_msg.exit.if.then16_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 1) #11
  %tobool.not.i73 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i73, label %if.then16.if.then37_crit_edge, label %gud_usb_control_msg.exit.i

if.then16.if.then37_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

gud_usb_control_msg.exit.i:                       ; preds = %if.then16
  %parent.i.i.i = getelementptr i8, ptr %1, i32 136
  %14 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 -128
  %cur_altsetting.i.i = getelementptr i8, ptr %1, i32 -28
  %16 = ptrtoint ptr %cur_altsetting.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cur_altsetting.i.i, align 4
  %bInterfaceNumber.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %bInterfaceNumber.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bInterfaceNumber.i.i, align 2
  %20 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i.i, align 8
  %shl.i.i.i = shl i32 %21, 8
  %or9.i.i = or i32 %shl.i.i.i, -2147483520
  %conv14.i.i = zext i8 %19 to i16
  %call16.i.i = call i32 @usb_control_msg(ptr noundef %add.ptr.i.i.i, i32 noundef %or9.i.i, i8 noundef zeroext 0, i8 noundef zeroext -63, i16 noundef zeroext 0, i16 noundef zeroext %conv14.i.i, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 1, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16.i.i)
  %cmp.i = icmp eq i32 %call16.i.i, 1
  br i1 %cmp.i, label %if.then2.i, label %gud_usb_control_msg.exit.i.gud_usb_get_status.exit_crit_edge

gud_usb_control_msg.exit.i.gud_usb_get_status.exit_crit_edge: ; preds = %gud_usb_control_msg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gud_usb_get_status.exit

if.then2.i:                                       ; preds = %gud_usb_control_msg.exit.i
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %23)
  %24 = icmp ult i8 %23, 6
  br i1 %24, label %switch.lookup, label %if.then2.i.gud_usb_get_status.exit_crit_edge

if.then2.i.gud_usb_get_status.exit_crit_edge:     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gud_usb_get_status.exit

switch.lookup:                                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = sext i8 %23 to i32
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.gud_usb_transfer, i32 0, i32 %25
  %26 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %gud_usb_get_status.exit

gud_usb_get_status.exit:                          ; preds = %switch.lookup, %if.then2.i.gud_usb_get_status.exit_crit_edge, %gud_usb_control_msg.exit.i.gud_usb_get_status.exit_crit_edge
  %status.0.i = phi i32 [ -5, %gud_usb_control_msg.exit.i.gud_usb_get_status.exit_crit_edge ], [ %switch.load, %switch.lookup ], [ -121, %if.then2.i.gud_usb_get_status.exit_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %cmp5.i = icmp slt i32 %call16.i.i, 0
  %call1.status.0.i = select i1 %cmp5.i, i32 %call16.i.i, i32 %status.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.status.0.i)
  %cmp18 = icmp slt i32 %call1.status.0.i, 0
  br i1 %cmp18, label %gud_usb_get_status.exit.if.then37_crit_edge, label %if.else

gud_usb_get_status.exit.if.then37_crit_edge:      ; preds = %gud_usb_get_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

if.else:                                          ; preds = %gud_usb_get_status.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i78)
  %cmp21 = icmp slt i32 %retval.0.i78, 0
  br i1 %cmp21, label %do.body, label %if.else.if.end46_crit_edge

if.else.if.end46_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

do.body:                                          ; preds = %if.else
  %.b72 = load i1, ptr @gud_usb_transfer.__print_once, align 1
  br i1 %.b72, label %do.body.if.then37_crit_edge, label %if.then25

do.body.if.then37_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

if.then25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @gud_usb_transfer.__print_once, align 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.3) #12
  br label %if.then37

if.end34:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i77)
  %cmp35 = icmp slt i32 %retval.0.i77, 0
  br i1 %cmp35, label %if.end34.if.then37_crit_edge, label %if.end34.if.end46_crit_edge

if.end34.if.end46_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.end34.if.then37_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

if.then37:                                        ; preds = %if.end34.if.then37_crit_edge, %if.then25, %do.body.if.then37_crit_edge, %gud_usb_get_status.exit.if.then37_crit_edge, %if.then16.if.then37_crit_edge
  %ret.184 = phi i32 [ %retval.0.i77, %if.end34.if.then37_crit_edge ], [ -32, %do.body.if.then37_crit_edge ], [ -32, %if.then25 ], [ %call1.status.0.i, %gud_usb_get_status.exit.if.then37_crit_edge ], [ -12, %if.then16.if.then37_crit_edge ]
  br i1 %tobool.not, label %if.then37.cond.end44_crit_edge, label %cond.true40

if.then37.cond.end44_crit_edge:                   ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end44

cond.true40:                                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 8
  br label %cond.end44

cond.end44:                                       ; preds = %cond.true40, %if.then37.cond.end44_crit_edge
  %cond45 = phi ptr [ %30, %cond.true40 ], [ null, %if.then37.cond.end44_crit_edge ]
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond45, i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef %ret.184) #8
  %stats_num_errors = getelementptr inbounds %struct.gud_device, ptr %gdrm, i32 0, i32 17
  %31 = ptrtoint ptr %stats_num_errors to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %stats_num_errors, align 8
  %inc = add i32 %32, 1
  store i32 %inc, ptr %stats_num_errors, align 8
  br label %if.end46

if.end46:                                         ; preds = %cond.end44, %if.end34.if.end46_crit_edge, %if.else.if.end46_crit_edge
  %ret.183 = phi i32 [ %ret.184, %cond.end44 ], [ %retval.0.i77, %if.end34.if.end46_crit_edge ], [ %retval.0.i78, %if.else.if.end46_crit_edge ]
  call void @mutex_unlock(ptr noundef %ctrl_lock) #8
  %33 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %34) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.183, %if.end46 ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gud_usb_set(ptr noundef %gdrm, i8 noundef zeroext %request, i16 noundef zeroext %index, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool1.not = icmp eq i32 %len, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call ptr @kmemdup(ptr noundef nonnull %buf, i32 noundef %len, i32 noundef 3264) #8
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %trbuf.0 = phi ptr [ %call, %if.then.if.end4_crit_edge ], [ null, %entry.if.end4_crit_edge ]
  %call5 = tail call fastcc i32 @gud_usb_transfer(ptr noundef %gdrm, i1 noundef zeroext false, i8 noundef zeroext %request, i16 noundef zeroext %index, ptr noundef %trbuf.0, i32 noundef %len)
  tail call void @kfree(ptr noundef %trbuf.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call5, i32 %len)
  %cmp8.not = icmp eq i32 %call5, %len
  %cond = select i1 %cmp8.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end7 ], [ -12, %if.then.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gud_usb_get_u8(ptr noundef %gdrm, i8 noundef zeroext %request, i16 noundef zeroext %index, ptr nocapture noundef writeonly %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 1) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call fastcc i32 @gud_usb_transfer(ptr noundef %gdrm, i1 noundef zeroext true, i8 noundef zeroext %request, i16 noundef zeroext %index, ptr noundef nonnull %call7.i, i32 noundef 1) #8
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %call7.i, align 8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %val, align 1
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp4.not = icmp eq i32 %call.i, 1
  %cond = select i1 %cmp4.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end3 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gud_usb_set_u8(ptr noundef %gdrm, i8 noundef zeroext %request, i8 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  %val.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %val.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %val, ptr %val.addr, align 1
  %call.i = call ptr @kmemdup(ptr noundef nonnull %val.addr, i32 noundef 1, i32 noundef 3264) #8
  %tobool2.not.i = icmp eq ptr %call.i, null
  br i1 %tobool2.not.i, label %entry.gud_usb_set.exit_crit_edge, label %if.end4.i

entry.gud_usb_set.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %gud_usb_set.exit

if.end4.i:                                        ; preds = %entry
  %call5.i = call fastcc i32 @gud_usb_transfer(ptr noundef %gdrm, i1 noundef zeroext false, i8 noundef zeroext %request, i16 noundef zeroext 0, ptr noundef nonnull %call.i, i32 noundef 1) #8
  call void @kfree(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %if.end4.i.gud_usb_set.exit_crit_edge, label %if.end7.i

if.end4.i.gud_usb_set.exit_crit_edge:             ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gud_usb_set.exit

if.end7.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i)
  %cmp8.not.i = icmp eq i32 %call5.i, 1
  %cond.i = select i1 %cmp8.not.i, i32 0, i32 -5
  br label %gud_usb_set.exit

gud_usb_set.exit:                                 ; preds = %if.end7.i, %if.end4.i.gud_usb_set.exit_crit_edge, %entry.gud_usb_set.exit_crit_edge
  %retval.0.i = phi i32 [ %cond.i, %if.end7.i ], [ -12, %entry.gud_usb_set.exit_crit_edge ], [ %call5.i, %if.end4.i.gud_usb_set.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gud_usb_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @gud_usb_driver, ptr noundef null, ptr noundef nonnull @.str.9) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gud_usb_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @gud_usb_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_enter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gud_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %bulk_out = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bulk_out) #8
  %0 = ptrtoint ptr %bulk_out to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bulk_out, align 4, !annotation !115
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %1 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cur_altsetting, align 4
  %call.i = call i32 @usb_find_common_endpoints(ptr noundef %2, ptr noundef null, ptr noundef nonnull %bulk_out, ptr noundef null, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup211_crit_edge

entry.cleanup211_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup211

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 30) #11
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end.if.then4_crit_edge, label %gud_usb_control_msg.exit.i

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

gud_usb_control_msg.exit.i:                       ; preds = %if.end
  %parent.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 -128
  %6 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bInterfaceNumber.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bInterfaceNumber.i.i, align 2
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i.i, align 8
  %shl.i.i.i = shl i32 %11, 8
  %or9.i.i = or i32 %shl.i.i.i, -2147483520
  %conv14.i.i = zext i8 %9 to i16
  %call16.i.i = call i32 @usb_control_msg(ptr noundef %add.ptr.i.i.i, i32 noundef %or9.i.i, i8 noundef zeroext 1, i8 noundef zeroext -63, i16 noundef zeroext 0, i16 noundef zeroext %conv14.i.i, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 30, i32 noundef 5000) #8
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %desc.sroa.0.0.copyload = load i32, ptr %call7.i.i, align 8
  %desc.sroa.5.0.call7.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 4
  %13 = ptrtoint ptr %desc.sroa.5.0.call7.i.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %13)
  %desc.sroa.5.0.copyload = load i8, ptr %desc.sroa.5.0.call7.i.i.sroa_idx, align 4
  %desc.sroa.9.0.call7.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 5
  %14 = ptrtoint ptr %desc.sroa.9.0.call7.i.i.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %desc.sroa.9.0.copyload = load i32, ptr %desc.sroa.9.0.call7.i.i.sroa_idx, align 1
  %desc.sroa.12.0.call7.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 9
  %15 = ptrtoint ptr %desc.sroa.12.0.call7.i.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %15)
  %desc.sroa.12.0.copyload = load i8, ptr %desc.sroa.12.0.call7.i.i.sroa_idx, align 1
  %desc.sroa.15.0.call7.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 10
  %16 = ptrtoint ptr %desc.sroa.15.0.call7.i.i.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %desc.sroa.15.0.copyload = load i32, ptr %desc.sroa.15.0.call7.i.i.sroa_idx, align 2
  %desc.sroa.18.0.call7.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 14
  %17 = ptrtoint ptr %desc.sroa.18.0.call7.i.i.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %desc.sroa.18.0.copyload = load i32, ptr %desc.sroa.18.0.call7.i.i.sroa_idx, align 2
  %desc.sroa.21.0.call7.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 18
  %18 = ptrtoint ptr %desc.sroa.21.0.call7.i.i.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %desc.sroa.21.0.copyload = load i32, ptr %desc.sroa.21.0.call7.i.i.sroa_idx, align 2
  %desc.sroa.24.0.call7.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 22
  %19 = ptrtoint ptr %desc.sroa.24.0.call7.i.i.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %desc.sroa.24.0.copyload = load i32, ptr %desc.sroa.24.0.call7.i.i.sroa_idx, align 2
  %desc.sroa.27.0.call7.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 26
  %20 = ptrtoint ptr %desc.sroa.27.0.call7.i.i.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %desc.sroa.27.0.copyload = load i32, ptr %desc.sroa.27.0.call7.i.i.sroa_idx, align 2
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %cmp.i = icmp slt i32 %call16.i.i, 0
  br i1 %cmp.i, label %gud_usb_control_msg.exit.i.if.then4_crit_edge, label %if.end3.i

gud_usb_control_msg.exit.i.if.then4_crit_edge:    ; preds = %gud_usb_control_msg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.end3.i:                                        ; preds = %gud_usb_control_msg.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %call16.i.i)
  %cmp4.not.i = icmp eq i32 %call16.i.i, 30
  br i1 %cmp4.not.i, label %if.end6.i, label %if.end3.i.if.then4_crit_edge

if.end3.i.if.then4_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.end6.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1298223133, i32 %desc.sroa.0.0.copyload)
  %cmp7.not.i = icmp eq i32 %desc.sroa.0.0.copyload, 1298223133
  br i1 %cmp7.not.i, label %if.end9.i, label %if.end6.i.if.then4_crit_edge

if.end6.i.if.then4_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.end9.i:                                        ; preds = %if.end6.i
  %conv.i = zext i8 %desc.sroa.5.0.copyload to i32
  %21 = call i32 @llvm.bswap.i32(i32 %desc.sroa.9.0.copyload) #8
  %conv10.i = zext i8 %desc.sroa.12.0.copyload to i32
  %22 = call i32 @llvm.bswap.i32(i32 %desc.sroa.15.0.copyload) #8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull @.str.32, i32 noundef %conv.i, i32 noundef %21, i32 noundef %conv10.i, i32 noundef %22) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %desc.sroa.5.0.copyload)
  %tobool12.not.i = icmp eq i8 %desc.sroa.5.0.copyload, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %desc.sroa.21.0.copyload)
  %tobool13.not.i = icmp eq i32 %desc.sroa.21.0.copyload, 0
  %or.cond441 = select i1 %tobool12.not.i, i1 true, i1 %tobool13.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %desc.sroa.27.0.copyload)
  %tobool15.not.i = icmp eq i32 %desc.sroa.27.0.copyload, 0
  %or.cond442 = select i1 %or.cond441, i1 true, i1 %tobool15.not.i
  br i1 %or.cond442, label %if.end9.i.if.then4_crit_edge, label %lor.lhs.false16.i

if.end9.i.if.then4_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

lor.lhs.false16.i:                                ; preds = %if.end9.i
  %23 = call i32 @llvm.bswap.i32(i32 %desc.sroa.18.0.copyload) #8
  %24 = call i32 @llvm.bswap.i32(i32 %desc.sroa.21.0.copyload) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %24)
  %cmp18.i = icmp ugt i32 %23, %24
  br i1 %cmp18.i, label %lor.lhs.false16.i.if.then4_crit_edge, label %lor.lhs.false20.i

lor.lhs.false16.i.if.then4_crit_edge:             ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

lor.lhs.false20.i:                                ; preds = %lor.lhs.false16.i
  %25 = call i32 @llvm.bswap.i32(i32 %desc.sroa.24.0.copyload) #8
  %26 = call i32 @llvm.bswap.i32(i32 %desc.sroa.27.0.copyload) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %26)
  %cmp22.i = icmp ugt i32 %25, %26
  br i1 %cmp22.i, label %lor.lhs.false20.i.if.then4_crit_edge, label %if.end5

lor.lhs.false20.i.if.then4_crit_edge:             ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false20.i.if.then4_crit_edge, %lor.lhs.false16.i.if.then4_crit_edge, %if.end9.i.if.then4_crit_edge, %if.end6.i.if.then4_crit_edge, %if.end3.i.if.then4_crit_edge, %gud_usb_control_msg.exit.i.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end9.i.if.then4_crit_edge ], [ -22, %lor.lhs.false16.i.if.then4_crit_edge ], [ -61, %if.end6.i.if.then4_crit_edge ], [ -5, %if.end3.i.if.then4_crit_edge ], [ %call16.i.i, %gud_usb_control_msg.exit.i.if.then4_crit_edge ], [ -12, %if.end.if.then4_crit_edge ], [ -22, %lor.lhs.false20.i.if.then4_crit_edge ]
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef %retval.0.i.ph) #8
  br label %cleanup211

if.end5:                                          ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %desc.sroa.5.0.copyload)
  %cmp = icmp ugt i8 %desc.sroa.5.0.copyload, 1
  br i1 %cmp, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %conv.i) #12
  br label %cleanup211

if.end10:                                         ; preds = %if.end5
  %call11 = call ptr @__devm_drm_dev_alloc(ptr noundef %dev1, ptr noundef nonnull @gud_drm_driver, i32 noundef 4272, i32 noundef 0) #8
  %cmp.i367 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i367, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %call11 to i32
  br label %cleanup211

if.end15:                                         ; preds = %if.end10
  %funcs = getelementptr inbounds %struct.drm_device, ptr %call11, i32 0, i32 30, i32 27
  %28 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @gud_mode_config_funcs, ptr %funcs, align 4
  %call17 = call i32 @drmm_mode_config_init(ptr noundef %call11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.cleanup211_crit_edge

if.end15.cleanup211_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup211

if.end20:                                         ; preds = %if.end15
  %flags21 = getelementptr inbounds %struct.gud_device, ptr %call11, i32 0, i32 4
  %29 = ptrtoint ptr %flags21 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %21, ptr %flags21, align 8
  %30 = and i8 %desc.sroa.12.0.copyload, 1
  %compression24 = getelementptr inbounds %struct.gud_device, ptr %call11, i32 0, i32 12
  %31 = ptrtoint ptr %compression24 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %compression24, align 8
  %and26 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool30.not = icmp eq i8 %30, 0
  %or.cond = select i1 %tobool27.not, i1 true, i1 %tobool30.not
  br i1 %or.cond, label %do.body33, label %if.end20.cleanup211_crit_edge

if.end20.cleanup211_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup211

do.body33:                                        ; preds = %if.end20
  %ctrl_lock = getelementptr inbounds %struct.gud_device, ptr %call11, i32 0, i32 18
  call void @__mutex_init(ptr noundef %ctrl_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @gud_probe.__key) #8
  %damage_lock = getelementptr inbounds %struct.gud_device, ptr %call11, i32 0, i32 19
  call void @__mutex_init(ptr noundef %damage_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @gud_probe.__key.14) #8
  %work = getelementptr inbounds %struct.gud_device, ptr %call11, i32 0, i32 3
  call void @__init_work(ptr noundef %work, i32 noundef 0) #8
  %32 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.gud_device, ptr %call11, i32 0, i32 3, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.17, ptr noundef nonnull @gud_probe.__key.16, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry43 = getelementptr inbounds %struct.gud_device, ptr %call11, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %entry43 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %entry43, ptr %entry43, align 4
  %prev.i = getelementptr inbounds %struct.gud_device, ptr %call11, i32 0, i32 3, i32 1, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %entry43, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.gud_device, ptr %call11, i32 0, i32 3, i32 2
  %35 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @gud_flush_work, ptr %func, align 4
  call void @gud_clear_damage(ptr noundef %call11) #8
  %call47 = call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @gud_free_buffers_and_mutex, ptr noundef %call11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %do.body33.cleanup211_crit_edge

do.body33.cleanup211_crit_edge:                   ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup211

if.end50:                                         ; preds = %do.body33
  %min_width52 = getelementptr inbounds %struct.drm_device, ptr %call11, i32 0, i32 30, i32 23
  %36 = ptrtoint ptr %min_width52 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %23, ptr %min_width52, align 4
  %max_width54 = getelementptr inbounds %struct.drm_device, ptr %call11, i32 0, i32 30, i32 25
  %37 = ptrtoint ptr %max_width54 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %24, ptr %max_width54, align 4
  %min_height56 = getelementptr inbounds %struct.drm_device, ptr %call11, i32 0, i32 30, i32 24
  %38 = ptrtoint ptr %min_height56 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %25, ptr %min_height56, align 4
  %max_height58 = getelementptr inbounds %struct.drm_device, ptr %call11, i32 0, i32 30, i32 26
  %39 = ptrtoint ptr %max_height58 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %26, ptr %max_height58, align 4
  %call59 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3264) #8
  %call5.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 132, i32 noundef 3264) #8
  %tobool61.not = icmp eq ptr %call59, null
  %tobool62.not = icmp eq ptr %call5.i, null
  %or.cond361 = select i1 %tobool61.not, i1 true, i1 %tobool62.not
  br i1 %or.cond361, label %if.end50.cleanup211_crit_edge, label %if.end64

if.end50.cleanup211_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup211

if.end64:                                         ; preds = %if.end50
  %call.i368 = call fastcc i32 @gud_usb_transfer(ptr noundef %call11, i1 noundef zeroext true, i8 noundef zeroext 64, i16 noundef zeroext 0, ptr noundef nonnull %call59, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i368)
  %cmp66 = icmp slt i32 %call.i368, 0
  br i1 %cmp66, label %if.end64.cleanup211_crit_edge, label %for.cond.preheader

if.end64.cleanup211_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup211

for.cond.preheader:                               ; preds = %if.end64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i368)
  %cmp70443.not = icmp eq i32 %call.i368, 0
  br i1 %cmp70443.not, label %for.cond.preheader.do.end132_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.end132_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end132

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tobool75.not = icmp eq ptr %call11, null
  %dev76 = getelementptr inbounds %struct.drm_device, ptr %call11, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %xrgb8888_emulation_format.0449 = phi ptr [ null, %for.body.lr.ph ], [ %xrgb8888_emulation_format.2, %cleanup.for.body_crit_edge ]
  %i.0448 = phi i32 [ 0, %for.body.lr.ph ], [ %inc125, %cleanup.for.body_crit_edge ]
  %max_buffer_size.0447 = phi i32 [ 0, %for.body.lr.ph ], [ %max_buffer_size.1, %cleanup.for.body_crit_edge ]
  %num_formats.0446 = phi i32 [ 0, %for.body.lr.ph ], [ %num_formats.1, %cleanup.for.body_crit_edge ]
  %xrgb8888_supported.0.off0445 = phi i1 [ false, %for.body.lr.ph ], [ %xrgb8888_supported.2.off0, %cleanup.for.body_crit_edge ]
  %rgb565_supported.0.off0444 = phi i1 [ false, %for.body.lr.ph ], [ %rgb565_supported.2.off0, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %call59, i32 %i.0448
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx, align 1
  %42 = zext i8 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values)
  switch i8 %41, label %if.then74 [
    i8 1, label %gud_to_fourcc.exit.thread395
    i8 8, label %for.body.sw.epilog_crit_edge
    i8 32, label %for.body.sw.epilog.thread431_crit_edge
    i8 48, label %sw.bb3.i
    i8 64, label %sw.bb97
    i8 80, label %sw.bb5.i
    i8 -128, label %sw.bb101
    i8 -127, label %if.end89.thread408
  ]

for.body.sw.epilog.thread431_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread431

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

gud_to_fourcc.exit.thread395:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread431

sw.bb3.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb5.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end89.thread408:                               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call87410 = call ptr @drm_format_info(i32 noundef 875713089) #8
  br label %if.end121

if.then74:                                        ; preds = %for.body
  br i1 %tobool75.not, label %if.then74.cond.end_crit_edge, label %cond.true

if.then74.cond.end_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %dev76 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev76, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then74.cond.end_crit_edge
  %cond = phi ptr [ %44, %cond.true ], [ null, %if.then74.cond.end_crit_edge ]
  %conv78 = zext i8 %41 to i32
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond, i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef %conv78) #8
  br label %cleanup

sw.bb97:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call87413 = call ptr @drm_format_info(i32 noundef 909199186) #8
  %tobool98.not = icmp eq ptr %xrgb8888_emulation_format.0449, null
  %spec.select362 = select i1 %tobool98.not, ptr %call87413, ptr %xrgb8888_emulation_format.0449
  br label %if.end121

sw.bb101:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call87 = call ptr @drm_format_info(i32 noundef 875713112) #8
  br label %if.end121

sw.epilog.thread431:                              ; preds = %gud_to_fourcc.exit.thread395, %for.body.sw.epilog.thread431_crit_edge
  %info.0403.ph = phi ptr [ @gud_drm_format_r1, %gud_to_fourcc.exit.thread395 ], [ @gud_drm_format_xrgb1111, %for.body.sw.epilog.thread431_crit_edge ]
  %tobool94.not435 = icmp eq ptr %xrgb8888_emulation_format.0449, null
  %spec.select436 = select i1 %tobool94.not435, ptr %info.0403.ph, ptr %xrgb8888_emulation_format.0449
  %45 = ptrtoint ptr %max_width54 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max_width54, align 4
  %call104437 = call i64 @drm_format_info_min_pitch(ptr noundef nonnull %info.0403.ph, i32 noundef 0, i32 noundef %46) #8
  %47 = ptrtoint ptr %max_height58 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max_height58, align 4
  %49 = trunc i64 %call104437 to i32
  %conv108438 = mul i32 %48, %49
  %50 = call i32 @llvm.umax.i32(i32 %max_buffer_size.0447, i32 %conv108438)
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb5.i, %sw.bb3.i, %for.body.sw.epilog_crit_edge
  %retval.0.i369.ph.ph = phi i32 [ 875710290, %sw.bb5.i ], [ 943867730, %sw.bb3.i ], [ 538982482, %for.body.sw.epilog_crit_edge ]
  %call87407 = call ptr @drm_format_info(i32 noundef %retval.0.i369.ph.ph) #8
  %tobool94.not = icmp eq ptr %xrgb8888_emulation_format.0449, null
  %spec.select = select i1 %tobool94.not, ptr %call87407, ptr %xrgb8888_emulation_format.0449
  br label %if.end121

if.end121:                                        ; preds = %sw.epilog, %sw.bb101, %sw.bb97, %if.end89.thread408
  %call87407.sink = phi ptr [ %call87407, %sw.epilog ], [ %call87410, %if.end89.thread408 ], [ %call87413, %sw.bb97 ], [ %call87, %sw.bb101 ]
  %xrgb8888_emulation_format.1428 = phi ptr [ %spec.select, %sw.epilog ], [ %xrgb8888_emulation_format.0449, %if.end89.thread408 ], [ %spec.select362, %sw.bb97 ], [ %xrgb8888_emulation_format.0449, %sw.bb101 ]
  %xrgb8888_supported.1.off0427 = phi i1 [ %xrgb8888_supported.0.off0445, %sw.epilog ], [ %xrgb8888_supported.0.off0445, %if.end89.thread408 ], [ %xrgb8888_supported.0.off0445, %sw.bb97 ], [ true, %sw.bb101 ]
  %rgb565_supported.1.off0426 = phi i1 [ %rgb565_supported.0.off0444, %sw.epilog ], [ %rgb565_supported.0.off0444, %if.end89.thread408 ], [ true, %sw.bb97 ], [ %rgb565_supported.0.off0444, %sw.bb101 ]
  %retval.0.i369391400425 = phi i32 [ %retval.0.i369.ph.ph, %sw.epilog ], [ 875713089, %if.end89.thread408 ], [ 909199186, %sw.bb97 ], [ 875713112, %sw.bb101 ]
  %51 = ptrtoint ptr %max_width54 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %max_width54, align 4
  %call104 = call i64 @drm_format_info_min_pitch(ptr noundef %call87407.sink, i32 noundef 0, i32 noundef %52) #8
  %53 = ptrtoint ptr %max_height58 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %max_height58, align 4
  %55 = trunc i64 %call104 to i32
  %conv108 = mul i32 %54, %55
  %56 = call i32 @llvm.umax.i32(i32 %max_buffer_size.0447, i32 %conv108)
  %inc = add i32 %num_formats.0446, 1
  %arrayidx122 = getelementptr i32, ptr %call5.i, i32 %num_formats.0446
  %57 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %retval.0.i369391400425, ptr %arrayidx122, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end121, %sw.epilog.thread431, %cond.end
  %rgb565_supported.2.off0 = phi i1 [ %rgb565_supported.1.off0426, %if.end121 ], [ %rgb565_supported.0.off0444, %cond.end ], [ %rgb565_supported.0.off0444, %sw.epilog.thread431 ]
  %xrgb8888_supported.2.off0 = phi i1 [ %xrgb8888_supported.1.off0427, %if.end121 ], [ %xrgb8888_supported.0.off0445, %cond.end ], [ %xrgb8888_supported.0.off0445, %sw.epilog.thread431 ]
  %num_formats.1 = phi i32 [ %inc, %if.end121 ], [ %num_formats.0446, %cond.end ], [ %num_formats.0446, %sw.epilog.thread431 ]
  %max_buffer_size.1 = phi i32 [ %56, %if.end121 ], [ %max_buffer_size.0447, %cond.end ], [ %50, %sw.epilog.thread431 ]
  %xrgb8888_emulation_format.2 = phi ptr [ %xrgb8888_emulation_format.1428, %if.end121 ], [ %xrgb8888_emulation_format.0449, %cond.end ], [ %spec.select436, %sw.epilog.thread431 ]
  %inc125 = add nuw i32 %i.0448, 1
  %exitcond.not = icmp eq i32 %inc125, %call.i368
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_formats.1)
  %tobool126.not = icmp eq i32 %num_formats.1, 0
  %tobool128.not = icmp eq ptr %xrgb8888_emulation_format.2, null
  %or.cond364 = select i1 %tobool126.not, i1 %tobool128.not, i1 false
  br i1 %or.cond364, label %for.end.do.end132_crit_edge, label %if.end133

for.end.do.end132_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end132

do.end132:                                        ; preds = %for.end.do.end132_crit_edge, %for.cond.preheader.do.end132_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #12
  br label %cleanup211

if.end133:                                        ; preds = %for.end
  br i1 %rgb565_supported.2.off0, label %if.then135, label %if.end133.if.end137_crit_edge

if.end133.if.end137_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137

if.then135:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  %preferred_depth = getelementptr inbounds %struct.drm_device, ptr %call11, i32 0, i32 30, i32 91
  %58 = ptrtoint ptr %preferred_depth to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 16, ptr %preferred_depth, align 4
  br label %if.end137

if.end137:                                        ; preds = %if.then135, %if.end133.if.end137_crit_edge
  %or.cond365 = select i1 %xrgb8888_supported.2.off0, i1 true, i1 %tobool128.not
  br i1 %or.cond365, label %if.end137.if.end145_crit_edge, label %if.then141

if.end137.if.end145_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

if.then141:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  %xrgb8888_emulation_format142 = getelementptr inbounds %struct.gud_device, ptr %call11, i32 0, i32 5
  %59 = ptrtoint ptr %xrgb8888_emulation_format142 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %xrgb8888_emulation_format.2, ptr %xrgb8888_emulation_format142, align 4
  %inc143 = add i32 %num_formats.1, 1
  %arrayidx144 = getelementptr i32, ptr %call5.i, i32 %num_formats.1
  %60 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 875713112, ptr %arrayidx144, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.then141, %if.end137.if.end145_crit_edge
  %num_formats.2 = phi i32 [ %num_formats.1, %if.end137.if.end145_crit_edge ], [ %inc143, %if.then141 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %desc.sroa.15.0.copyload)
  %tobool147.not = icmp eq i32 %desc.sroa.15.0.copyload, 0
  %spec.select366 = select i1 %tobool147.not, i32 %max_buffer_size.1, i32 %22
  %61 = call i32 @llvm.umin.i32(i32 %spec.select366, i32 67108864)
  %62 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %parent.i.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %63, i32 -128
  %64 = ptrtoint ptr %bulk_out to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bulk_out, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %bEndpointAddress.i, align 1
  %68 = and i8 %67, 15
  %and.i = zext i8 %68 to i32
  %69 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %70, 8
  %shl1.i = shl nuw nsw i32 %and.i, 15
  %or.i = or i32 %shl.i, %shl1.i
  %or = or i32 %or.i, -1073741824
  %bulk_pipe = getelementptr inbounds %struct.gud_device, ptr %call11, i32 0, i32 8
  %71 = ptrtoint ptr %bulk_pipe to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %or, ptr %bulk_pipe, align 8
  %bulk_len = getelementptr inbounds %struct.gud_device, ptr %call11, i32 0, i32 10
  %72 = ptrtoint ptr %bulk_len to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %61, ptr %bulk_len, align 8
  %call158 = call fastcc i32 @gud_alloc_bulk_buffer(ptr noundef %call11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.end161, label %if.end145.cleanup211_crit_edge

if.end145.cleanup211_crit_edge:                   ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup211

if.end161:                                        ; preds = %if.end145
  %73 = ptrtoint ptr %compression24 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %compression24, align 8
  %75 = and i8 %74, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool165.not = icmp eq i8 %75, 0
  br i1 %tobool165.not, label %if.end161.if.end178_crit_edge, label %if.then166

if.end161.if.end178_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end178

if.then166:                                       ; preds = %if.end161
  %call167 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 16416, i32 noundef 3264) #8
  %lz4_comp_mem = getelementptr inbounds %struct.gud_device, ptr %call11, i32 0, i32 13
  %76 = ptrtoint ptr %lz4_comp_mem to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call167, ptr %lz4_comp_mem, align 4
  %tobool169.not = icmp eq ptr %call167, null
  br i1 %tobool169.not, label %if.then166.cleanup211_crit_edge, label %if.end171

if.then166.cleanup211_crit_edge:                  ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup211

if.end171:                                        ; preds = %if.then166
  %77 = ptrtoint ptr %bulk_len to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %bulk_len, align 8
  %call173 = call noalias ptr @vmalloc(i32 noundef %78) #13
  %compress_buf = getelementptr inbounds %struct.gud_device, ptr %call11, i32 0, i32 14
  %79 = ptrtoint ptr %compress_buf to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call173, ptr %compress_buf, align 8
  %tobool175.not = icmp eq ptr %call173, null
  br i1 %tobool175.not, label %if.end171.cleanup211_crit_edge, label %if.end171.if.end178_crit_edge

if.end171.if.end178_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end178

if.end171.cleanup211_crit_edge:                   ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup211

if.end178:                                        ; preds = %if.end171.if.end178_crit_edge, %if.end161.if.end178_crit_edge
  %pipe = getelementptr inbounds %struct.gud_device, ptr %call11, i32 0, i32 1
  %call179 = call i32 @drm_simple_display_pipe_init(ptr noundef %call11, ptr noundef %pipe, ptr noundef nonnull @gud_pipe_funcs, ptr noundef nonnull %call5.i, i32 noundef %num_formats.2, ptr noundef nonnull @gud_pipe_modifiers, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %if.end182, label %if.end178.cleanup211_crit_edge

if.end178.cleanup211_crit_edge:                   ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup211

if.end182:                                        ; preds = %if.end178
  call void @devm_kfree(ptr noundef %dev1, ptr noundef nonnull %call5.i) #8
  call void @devm_kfree(ptr noundef %dev1, ptr noundef nonnull %call59) #8
  %call183 = call fastcc i32 @gud_get_properties(ptr noundef %call11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %if.end189, label %do.end188

do.end188:                                        ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %call183) #12
  br label %cleanup211

if.end189:                                        ; preds = %if.end182
  %plane = getelementptr inbounds %struct.gud_device, ptr %call11, i32 0, i32 1, i32 1
  call void @drm_plane_enable_fb_damage_clips(ptr noundef %plane) #8
  %call191 = call i32 @gud_get_connectors(ptr noundef %call11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %if.end197, label %do.end196

do.end196:                                        ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef %call191) #12
  br label %cleanup211

if.end197:                                        ; preds = %if.end189
  call void @drm_mode_config_reset(ptr noundef %call11) #8
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %80 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call11, ptr %driver_data.i.i, align 4
  %call198 = call ptr @usb_intf_get_dma_device(ptr noundef %intf) #8
  %dmadev = getelementptr inbounds %struct.gud_device, ptr %call11, i32 0, i32 2
  %81 = ptrtoint ptr %dmadev to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call198, ptr %dmadev, align 8
  %tobool200.not = icmp eq ptr %call198, null
  br i1 %tobool200.not, label %do.end204, label %if.end197.if.end205_crit_edge

if.end197.if.end205_crit_edge:                    ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end205

do.end204:                                        ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.29) #12
  br label %if.end205

if.end205:                                        ; preds = %do.end204, %if.end197.if.end205_crit_edge
  %call206 = call i32 @drm_dev_register(ptr noundef %call11, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call206)
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %if.end210, label %if.then208

if.then208:                                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %dmadev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dmadev, align 8
  call void @put_device(ptr noundef %83) #8
  br label %cleanup211

if.end210:                                        ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #10
  call void @drm_kms_helper_poll_init(ptr noundef %call11) #8
  call void @drm_fbdev_generic_setup(ptr noundef %call11, i32 noundef 0) #8
  br label %cleanup211

cleanup211:                                       ; preds = %if.end210, %if.then208, %do.end196, %do.end188, %if.end178.cleanup211_crit_edge, %if.end171.cleanup211_crit_edge, %if.then166.cleanup211_crit_edge, %if.end145.cleanup211_crit_edge, %do.end132, %if.end64.cleanup211_crit_edge, %if.end50.cleanup211_crit_edge, %do.body33.cleanup211_crit_edge, %if.end20.cleanup211_crit_edge, %if.end15.cleanup211_crit_edge, %if.then13, %do.end, %if.then4, %entry.cleanup211_crit_edge
  %retval.0 = phi i32 [ -19, %if.then4 ], [ -19, %do.end ], [ %27, %if.then13 ], [ %call183, %do.end188 ], [ %call191, %do.end196 ], [ %call206, %if.then208 ], [ 0, %if.end210 ], [ -22, %do.end132 ], [ %call.i, %entry.cleanup211_crit_edge ], [ %call17, %if.end15.cleanup211_crit_edge ], [ -22, %if.end20.cleanup211_crit_edge ], [ %call47, %do.body33.cleanup211_crit_edge ], [ -12, %if.end50.cleanup211_crit_edge ], [ %call.i368, %if.end64.cleanup211_crit_edge ], [ %call158, %if.end145.cleanup211_crit_edge ], [ -12, %if.then166.cleanup211_crit_edge ], [ -12, %if.end171.cleanup211_crit_edge ], [ %call179, %if.end178.cleanup211_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bulk_out) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gud_disconnect(ptr nocapture noundef readonly %interface) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond, i32 noundef 2, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.gud_disconnect) #8
  tail call void @drm_kms_helper_poll_fini(ptr noundef %1) #8
  tail call void @drm_dev_unplug(ptr noundef %1) #8
  tail call void @drm_atomic_helper_shutdown(ptr noundef %1) #8
  %dmadev = getelementptr inbounds %struct.gud_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dmadev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dmadev, align 8
  tail call void @put_device(ptr noundef %5) #8
  %6 = ptrtoint ptr %dmadev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %dmadev, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gud_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %message.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @drm_mode_config_helper_suspend(ptr noundef %1) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gud_resume(ptr nocapture noundef readonly %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @drm_mode_config_helper_resume(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_drm_dev_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gud_flush_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gud_clear_damage(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gud_free_buffers_and_mutex(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %compress_buf = getelementptr inbounds %struct.gud_device, ptr %data, i32 0, i32 14
  %0 = ptrtoint ptr %compress_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %compress_buf, align 8
  tail call void @vfree(ptr noundef %1) #8
  %2 = ptrtoint ptr %compress_buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %compress_buf, align 8
  %bulk_sgt = getelementptr inbounds %struct.gud_device, ptr %data, i32 0, i32 11
  tail call void @sg_free_table(ptr noundef %bulk_sgt) #8
  %bulk_buf = getelementptr inbounds %struct.gud_device, ptr %data, i32 0, i32 9
  %3 = ptrtoint ptr %bulk_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bulk_buf, align 4
  tail call void @vfree(ptr noundef %4) #8
  %5 = ptrtoint ptr %bulk_buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %bulk_buf, align 4
  %ctrl_lock = getelementptr inbounds %struct.gud_device, ptr %data, i32 0, i32 18
  tail call void @mutex_destroy(ptr noundef %ctrl_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_format_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @drm_format_info_min_pitch(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gud_alloc_bulk_buffer(ptr noundef %gdrm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bulk_len = getelementptr inbounds %struct.gud_device, ptr %gdrm, i32 0, i32 10
  %0 = ptrtoint ptr %bulk_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bulk_len, align 8
  %call = tail call noalias ptr @vmalloc_32(i32 noundef %1) #13
  %bulk_buf = getelementptr inbounds %struct.gud_device, ptr %gdrm, i32 0, i32 9
  %2 = ptrtoint ptr %bulk_buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %bulk_buf, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %bulk_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bulk_len, align 8
  %sub = add i32 %4, 4095
  %div29 = lshr i32 %sub, 12
  %5 = shl nuw nsw i32 %div29, 2
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #13
  %tobool4.not = icmp eq ptr %call8.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub)
  %cmp36.not = icmp ult i32 %sub, 4096
  br i1 %cmp36.not, label %if.end6.for.end_crit_edge, label %for.body.preheader

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %if.end6
  %6 = ptrtoint ptr %bulk_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bulk_buf, align 4
  %umax = call i32 @llvm.umax.i32(i32 %div29, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %ptr.038 = phi ptr [ %add.ptr, %for.body.for.body_crit_edge ], [ %7, %for.body.preheader ]
  %i.037 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call8 = tail call ptr @vmalloc_to_page(ptr noundef %ptr.038) #8
  %arrayidx = getelementptr ptr, ptr %call8.i, i32 %i.037
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.037, 1
  %add.ptr = getelementptr i8, ptr %ptr.038, i32 4096
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end6.for.end_crit_edge
  %bulk_sgt = getelementptr inbounds %struct.gud_device, ptr %gdrm, i32 0, i32 11
  %9 = ptrtoint ptr %bulk_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bulk_len, align 8
  %call.i = tail call i32 @sg_alloc_table_from_pages_segment(ptr noundef %bulk_sgt, ptr noundef nonnull %call8.i, i32 noundef %div29, i32 noundef 0, i32 noundef %10, i32 noundef -1, i32 noundef 3264) #8
  tail call void @kfree(ptr noundef nonnull %call8.i) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %for.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_display_pipe_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gud_get_properties(ptr noundef %gdrm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 320) #11
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup31_crit_edge, label %if.end

entry.cleanup31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup31

if.end:                                           ; preds = %entry
  %call.i = tail call fastcc i32 @gud_usb_transfer(ptr noundef %gdrm, i1 noundef zeroext true, i8 noundef zeroext 65, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i.i, i32 noundef 320) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 1
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end3:                                          ; preds = %if.end
  %call.i.frozen = freeze i32 %call.i
  %div = udiv i32 %call.i.frozen, 10
  %1 = mul i32 %div, 10
  %rem.decomposed = sub i32 %call.i.frozen, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool4.not = icmp eq i32 %rem.decomposed, 0
  br i1 %tobool4.not, label %if.end6, label %if.end3.out_crit_edge

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end6:                                          ; preds = %if.end3
  %2 = shl nuw nsw i32 %div, 1
  %call5.i.i = tail call noalias ptr @drmm_kmalloc(ptr noundef %gdrm, i32 noundef %2, i32 noundef 3520) #8
  %properties8 = getelementptr inbounds %struct.gud_device, ptr %gdrm, i32 0, i32 6
  %3 = ptrtoint ptr %properties8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call5.i.i, ptr %properties8, align 8
  %tobool10.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool10.not, label %if.end6.out_crit_edge, label %for.cond.preheader

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond.preheader:                               ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call.i)
  %4 = icmp ult i32 %call.i, 10
  br i1 %4, label %for.cond.preheader.out_crit_edge, label %for.body.lr.ph

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tobool20.not = icmp eq ptr %gdrm, null
  %dev = getelementptr inbounds %struct.drm_device, ptr %gdrm, i32 0, i32 2
  %plane = getelementptr inbounds %struct.gud_device, ptr %gdrm, i32 0, i32 1, i32 1
  %num_properties27 = getelementptr inbounds %struct.gud_device, ptr %gdrm, i32 0, i32 7
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.066 = phi i32 [ 0, %for.body.lr.ph ], [ %inc30, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gud_property_req, ptr %call7.i.i.i, i32 %i.066
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 2
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 12800, i16 %6)
  %cond35 = icmp eq i16 %6, 12800
  br i1 %cond35, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %for.body
  %val16 = getelementptr %struct.gud_property_req, ptr %call7.i.i.i, i32 %i.066, i32 1
  %8 = ptrtoint ptr %val16 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %val16, align 2
  %10 = lshr i64 %9, 56
  %11 = trunc i64 %10 to i32
  %conv17 = and i32 %11, 63
  %call18 = tail call i32 @drm_plane_create_rotation_property(ptr noundef %plane, i32 noundef 1, i32 noundef %conv17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool23.not = icmp eq i32 %call18, 0
  br i1 %tobool23.not, label %if.end25, label %sw.bb.out_crit_edge

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

sw.default:                                       ; preds = %for.body
  br i1 %tobool20.not, label %sw.default.cond.end_crit_edge, label %cond.true

sw.default.cond.end_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %sw.default.cond.end_crit_edge
  %cond = phi ptr [ %13, %cond.true ], [ null, %sw.default.cond.end_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond, i32 noundef 2, ptr noundef nonnull @.str.43, i32 noundef %conv) #8
  br label %for.inc

if.end25:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %properties8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %properties8, align 8
  %16 = ptrtoint ptr %num_properties27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_properties27, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %num_properties27, align 4
  %arrayidx28 = getelementptr i16, ptr %15, i32 %17
  %18 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %7, ptr %arrayidx28, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end25, %cond.end
  %inc30 = add nuw nsw i32 %i.066, 1
  %exitcond.not = icmp eq i32 %inc30, %umax
  br i1 %exitcond.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %sw.bb.out_crit_edge, %for.cond.preheader.out_crit_edge, %if.end6.out_crit_edge, %if.end3.out_crit_edge, %if.end.out_crit_edge
  %ret.2 = phi i32 [ %call.i, %if.end.out_crit_edge ], [ -5, %if.end3.out_crit_edge ], [ -12, %if.end6.out_crit_edge ], [ 0, %for.cond.preheader.out_crit_edge ], [ 0, %for.inc.out_crit_edge ], [ %call18, %sw.bb.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup31

cleanup31:                                        ; preds = %out, %entry.cleanup31_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out ], [ -12, %entry.cleanup31_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_enable_fb_damage_clips(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gud_get_connectors(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_intf_get_dma_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fbdev_generic_setup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_find_common_endpoints(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gud_debugfs_init(ptr noundef %minor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_root = getelementptr inbounds %struct.drm_minor, ptr %minor, i32 0, i32 4
  %0 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_root, align 4
  tail call void @drm_debugfs_create_files(ptr noundef nonnull @gud_debugfs_list, i32 noundef 1, ptr noundef %1, ptr noundef %minor) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gud_gem_prime_import(ptr noundef %drm, ptr noundef %dma_buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dmadev = getelementptr inbounds %struct.gud_device, ptr %drm, i32 0, i32 2
  %0 = ptrtoint ptr %dmadev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmadev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call ptr @drm_gem_prime_import_dev(ptr noundef %drm, ptr noundef %dma_buf, ptr noundef nonnull %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call3, %if.end ], [ inttoptr (i32 -19 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_shmem_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_shmem_dumb_create(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gud_stats_debugfs(ptr noundef %m, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  %buf = alloca [10 x i8], align 1
  %remainder = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buf) #8
  %bulk_len = getelementptr inbounds %struct.gud_device, ptr %5, i32 0, i32 10
  %6 = call ptr @memset(ptr %buf, i32 255, i32 10)
  %7 = ptrtoint ptr %bulk_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bulk_len, align 8
  %conv = zext i32 %8 to i64
  call void @string_get_size(i64 noundef %conv, i64 noundef 1, i32 noundef 1, ptr noundef nonnull %buf, i32 noundef 10) #8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.36, ptr noundef nonnull %buf) #8
  %stats_num_errors = getelementptr inbounds %struct.gud_device, ptr %5, i32 0, i32 17
  %9 = ptrtoint ptr %stats_num_errors to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stats_num_errors, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.37, i32 noundef %10) #8
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.38) #8
  %compression = getelementptr inbounds %struct.gud_device, ptr %5, i32 0, i32 12
  %11 = ptrtoint ptr %compression to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %compression, align 8
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.39) #8
  %14 = ptrtoint ptr %compression to i32
  call void @__asan_load1_noabort(i32 %14)
  %.pr = load i8, ptr %compression, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %15 = phi i8 [ %.pr, %if.then ], [ %12, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool4.not = icmp eq i8 %15, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.40) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.41) #8
  %16 = ptrtoint ptr %compression to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %compression, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8.not = icmp eq i8 %17, 0
  br i1 %tobool8.not, label %if.end6.if.end13_crit_edge, label %if.then9

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %remainder) #8
  %18 = ptrtoint ptr %remainder to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 -1, ptr %remainder, align 8, !annotation !115
  %stats_length = getelementptr inbounds %struct.gud_device, ptr %5, i32 0, i32 15
  %19 = ptrtoint ptr %stats_length to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %stats_length, align 8
  %stats_actual_length = getelementptr inbounds %struct.gud_device, ptr %5, i32 0, i32 16
  %21 = ptrtoint ptr %stats_actual_length to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %stats_actual_length, align 8
  %call10 = call i64 @div64_u64_rem(i64 noundef %20, i64 noundef %22, ptr noundef nonnull %remainder) #8
  %23 = ptrtoint ptr %remainder to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %remainder, align 8
  %mul = mul i64 %24, 10
  %25 = ptrtoint ptr %stats_actual_length to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %stats_actual_length, align 8
  %call12 = call i64 @div64_u64(i64 noundef %mul, i64 noundef %26) #8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.42, i64 noundef %call10, i64 noundef %call12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %remainder) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end6.if.end13_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @string_get_size(i64 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64_rem(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_prime_import_dev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_create_with_dirty(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc_32(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table_from_pages_segment(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gud_pipe_check(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gud_pipe_update(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_rotation_property(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @drmm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unplug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !12, !14, !15, !16, !17, !18, !19, !20, !21, !23, !24, !26, !28, !30, !31, !32, !33, !35, !36, !38, !39, !41, !42, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !104}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @__initcall__kmod_gud__325_685_gud_usb_driver_init6, !1, !"__initcall__kmod_gud__325_685_gud_usb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 685, i32 1}
!2 = !{ptr @__exitcall_gud_usb_driver_exit, !1, !"__exitcall_gud_usb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author326, !4, !"__UNIQUE_ID_author326", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 687, i32 1}
!5 = !{ptr @__UNIQUE_ID_file327, !6, !"__UNIQUE_ID_file327", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 688, i32 1}
!7 = !{ptr @__UNIQUE_ID_license328, !6, !"__UNIQUE_ID_license328", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 157, i32 2}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__print_once", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 173, i32 4}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @gud_usb_transfer._entry, !13, !"_entry", i1 false, i1 false}
!20 = !{ptr @gud_usb_transfer._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 180, i32 3}
!23 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @gud_usb_driver, !25, !"gud_usb_driver", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 675, i32 26}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 455, i32 3}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 460, i32 3}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @gud_probe._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @gud_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @gud_probe.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 480, i32 2}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @gud_probe.__key.14, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 481, i32 2}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @gud_probe.__key.16, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 482, i32 2}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 512, i32 4}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 557, i32 3}
!46 = !{ptr @gud_probe._entry.19, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @gud_probe._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 604, i32 3}
!50 = !{ptr @gud_probe._entry.22, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @gud_probe._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 612, i32 3}
!54 = !{ptr @gud_probe._entry.25, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @gud_probe._entry_ptr.27, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 622, i32 3}
!58 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @gud_probe._entry.28, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @gud_probe._entry_ptr.31, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 98, i32 2}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 390, i32 12}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 391, i32 12}
!67 = !{ptr @gud_drm_driver, !68, !"gud_drm_driver", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 382, i32 32}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 355, i32 4}
!71 = !{ptr @gud_debugfs_list, !72, !"gud_debugfs_list", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 354, i32 35}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 332, i32 16}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 333, i32 16}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 335, i32 14}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 337, i32 15}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 339, i32 15}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 340, i32 14}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 348, i32 17}
!87 = !{ptr @gud_fops, !88, !"gud_fops", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 380, i32 1}
!89 = !{ptr @gud_mode_config_funcs, !90, !"gud_mode_config_funcs", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 369, i32 43}
!91 = !{ptr @gud_drm_format_r1, !92, !"gud_drm_format_r1", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 34, i32 37}
!93 = !{ptr @gud_drm_format_xrgb1111, !94, !"gud_drm_format_xrgb1111", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 44, i32 37}
!95 = !{ptr @gud_pipe_funcs, !96, !"gud_pipe_funcs", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 364, i32 51}
!97 = !{ptr @gud_pipe_modifiers, !98, !"gud_pipe_modifiers", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 375, i32 18}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 295, i32 4}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 642, i32 2}
!103 = !{ptr @__func__.gud_disconnect, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @gud_id_table, !105, !"gud_id_table", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/gud/gud_drv.c", i32 667, i32 35}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{!"auto-init"}
