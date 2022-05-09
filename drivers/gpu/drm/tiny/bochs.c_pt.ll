; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tiny/bochs.c_pt.bc'
source_filename = "../drivers/gpu/drm/tiny/bochs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_simple_display_pipe_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.84, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.84 = type { ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.85, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.92, ptr, i32, ptr, i8, i32 }
%struct.anon.85 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.92 = type { i32, ptr }
%struct.bochs_device = type { ptr, i32, ptr, i32, i32, i32, i16, i16, i16, i32, i32, ptr, ptr, %struct.drm_simple_display_pipe, %struct.drm_connector }
%struct.drm_simple_display_pipe = type { %struct.drm_crtc, %struct.drm_plane, %struct.drm_encoder, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.90 }
%union.anon.90 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }

@__param_str_modeset = internal constant [14 x i8] c"bochs.modeset\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@bochs_modeset = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_modeset = internal constant %struct.kernel_param { ptr @__param_str_modeset, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @bochs_modeset } }, section "__param", align 4
@__UNIQUE_ID_modesettype322 = internal constant [27 x i8] c"bochs.parmtype=modeset:int\00", section ".modinfo", align 1
@__UNIQUE_ID_modeset323 = internal constant [53 x i8] c"bochs.parm=modeset:enable/disable kernel modesetting\00", section ".modinfo", align 1
@__param_str_defx = internal constant [11 x i8] c"bochs.defx\00", align 1
@defx = internal global { i32, [28 x i8] } { i32 1024, [28 x i8] zeroinitializer }, align 32
@__param_defx = internal constant %struct.kernel_param { ptr @__param_str_defx, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @defx } }, section "__param", align 4
@__UNIQUE_ID_defxtype324 = internal constant [24 x i8] c"bochs.parmtype=defx:int\00", section ".modinfo", align 1
@__param_str_defy = internal constant [11 x i8] c"bochs.defy\00", align 1
@defy = internal global { i32, [28 x i8] } { i32 768, [28 x i8] zeroinitializer }, align 32
@__param_defy = internal constant %struct.kernel_param { ptr @__param_str_defy, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @defy } }, section "__param", align 4
@__UNIQUE_ID_defytype325 = internal constant [24 x i8] c"bochs.parmtype=defy:int\00", section ".modinfo", align 1
@__UNIQUE_ID_defx326 = internal constant [37 x i8] c"bochs.parm=defx:default x resolution\00", section ".modinfo", align 1
@__UNIQUE_ID_defy327 = internal constant [37 x i8] c"bochs.parm=defy:default y resolution\00", section ".modinfo", align 1
@bochs_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @bochs_pci_tbl, ptr @bochs_pci_probe, ptr @bochs_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bochs_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_bochs__330_735_bochs_init6 = internal global ptr @bochs_init, section ".initcall6.init", align 4
@__exitcall_bochs_exit = internal global ptr @bochs_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author331 = internal constant [47 x i8] c"bochs.author=Gerd Hoffmann <kraxel@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file332 = internal constant [38 x i8] c"bochs.file=drivers/gpu/drm/tiny/bochs\00", section ".modinfo", align 1
@__UNIQUE_ID_license333 = internal constant [18 x i8] c"bochs.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bochs-drm\00", [22 x i8] zeroinitializer }, align 32
@bochs_pci_tbl = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 4660, i32 4369, i32 6900, i32 4352, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4660, i32 4369, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 17185, i32 4369, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@bochs_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @bochs_pm_suspend, ptr @bochs_pm_resume, ptr @bochs_pm_suspend, ptr @bochs_pm_resume, ptr @bochs_pm_suspend, ptr @bochs_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"less than 4 MB video memory, ignoring device\0A\00", [50 x i8] zeroinitializer }, align 32
@bochs_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_vram_mm_debugfs_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_gem_prime_mmap, ptr @drm_gem_vram_driver_dumb_create, ptr @drm_gem_ttm_dumb_map_offset, ptr null, i32 1, i32 0, i32 0, ptr @.str, ptr @.str.2, ptr @.str.3, i32 19, ptr null, i32 0, ptr @bochs_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"bochs dispi vga interface (qemu stdvga)\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20130925\00", [23 x i8] zeroinitializer }, align 32
@bochs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot request mmio region\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Cannot map mmio region\0A\00", [40 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Cannot request ioports\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ID mismatch\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Size mismatch: pci=%ld, bochs=%ld\0A\00", [61 x i8] zeroinitializer }, align 32
@bochs_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014[drm] Cannot request framebuffer, boot fb still active?\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bochs_hw_init\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/gpu/drm/tiny/bochs.c\00", [35 x i8] zeroinitializer }, align 32
@bochs_hw_init._entry_ptr = internal global ptr @bochs_hw_init._entry, section ".printk_index", align 4
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Cannot map framebuffer\0A\00", [40 x i8] zeroinitializer }, align 32
@bochs_hw_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.10, ptr @.str.11, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016[drm] Found bochs VGA, ID 0x%x.\0A\00", [61 x i8] zeroinitializer }, align 32
@bochs_hw_init._entry_ptr.15 = internal global ptr @bochs_hw_init._entry.13, section ".printk_index", align 4
@bochs_hw_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.10, ptr @.str.11, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016[drm] Framebuffer size %ld kB @ 0x%lx, %s @ 0x%lx.\0A\00", [42 x i8] zeroinitializer }, align 32
@bochs_hw_init._entry_ptr.18 = internal global ptr @bochs_hw_init._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ioports\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mmio\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Found qemu ext regs, size %ld\0A\00", [33 x i8] zeroinitializer }, align 32
@bochs_mode_funcs = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @bochs_gem_fb_create, ptr null, ptr null, ptr @drm_vram_helper_mode_valid, ptr @drm_atomic_helper_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@bochs_pipe_funcs = internal constant { %struct.drm_simple_display_pipe_funcs, [36 x i8] } { %struct.drm_simple_display_pipe_funcs { ptr null, ptr @bochs_pipe_enable, ptr @bochs_pipe_disable, ptr null, ptr @bochs_pipe_update, ptr @drm_gem_vram_simple_display_pipe_prepare_fb, ptr @drm_gem_vram_simple_display_pipe_cleanup_fb, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bochs_formats = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 875713112, i32 875714626], [24 x i8] zeroinitializer }, align 32
@bochs_connector_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bochs_connector_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @bochs_connector_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@bochs_connector_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.11, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016[drm] Found EDID data blob.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bochs_connector_init\00", [43 x i8] zeroinitializer }, align 32
@bochs_connector_init._entry_ptr = internal global ptr @bochs_connector_init._entry, section ".printk_index", align 4
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%dx%d @ %d bpp, vy %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hw_blank %d\0A\00", [19 x i8] zeroinitializer }, align 32
@bochs_plane_update.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"x %d, y %d, addr %llx -> offset %lx, vx %d, vy %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"format %c%c%c%c\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Huh? Got framebuffer format 0x%x\00", [59 x i8] zeroinitializer }, align 32
@__func__.bochs_hw_setformat = private unnamed_addr constant [19 x i8] c"bochs_hw_setformat\00", align 1
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bochs\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 875713112, i64 875714626]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 875713112, i64 875714626]
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"bochs_modeset\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 49, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant [5 x i8] c"defx\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 50, i32 12 }
@___asan_gen_.37 = private unnamed_addr constant [5 x i8] c"defy\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 51, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"bochs_pci_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 708, i32 26 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 709, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"bochs_pci_tbl\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 683, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant [13 x i8] c"bochs_pm_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 623, i32 32 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 639, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [13 x i8] c"bochs_driver\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 593, i32 32 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 597, i32 12 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 598, i32 12 }
@___asan_gen_.64 = private unnamed_addr constant [11 x i8] c"bochs_fops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 591, i32 1 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 217, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 224, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 231, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 241, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 252, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 258, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 262, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 268, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 269, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 280, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"bochs_mode_funcs\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 522, i32 43 }
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"bochs_pipe_funcs\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 458, i32 51 }
@___asan_gen_.124 = private unnamed_addr constant [14 x i8] c"bochs_formats\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 407, i32 23 }
@___asan_gen_.127 = private unnamed_addr constant [32 x i8] c"bochs_connector_connector_funcs\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 486, i32 41 }
@___asan_gen_.130 = private unnamed_addr constant [39 x i8] c"bochs_connector_connector_helper_funcs\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 482, i32 48 }
@___asan_gen_.133 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 505, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 327, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 307, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 396, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 357, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 372, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.158 = private constant [32 x i8] c"../drivers/gpu/drm/tiny/bochs.c\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 727, i32 9 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_author331, ptr @__UNIQUE_ID_defx326, ptr @__UNIQUE_ID_defxtype324, ptr @__UNIQUE_ID_defy327, ptr @__UNIQUE_ID_defytype325, ptr @__UNIQUE_ID_file332, ptr @__UNIQUE_ID_license333, ptr @__UNIQUE_ID_modeset323, ptr @__UNIQUE_ID_modesettype322, ptr @__exitcall_bochs_exit, ptr @__initcall__kmod_bochs__330_735_bochs_init6, ptr @__param_defx, ptr @__param_defy, ptr @__param_modeset, ptr @bochs_connector_init._entry, ptr @bochs_connector_init._entry_ptr, ptr @bochs_exit, ptr @bochs_hw_init._entry, ptr @bochs_hw_init._entry.13, ptr @bochs_hw_init._entry.16, ptr @bochs_hw_init._entry_ptr, ptr @bochs_hw_init._entry_ptr.15, ptr @bochs_hw_init._entry_ptr.18, ptr @bochs_modeset, ptr @defx, ptr @defy, ptr @bochs_pci_driver, ptr @.str, ptr @bochs_pci_tbl, ptr @bochs_pm_ops, ptr @.str.1, ptr @bochs_driver, ptr @.str.2, ptr @.str.3, ptr @bochs_fops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @bochs_mode_funcs, ptr @bochs_pipe_funcs, ptr @bochs_formats, ptr @bochs_connector_connector_funcs, ptr @bochs_connector_connector_helper_funcs, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bochs_modeset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @defx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @defy to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bochs_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bochs_pci_tbl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bochs_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bochs_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bochs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bochs_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bochs_hw_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bochs_hw_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bochs_mode_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bochs_pipe_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bochs_formats to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bochs_connector_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bochs_connector_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bochs_connector_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bochs_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @bochs_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bochs_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @drm_firmware_drivers_only() #6
  %0 = load i32, ptr @bochs_modeset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp = icmp eq i32 %0, -1
  %or.cond = select i1 %call, i1 %cmp, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp1 = icmp eq i32 %0, 0
  %or.cond5 = select i1 %or.cond, i1 true, i1 %cmp1
  br i1 %or.cond5, label %entry.return_crit_edge, label %if.end3

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @__pci_register_driver(ptr noundef nonnull @bochs_pci_driver, ptr noundef null, ptr noundef nonnull @.str.29) #6
  br label %return

