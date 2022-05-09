; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/vkms/vkms_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/vkms/vkms_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_config_helper_funcs = type { ptr, ptr }
%struct.vkms_config = type { i8, i8, i8, ptr }
%struct.vkms_device = type { %struct.drm_device, ptr, %struct.vkms_output, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.91, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.91 = type { i32, ptr }
%struct.vkms_output = type { %struct.drm_crtc, %struct.drm_encoder, %struct.drm_connector, %struct.drm_writeback_connector, %struct.hrtimer, i64, ptr, ptr, %struct.spinlock, i8, ptr, %struct.spinlock }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.89 }
%union.anon.89 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_writeback_connector = type { %struct.drm_connector, %struct.drm_encoder, ptr, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, i32, [32 x i8] }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.vkms_crtc_state = type { %struct.drm_crtc_state, %struct.work_struct, i32, ptr, ptr, i8, i8, i64, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@__param_str_enable_cursor = internal constant [19 x i8] c"vkms.enable_cursor\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable_cursor = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_enable_cursor = internal constant %struct.kernel_param { ptr @__param_str_enable_cursor, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @enable_cursor } }, section "__param", align 4
@__UNIQUE_ID_enable_cursortype318 = internal constant [33 x i8] c"vkms.parmtype=enable_cursor:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_cursor319 = internal constant [54 x i8] c"vkms.parm=enable_cursor:Enable/Disable cursor support\00", section ".modinfo", align 1
@__param_str_enable_writeback = internal constant [22 x i8] c"vkms.enable_writeback\00", align 1
@enable_writeback = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_enable_writeback = internal constant %struct.kernel_param { ptr @__param_str_enable_writeback, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @enable_writeback } }, section "__param", align 4
@__UNIQUE_ID_enable_writebacktype320 = internal constant [36 x i8] c"vkms.parmtype=enable_writeback:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_writeback321 = internal constant [70 x i8] c"vkms.parm=enable_writeback:Enable/Disable writeback connector support\00", section ".modinfo", align 1
@__param_str_enable_overlay = internal constant [20 x i8] c"vkms.enable_overlay\00", align 1
@enable_overlay = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_enable_overlay = internal constant %struct.kernel_param { ptr @__param_str_enable_overlay, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @enable_overlay } }, section "__param", align 4
@__UNIQUE_ID_enable_overlaytype322 = internal constant [34 x i8] c"vkms.parmtype=enable_overlay:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_overlay323 = internal constant [56 x i8] c"vkms.parm=enable_overlay:Enable/Disable overlay support\00", section ".modinfo", align 1
@default_config = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_vkms__324_263_vkms_init6 = internal global ptr @vkms_init, section ".initcall6.init", align 4
@__exitcall_vkms_exit = internal global ptr @vkms_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author325 = internal constant [54 x i8] c"vkms.author=Haneen Mohammed <hamohammed.sa@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author326 = internal constant [61 x i8] c"vkms.author=Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description327 = internal constant [45 x i8] c"vkms.description=Virtual Kernel Mode Setting\00", section ".modinfo", align 1
@__UNIQUE_ID_file328 = internal constant [36 x i8] c"vkms.file=drivers/gpu/drm/vkms/vkms\00", section ".modinfo", align 1
@__UNIQUE_ID_license329 = internal constant [17 x i8] c"vkms.license=GPL\00", section ".modinfo", align 1
@vkms_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016[drm] vkms_device is NULL.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vkms_destroy\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/drm/vkms/vkms_drv.c\00", [32 x i8] zeroinitializer }, align 32
@vkms_destroy._entry_ptr = internal global ptr @vkms_destroy._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vkms\00", [27 x i8] zeroinitializer }, align 32
@vkms_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vkms_release, ptr null, ptr null, ptr @vkms_config_debugfs_init, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @drm_gem_shmem_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @drm_gem_shmem_dumb_create, ptr null, ptr null, i32 1, i32 0, i32 0, ptr @.str.3, ptr @.str.6, ptr @.str.7, i32 19, ptr null, i32 0, ptr @vkms_driver_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Could not initialize DMA support\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Failed to vblank\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Virtual Kernel Mode Setting\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20180514\00", [23 x i8] zeroinitializer }, align 32
@vkms_driver_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@vkms_config_debugfs_list = internal constant { [1 x %struct.drm_info_list], [16 x i8] } { [1 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.8, ptr @vkms_config_show, i32 0, ptr null }], [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vkms_config\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"writeback=%d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cursor=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"overlay=%d\0A\00", [20 x i8] zeroinitializer }, align 32
@vkms_mode_funcs = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @drm_gem_fb_create, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@vkms_mode_config_helpers = internal constant { %struct.drm_mode_config_helper_funcs, [24 x i8] } { %struct.drm_mode_config_helper_funcs { ptr @vkms_atomic_commit_tail, ptr null }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"enable_cursor\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 42, i32 13 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"enable_writeback\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 46, i32 13 }
@___asan_gen_.18 = private unnamed_addr constant [15 x i8] c"enable_overlay\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 50, i32 13 }
@___asan_gen_.21 = private unnamed_addr constant [15 x i8] c"default_config\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 40, i32 28 }
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 241, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 167, i32 41 }
@___asan_gen_.39 = private unnamed_addr constant [12 x i8] c"vkms_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 115, i32 32 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 190, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 196, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 124, i32 12 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 125, i32 12 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"vkms_driver_fops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 54, i32 1 }
@___asan_gen_.57 = private unnamed_addr constant [25 x i8] c"vkms_config_debugfs_list\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 105, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 106, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 98, i32 16 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 99, i32 16 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 100, i32 16 }
@___asan_gen_.72 = private unnamed_addr constant [16 x i8] c"vkms_mode_funcs\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 130, i32 43 }
@___asan_gen_.75 = private unnamed_addr constant [25 x i8] c"vkms_mode_config_helpers\00", align 1
@___asan_gen_.76 = private constant [35 x i8] c"../drivers/gpu/drm/vkms/vkms_drv.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 136, i32 50 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author325, ptr @__UNIQUE_ID_author326, ptr @__UNIQUE_ID_description327, ptr @__UNIQUE_ID_enable_cursor319, ptr @__UNIQUE_ID_enable_cursortype318, ptr @__UNIQUE_ID_enable_overlay323, ptr @__UNIQUE_ID_enable_overlaytype322, ptr @__UNIQUE_ID_enable_writeback321, ptr @__UNIQUE_ID_enable_writebacktype320, ptr @__UNIQUE_ID_file328, ptr @__UNIQUE_ID_license329, ptr @__exitcall_vkms_exit, ptr @__initcall__kmod_vkms__324_263_vkms_init6, ptr @__param_enable_cursor, ptr @__param_enable_overlay, ptr @__param_enable_writeback, ptr @vkms_destroy._entry, ptr @vkms_destroy._entry_ptr, ptr @vkms_exit, ptr @enable_cursor, ptr @enable_writeback, ptr @enable_overlay, ptr @default_config, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @vkms_driver, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @vkms_driver_fops, ptr @vkms_config_debugfs_list, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @vkms_mode_funcs, ptr @vkms_mode_config_helpers], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_cursor to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_writeback to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_overlay to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_config to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vkms_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vkms_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vkms_driver_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vkms_config_debugfs_list to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vkms_mode_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vkms_mode_config_helpers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vkms_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = load ptr, ptr @default_config, align 4
  %dev = getelementptr inbounds %struct.vkms_config, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %vkms_destroy.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

