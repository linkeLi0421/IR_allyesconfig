; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/virtio/virtgpu_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/virtio/virtgpu_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.virtio_driver = type { %struct.device_driver, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_device_id = type { i32, i32 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_ioctl_desc = type { i32, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.91, ptr, i32, ptr, i8, i32 }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.91 = type { i32, ptr }
%struct.virtio_gpu_device = type { ptr, ptr, ptr, [16 x %struct.virtio_gpu_output], i32, %struct.virtio_gpu_queue, %struct.virtio_gpu_queue, ptr, %struct.atomic_t, %struct.ida, %struct.wait_queue_head, %struct.spinlock, i8, %struct.virtio_gpu_fence_driver, %struct.ida, i8, i8, i8, i8, i8, i8, i8, %struct.virtio_shm_region, %struct.drm_mm, %struct.work_struct, %struct.work_struct, %struct.spinlock, %struct.list_head, ptr, i32, i64, %struct.list_head, %struct.spinlock, %struct.spinlock }
%struct.virtio_gpu_output = type { i32, %struct.drm_crtc, %struct.drm_connector, %struct.drm_encoder, %struct.virtio_gpu_display_one, %struct.virtio_gpu_update_cursor, ptr, i32, i32, i8 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.virtio_gpu_display_one = type { %struct.virtio_gpu_rect, i32, i32 }
%struct.virtio_gpu_rect = type { i32, i32, i32, i32 }
%struct.virtio_gpu_update_cursor = type { %struct.virtio_gpu_ctrl_hdr, %struct.virtio_gpu_cursor_pos, i32, i32, i32, i32 }
%struct.virtio_gpu_ctrl_hdr = type { i32, i32, i64, i32, i8, [3 x i8] }
%struct.virtio_gpu_cursor_pos = type { i32, i32, i32, i32 }
%struct.virtio_gpu_queue = type { ptr, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct }
%struct.virtio_gpu_fence_driver = type { %struct.atomic64_t, i64, i64, %struct.list_head, %struct.spinlock }
%struct.atomic64_t = type { i64 }
%struct.virtio_shm_region = type { i64, i64 }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }

@__UNIQUE_ID_modeset323 = internal constant [51 x i8] c"virtio_gpu.parm=modeset:Disable/Enable modesetting\00", section ".modinfo", align 1
@__param_str_modeset = internal constant [19 x i8] c"virtio_gpu.modeset\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@virtio_gpu_modeset = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_modeset = internal constant %struct.kernel_param { ptr @__param_str_modeset, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.76 { ptr @virtio_gpu_modeset } }, section "__param", align 4
@__UNIQUE_ID_modesettype324 = internal constant [32 x i8] c"virtio_gpu.parmtype=modeset:int\00", section ".modinfo", align 1
@__initcall__kmod_virtio_gpu__325_189_virtio_gpu_driver_init6 = internal global ptr @virtio_gpu_driver_init, section ".initcall6.init", align 4
@virtio_gpu_driver = internal global { %struct.virtio_driver, [36 x i8] } { %struct.virtio_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @id_table, ptr @features, i32 4, ptr null, i32 0, ptr null, ptr @virtio_gpu_probe, ptr null, ptr @virtio_gpu_remove, ptr @virtio_gpu_config_changed, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__exitcall_virtio_gpu_driver_exit = internal global ptr @virtio_gpu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description326 = internal constant [41 x i8] c"virtio_gpu.description=Virtio GPU driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file327 = internal constant [50 x i8] c"virtio_gpu.file=drivers/gpu/drm/virtio/virtio-gpu\00", section ".modinfo", align 1
@__UNIQUE_ID_license328 = internal constant [45 x i8] c"virtio_gpu.license=GPL and additional rights\00", section ".modinfo", align 1
@__UNIQUE_ID_author329 = internal constant [51 x i8] c"virtio_gpu.author=Dave Airlie <airlied@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author330 = internal constant [52 x i8] c"virtio_gpu.author=Gerd Hoffmann <kraxel@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author331 = internal constant [28 x i8] c"virtio_gpu.author=Alon Levy\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"virtio_gpu\00", [21 x i8] zeroinitializer }, align 32
@id_table = internal global { [2 x %struct.virtio_device_id], [16 x i8] } { [2 x %struct.virtio_device_id] [%struct.virtio_device_id { i32 16, i32 -1 }, %struct.virtio_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@features = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 3, i32 4], [16 x i8] zeroinitializer }, align 32
@driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr @virtio_gpu_driver_open, ptr @virtio_gpu_driver_postclose, ptr null, ptr null, ptr @virtio_gpu_release, ptr null, ptr null, ptr @virtio_gpu_debugfs_init, ptr @virtio_gpu_create_object, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr @virtgpu_gem_prime_import, ptr @virtgpu_gem_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @virtio_gpu_mode_dumb_create, ptr @virtio_gpu_mode_dumb_mmap, ptr null, i32 0, i32 1, i32 0, ptr @.str, ptr @.str.2, ptr @.str.3, i32 27, ptr @virtio_gpu_ioctls, i32 12, ptr @virtio_gpu_driver_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pci\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"virtio GPU\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@virtio_gpu_ioctls = external dso_local global [12 x %struct.drm_ioctl_desc], align 4
@virtio_gpu_driver_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@virtio_gpu_pci_quirk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016[drm] pci: %s detected at %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"virtio_gpu_pci_quirk\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/virtio/virtgpu_drv.c\00", [59 x i8] zeroinitializer }, align 32
@virtio_gpu_pci_quirk._entry_ptr = internal global ptr @virtio_gpu_pci_quirk._entry, section ".printk_index", align 4
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"virtio-vga\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"virtio-gpu-pci\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pci:%s\00", [25 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.10 = private unnamed_addr constant [19 x i8] c"virtio_gpu_modeset\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 44, i32 12 }
@___asan_gen_.13 = private unnamed_addr constant [18 x i8] c"virtio_gpu_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 178, i32 29 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 181, i32 17 }
@___asan_gen_.19 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 159, i32 32 }
@___asan_gen_.22 = private unnamed_addr constant [9 x i8] c"features\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 164, i32 21 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 200, i32 32 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 117, i32 43 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 224, i32 10 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 225, i32 10 }
@___asan_gen_.37 = private unnamed_addr constant [23 x i8] c"virtio_gpu_driver_fops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 198, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 57, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [40 x i8] c"../drivers/gpu/drm/virtio/virtgpu_drv.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 97, i32 35 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author329, ptr @__UNIQUE_ID_author330, ptr @__UNIQUE_ID_author331, ptr @__UNIQUE_ID_description326, ptr @__UNIQUE_ID_file327, ptr @__UNIQUE_ID_license328, ptr @__UNIQUE_ID_modeset323, ptr @__UNIQUE_ID_modesettype324, ptr @__exitcall_virtio_gpu_driver_exit, ptr @__initcall__kmod_virtio_gpu__325_189_virtio_gpu_driver_init6, ptr @__param_modeset, ptr @virtio_gpu_driver_exit, ptr @virtio_gpu_pci_quirk._entry, ptr @virtio_gpu_pci_quirk._entry_ptr, ptr @virtio_gpu_modeset, ptr @virtio_gpu_driver, ptr @.str, ptr @id_table, ptr @features, ptr @driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @virtio_gpu_driver_fops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_modeset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_driver to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @features to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_driver_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_pci_quirk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_gpu_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_virtio_driver(ptr noundef nonnull @virtio_gpu_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @virtio_gpu_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @unregister_virtio_driver(ptr noundef nonnull @virtio_gpu_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_gpu_probe(ptr noundef %vdev) #2 align 64 {
entry:
  %unique.i = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @drm_firmware_drivers_only() #7
  %0 = load i32, ptr @virtio_gpu_modeset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp = icmp eq i32 %0, -1
  %or.cond = select i1 %call, i1 %cmp, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp1 = icmp eq i32 %0, 0
  %or.cond45 = select i1 %or.cond, i1 true, i1 %cmp1
  br i1 %or.cond45, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %entry
  %dev4 = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  %call5 = tail call ptr @drm_dev_alloc(ptr noundef nonnull @driver, ptr noundef %dev4) #7
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5, ptr %priv, align 8
  %parent = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %bus = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call11 = tail call i32 @strcmp(ptr noundef %8, ptr noundef nonnull dereferenceable(4) @.str.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.then12, label %if.end9.if.end17_crit_edge

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then12:                                        ; preds = %if.end9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then12.dev_name.exit.i_crit_edge

if.then12.dev_name.exit.i_crit_edge:              ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %4, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then12.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %12, %if.end.i.i ], [ %10, %if.then12.dev_name.exit.i_crit_edge ]
  %class.i = getelementptr i8, ptr %4, i32 -96
  %13 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %class.i, align 8
  %shr.mask.i = and i32 %14, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %shr.mask.i)
  %cmp.i42 = icmp eq i32 %shr.mask.i, 196608
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %unique.i) #7
  %cond.i = select i1 %cmp.i42, ptr @.str.7, ptr @.str.8
  %15 = call ptr @memset(ptr %unique.i, i32 255, i32 20)
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %cond.i, ptr noundef %retval.0.i.i) #11
  br i1 %cmp.i42, label %if.then.i, label %dev_name.exit.i.virtio_gpu_pci_quirk.exit_crit_edge