return:                                           ; preds = %if.end3, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bochs_pci_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  %header.i.i.i.i = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %0 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %cond.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

cond.false:                                       ; preds = %entry
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resource, align 8
  %sub = add i32 %1, 1
  %add = sub i32 %sub, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %add)
  %phi.cmp = icmp ult i32 %add, 4194304
  br i1 %phi.cmp, label %cond.false.if.then_crit_edge, label %if.end

cond.false.if.then_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %cond.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %cleanup

if.end:                                           ; preds = %cond.false
  %call = tail call i32 @drm_aperture_remove_conflicting_pci_framebuffers(ptr noundef %pdev, ptr noundef nonnull @bochs_driver) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call10 = tail call ptr @drm_dev_alloc(ptr noundef nonnull @bochs_driver, ptr noundef %dev9) #6
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %call15 = tail call i32 @pcim_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.err_free_dev_crit_edge

if.end14.err_free_dev_crit_edge:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_dev

if.end18:                                         ; preds = %if.end14
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call10, ptr %driver_data.i.i, align 4
  %call.i.i = tail call noalias ptr @drmm_kmalloc(ptr noundef %call10, i32 noundef 2688, i32 noundef 3520) #6
  %cmp.i47 = icmp eq ptr %call.i.i, null
  br i1 %cmp.i47, label %if.end18.err_free_dev_crit_edge, label %if.end.i

if.end18.err_free_dev_crit_edge:                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_dev

if.end.i:                                         ; preds = %if.end18
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %call10, i32 0, i32 5
  %6 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i.i, ptr %dev_private.i, align 4
  %dev1.i = getelementptr inbounds %struct.bochs_device, ptr %call.i.i, i32 0, i32 12
  %7 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call10, ptr %dev1.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.drm_device, ptr %call10, i32 0, i32 2
  %8 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 -136
  %resource.i.i = getelementptr i8, ptr %9, i32 936
  %arrayidx.i.i = getelementptr i8, ptr %9, i32 1000
  %flags.i.i = getelementptr i8, ptr %9, i32 1012
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %call.i28.i = tail call i32 @pci_request_region(ptr noundef %add.ptr.i.i, i32 noundef 2, ptr noundef nonnull @.str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28.i)
  %cmp.not.i.i = icmp eq i32 %call.i28.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i.err_free_dev.sink.split_crit_edge

if.then.i.i.err_free_dev.sink.split_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_dev.sink.split

if.end.i.i:                                       ; preds = %if.then.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 8
  %end.i.i = getelementptr i8, ptr %9, i32 1004
  %14 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp7.i.i = icmp eq i32 %15, 0
  %sub.i.i = sub i32 1, %13
  %add.i.i = add i32 %sub.i.i, %15
  %cond.i.i = select i1 %cmp7.i.i, i32 0, i32 %add.i.i
  %call14.i.i = tail call ptr @ioremap(i32 noundef %13, i32 noundef %cond.i.i) #6
  %16 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call14.i.i, ptr %call.i.i, align 8
  %cmp16.i.i = icmp eq ptr %call14.i.i, null
  br i1 %cmp16.i.i, label %if.end.i.i.err_free_dev.sink.split_crit_edge, label %if.end.i.i.if.then.i.i.i_crit_edge

if.end.i.i.if.then.i.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

if.end.i.i.err_free_dev.sink.split_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_dev.sink.split

if.else.i.i:                                      ; preds = %if.end.i
  %call19.i.i = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef 462, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0) #6
  %tobool20.not.i.i = icmp eq ptr %call19.i.i, null
  br i1 %tobool20.not.i.i, label %if.else.i.i.err_free_dev.sink.split_crit_edge, label %if.end23.i.i

if.else.i.i.err_free_dev.sink.split_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_dev.sink.split

if.end23.i.i:                                     ; preds = %if.else.i.i
  %ioports.i.i = getelementptr inbounds %struct.bochs_device, ptr %call.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %ioports.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %ioports.i.i, align 4
  %18 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr.i.i = load ptr, ptr %call.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i, label %if.end23.i.i.if.then.i.i.i_crit_edge

if.end23.i.i.if.then.i.i.i_crit_edge:             ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end23.i.i.if.then.i.i.i_crit_edge, %if.end.i.i.if.then.i.i.i_crit_edge
  %ioaddr.0198.i.i = phi i32 [ 462, %if.end23.i.i.if.then.i.i.i_crit_edge ], [ %13, %if.end.i.i.if.then.i.i.i_crit_edge ]
  %iosize.0196.i.i = phi i32 [ 2, %if.end23.i.i.if.then.i.i.i_crit_edge ], [ %cond.i.i, %if.end.i.i.if.then.i.i.i_crit_edge ]
  %19 = phi ptr [ %.pr.i.i, %if.end23.i.i.if.then.i.i.i_crit_edge ], [ %call14.i.i, %if.end.i.i.if.then.i.i.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 1280
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #6, !srcloc !120
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  br label %bochs_dispi_read.exit.i.i

do.body.i.i.i:                                    ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) inttoptr (i32 -18873906 to ptr), i16 0) #6, !srcloc !123
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) inttoptr (i32 -18873905 to ptr)) #6, !srcloc !120
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  br label %bochs_dispi_read.exit.i.i

bochs_dispi_read.exit.i.i:                        ; preds = %do.body.i.i.i, %if.then.i.i.i
  %ioaddr.0197.i.i = phi i32 [ %ioaddr.0198.i.i, %if.then.i.i.i ], [ 462, %do.body.i.i.i ]
  %iosize.0195.i.i = phi i32 [ %iosize.0196.i.i, %if.then.i.i.i ], [ 2, %do.body.i.i.i ]
  %ret.0.i.i.i = phi i16 [ %21, %if.then.i.i.i ], [ %23, %do.body.i.i.i ]
  %24 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i.i, align 8
  %tobool.not.i184.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i184.i.i, label %do.body.i187.i.i, label %if.then.i186.i.i

if.then.i186.i.i:                                 ; preds = %bochs_dispi_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i185.i.i = getelementptr i8, ptr %25, i32 1300
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i185.i.i) #6, !srcloc !120
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  br label %bochs_dispi_read.exit189.i.i

do.body.i187.i.i:                                 ; preds = %bochs_dispi_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) inttoptr (i32 -18873906 to ptr), i16 2560) #6, !srcloc !123
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) inttoptr (i32 -18873905 to ptr)) #6, !srcloc !120
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  br label %bochs_dispi_read.exit189.i.i

bochs_dispi_read.exit189.i.i:                     ; preds = %do.body.i187.i.i, %if.then.i186.i.i
  %ret.0.i188.i.i = phi i16 [ %27, %if.then.i186.i.i ], [ %29, %do.body.i187.i.i ]
  %conv.i.i = zext i16 %ret.0.i188.i.i to i32
  %mul26.i.i = shl nuw i32 %conv.i.i, 16
  %conv27.i.i = zext i16 %ret.0.i.i.i to i32
  %and28.i.i = and i32 %conv27.i.i, 65520
  call void @__sanitizer_cov_trace_const_cmp4(i32 45248, i32 %and28.i.i)
  %cmp29.not.i.i = icmp eq i32 %and28.i.i, 45248
  br i1 %cmp29.not.i.i, label %if.end32.i.i, label %bochs_dispi_read.exit189.i.i.err_free_dev.sink.split_crit_edge

bochs_dispi_read.exit189.i.i.err_free_dev.sink.split_crit_edge: ; preds = %bochs_dispi_read.exit189.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_dev.sink.split

if.end32.i.i:                                     ; preds = %bochs_dispi_read.exit189.i.i
  %flags35.i.i = getelementptr i8, ptr %9, i32 948
  %30 = ptrtoint ptr %flags35.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags35.i.i, align 4
  %and36.i.i = and i32 %31, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.i)
  %cmp37.i.i = icmp eq i32 %and36.i.i, 0
  br i1 %cmp37.i.i, label %if.end32.i.i.err_free_dev_crit_edge, label %if.end40.i.i