vkms_destroy.exit:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %platform.i = getelementptr inbounds %struct.vkms_device, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %platform.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform.i, align 4
  tail call void @drm_dev_unregister(ptr noundef nonnull %2) #5
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void @drm_atomic_helper_shutdown(ptr noundef %6) #5
  %dev5.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %call6.i = tail call i32 @devres_release_group(ptr noundef %dev5.i, ptr noundef null) #5
  tail call void @platform_device_unregister(ptr noundef %4) #5
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %dev, align 4
  br label %if.end

if.end:                                           ; preds = %vkms_destroy.exit, %entry.if.end_crit_edge
  %8 = load ptr, ptr @default_config, align 4
  tail call void @kfree(ptr noundef %8) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vkms_init() #0 section ".init.text" align 64 {
entry:
  %pdevinfo.i.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8) #8
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  store ptr %call7.i, ptr @default_config, align 4
  %1 = load i8, ptr @enable_cursor, align 1, !range !82
  %cursor = getelementptr inbounds %struct.vkms_config, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %cursor to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %cursor, align 1
  %3 = load i8, ptr @enable_writeback, align 1, !range !82
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %call7.i, align 8
  %5 = load i8, ptr @enable_overlay, align 1, !range !82
  %overlay = getelementptr inbounds %struct.vkms_config, ptr %call7.i, i32 0, i32 2
  %6 = ptrtoint ptr %overlay to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %overlay, align 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i.i) #5
  %7 = getelementptr inbounds i8, ptr %pdevinfo.i.i.i, i32 8
  %8 = call ptr @memset(ptr %7, i32 255, i32 48)
  %9 = ptrtoint ptr %pdevinfo.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %pdevinfo.i.i.i, align 8
  %fwnode.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %fwnode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %fwnode.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %7, align 8
  %name2.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %name2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.3, ptr %name2.i.i.i, align 4
  %res4.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 5
  %dma_mask.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 9
  %13 = ptrtoint ptr %dma_mask.i.i.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %dma_mask.i.i.i, align 8
  %properties.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 10
  %14 = ptrtoint ptr %properties.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %properties.i.i.i, align 8
  %15 = call ptr @memset(ptr %res4.i.i.i, i32 0, i32 16)
  %call.i.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i.i) #5
  %cmp.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %call.i.i.i to i32
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %call.i.i.i, i32 0, i32 3
  %call3.i = call ptr @devres_open_group(ptr noundef %dev.i, ptr noundef null, i32 noundef 3264) #5
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %if.end.i.out_unregister.i_crit_edge, label %if.end5.i