dev_name.exit.i.virtio_gpu_pci_quirk.exit_crit_edge: ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %virtio_gpu_pci_quirk.exit

if.then.i:                                        ; preds = %dev_name.exit.i
  %add.ptr.i = getelementptr i8, ptr %4, i32 -136
  %call6.i = tail call i32 @drm_aperture_remove_conflicting_pci_framebuffers(ptr noundef %add.ptr.i, ptr noundef nonnull @driver) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then.i.virtio_gpu_pci_quirk.exit_crit_edge, label %virtio_gpu_pci_quirk.exit.thread

if.then.i.virtio_gpu_pci_quirk.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %virtio_gpu_pci_quirk.exit

virtio_gpu_pci_quirk.exit.thread:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %unique.i) #7
  br label %err_free

virtio_gpu_pci_quirk.exit:                        ; preds = %if.then.i.virtio_gpu_pci_quirk.exit_crit_edge, %dev_name.exit.i.virtio_gpu_pci_quirk.exit_crit_edge
  %call10.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %unique.i, i32 noundef 20, ptr noundef nonnull @.str.9, ptr noundef %retval.0.i.i) #7
  %call12.i = call i32 @drm_dev_set_unique(ptr noundef %call5, ptr noundef nonnull %unique.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %unique.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool14.not = icmp eq i32 %call12.i, 0
  br i1 %tobool14.not, label %virtio_gpu_pci_quirk.exit.if.end17_crit_edge, label %virtio_gpu_pci_quirk.exit.err_free_crit_edge

virtio_gpu_pci_quirk.exit.err_free_crit_edge:     ; preds = %virtio_gpu_pci_quirk.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free

virtio_gpu_pci_quirk.exit.if.end17_crit_edge:     ; preds = %virtio_gpu_pci_quirk.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.end17:                                         ; preds = %virtio_gpu_pci_quirk.exit.if.end17_crit_edge, %if.end9.if.end17_crit_edge
  %call18 = call i32 @virtio_gpu_init(ptr noundef %call5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.err_free_crit_edge

if.end17.err_free_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free

if.end21:                                         ; preds = %if.end17
  %call22 = call i32 @drm_dev_register(ptr noundef %call5, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %err_deinit

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 8
  call void @drm_fbdev_generic_setup(ptr noundef %17, i32 noundef 32) #7
  br label %cleanup

err_deinit:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  call void @virtio_gpu_deinit(ptr noundef %call5) #7
  br label %err_free

err_free:                                         ; preds = %err_deinit, %if.end17.err_free_crit_edge, %virtio_gpu_pci_quirk.exit.err_free_crit_edge, %virtio_gpu_pci_quirk.exit.thread
  %ret.0 = phi i32 [ %call18, %if.end17.err_free_crit_edge ], [ %call22, %err_deinit ], [ %call12.i, %virtio_gpu_pci_quirk.exit.err_free_crit_edge ], [ %call6.i, %virtio_gpu_pci_quirk.exit.thread ]
  call void @drm_dev_put(ptr noundef %call5) #7
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end25, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then7 ], [ %ret.0, %err_free ], [ 0, %if.end25 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_gpu_remove(ptr nocapture noundef readonly %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @drm_dev_unplug(ptr noundef %1) #7
  tail call void @drm_atomic_helper_shutdown(ptr noundef %1) #7
  tail call void @virtio_gpu_deinit(ptr noundef %1) #7
  tail call void @drm_dev_put(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_gpu_config_changed(ptr nocapture noundef readonly %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %config_changed_work = getelementptr inbounds %struct.virtio_gpu_device, ptr %3, i32 0, i32 24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %config_changed_work) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_firmware_drivers_only() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_gpu_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fbdev_generic_setup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_gpu_driver_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_driver_postclose(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_release(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_debugfs_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtio_gpu_create_object(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtgpu_gem_prime_import(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtgpu_gem_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_gpu_mode_dumb_create(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_gpu_mode_dumb_mmap(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

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

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_aperture_remove_conflicting_pci_framebuffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_set_unique(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unplug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !13, !15, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !45, !46, !47, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__UNIQUE_ID_modeset323, !1, !"__UNIQUE_ID_modeset323", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/virtio/virtgpu_drv.c", i32 46, i32 1}
!2 = !{ptr @__param_modeset, !3, !"__param_modeset", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/virtio/virtgpu_drv.c", i32 47, i32 1}
!4 = !{ptr @__UNIQUE_ID_modesettype324, !3, !"__UNIQUE_ID_modesettype324", i1 false, i1 false}
!5 = !{ptr @__initcall__kmod_virtio_gpu__325_189_virtio_gpu_driver_init6, !6, !"__initcall__kmod_virtio_gpu__325_189_virtio_gpu_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/virtio/virtgpu_drv.c", i32 189, i32 1}
!7 = !{ptr @__exitcall_virtio_gpu_driver_exit, !6, !"__exitcall_virtio_gpu_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description326, !9, !"__UNIQUE_ID_description326", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/virtio/virtgpu_drv.c", i32 192, i32 1}
!10 = !{ptr @__UNIQUE_ID_file327, !11, !"__UNIQUE_ID_file327", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/virtio/virtgpu_drv.c", i32 193, i32 1}
!12 = !{ptr @__UNIQUE_ID_license328, !11, !"__UNIQUE_ID_license328", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author329, !14, !"__UNIQUE_ID_author329", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/virtio/virtgpu_drv.c", i32 194, i32 1}
!15 = !{ptr @__UNIQUE_ID_author330, !16, !"__UNIQUE_ID_author330", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/virtio/virtgpu_drv.c", i32 195, i32 1}
!17 = !{ptr @__UNIQUE_ID_author331, !18, !"__UNIQUE_ID_author331", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/virtio/virtgpu_drv.c", i32 196, i32 1}
!19 = !{ptr @__param_str_modeset, !3, !"__param_str_modeset", i1 false, i1 false}
!20 = !{ptr @virtio_gpu_modeset, !21, !"virtio_gpu_modeset", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/virtio/virtgpu_drv.c", i32 44, i32 12}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/virtio/virtgpu_drv.c", i32 181, i32 17}
!24 = !{ptr @virtio_gpu_driver, !25, !"virtio_gpu_driver", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/virtio/virtgpu_drv.c", i32 178, i32 29}
!26 = !{ptr @id_table, !27, !"id_table", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/virtio/virtgpu_drv.c", i32 159, i32 32}
!28 = !{ptr @features, !29, !"features", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/virtio/virtgpu_drv.c", i32 164, i32 21}
!30 = !{ptr @.str.1, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/virtio/virtgpu_drv.c", i32 117, i32 43}
!32 = !{ptr @.str.2, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/virtio/virtgpu_drv.c", i32 224, i32 10}
!34 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/virtio/virtgpu_drv.c", i32 225, i32 10}
!36 = !{ptr @driver, !37, !"driver", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/virtio/virtgpu_drv.c", i32 200, i32 32}
!38 = !{ptr @virtio_gpu_driver_fops, !39, !"virtio_gpu_driver_fops", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/virtio/virtgpu_drv.c", i32 198, i32 1}
!40 = !{ptr @.str.4, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/virtio/virtgpu_drv.c", i32 57, i32 2}
!42 = !{ptr @.str.5, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @virtio_gpu_pci_quirk._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @virtio_gpu_pci_quirk._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.9, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/virtio/virtgpu_drv.c", i32 97, i32 35}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