if.end32.i.i.err_free_dev_crit_edge:              ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_dev

if.end40.i.i:                                     ; preds = %if.end32.i.i
  %32 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %resource.i.i, align 8
  %end46.i.i = getelementptr i8, ptr %9, i32 940
  %34 = ptrtoint ptr %end46.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %end46.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp47.i.i = icmp eq i32 %35, 0
  %sub57.i.i = sub i32 1, %33
  %add58.i.i = add i32 %sub57.i.i, %35
  %cond60.i.i = select i1 %cmp47.i.i, i32 0, i32 %add58.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp61.i.i = icmp eq i32 %33, 0
  br i1 %cmp61.i.i, label %if.end40.i.i.err_free_dev_crit_edge, label %if.end64.i.i

if.end40.i.i.err_free_dev_crit_edge:              ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_dev

if.end64.i.i:                                     ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond60.i.i, i32 %mul26.i.i)
  %cmp65.not.i.i = icmp eq i32 %cond60.i.i, %mul26.i.i
  br i1 %cmp65.not.i.i, label %if.end64.i.i.if.end75.i.i_crit_edge, label %if.then67.i.i

if.end64.i.i.if.end75.i.i_crit_edge:              ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75.i.i

if.then67.i.i:                                    ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8, i32 noundef %cond60.i.i, i32 noundef %mul26.i.i) #6
  %36 = tail call i32 @llvm.umin.i32(i32 %cond60.i.i, i32 %mul26.i.i) #6
  br label %if.end75.i.i

if.end75.i.i:                                     ; preds = %if.then67.i.i, %if.end64.i.i.if.end75.i.i_crit_edge
  %size.0.i.i = phi i32 [ %36, %if.then67.i.i ], [ %mul26.i.i, %if.end64.i.i.if.end75.i.i_crit_edge ]
  %call76.i.i = tail call i32 @pci_request_region(ptr noundef %add.ptr.i.i, i32 noundef 0, ptr noundef nonnull @.str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i.i)
  %cmp77.not.i.i = icmp eq i32 %call76.i.i, 0
  br i1 %cmp77.not.i.i, label %if.end75.i.i.if.end82.i.i_crit_edge, label %do.end.i.i

if.end75.i.i.if.end82.i.i_crit_edge:              ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82.i.i

do.end.i.i:                                       ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call81.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  br label %if.end82.i.i

if.end82.i.i:                                     ; preds = %do.end.i.i, %if.end75.i.i.if.end82.i.i_crit_edge
  %call83.i.i = tail call ptr @ioremap(i32 noundef %33, i32 noundef %size.0.i.i) #6
  %fb_map.i.i = getelementptr inbounds %struct.bochs_device, ptr %call.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %fb_map.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call83.i.i, ptr %fb_map.i.i, align 8
  %cmp85.i.i = icmp eq ptr %call83.i.i, null
  br i1 %cmp85.i.i, label %if.end82.i.i.err_free_dev.sink.split_crit_edge, label %if.end88.i.i

if.end82.i.i.err_free_dev.sink.split_crit_edge:   ; preds = %if.end82.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_dev.sink.split

if.end88.i.i:                                     ; preds = %if.end82.i.i
  %fb_base.i.i = getelementptr inbounds %struct.bochs_device, ptr %call.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %fb_base.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %33, ptr %fb_base.i.i, align 4
  %fb_size.i.i = getelementptr inbounds %struct.bochs_device, ptr %call.i.i, i32 0, i32 4
  %39 = ptrtoint ptr %fb_size.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %size.0.i.i, ptr %fb_size.i.i, align 8
  %call94.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv27.i.i) #9
  %div183.i.i = lshr i32 %size.0.i.i, 10
  %ioports99.i.i = getelementptr inbounds %struct.bochs_device, ptr %call.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %ioports99.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ioports99.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool100.not.i.i = icmp eq i32 %41, 0
  %cond101.i.i = select i1 %tobool100.not.i.i, ptr @.str.20, ptr @.str.19
  %call102.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %div183.i.i, i32 noundef %33, ptr noundef nonnull %cond101.i.i, i32 noundef %ioaddr.0197.i.i) #9
  %42 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i.i, align 8
  %tobool104.not.i.i = icmp eq ptr %43, null
  br i1 %tobool104.not.i.i, label %if.end88.i.i.if.end4.i_crit_edge, label %land.lhs.true.i.i

if.end88.i.i.if.end4.i_crit_edge:                 ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

land.lhs.true.i.i:                                ; preds = %if.end88.i.i
  %revision.i.i = getelementptr i8, ptr %9, i32 -92
  %44 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %revision.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %45)
  %cmp106.i.i = icmp ugt i8 %45, 1
  br i1 %cmp106.i.i, label %if.then108.i.i, label %land.lhs.true.i.i.if.end4.i_crit_edge

land.lhs.true.i.i.if.end4.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.then108.i.i:                                   ; preds = %land.lhs.true.i.i
  %add.ptr110.i.i = getelementptr i8, ptr %43, i32 1536
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr110.i.i) #6, !srcloc !125
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  %qext_size.i.i = getelementptr inbounds %struct.bochs_device, ptr %call.i.i, i32 0, i32 5
  %48 = ptrtoint ptr %qext_size.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %qext_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %47)
  %cmp115.i.i = icmp ult i32 %47, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %iosize.0195.i.i)
  %cmp118.i.i = icmp ugt i32 %47, %iosize.0195.i.i
  %or.cond.i.i = or i1 %cmp115.i.i, %cmp118.i.i
  br i1 %or.cond.i.i, label %if.then120.i.i, label %if.end122.i.i

if.then120.i.i:                                   ; preds = %if.then108.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %qext_size.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %qext_size.i.i, align 4
  br label %if.end4.i

if.end122.i.i:                                    ; preds = %if.then108.i.i
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.21, i32 noundef %47) #6
  %50 = ptrtoint ptr %qext_size.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %qext_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %51)
  %cmp.i.i.i = icmp ult i32 %51, 8
  br i1 %cmp.i.i.i, label %if.end122.i.i.if.end4.i_crit_edge, label %do.body.i191.i.i

if.end122.i.i.if.end4.i_crit_edge:                ; preds = %if.end122.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

do.body.i191.i.i:                                 ; preds = %if.end122.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  tail call void @arm_heavy_mb() #6
  %52 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i.i, align 8
  %add.ptr.i190.i.i = getelementptr i8, ptr %53, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i190.i.i, i32 -1094795586) #6, !srcloc !128
  br label %if.end4.i

if.end4.i:                                        ; preds = %do.body.i191.i.i, %if.end122.i.i.if.end4.i_crit_edge, %if.then120.i.i, %land.lhs.true.i.i.if.end4.i_crit_edge, %if.end88.i.i.if.end4.i_crit_edge
  %54 = ptrtoint ptr %fb_base.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fb_base.i.i, align 4
  %conv.i = zext i32 %55 to i64
  %56 = ptrtoint ptr %fb_size.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fb_size.i.i, align 8
  %call5.i = tail call i32 @drmm_vram_helper_init(ptr noundef %call10, i64 noundef %conv.i, i32 noundef %57) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.err_free_dev_crit_edge

if.end4.i.err_free_dev_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_dev

if.end8.i:                                        ; preds = %if.end4.i
  %58 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev1.i, align 4
  %call.i29.i = tail call i32 @drmm_mode_config_init(ptr noundef %59) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29.i)
  %tobool.not.i30.i = icmp eq i32 %call.i29.i, 0
  br i1 %tobool.not.i30.i, label %if.end.i32.i, label %if.end8.i.err_free_dev_crit_edge

if.end8.i.err_free_dev_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_dev