if.end.i.out_unregister.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unregister.i

if.end5.i:                                        ; preds = %if.end.i
  %call7.i12 = call ptr @__devm_drm_dev_alloc(ptr noundef %dev.i, ptr noundef nonnull @vkms_driver, i32 noundef 5864, i32 noundef 0) #5
  %cmp.i58.i = icmp ugt ptr %call7.i12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i58.i, label %if.then9.i, label %if.end11.i

if.then9.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %call7.i12 to i32
  br label %out_devres.i

if.end11.i:                                       ; preds = %if.end5.i
  %platform.i = getelementptr inbounds %struct.vkms_device, ptr %call7.i12, i32 0, i32 1
  %18 = ptrtoint ptr %platform.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i.i.i, ptr %platform.i, align 4
  %config12.i = getelementptr inbounds %struct.vkms_device, ptr %call7.i12, i32 0, i32 3
  %19 = ptrtoint ptr %config12.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i, ptr %config12.i, align 8
  %dev13.i = getelementptr inbounds %struct.vkms_config, ptr %call7.i, i32 0, i32 3
  %20 = ptrtoint ptr %dev13.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i12, ptr %dev13.i, align 4
  %dev14.i = getelementptr inbounds %struct.drm_device, ptr %call7.i12, i32 0, i32 2
  %21 = ptrtoint ptr %dev14.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev14.i, align 8
  %coherent_dma_mask.i.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 19
  %dma_mask.i.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 18
  %23 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %coherent_dma_mask.i.i, ptr %dma_mask.i.i, align 8
  %call.i.i59.i = call i32 @dma_set_mask(ptr noundef %22, i64 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i59.i)
  %cmp.i.i.i = icmp eq i32 %call.i.i59.i, 0
  br i1 %cmp.i.i.i, label %if.end18.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #5
  br label %out_devres.i