if.end.i32.i:                                     ; preds = %if.end8.i
  %60 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev1.i, align 4
  %max_width.i.i = getelementptr inbounds %struct.drm_device, ptr %61, i32 0, i32 30, i32 25
  %62 = ptrtoint ptr %max_width.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 8192, ptr %max_width.i.i, align 4
  %63 = load ptr, ptr %dev1.i, align 4
  %max_height.i.i = getelementptr inbounds %struct.drm_device, ptr %63, i32 0, i32 30, i32 26
  %64 = ptrtoint ptr %max_height.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 8192, ptr %max_height.i.i, align 4
  %65 = ptrtoint ptr %fb_base.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fb_base.i.i, align 4
  %67 = load ptr, ptr %dev1.i, align 4
  %fb_base6.i.i = getelementptr inbounds %struct.drm_device, ptr %67, i32 0, i32 30, i32 28
  %68 = ptrtoint ptr %fb_base6.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %66, ptr %fb_base6.i.i, align 4
  %69 = load ptr, ptr %dev1.i, align 4
  %preferred_depth.i.i = getelementptr inbounds %struct.drm_device, ptr %69, i32 0, i32 30, i32 91
  %70 = ptrtoint ptr %preferred_depth.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 24, ptr %preferred_depth.i.i, align 4
  %71 = load ptr, ptr %dev1.i, align 4
  %prefer_shadow.i.i = getelementptr inbounds %struct.drm_device, ptr %71, i32 0, i32 30, i32 92
  %72 = ptrtoint ptr %prefer_shadow.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %prefer_shadow.i.i, align 4
  %73 = load ptr, ptr %dev1.i, align 4
  %prefer_shadow_fbdev.i.i = getelementptr inbounds %struct.drm_device, ptr %73, i32 0, i32 30, i32 93
  %74 = ptrtoint ptr %prefer_shadow_fbdev.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %prefer_shadow_fbdev.i.i, align 4
  %75 = load ptr, ptr %dev1.i, align 4
  %quirk_addfb_prefer_host_byte_order.i.i = getelementptr inbounds %struct.drm_device, ptr %75, i32 0, i32 30, i32 95
  %76 = ptrtoint ptr %quirk_addfb_prefer_host_byte_order.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %quirk_addfb_prefer_host_byte_order.i.i, align 2
  %77 = load ptr, ptr %dev1.i, align 4
  %funcs.i.i = getelementptr inbounds %struct.drm_device, ptr %77, i32 0, i32 30, i32 27
  %78 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @bochs_mode_funcs, ptr %funcs.i.i, align 4
  %79 = load ptr, ptr %dev1.i, align 4
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %79, i32 0, i32 5
  %80 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev_private.i.i.i, align 4
  %connector1.i.i.i = getelementptr inbounds %struct.bochs_device, ptr %81, i32 0, i32 14
  %call.i.i.i = tail call i32 @drm_connector_init(ptr noundef %79, ptr noundef %connector1.i.i.i, ptr noundef nonnull @bochs_connector_connector_funcs, i32 noundef 15) #6
  %helper_private.i.i.i.i = getelementptr inbounds %struct.bochs_device, ptr %81, i32 0, i32 14, i32 35
  %82 = ptrtoint ptr %helper_private.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @bochs_connector_connector_helper_funcs, ptr %helper_private.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %header.i.i.i.i) #6
  %83 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %81, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %84, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i32.i.bochs_hw_load_edid.exit.i.i.i_crit_edge, label %for.body.i.preheader.i.i.i.i

if.end.i32.i.bochs_hw_load_edid.exit.i.i.i_crit_edge: ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bochs_hw_load_edid.exit.i.i.i

for.body.i.preheader.i.i.i.i:                     ; preds = %if.end.i32.i
  %85 = getelementptr inbounds [8 x i8], ptr %header.i.i.i.i, i32 0, i32 7
  %86 = getelementptr inbounds [8 x i8], ptr %header.i.i.i.i, i32 0, i32 6
  %87 = getelementptr inbounds [8 x i8], ptr %header.i.i.i.i, i32 0, i32 5
  %88 = getelementptr inbounds [8 x i8], ptr %header.i.i.i.i, i32 0, i32 4
  %89 = getelementptr inbounds [8 x i8], ptr %header.i.i.i.i, i32 0, i32 3
  %90 = getelementptr inbounds [8 x i8], ptr %header.i.i.i.i, i32 0, i32 2
  %91 = getelementptr inbounds [8 x i8], ptr %header.i.i.i.i, i32 0, i32 1
  %92 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %84) #6, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !130
  %93 = ptrtoint ptr %header.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %header.i.i.i.i, align 1
  %94 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %81, align 8
  %add.ptr2.i.1.i.i.i.i = getelementptr i8, ptr %95, i32 1
  %96 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i.1.i.i.i.i) #6, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !130
  %97 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %91, align 1
  %98 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %81, align 8
  %add.ptr2.i.2.i.i.i.i = getelementptr i8, ptr %99, i32 2
  %100 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i.2.i.i.i.i) #6, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !130
  %101 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %90, align 1
  %102 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %81, align 8
  %add.ptr2.i.3.i.i.i.i = getelementptr i8, ptr %103, i32 3
  %104 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i.3.i.i.i.i) #6, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !130
  %105 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %89, align 1
  %106 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %81, align 8
  %add.ptr2.i.4.i.i.i.i = getelementptr i8, ptr %107, i32 4
  %108 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i.4.i.i.i.i) #6, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !130
  %109 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %88, align 1
  %110 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %81, align 8
  %add.ptr2.i.5.i.i.i.i = getelementptr i8, ptr %111, i32 5
  %112 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i.5.i.i.i.i) #6, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !130
  %113 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %87, align 1
  %114 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %81, align 8
  %add.ptr2.i.6.i.i.i.i = getelementptr i8, ptr %115, i32 6
  %116 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i.6.i.i.i.i) #6, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !130
  %117 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %86, align 1
  %118 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %81, align 8
  %add.ptr2.i.7.i.i.i.i = getelementptr i8, ptr %119, i32 7
  %120 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i.7.i.i.i.i) #6, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !130
  %121 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %120, ptr %85, align 1
  %call2.i.i.i.i = call i32 @drm_edid_header_is_valid(ptr noundef nonnull %header.i.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call2.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 8
  br i1 %cmp.not.i.i.i.i, label %if.end4.i.i.i.i, label %for.body.i.preheader.i.i.i.i.bochs_hw_load_edid.exit.i.i.i_crit_edge

for.body.i.preheader.i.i.i.i.bochs_hw_load_edid.exit.i.i.i_crit_edge: ; preds = %for.body.i.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bochs_hw_load_edid.exit.i.i.i

if.end4.i.i.i.i:                                  ; preds = %for.body.i.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %edid.i.i.i.i = getelementptr inbounds %struct.bochs_device, ptr %81, i32 0, i32 11
  %122 = ptrtoint ptr %edid.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %edid.i.i.i.i, align 8
  call void @kfree(ptr noundef %123) #6
  %call5.i.i.i.i = call ptr @drm_do_get_edid(ptr noundef %connector1.i.i.i, ptr noundef nonnull @bochs_get_edid_block, ptr noundef %81) #6
  %124 = ptrtoint ptr %edid.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call5.i.i.i.i, ptr %edid.i.i.i.i, align 8
  br label %bochs_hw_load_edid.exit.i.i.i

bochs_hw_load_edid.exit.i.i.i:                    ; preds = %if.end4.i.i.i.i, %for.body.i.preheader.i.i.i.i.bochs_hw_load_edid.exit.i.i.i_crit_edge, %if.end.i32.i.bochs_hw_load_edid.exit.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %header.i.i.i.i) #6
  %edid.i.i.i = getelementptr inbounds %struct.bochs_device, ptr %81, i32 0, i32 11
  %125 = ptrtoint ptr %edid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %edid.i.i.i, align 8
  %tobool.not.i.i33.i = icmp eq ptr %126, null
  br i1 %tobool.not.i.i33.i, label %bochs_hw_load_edid.exit.i.i.i.if.end22_crit_edge, label %do.end.i.i.i

bochs_hw_load_edid.exit.i.i.i.if.end22_crit_edge: ; preds = %bochs_hw_load_edid.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

do.end.i.i.i:                                     ; preds = %bochs_hw_load_edid.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #9
  call void @drm_connector_attach_edid_property(ptr noundef %connector1.i.i.i) #6
  %127 = ptrtoint ptr %edid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %edid.i.i.i, align 8
  %call5.i.i.i = call i32 @drm_connector_update_edid_property(ptr noundef %connector1.i.i.i, ptr noundef %128) #6
  br label %if.end22

if.end22:                                         ; preds = %do.end.i.i.i, %bochs_hw_load_edid.exit.i.i.i.if.end22_crit_edge
  %129 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev1.i, align 4
  %pipe.i.i = getelementptr inbounds %struct.bochs_device, ptr %call.i.i, i32 0, i32 13
  %connector.i.i = getelementptr inbounds %struct.bochs_device, ptr %call.i.i, i32 0, i32 14
  %call19.i34.i = call i32 @drm_simple_display_pipe_init(ptr noundef %130, ptr noundef %pipe.i.i, ptr noundef nonnull @bochs_pipe_funcs, ptr noundef nonnull @bochs_formats, i32 noundef 2, ptr noundef null, ptr noundef %connector.i.i) #6
  %131 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev1.i, align 4
  call void @drm_mode_config_reset(ptr noundef %132) #6
  %call23 = call i32 @drm_dev_register(ptr noundef %call10, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.err_free_dev_crit_edge

if.end22.err_free_dev_crit_edge:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_dev

if.end26:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  call void @drm_fbdev_generic_setup(ptr noundef %call10, i32 noundef 32) #6
  br label %cleanup

err_free_dev.sink.split:                          ; preds = %if.end82.i.i.err_free_dev.sink.split_crit_edge, %bochs_dispi_read.exit189.i.i.err_free_dev.sink.split_crit_edge, %if.else.i.i.err_free_dev.sink.split_crit_edge, %if.end.i.i.err_free_dev.sink.split_crit_edge, %if.then.i.i.err_free_dev.sink.split_crit_edge
  %.str.4.sink = phi ptr [ @.str.4, %if.then.i.i.err_free_dev.sink.split_crit_edge ], [ @.str.5, %if.end.i.i.err_free_dev.sink.split_crit_edge ], [ @.str.6, %if.else.i.i.err_free_dev.sink.split_crit_edge ], [ @.str.7, %bochs_dispi_read.exit189.i.i.err_free_dev.sink.split_crit_edge ], [ @.str.12, %if.end82.i.i.err_free_dev.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ -16, %if.then.i.i.err_free_dev.sink.split_crit_edge ], [ -12, %if.end.i.i.err_free_dev.sink.split_crit_edge ], [ -16, %if.else.i.i.err_free_dev.sink.split_crit_edge ], [ -19, %bochs_dispi_read.exit189.i.i.err_free_dev.sink.split_crit_edge ], [ -12, %if.end82.i.i.err_free_dev.sink.split_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.4.sink) #6
  br label %err_free_dev

err_free_dev:                                     ; preds = %err_free_dev.sink.split, %if.end22.err_free_dev_crit_edge, %if.end8.i.err_free_dev_crit_edge, %if.end4.i.err_free_dev_crit_edge, %if.end40.i.i.err_free_dev_crit_edge, %if.end32.i.i.err_free_dev_crit_edge, %if.end18.err_free_dev_crit_edge, %if.end14.err_free_dev_crit_edge
  %ret.0 = phi i32 [ %call15, %if.end14.err_free_dev_crit_edge ], [ %call23, %if.end22.err_free_dev_crit_edge ], [ -19, %if.end32.i.i.err_free_dev_crit_edge ], [ -19, %if.end40.i.i.err_free_dev_crit_edge ], [ %call.i29.i, %if.end8.i.err_free_dev_crit_edge ], [ %call5.i, %if.end4.i.err_free_dev_crit_edge ], [ -12, %if.end18.err_free_dev_crit_edge ], [ %ret.0.ph, %err_free_dev.sink.split ]
  call void @drm_dev_put(ptr noundef %call10) #6
  br label %cleanup

cleanup:                                          ; preds = %err_free_dev, %if.end26, %if.then12, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ %4, %if.then12 ], [ %ret.0, %err_free_dev ], [ 0, %if.end26 ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bochs_pci_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_dev_unplug(ptr noundef %1) #6
  tail call void @drm_atomic_helper_shutdown(ptr noundef %1) #6
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iounmap(ptr noundef nonnull %5) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %ioports.i = getelementptr inbounds %struct.bochs_device, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %ioports.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ioports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i = icmp eq i32 %7, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then3.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef 462, i32 noundef 2) #6
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %fb_map.i = getelementptr inbounds %struct.bochs_device, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %fb_map.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb_map.i, align 8
  %tobool5.not.i = icmp eq ptr %9, null
  br i1 %tobool5.not.i, label %if.end4.i.bochs_hw_fini.exit_crit_edge, label %if.then6.i

if.end4.i.bochs_hw_fini.exit_crit_edge:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bochs_hw_fini.exit

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iounmap(ptr noundef nonnull %9) #6
  br label %bochs_hw_fini.exit

bochs_hw_fini.exit:                               ; preds = %if.then6.i, %if.end4.i.bochs_hw_fini.exit_crit_edge
  %dev9.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev9.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 -136
  tail call void @pci_release_regions(ptr noundef %add.ptr.i) #6
  %edid.i = getelementptr inbounds %struct.bochs_device, ptr %3, i32 0, i32 11
  %12 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %edid.i, align 8
  tail call void @kfree(ptr noundef %13) #6
  tail call void @drm_dev_put(ptr noundef %1) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_aperture_remove_conflicting_pci_framebuffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fbdev_generic_setup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_vram_mm_debugfs_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_vram_driver_dumb_create(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_ttm_dumb_map_offset(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

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
declare dso_local i32 @drmm_vram_helper_init(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @drmm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_region(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_display_pipe_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bochs_gem_fb_create(ptr noundef %dev, ptr noundef %file, ptr noundef %mode_cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pixel_format = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 3
  %0 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixel_format, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.return_crit_edge [
    i32 875713112, label %entry.if.end_crit_edge
    i32 875714626, label %entry.if.end_crit_edge6
  ]

entry.if.end_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge6
  %call3 = tail call ptr @drm_gem_fb_create(ptr noundef %dev, ptr noundef %file, ptr noundef %mode_cmd) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %call3, %if.end ], [ inttoptr (i32 -22 to ptr), %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vram_helper_mode_valid(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_attach_edid_property(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bochs_connector_get_modes(ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %edid = getelementptr i8, ptr %connector, i32 -1608
  %0 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edid, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then3_crit_edge, label %if.end

entry.if.then3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.end:                                           ; preds = %entry
  %call = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef nonnull %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end.if.then3_crit_edge, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.then3:                                         ; preds = %if.end.if.then3_crit_edge, %entry.if.then3_crit_edge
  %call4 = tail call i32 @drm_add_modes_noedid(ptr noundef %connector, i32 noundef 8192, i32 noundef 8192) #6
  %2 = load i32, ptr @defx, align 4
  %3 = load i32, ptr @defy, align 4
  tail call void @drm_set_preferred_mode(ptr noundef %connector, i32 noundef %2, i32 noundef %3) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %count.1 = phi i32 [ %call, %if.end.if.end5_crit_edge ], [ %call4, %if.then3 ]
  ret i32 %count.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_modes_noedid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_set_preferred_mode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bochs_get_edid_block(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %buf, i32 noundef %block, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %block, 7
  %add = add i32 %mul, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add)
  %cmp = icmp ugt i32 %add, 1024
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp111.not = icmp eq i32 %len, 0
  br i1 %cmp111.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %i.012
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2) #6, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !130
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.012
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %arrayidx, align 1
  %inc = add nuw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_edid_header_is_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_do_get_edid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bochs_pipe_enable(ptr nocapture noundef readonly %pipe, ptr nocapture noundef readonly %crtc_state, ptr nocapture noundef readonly %plane_state) #2 align 64 {
entry:
  %idx.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx.i) #6
  %4 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %idx.i, align 4, !annotation !131
  %dev.i = getelementptr inbounds %struct.bochs_device, ptr %3, i32 0, i32 12
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %call.i = call zeroext i1 @drm_dev_enter(ptr noundef %6, ptr noundef nonnull %idx.i) #6
  br i1 %call.i, label %if.end.i, label %entry.bochs_hw_setmode.exit_crit_edge

entry.bochs_hw_setmode.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %bochs_hw_setmode.exit

if.end.i:                                         ; preds = %entry
  %hdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %hdisplay.i, align 4
  %xres.i = getelementptr inbounds %struct.bochs_device, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %xres.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %xres.i, align 8
  %vdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 8, i32 6
  %10 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vdisplay.i, align 2
  %yres.i = getelementptr inbounds %struct.bochs_device, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %yres.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %yres.i, align 2
  %bpp.i = getelementptr inbounds %struct.bochs_device, ptr %3, i32 0, i32 10
  %13 = ptrtoint ptr %bpp.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 32, ptr %bpp.i, align 4
  %14 = load i16, ptr %hdisplay.i, align 4
  %conv.i = zext i16 %14 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %stride.i = getelementptr inbounds %struct.bochs_device, ptr %3, i32 0, i32 9
  %15 = ptrtoint ptr %stride.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul.i, ptr %stride.i, align 8
  %fb_size.i = getelementptr inbounds %struct.bochs_device, ptr %3, i32 0, i32 4
  %16 = ptrtoint ptr %fb_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fb_size.i, align 8
  %div4.i = udiv i32 %17, %mul.i
  %conv5.i = trunc i32 %div4.i to i16
  %yres_virtual.i = getelementptr inbounds %struct.bochs_device, ptr %3, i32 0, i32 8
  %18 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv5.i, ptr %yres_virtual.i, align 4
  %conv7.i = zext i16 %8 to i32
  %conv9.i = zext i16 %11 to i32
  %conv12.i = and i32 %div4.i, 65535
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef %conv7.i, i32 noundef %conv9.i, i32 noundef 32, i32 noundef %conv12.i) #6
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.25, i32 noundef 0) #6
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 8
  %tobool26.not.i.i.i = icmp eq ptr %20, null
  br i1 %tobool26.not.i.i.i, label %if.else.i.i.i, label %if.then27.i.i.i

if.then27.i.i.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 1050
  %21 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i) #6, !srcloc !129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !132
  br label %bochs_vga_readb.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873382 to ptr)) #6, !srcloc !129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  br label %bochs_vga_readb.exit.i.i

bochs_vga_readb.exit.i.i:                         ; preds = %if.else.i.i.i, %if.then27.i.i.i
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 8
  %tobool26.not.i6.i.i = icmp eq ptr %24, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  call void @arm_heavy_mb() #6
  br i1 %tobool26.not.i6.i.i, label %do.body33.i.i.i, label %if.then27.i8.i.i

if.then27.i8.i.i:                                 ; preds = %bochs_vga_readb.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 8
  %add.ptr.i7.i.i = getelementptr i8, ptr %26, i32 1024
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7.i.i, i8 32) #6, !srcloc !134
  br label %bochs_hw_blank.exit.i

do.body33.i.i.i:                                  ; preds = %bochs_vga_readb.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 32) #6, !srcloc !134
  br label %bochs_hw_blank.exit.i

bochs_hw_blank.exit.i:                            ; preds = %do.body33.i.i.i, %if.then27.i8.i.i
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 8
  %tobool.not.i.i = icmp eq ptr %28, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  call void @arm_heavy_mb() #6
  br i1 %tobool.not.i.i, label %do.body2.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %bochs_hw_blank.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 8
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 1288
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 0) #6, !srcloc !123
  br label %bochs_dispi_write.exit.i

do.body2.i.i:                                     ; preds = %bochs_hw_blank.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) inttoptr (i32 -18873906 to ptr), i16 1024) #6, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) inttoptr (i32 -18873905 to ptr), i16 0) #6, !srcloc !123
  br label %bochs_dispi_write.exit.i

bochs_dispi_write.exit.i:                         ; preds = %do.body2.i.i, %if.then.i.i
  %31 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bpp.i, align 4
  %conv14.i = trunc i32 %32 to i16
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 8
  %tobool.not.i49.i = icmp eq ptr %34, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  call void @arm_heavy_mb() #6
  br i1 %tobool.not.i49.i, label %do.body2.i52.i, label %if.then.i51.i