if.end18.i:                                       ; preds = %if.end11.i
  %call1.i.i.i = call i32 @dma_set_coherent_mask(ptr noundef %22, i64 noundef -1) #5
  %call20.i = call i32 @drm_vblank_init(ptr noundef %call7.i12, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #5
  br label %out_devres.i

if.end23.i:                                       ; preds = %if.end18.i
  %call.i.i60.i = call i32 @drmm_mode_config_init(ptr noundef %call7.i12) #5
  %funcs.i.i = getelementptr inbounds %struct.drm_device, ptr %call7.i12, i32 0, i32 30, i32 27
  %24 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @vkms_mode_funcs, ptr %funcs.i.i, align 4
  %min_width.i.i = getelementptr inbounds %struct.drm_device, ptr %call7.i12, i32 0, i32 30, i32 23
  %25 = ptrtoint ptr %min_width.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 20, ptr %min_width.i.i, align 4
  %min_height.i.i = getelementptr inbounds %struct.drm_device, ptr %call7.i12, i32 0, i32 30, i32 24
  %26 = ptrtoint ptr %min_height.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 20, ptr %min_height.i.i, align 4
  %max_width.i.i = getelementptr inbounds %struct.drm_device, ptr %call7.i12, i32 0, i32 30, i32 25
  %27 = ptrtoint ptr %max_width.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 8192, ptr %max_width.i.i, align 4
  %max_height.i.i = getelementptr inbounds %struct.drm_device, ptr %call7.i12, i32 0, i32 30, i32 26
  %28 = ptrtoint ptr %max_height.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8192, ptr %max_height.i.i, align 4
  %cursor_width.i.i = getelementptr inbounds %struct.drm_device, ptr %call7.i12, i32 0, i32 30, i32 100
  %29 = ptrtoint ptr %cursor_width.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 512, ptr %cursor_width.i.i, align 4
  %cursor_height.i.i = getelementptr inbounds %struct.drm_device, ptr %call7.i12, i32 0, i32 30, i32 101
  %30 = ptrtoint ptr %cursor_height.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 512, ptr %cursor_height.i.i, align 4
  %preferred_depth.i.i = getelementptr inbounds %struct.drm_device, ptr %call7.i12, i32 0, i32 30, i32 91
  %31 = ptrtoint ptr %preferred_depth.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %preferred_depth.i.i, align 4
  %helper_private.i.i = getelementptr inbounds %struct.drm_device, ptr %call7.i12, i32 0, i32 30, i32 103
  %32 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @vkms_mode_config_helpers, ptr %helper_private.i.i, align 4
  %call9.i.i = call i32 @vkms_output_init(ptr noundef %call7.i12, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool25.not.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %if.end23.i.out_devres.i_crit_edge

if.end23.i.out_devres.i_crit_edge:                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_devres.i

if.end27.i:                                       ; preds = %if.end23.i
  %call29.i = call i32 @drm_dev_register(ptr noundef %call7.i12, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %if.end27.i.out_devres.i_crit_edge

if.end27.i.out_devres.i_crit_edge:                ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_devres.i

if.end32.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @drm_fbdev_generic_setup(ptr noundef %call7.i12, i32 noundef 0) #5
  br label %cleanup

out_devres.i:                                     ; preds = %if.end27.i.out_devres.i_crit_edge, %if.end23.i.out_devres.i_crit_edge, %if.then22.i, %if.then17.i, %if.then9.i
  %ret.0.i = phi i32 [ %17, %if.then9.i ], [ %call.i.i59.i, %if.then17.i ], [ %call20.i, %if.then22.i ], [ %call9.i.i, %if.end23.i.out_devres.i_crit_edge ], [ %call29.i, %if.end27.i.out_devres.i_crit_edge ]
  %call35.i = call i32 @devres_release_group(ptr noundef %dev.i, ptr noundef null) #5
  br label %out_unregister.i

out_unregister.i:                                 ; preds = %out_devres.i, %if.end.i.out_unregister.i_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i, %out_devres.i ], [ -12, %if.end.i.out_unregister.i_crit_edge ]
  call void @platform_device_unregister(ptr noundef %call.i.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %out_unregister.i, %if.end32.i, %if.then.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %16, %if.then.i ], [ %ret.1.i, %out_unregister.i ], [ 0, %if.end32.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_open_group(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_drm_dev_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fbdev_generic_setup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vkms_release(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %composer_workq = getelementptr inbounds %struct.vkms_device, ptr %dev, i32 0, i32 2, i32 7
  %0 = ptrtoint ptr %composer_workq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %composer_workq, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vkms_config_debugfs_init(ptr noundef %minor) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_root = getelementptr inbounds %struct.drm_minor, ptr %minor, i32 0, i32 4
  %0 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_root, align 4
  tail call void @drm_debugfs_create_files(ptr noundef nonnull @vkms_config_debugfs_list, i32 noundef 1, ptr noundef %1, ptr noundef %minor) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_shmem_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_shmem_dumb_create(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vkms_config_show(ptr noundef %m, ptr nocapture noundef readnone %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %config = getelementptr inbounds %struct.vkms_device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4, !range !82
  %10 = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.9, i32 noundef %10) #5
  %11 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %config, align 8
  %cursor = getelementptr inbounds %struct.vkms_config, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %cursor to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cursor, align 1, !range !82
  %15 = zext i8 %14 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.10, i32 noundef %15) #5
  %16 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %config, align 8
  %overlay = getelementptr inbounds %struct.vkms_config, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %overlay to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %overlay, align 2, !range !82
  %20 = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, i32 noundef %20) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

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
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vkms_output_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_create(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vkms_atomic_commit_tail(ptr noundef %old_state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_atomic_state, ptr %old_state, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  tail call void @drm_atomic_helper_commit_modeset_disables(ptr noundef %1, ptr noundef %old_state) #5
  tail call void @drm_atomic_helper_commit_planes(ptr noundef %1, ptr noundef %old_state, i32 noundef 0) #5
  tail call void @drm_atomic_helper_commit_modeset_enables(ptr noundef %1, ptr noundef %old_state) #5
  tail call void @drm_atomic_helper_fake_vblank(ptr noundef %old_state) #5
  tail call void @drm_atomic_helper_commit_hw_done(ptr noundef %old_state) #5
  tail call void @drm_atomic_helper_wait_for_flip_done(ptr noundef %1, ptr noundef %old_state) #5
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %num_crtc28 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 19
  %4 = ptrtoint ptr %num_crtc28 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_crtc28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp29 = icmp sgt i32 %5, 0
  br i1 %cmp29, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %crtcs = getelementptr inbounds %struct.drm_atomic_state, ptr %old_state, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %crtcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtcs, align 4
  %arrayidx = getelementptr %struct.__drm_crtcs_state, ptr %7, i32 %i.030
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %old_state8 = getelementptr %struct.__drm_crtcs_state, ptr %7, i32 %i.030, i32 2
  %10 = ptrtoint ptr %old_state8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %old_state8, align 8
  %composer_work = getelementptr inbounds %struct.vkms_crtc_state, ptr %11, i32 0, i32 1
  %call = tail call zeroext i1 @flush_work(ptr noundef %composer_work) #5
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.030, 1
  %12 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1, align 4
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 30, i32 19
  %14 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_crtc, align 4
  %cmp = icmp slt i32 %inc, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @drm_atomic_helper_cleanup_planes(ptr noundef %1, ptr noundef %old_state) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_modeset_disables(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_planes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_modeset_enables(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_fake_vblank(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_hw_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_wait_for_flip_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_cleanup_planes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !28, !30, !32, !33, !35, !36, !38, !39, !41, !42, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__param_enable_cursor, !1, !"__param_enable_cursor", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/vkms/vkms_drv.c", i32 43, i32 1}
!2 = !{ptr @__UNIQUE_ID_enable_cursortype318, !1, !"__UNIQUE_ID_enable_cursortype318", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_enable_cursor319, !4, !"__UNIQUE_ID_enable_cursor319", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/vkms/vkms_drv.c", i32 44, i32 1}
!5 = !{ptr @__param_enable_writeback, !6, !"__param_enable_writeback", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/vkms/vkms_drv.c", i32 47, i32 1}
!7 = !{ptr @__UNIQUE_ID_enable_writebacktype320, !6, !"__UNIQUE_ID_enable_writebacktype320", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_enable_writeback321, !9, !"__UNIQUE_ID_enable_writeback321", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/vkms/vkms_drv.c", i32 48, i32 1}
!10 = !{ptr @__param_enable_overlay, !11, !"__param_enable_overlay", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/vkms/vkms_drv.c", i32 51, i32 1}
!12 = !{ptr @__UNIQUE_ID_enable_overlaytype322, !11, !"__UNIQUE_ID_enable_overlaytype322", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_enable_overlay323, !14, !"__UNIQUE_ID_enable_overlay323", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/vkms/vkms_drv.c", i32 52, i32 1}
!15 = !{ptr @__initcall__kmod_vkms__324_263_vkms_init6, !16, !"__initcall__kmod_vkms__324_263_vkms_init6", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/vkms/vkms_drv.c", i32 263, i32 1}
!17 = !{ptr @__exitcall_vkms_exit, !18, !"__exitcall_vkms_exit", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/vkms/vkms_drv.c", i32 264, i32 1}
!19 = !{ptr @__UNIQUE_ID_author325, !20, !"__UNIQUE_ID_author325", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/vkms/vkms_drv.c", i32 266, i32 1}
!21 = !{ptr @__UNIQUE_ID_author326, !22, !"__UNIQUE_ID_author326", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/vkms/vkms_drv.c", i32 267, i32 1}
!23 = !{ptr @__UNIQUE_ID_description327, !24, !"__UNIQUE_ID_description327", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/vkms/vkms_drv.c", i32 268, i32 1}
!25 = !{ptr @__UNIQUE_ID_file328, !26, !"__UNIQUE_ID_file328", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/vkms/vkms_drv.c", i32 269, i32 1}
!27 = !{ptr @__UNIQUE_ID_license329, !26, !"__UNIQUE_ID_license329", i1 false, i1 false}
!28 = !{ptr @default_config, !29, !"default_config", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/vkms/vkms_drv.c", i32 40, i32 28}
!30 = !{ptr @enable_overlay, !31, !"enable_overlay", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/vkms/vkms_drv.c", i32 50, i32 13}
!32 = !{ptr @__param_str_enable_cursor, !1, !"__param_str_enable_cursor", i1 false, i1 false}
!33 = !{ptr @enable_cursor, !34, !"enable_cursor", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/vkms/vkms_drv.c", i32 42, i32 13}
!35 = !{ptr @__param_str_enable_writeback, !6, !"__param_str_enable_writeback", i1 false, i1 false}
!36 = !{ptr @enable_writeback, !37, !"enable_writeback", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/vkms/vkms_drv.c", i32 46, i32 13}
!38 = !{ptr @__param_str_enable_overlay, !11, !"__param_str_enable_overlay", i1 false, i1 false}
!39 = !{ptr @.str, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/vkms/vkms_drv.c", i32 241, i32 3}
!41 = !{ptr @.str.1, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.2, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @vkms_destroy._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @vkms_destroy._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.3, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/vkms/vkms_drv.c", i32 167, i32 41}
!47 = !{ptr @.str.4, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/vkms/vkms_drv.c", i32 190, i32 3}
!49 = !{ptr @.str.5, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/vkms/vkms_drv.c", i32 196, i32 3}
!51 = !{ptr @.str.6, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/vkms/vkms_drv.c", i32 124, i32 12}
!53 = !{ptr @.str.7, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/vkms/vkms_drv.c", i32 125, i32 12}
!55 = !{ptr @vkms_driver, !56, !"vkms_driver", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/vkms/vkms_drv.c", i32 115, i32 32}
!57 = !{ptr @.str.8, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/vkms/vkms_drv.c", i32 106, i32 4}
!59 = !{ptr @vkms_config_debugfs_list, !60, !"vkms_config_debugfs_list", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/vkms/vkms_drv.c", i32 105, i32 35}
!61 = !{ptr @.str.9, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/vkms/vkms_drv.c", i32 98, i32 16}
!63 = !{ptr @.str.10, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/vkms/vkms_drv.c", i32 99, i32 16}
!65 = !{ptr @.str.11, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/vkms/vkms_drv.c", i32 100, i32 16}
!67 = !{ptr @vkms_driver_fops, !68, !"vkms_driver_fops", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/vkms/vkms_drv.c", i32 54, i32 1}
!69 = !{ptr @vkms_mode_funcs, !70, !"vkms_mode_funcs", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/vkms/vkms_drv.c", i32 130, i32 43}
!71 = !{ptr @vkms_mode_config_helpers, !72, !"vkms_mode_config_helpers", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/vkms/vkms_drv.c", i32 136, i32 50}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i8 0, i8 2}