if.then.i51.i:                                    ; preds = %bochs_dispi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = call i16 @llvm.bswap.i16(i16 %conv14.i) #6
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 8
  %add.ptr.i50.i = getelementptr i8, ptr %37, i32 1286
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i50.i, i16 %35) #6, !srcloc !123
  br label %bochs_dispi_write.exit53.i

do.body2.i52.i:                                   ; preds = %bochs_dispi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) inttoptr (i32 -18873906 to ptr), i16 768) #6, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  call void @arm_heavy_mb() #6
  %38 = call i16 @llvm.bswap.i16(i16 %conv14.i) #6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) inttoptr (i32 -18873905 to ptr), i16 %38) #6, !srcloc !123
  br label %bochs_dispi_write.exit53.i

bochs_dispi_write.exit53.i:                       ; preds = %do.body2.i52.i, %if.then.i51.i
  %39 = ptrtoint ptr %xres.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %xres.i, align 8
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %3, align 8
  %tobool.not.i54.i = icmp eq ptr %42, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  call void @arm_heavy_mb() #6
  br i1 %tobool.not.i54.i, label %do.body2.i57.i, label %if.then.i56.i

if.then.i56.i:                                    ; preds = %bochs_dispi_write.exit53.i
  call void @__sanitizer_cov_trace_pc() #8
  %43 = call i16 @llvm.bswap.i16(i16 %40) #6
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %3, align 8
  %add.ptr.i55.i = getelementptr i8, ptr %45, i32 1282
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i55.i, i16 %43) #6, !srcloc !123
  br label %bochs_dispi_write.exit58.i

do.body2.i57.i:                                   ; preds = %bochs_dispi_write.exit53.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) inttoptr (i32 -18873906 to ptr), i16 256) #6, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  call void @arm_heavy_mb() #6
  %46 = call i16 @llvm.bswap.i16(i16 %40) #6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) inttoptr (i32 -18873905 to ptr), i16 %46) #6, !srcloc !123
  br label %bochs_dispi_write.exit58.i

bochs_dispi_write.exit58.i:                       ; preds = %do.body2.i57.i, %if.then.i56.i
  %47 = ptrtoint ptr %yres.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %yres.i, align 2
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %3, align 8
  %tobool.not.i59.i = icmp eq ptr %50, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  call void @arm_heavy_mb() #6
  br i1 %tobool.not.i59.i, label %do.body2.i62.i, label %if.then.i61.i

if.then.i61.i:                                    ; preds = %bochs_dispi_write.exit58.i
  call void @__sanitizer_cov_trace_pc() #8
  %51 = call i16 @llvm.bswap.i16(i16 %48) #6
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %3, align 8
  %add.ptr.i60.i = getelementptr i8, ptr %53, i32 1284
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i60.i, i16 %51) #6, !srcloc !123
  br label %bochs_dispi_write.exit63.i

do.body2.i62.i:                                   ; preds = %bochs_dispi_write.exit58.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) inttoptr (i32 -18873906 to ptr), i16 512) #6, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  call void @arm_heavy_mb() #6
  %54 = call i16 @llvm.bswap.i16(i16 %48) #6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) inttoptr (i32 -18873905 to ptr), i16 %54) #6, !srcloc !123
  br label %bochs_dispi_write.exit63.i

bochs_dispi_write.exit63.i:                       ; preds = %do.body2.i62.i, %if.then.i61.i
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %3, align 8
  %tobool.not.i64.i = icmp eq ptr %56, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  call void @arm_heavy_mb() #6
  br i1 %tobool.not.i64.i, label %do.body2.i67.i, label %if.then.i66.i

if.then.i66.i:                                    ; preds = %bochs_dispi_write.exit63.i
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %3, align 8
  %add.ptr.i65.i = getelementptr i8, ptr %58, i32 1290
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i65.i, i16 0) #6, !srcloc !123
  br label %bochs_dispi_write.exit68.i

do.body2.i67.i:                                   ; preds = %bochs_dispi_write.exit63.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) inttoptr (i32 -18873906 to ptr), i16 1280) #6, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) inttoptr (i32 -18873905 to ptr), i16 0) #6, !srcloc !123
  br label %bochs_dispi_write.exit68.i

bochs_dispi_write.exit68.i:                       ; preds = %do.body2.i67.i, %if.then.i66.i
  %59 = ptrtoint ptr %xres.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %xres.i, align 8
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %3, align 8
  %tobool.not.i69.i = icmp eq ptr %62, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  call void @arm_heavy_mb() #6
  br i1 %tobool.not.i69.i, label %do.body2.i72.i, label %if.then.i71.i

if.then.i71.i:                                    ; preds = %bochs_dispi_write.exit68.i
  call void @__sanitizer_cov_trace_pc() #8
  %63 = call i16 @llvm.bswap.i16(i16 %60) #6
  %64 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %3, align 8
  %add.ptr.i70.i = getelementptr i8, ptr %65, i32 1292
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i70.i, i16 %63) #6, !srcloc !123
  br label %bochs_dispi_write.exit73.i

do.body2.i72.i:                                   ; preds = %bochs_dispi_write.exit68.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) inttoptr (i32 -18873906 to ptr), i16 1536) #6, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  call void @arm_heavy_mb() #6
  %66 = call i16 @llvm.bswap.i16(i16 %60) #6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) inttoptr (i32 -18873905 to ptr), i16 %66) #6, !srcloc !123
  br label %bochs_dispi_write.exit73.i

bochs_dispi_write.exit73.i:                       ; preds = %do.body2.i72.i, %if.then.i71.i
  %67 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %yres_virtual.i, align 4
  %69 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %3, align 8
  %tobool.not.i74.i = icmp eq ptr %70, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  call void @arm_heavy_mb() #6
  br i1 %tobool.not.i74.i, label %do.body2.i77.i, label %if.then.i76.i

if.then.i76.i:                                    ; preds = %bochs_dispi_write.exit73.i
  call void @__sanitizer_cov_trace_pc() #8
  %71 = call i16 @llvm.bswap.i16(i16 %68) #6
  %72 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %3, align 8
  %add.ptr.i75.i = getelementptr i8, ptr %73, i32 1294
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i75.i, i16 %71) #6, !srcloc !123
  br label %bochs_dispi_write.exit78.i

do.body2.i77.i:                                   ; preds = %bochs_dispi_write.exit73.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) inttoptr (i32 -18873906 to ptr), i16 1792) #6, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  call void @arm_heavy_mb() #6
  %74 = call i16 @llvm.bswap.i16(i16 %68) #6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) inttoptr (i32 -18873905 to ptr), i16 %74) #6, !srcloc !123
  br label %bochs_dispi_write.exit78.i

bochs_dispi_write.exit78.i:                       ; preds = %do.body2.i77.i, %if.then.i76.i
  %75 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %3, align 8
  %tobool.not.i79.i = icmp eq ptr %76, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  call void @arm_heavy_mb() #6
  br i1 %tobool.not.i79.i, label %do.body2.i82.i, label %if.then.i81.i

if.then.i81.i:                                    ; preds = %bochs_dispi_write.exit78.i
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %3, align 8
  %add.ptr.i80.i = getelementptr i8, ptr %78, i32 1296
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i80.i, i16 0) #6, !srcloc !123
  br label %bochs_dispi_write.exit83.i

do.body2.i82.i:                                   ; preds = %bochs_dispi_write.exit78.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) inttoptr (i32 -18873906 to ptr), i16 2048) #6, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) inttoptr (i32 -18873905 to ptr), i16 0) #6, !srcloc !123
  br label %bochs_dispi_write.exit83.i

bochs_dispi_write.exit83.i:                       ; preds = %do.body2.i82.i, %if.then.i81.i
  %79 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %3, align 8
  %tobool.not.i84.i = icmp eq ptr %80, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  call void @arm_heavy_mb() #6
  br i1 %tobool.not.i84.i, label %do.body2.i87.i, label %if.then.i86.i

if.then.i86.i:                                    ; preds = %bochs_dispi_write.exit83.i
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %3, align 8
  %add.ptr.i85.i = getelementptr i8, ptr %82, i32 1298
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i85.i, i16 0) #6, !srcloc !123
  br label %bochs_dispi_write.exit88.i

do.body2.i87.i:                                   ; preds = %bochs_dispi_write.exit83.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) inttoptr (i32 -18873906 to ptr), i16 2304) #6, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) inttoptr (i32 -18873905 to ptr), i16 0) #6, !srcloc !123
  br label %bochs_dispi_write.exit88.i

bochs_dispi_write.exit88.i:                       ; preds = %do.body2.i87.i, %if.then.i86.i
  %83 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %3, align 8
  %tobool.not.i89.i = icmp eq ptr %84, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  call void @arm_heavy_mb() #6
  br i1 %tobool.not.i89.i, label %do.body2.i92.i, label %if.then.i91.i

if.then.i91.i:                                    ; preds = %bochs_dispi_write.exit88.i
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %3, align 8
  %add.ptr.i90.i = getelementptr i8, ptr %86, i32 1288
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i90.i, i16 16640) #6, !srcloc !123
  br label %bochs_dispi_write.exit93.i

do.body2.i92.i:                                   ; preds = %bochs_dispi_write.exit88.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) inttoptr (i32 -18873906 to ptr), i16 1024) #6, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) inttoptr (i32 -18873905 to ptr), i16 16640) #6, !srcloc !123
  br label %bochs_dispi_write.exit93.i

bochs_dispi_write.exit93.i:                       ; preds = %do.body2.i92.i, %if.then.i91.i
  %87 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %idx.i, align 4
  call void @drm_dev_exit(i32 noundef %88) #6
  br label %bochs_hw_setmode.exit

bochs_hw_setmode.exit:                            ; preds = %bochs_dispi_write.exit93.i, %entry.bochs_hw_setmode.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx.i) #6
  call fastcc void @bochs_plane_update(ptr noundef %3, ptr noundef %plane_state)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bochs_pipe_disable(ptr nocapture noundef readonly %pipe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.25, i32 noundef 1) #6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %tobool26.not.i.i = icmp eq ptr %5, null
  br i1 %tobool26.not.i.i, label %if.else.i.i, label %if.then27.i.i

if.then27.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 1050
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #6, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !132
  br label %bochs_vga_readb.exit.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873382 to ptr)) #6, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  br label %bochs_vga_readb.exit.i

bochs_vga_readb.exit.i:                           ; preds = %if.else.i.i, %if.then27.i.i
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %tobool26.not.i6.i = icmp eq ptr %9, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool26.not.i6.i, label %do.body33.i.i, label %if.then27.i8.i

if.then27.i8.i:                                   ; preds = %bochs_vga_readb.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %add.ptr.i7.i = getelementptr i8, ptr %11, i32 1024
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7.i, i8 0) #6, !srcloc !134
  br label %bochs_hw_blank.exit

do.body33.i.i:                                    ; preds = %bochs_vga_readb.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 0) #6, !srcloc !134
  br label %bochs_hw_blank.exit

bochs_hw_blank.exit:                              ; preds = %do.body33.i.i, %if.then27.i8.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bochs_pipe_update(ptr nocapture noundef readonly %pipe, ptr nocapture noundef readnone %old_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %state = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %pipe, i32 0, i32 1, i32 19
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 4
  tail call fastcc void @bochs_plane_update(ptr noundef %3, ptr noundef %5)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_vram_simple_display_pipe_prepare_fb(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vram_simple_display_pipe_cleanup_fb(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bochs_plane_update(ptr nocapture noundef %bochs, ptr nocapture noundef readonly %state) unnamed_addr #2 align 64 {
entry:
  %idx.i63 = alloca i32, align 4
  %idx.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %stride = getelementptr inbounds %struct.bochs_device, ptr %bochs, i32 0, i32 9
  %2 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stride, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %obj, align 4
  %call3 = tail call i64 @drm_gem_vram_offset(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call3)
  %cmp = icmp slt i64 %call3, 0
  br i1 %cmp, label %land.rhs, label %if.end43

land.rhs:                                         ; preds = %if.end
  %.b61 = load i1, ptr @bochs_plane_update.__already_done, align 1
  br i1 %.b61, label %land.rhs.cleanup_crit_edge, label %if.then11, !prof !136

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @bochs_plane_update.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 422, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end43:                                         ; preds = %if.end
  %crtc_x = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 4
  %6 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %crtc_x, align 4
  %crtc_y = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 5
  %8 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %crtc_y, align 4
  %10 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fb, align 4
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pitches, align 8
  %offsets = getelementptr inbounds %struct.drm_framebuffer, ptr %11, i32 0, i32 7
  %14 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offsets, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx.i) #6
  %16 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %idx.i, align 4, !annotation !131
  %dev.i = getelementptr inbounds %struct.bochs_device, ptr %bochs, i32 0, i32 12
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %call.i = call zeroext i1 @drm_dev_enter(ptr noundef %18, ptr noundef nonnull %idx.i) #6
  br i1 %call.i, label %if.end.i, label %if.end43.bochs_hw_setbase.exit_crit_edge

if.end43.bochs_hw_setbase.exit_crit_edge:         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %bochs_hw_setbase.exit

if.end.i:                                         ; preds = %if.end43
  %conv = zext i32 %15 to i64
  %add = add nuw i64 %call3, %conv
  %19 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %13, ptr %stride, align 8
  %conv.i = trunc i64 %add to i32
  %mul.i = mul i32 %13, %9
  %add.i = add i32 %mul.i, %conv.i
  %bpp.i = getelementptr inbounds %struct.bochs_device, ptr %bochs, i32 0, i32 10
  %20 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bpp.i, align 4
  %div39.i = lshr i32 %21, 3
  %mul3.i = mul i32 %div39.i, %7
  %add4.i = add i32 %add.i, %mul3.i
  %.frozen = freeze i32 %13
  %div6.i = udiv i32 %add4.i, %.frozen
  %22 = mul i32 %div6.i, %.frozen
  %rem.i.decomposed = sub i32 %add4.i, %22
  %mul8.i = shl i32 %rem.i.decomposed, 3
  %div10.i = udiv i32 %mul8.i, %21
  %mul11.i = shl i32 %13, 3
  %div13.i = udiv i32 %mul11.i, %21
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.26, i32 noundef %7, i32 noundef %9, i64 noundef %add, i32 noundef %add4.i, i32 noundef %div10.i, i32 noundef %div6.i) #6
  %conv14.i = trunc i32 %div13.i to i16
  %23 = ptrtoint ptr %bochs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bochs, align 8
  %tobool.not.i.i = icmp eq ptr %24, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  call void @arm_heavy_mb() #6
  br i1 %tobool.not.i.i, label %do.body2.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = call i16 @llvm.bswap.i16(i16 %conv14.i) #6
  %26 = ptrtoint ptr %bochs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bochs, align 8
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 1292
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %25) #6, !srcloc !123
  br label %bochs_dispi_write.exit.i

do.body2.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) inttoptr (i32 -18873906 to ptr), i16 1536) #6, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  call void @arm_heavy_mb() #6
  %28 = call i16 @llvm.bswap.i16(i16 %conv14.i) #6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) inttoptr (i32 -18873905 to ptr), i16 %28) #6, !srcloc !123
  br label %bochs_dispi_write.exit.i

bochs_dispi_write.exit.i:                         ; preds = %do.body2.i.i, %if.then.i.i
  %conv15.i = trunc i32 %div10.i to i16
  %29 = ptrtoint ptr %bochs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bochs, align 8
  %tobool.not.i40.i = icmp eq ptr %30, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  call void @arm_heavy_mb() #6
  br i1 %tobool.not.i40.i, label %do.body2.i43.i, label %if.then.i42.i

if.then.i42.i:                                    ; preds = %bochs_dispi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = call i16 @llvm.bswap.i16(i16 %conv15.i) #6
  %32 = ptrtoint ptr %bochs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bochs, align 8
  %add.ptr.i41.i = getelementptr i8, ptr %33, i32 1296
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i41.i, i16 %31) #6, !srcloc !123
  br label %bochs_dispi_write.exit44.i

do.body2.i43.i:                                   ; preds = %bochs_dispi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) inttoptr (i32 -18873906 to ptr), i16 2048) #6, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  call void @arm_heavy_mb() #6
  %34 = call i16 @llvm.bswap.i16(i16 %conv15.i) #6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) inttoptr (i32 -18873905 to ptr), i16 %34) #6, !srcloc !123
  br label %bochs_dispi_write.exit44.i

bochs_dispi_write.exit44.i:                       ; preds = %do.body2.i43.i, %if.then.i42.i
  %conv16.i = trunc i32 %div6.i to i16
  %35 = ptrtoint ptr %bochs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bochs, align 8
  %tobool.not.i45.i = icmp eq ptr %36, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  call void @arm_heavy_mb() #6
  br i1 %tobool.not.i45.i, label %do.body2.i48.i, label %if.then.i47.i

if.then.i47.i:                                    ; preds = %bochs_dispi_write.exit44.i
  call void @__sanitizer_cov_trace_pc() #8
  %37 = call i16 @llvm.bswap.i16(i16 %conv16.i) #6
  %38 = ptrtoint ptr %bochs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bochs, align 8
  %add.ptr.i46.i = getelementptr i8, ptr %39, i32 1298
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i46.i, i16 %37) #6, !srcloc !123
  br label %bochs_dispi_write.exit49.i

do.body2.i48.i:                                   ; preds = %bochs_dispi_write.exit44.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) inttoptr (i32 -18873906 to ptr), i16 2304) #6, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  call void @arm_heavy_mb() #6
  %40 = call i16 @llvm.bswap.i16(i16 %conv16.i) #6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) inttoptr (i32 -18873905 to ptr), i16 %40) #6, !srcloc !123
  br label %bochs_dispi_write.exit49.i

bochs_dispi_write.exit49.i:                       ; preds = %do.body2.i48.i, %if.then.i47.i
  %41 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %idx.i, align 4
  call void @drm_dev_exit(i32 noundef %42) #6
  br label %bochs_hw_setbase.exit

bochs_hw_setbase.exit:                            ; preds = %bochs_dispi_write.exit49.i, %if.end43.bochs_hw_setbase.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx.i) #6
  %43 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fb, align 4
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %format, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx.i63) #6
  %47 = ptrtoint ptr %idx.i63 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %idx.i63, align 4, !annotation !131
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 4
  %call.i65 = call zeroext i1 @drm_dev_enter(ptr noundef %49, ptr noundef nonnull %idx.i63) #6
  br i1 %call.i65, label %if.end.i66, label %bochs_hw_setbase.exit.bochs_hw_setformat.exit_crit_edge

bochs_hw_setbase.exit.bochs_hw_setformat.exit_crit_edge: ; preds = %bochs_hw_setbase.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %bochs_hw_setformat.exit

if.end.i66:                                       ; preds = %bochs_hw_setbase.exit
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %46, align 4
  %and.i = and i32 %51, 255
  %shr3.i = lshr i32 %51, 8
  %and4.i = and i32 %shr3.i, 255
  %shr6.i = lshr i32 %51, 16
  %and7.i = and i32 %shr6.i, 255
  %shr9.i = lshr i32 %51, 24
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.27, i32 noundef %and.i, i32 noundef %and4.i, i32 noundef %and7.i, i32 noundef %shr9.i) #6
  %52 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %46, align 4
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %53, label %sw.default.i [
    i32 875713112, label %sw.bb.i
    i32 875714626, label %sw.bb12.i
  ]

sw.bb.i:                                          ; preds = %if.end.i66
  %qext_size.i.i = getelementptr inbounds %struct.bochs_device, ptr %bochs, i32 0, i32 5
  %55 = ptrtoint ptr %qext_size.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %qext_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %56)
  %cmp.i.i = icmp ult i32 %56, 8
  br i1 %cmp.i.i, label %sw.bb.i.sw.epilog.i_crit_edge, label %do.body.i.i

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

do.body.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !137
  call void @arm_heavy_mb() #6
  %57 = ptrtoint ptr %bochs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bochs, align 8
  %add.ptr.i.i67 = getelementptr i8, ptr %58, i32 1540
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i67, i32 505290270) #6, !srcloc !128
  br label %sw.epilog.i

sw.bb12.i:                                        ; preds = %if.end.i66
  %qext_size.i21.i = getelementptr inbounds %struct.bochs_device, ptr %bochs, i32 0, i32 5
  %59 = ptrtoint ptr %qext_size.i21.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %qext_size.i21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %60)
  %cmp.i22.i = icmp ult i32 %60, 8
  br i1 %cmp.i22.i, label %sw.bb12.i.sw.epilog.i_crit_edge, label %do.body.i24.i

sw.bb12.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

do.body.i24.i:                                    ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  call void @arm_heavy_mb() #6
  %61 = ptrtoint ptr %bochs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bochs, align 8
  %add.ptr.i23.i = getelementptr i8, ptr %62, i32 1540
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 -1094795586) #6, !srcloc !128
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.bochs_hw_setformat, i32 noundef %53) #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %do.body.i24.i, %sw.bb12.i.sw.epilog.i_crit_edge, %do.body.i.i, %sw.bb.i.sw.epilog.i_crit_edge
  %63 = ptrtoint ptr %idx.i63 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %idx.i63, align 4
  call void @drm_dev_exit(i32 noundef %64) #6
  br label %bochs_hw_setformat.exit

bochs_hw_setformat.exit:                          ; preds = %sw.epilog.i, %bochs_hw_setbase.exit.bochs_hw_setformat.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx.i63) #6
  br label %cleanup

cleanup:                                          ; preds = %bochs_hw_setformat.exit, %if.then11, %land.rhs.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_enter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_exit(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @drm_gem_vram_offset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unplug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bochs_pm_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @drm_mode_config_helper_suspend(ptr noundef %1) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bochs_pm_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @drm_mode_config_helper_resume(ptr noundef %1) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_firmware_drivers_only() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !13, !15, !17, !19, !21, !23, !24, !25, !27, !28, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !62, !63, !64, !65, !67, !69, !70, !71, !73, !74, !75, !76, !77, !79, !81, !83, !84, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !105, !107, !109}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__param_modeset, !1, !"__param_modeset", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 53, i32 1}
!2 = !{ptr @__UNIQUE_ID_modesettype322, !1, !"__UNIQUE_ID_modesettype322", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_modeset323, !4, !"__UNIQUE_ID_modeset323", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 54, i32 1}
!5 = !{ptr @__param_defx, !6, !"__param_defx", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 56, i32 1}
!7 = !{ptr @__UNIQUE_ID_defxtype324, !6, !"__UNIQUE_ID_defxtype324", i1 false, i1 false}
!8 = !{ptr @__param_defy, !9, !"__param_defy", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 57, i32 1}
!10 = !{ptr @__UNIQUE_ID_defytype325, !9, !"__UNIQUE_ID_defytype325", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_defx326, !12, !"__UNIQUE_ID_defx326", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 58, i32 1}
!13 = !{ptr @__UNIQUE_ID_defy327, !14, !"__UNIQUE_ID_defy327", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 59, i32 1}
!15 = !{ptr @__initcall__kmod_bochs__330_735_bochs_init6, !16, !"__initcall__kmod_bochs__330_735_bochs_init6", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 735, i32 1}
!17 = !{ptr @__exitcall_bochs_exit, !18, !"__exitcall_bochs_exit", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 736, i32 1}
!19 = !{ptr @__UNIQUE_ID_author331, !20, !"__UNIQUE_ID_author331", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 739, i32 1}
!21 = !{ptr @__UNIQUE_ID_file332, !22, !"__UNIQUE_ID_file332", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 740, i32 1}
!23 = !{ptr @__UNIQUE_ID_license333, !22, !"__UNIQUE_ID_license333", i1 false, i1 false}
!24 = !{ptr @__param_str_modeset, !1, !"__param_str_modeset", i1 false, i1 false}
!25 = !{ptr @bochs_modeset, !26, !"bochs_modeset", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 49, i32 12}
!27 = !{ptr @__param_str_defx, !6, !"__param_str_defx", i1 false, i1 false}
!28 = !{ptr @defx, !29, !"defx", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 50, i32 12}
!30 = !{ptr @__param_str_defy, !9, !"__param_str_defy", i1 false, i1 false}
!31 = !{ptr @defy, !32, !"defy", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 51, i32 12}
!33 = !{ptr @.str, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 709, i32 11}
!35 = !{ptr @bochs_pci_driver, !36, !"bochs_pci_driver", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 708, i32 26}
!37 = !{ptr @bochs_pci_tbl, !38, !"bochs_pci_tbl", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 683, i32 35}
!39 = !{ptr @.str.1, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 639, i32 3}
!41 = !{ptr @.str.2, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 597, i32 12}
!43 = !{ptr @.str.3, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 598, i32 12}
!45 = !{ptr @bochs_driver, !46, !"bochs_driver", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 593, i32 32}
!47 = !{ptr @bochs_fops, !48, !"bochs_fops", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 591, i32 1}
!49 = !{ptr @.str.4, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 217, i32 4}
!51 = !{ptr @.str.5, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 224, i32 4}
!53 = !{ptr @.str.6, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 231, i32 4}
!55 = !{ptr @.str.7, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 241, i32 3}
!57 = !{ptr @.str.8, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 252, i32 3}
!59 = !{ptr @.str.9, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 258, i32 3}
!61 = !{ptr @.str.10, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.11, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @bochs_hw_init._entry, !60, !"_entry", i1 false, i1 false}
!64 = !{ptr @bochs_hw_init._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.12, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 262, i32 3}
!67 = !{ptr @.str.14, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 268, i32 2}
!69 = !{ptr @bochs_hw_init._entry.13, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @bochs_hw_init._entry_ptr.15, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.17, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 269, i32 2}
!73 = !{ptr @bochs_hw_init._entry.16, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @bochs_hw_init._entry_ptr.18, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.19, !72, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.20, !72, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.21, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 280, i32 3}
!79 = !{ptr @bochs_mode_funcs, !80, !"bochs_mode_funcs", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 522, i32 43}
!81 = !{ptr @.str.22, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 505, i32 3}
!83 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @bochs_connector_init._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @bochs_connector_init._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @bochs_connector_connector_funcs, !87, !"bochs_connector_connector_funcs", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 486, i32 41}
!88 = !{ptr @bochs_connector_connector_helper_funcs, !89, !"bochs_connector_connector_helper_funcs", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 482, i32 48}
!90 = !{ptr @bochs_pipe_funcs, !91, !"bochs_pipe_funcs", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 458, i32 51}
!92 = !{ptr @.str.24, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 327, i32 2}
!94 = !{ptr @.str.25, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 307, i32 2}
!96 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 422, i32 6}
!98 = !{ptr @.str.26, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 396, i32 2}
!100 = !{ptr @.str.27, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 357, i32 2}
!102 = !{ptr @.str.28, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 372, i32 3}
!104 = !{ptr @__func__.bochs_hw_setformat, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @bochs_formats, !106, !"bochs_formats", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 407, i32 23}
!107 = !{ptr @bochs_pm_ops, !108, !"bochs_pm_ops", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 623, i32 32}
!109 = !{ptr @.str.29, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/tiny/bochs.c", i32 727, i32 9}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{i64 4996444}
!121 = !{i64 2157212509}
!122 = !{i64 2157212759}
!123 = !{i64 4996244}
!124 = !{i64 2157213610}
!125 = !{i64 4997282}
!126 = !{i64 2157226298}
!127 = !{i64 2157215148}
!128 = !{i64 4996864}
!129 = !{i64 4997062}
!130 = !{i64 2157216015}
!131 = !{!"auto-init"}
!132 = !{i64 2157211738}
!133 = !{i64 2157212011}
!134 = !{i64 4996667}
!135 = !{i64 2157214715}
!136 = !{!"branch_weights", i32 2000, i32 1}
!137 = !{i64 2157215569}
