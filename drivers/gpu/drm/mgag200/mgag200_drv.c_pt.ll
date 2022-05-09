; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/mgag200/mgag200_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/mgag200/mgag200_drv.c"
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
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.mga_device = type { %struct.drm_device, i32, i32, i32, ptr, %struct.mga_mc, ptr, i32, i32, %union.anon.92, %struct.mga_connector, %struct.mgag200_pll, %struct.drm_simple_display_pipe }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.85, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.91, ptr, i32, ptr, i8, i32 }
%struct.anon.85 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.91 = type { i32, ptr }
%struct.mga_mc = type { i32, i32, i32 }
%union.anon.92 = type { %struct.anon.93 }
%struct.anon.93 = type { i32, i32, i32 }
%struct.mga_connector = type { %struct.drm_connector, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.89 }
%union.anon.89 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.mgag200_pll = type { ptr, ptr }
%struct.drm_simple_display_pipe = type { %struct.drm_crtc, %struct.drm_plane, %struct.drm_encoder, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }

@mgag200_modeset = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_modeset320 = internal constant [48 x i8] c"mgag200.parm=modeset:Disable/Enable modesetting\00", section ".modinfo", align 1
@__param_str_modeset = internal constant [16 x i8] c"mgag200.modeset\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_modeset = internal constant %struct.kernel_param { ptr @__param_str_modeset, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.76 { ptr @mgag200_modeset } }, section "__param", align 4
@__UNIQUE_ID_modesettype321 = internal constant [29 x i8] c"mgag200.parmtype=modeset:int\00", section ".modinfo", align 1
@mgag200_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @mgag200_pciidlist, ptr @mgag200_pci_probe, ptr @mgag200_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_mgag200__322_394_mgag200_init6 = internal global ptr @mgag200_init, section ".initcall6.init", align 4
@__exitcall_mgag200_exit = internal global ptr @mgag200_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author323 = internal constant [31 x i8] c"mgag200.author=Matthew Garrett\00", section ".modinfo", align 1
@__UNIQUE_ID_description324 = internal constant [32 x i8] c"mgag200.description=MGA G200 SE\00", section ".modinfo", align 1
@__UNIQUE_ID_file325 = internal constant [45 x i8] c"mgag200.file=drivers/gpu/drm/mgag200/mgag200\00", section ".modinfo", align 1
@__UNIQUE_ID_license326 = internal constant [20 x i8] c"mgag200.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mgag200\00", [24 x i8] zeroinitializer }, align 32
@mgag200_pciidlist = internal constant { [11 x %struct.pci_device_id], [64 x i8] } { [11 x %struct.pci_device_id] [%struct.pci_device_id { i32 4139, i32 1312, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4139, i32 1313, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4139, i32 1314, i32 -1, i32 -1, i32 0, i32 0, i32 258, i32 0 }, %struct.pci_device_id { i32 4139, i32 1316, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4139, i32 1328, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4139, i32 1330, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4139, i32 1331, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4139, i32 1332, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4139, i32 1334, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 4139, i32 1336, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@mgag200_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @drm_gem_shmem_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @drm_gem_shmem_dumb_create, ptr null, ptr null, i32 1, i32 0, i32 0, ptr @.str, ptr @.str.1, ptr @.str.2, i32 19, ptr null, i32 0, ptr @mgag200_driver_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MGA G200 SE\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20110418\00", [23 x i8] zeroinitializer }, align 32
@mgag200_driver_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mgadrmfb_mmio\00", [18 x i8] zeroinitializer }, align 32
@mgag200_regs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 114, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[drm] *ERROR* can't reserve mmio registers\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mgag200_regs_init\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/mgag200/mgag200_drv.c\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mgag200_regs_init._entry_ptr = internal global ptr @mgag200_regs_init._entry, section ".printk_index", align 4
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: failed to read PCI config dword: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"pclk_min: %ld pclk_max: %ld ref_clk: %ld\0A\00", [54 x i8] zeroinitializer }, align 32
@mgag200_g200_interpret_bios.matrox = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MATROX", [26 x i8] zeroinitializer }, align 32
@mgag200_g200_interpret_bios.expected_length = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 64, i32 64, i32 64, i32 128, i32 128], [40 x i8] zeroinitializer }, align 32
@mgag200_g200_interpret_bios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.6, i32 168, ptr @.str.13, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[drm] Unknown BIOS PInS version: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mgag200_g200_interpret_bios\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mgag200_g200_interpret_bios._entry_ptr = internal global ptr @mgag200_g200_interpret_bios._entry, section ".printk_index", align 4
@mgag200_g200_interpret_bios._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.6, i32 173, ptr @.str.13, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[drm] Unexpected BIOS PInS size: %d expected: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@mgag200_g200_interpret_bios._entry_ptr.16 = internal global ptr @mgag200_g200_interpret_bios._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"MATROX BIOS PInS version %d size: %d found\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"G200 SE unique revision id is 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 9]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.21 = private unnamed_addr constant [16 x i8] c"mgag200_modeset\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 21, i32 5 }
@___asan_gen_.24 = private unnamed_addr constant [19 x i8] c"mgag200_pci_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 371, i32 26 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 372, i32 10 }
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"mgag200_pciidlist\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 305, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"mgag200_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 31, i32 32 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 35, i32 10 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 36, i32 10 }
@___asan_gen_.42 = private unnamed_addr constant [20 x i8] c"mgag200_driver_fops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 29, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 112, i32 7 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 114, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 55, i32 6 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 244, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"matrox\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 133, i32 20 }
@___asan_gen_.75 = private unnamed_addr constant [16 x i8] c"expected_length\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 134, i32 28 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 168, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 172, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 179, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private constant [41 x i8] c"../drivers/gpu/drm/mgag200/mgag200_drv.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 260, i32 2 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author323, ptr @__UNIQUE_ID_description324, ptr @__UNIQUE_ID_file325, ptr @__UNIQUE_ID_license326, ptr @__UNIQUE_ID_modeset320, ptr @__UNIQUE_ID_modesettype321, ptr @__exitcall_mgag200_exit, ptr @__initcall__kmod_mgag200__322_394_mgag200_init6, ptr @__param_modeset, ptr @mgag200_exit, ptr @mgag200_g200_interpret_bios._entry, ptr @mgag200_g200_interpret_bios._entry.14, ptr @mgag200_g200_interpret_bios._entry_ptr, ptr @mgag200_g200_interpret_bios._entry_ptr.16, ptr @mgag200_regs_init._entry, ptr @mgag200_regs_init._entry_ptr, ptr @mgag200_modeset, ptr @mgag200_pci_driver, ptr @.str, ptr @mgag200_pciidlist, ptr @mgag200_driver, ptr @.str.1, ptr @.str.2, ptr @mgag200_driver_fops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @mgag200_g200_interpret_bios.matrox, ptr @mgag200_g200_interpret_bios.expected_length, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgag200_modeset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgag200_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgag200_pciidlist to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgag200_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgag200_driver_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgag200_regs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgag200_g200_interpret_bios.matrox to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgag200_g200_interpret_bios.expected_length to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgag200_g200_interpret_bios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgag200_g200_interpret_bios._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mgag200_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @mgag200_pci_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mgag200_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @drm_firmware_drivers_only() #8
  %0 = load i32, ptr @mgag200_modeset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp = icmp eq i32 %0, -1
  %or.cond = select i1 %call, i1 %cmp, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp1 = icmp eq i32 %0, 0
  %or.cond5 = select i1 %or.cond, i1 true, i1 %cmp1
  br i1 %or.cond5, label %entry.return_crit_edge, label %if.end3

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @__pci_register_driver(ptr noundef nonnull @mgag200_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  br label %return

return:                                           ; preds = %if.end3, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mgag200_pci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %size.i.i = alloca i32, align 4
  %option.i83.i.i = alloca i32, align 4
  %option.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data1 = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data1, align 4
  %and.i = and i32 %1, 255
  %and.i33 = and i32 %1, 16776960
  %call3 = tail call i32 @drm_aperture_remove_conflicting_pci_framebuffers(ptr noundef %pdev, ptr noundef nonnull @mgag200_driver) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @pcim_enable_device(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call ptr @__devm_drm_dev_alloc(ptr noundef %dev1.i, ptr noundef nonnull @mgag200_driver, i32 noundef 5040, i32 noundef 0) #8
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end7.mgag200_device_create.exit_crit_edge, label %if.end.i

if.end7.mgag200_device_create.exit_crit_edge:     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %mgag200_device_create.exit

if.end.i:                                         ; preds = %if.end7
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i.i, align 4
  %flags3.i = getelementptr inbounds %struct.mga_device, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and.i33, ptr %flags3.i, align 4
  %type4.i = getelementptr inbounds %struct.mga_device, ptr %call.i, i32 0, i32 8
  %4 = ptrtoint ptr %type4.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and.i, ptr %type4.i, align 8
  %dev1.i.i = getelementptr inbounds %struct.drm_device, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 -136
  %trunc = trunc i32 %1 to i8
  %7 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %if.end.i.if.end15.i.i_crit_edge [
    i8 0, label %if.end.i.sw.bb.i.i_crit_edge
    i8 1, label %if.end.i.sw.bb.i.i_crit_edge37
    i8 2, label %if.end.i.sw.bb2.i.i_crit_edge
    i8 3, label %if.end.i.sw.bb2.i.i_crit_edge38
    i8 4, label %if.end.i.if.then13.i.i_crit_edge
    i8 9, label %if.end.i.if.then13.i.i_crit_edge39
    i8 5, label %sw.bb7.i.i
    i8 6, label %if.end.i.sw.bb8.i.i_crit_edge
    i8 7, label %if.end.i.sw.bb8.i.i_crit_edge40
  ]

if.end.i.sw.bb8.i.i_crit_edge40:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb8.i.i

if.end.i.sw.bb8.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb8.i.i

if.end.i.if.then13.i.i_crit_edge39:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13.i.i

if.end.i.if.then13.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13.i.i

if.end.i.sw.bb2.i.i_crit_edge38:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i.i

if.end.i.sw.bb2.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i.i

if.end.i.sw.bb.i.i_crit_edge37:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i

if.end.i.sw.bb.i.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i

if.end.i.if.end15.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.i

sw.bb.i.i:                                        ; preds = %if.end.i.sw.bb.i.i_crit_edge, %if.end.i.sw.bb.i.i_crit_edge37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option.i.i.i) #8
  %8 = ptrtoint ptr %option.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %option.i.i.i, align 4, !annotation !74
  %call.i.i.i = call i32 @pci_read_config_dword(ptr noundef %add.ptr.i.i, i32 noundef 64, ptr noundef nonnull %option.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %mgag200_has_sgram.exit.i.i, label %do.end.i.i.i, !prof !75

do.end.i.i.i:                                     ; preds = %sw.bb.i.i
  %9 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1.i.i, align 4
  %call11.i.i.i = call ptr @dev_driver_string(ptr noundef %10) #8
  %11 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev1.i.i, align 4
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %do.end.i.i.i.mgag200_has_sgram.exit.thread.i.i_crit_edge

do.end.i.i.i.mgag200_has_sgram.exit.thread.i.i_crit_edge: ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mgag200_has_sgram.exit.thread.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  br label %mgag200_has_sgram.exit.thread.i.i

mgag200_has_sgram.exit.thread.i.i:                ; preds = %if.end.i.i.i.i, %do.end.i.i.i.mgag200_has_sgram.exit.thread.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %16, %if.end.i.i.i.i ], [ %14, %do.end.i.i.i.mgag200_has_sgram.exit.thread.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 55, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %call11.i.i.i, ptr noundef %retval.0.i.i.i.i, i32 noundef %call.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option.i.i.i) #8
  br label %if.then13.i.i

mgag200_has_sgram.exit.i.i:                       ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %option.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %option.i.i.i, align 4
  %and.i.i.i = and i32 %18, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool29.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option.i.i.i) #8
  %spec.select.i.i = select i1 %tobool29.i.not.i.i, i32 1078563105, i32 1078578465
  br label %if.then13.i.i

sw.bb2.i.i:                                       ; preds = %if.end.i.sw.bb2.i.i_crit_edge, %if.end.i.sw.bb2.i.i_crit_edge38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option.i83.i.i) #8
  %19 = ptrtoint ptr %option.i83.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %option.i83.i.i, align 4, !annotation !74
  %call.i86.i.i = call i32 @pci_read_config_dword(ptr noundef %add.ptr.i.i, i32 noundef 64, ptr noundef nonnull %option.i83.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86.i.i)
  %tobool.not.i87.i.i = icmp eq i32 %call.i86.i.i, 0
  br i1 %tobool.not.i87.i.i, label %mgag200_has_sgram.exit99.i.i, label %do.end.i91.i.i, !prof !75

do.end.i91.i.i:                                   ; preds = %sw.bb2.i.i
  %20 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev1.i.i, align 4
  %call11.i88.i.i = call ptr @dev_driver_string(ptr noundef %21) #8
  %22 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1.i.i, align 4
  %init_name.i.i89.i.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %init_name.i.i89.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i.i89.i.i, align 8
  %tobool.not.i.i90.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i90.i.i, label %if.end.i.i92.i.i, label %do.end.i91.i.i.mgag200_has_sgram.exit99.thread.i.i_crit_edge

do.end.i91.i.i.mgag200_has_sgram.exit99.thread.i.i_crit_edge: ; preds = %do.end.i91.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mgag200_has_sgram.exit99.thread.i.i

if.end.i.i92.i.i:                                 ; preds = %do.end.i91.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  br label %mgag200_has_sgram.exit99.thread.i.i

mgag200_has_sgram.exit99.thread.i.i:              ; preds = %if.end.i.i92.i.i, %do.end.i91.i.i.mgag200_has_sgram.exit99.thread.i.i_crit_edge
  %retval.0.i.i93.i.i = phi ptr [ %27, %if.end.i.i92.i.i ], [ %25, %do.end.i91.i.i.mgag200_has_sgram.exit99.thread.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 55, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %call11.i88.i.i, ptr noundef %retval.0.i.i93.i.i, i32 noundef %call.i86.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option.i83.i.i) #8
  br label %if.then13.i.i

mgag200_has_sgram.exit99.i.i:                     ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %option.i83.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %option.i83.i.i, align 4
  %and.i95.i.i = and i32 %29, 16384
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option.i83.i.i) #8
  %30 = or i32 %and.i95.i.i, 1074041120
  br label %if.then13.i.i

sw.bb7.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13.i.i

sw.bb8.i.i:                                       ; preds = %if.end.i.sw.bb8.i.i_crit_edge, %if.end.i.sw.bb8.i.i_crit_edge40
  br label %if.then13.i.i

if.then13.i.i:                                    ; preds = %sw.bb8.i.i, %sw.bb7.i.i, %mgag200_has_sgram.exit99.i.i, %mgag200_has_sgram.exit99.thread.i.i, %mgag200_has_sgram.exit.i.i, %mgag200_has_sgram.exit.thread.i.i, %if.end.i.if.then13.i.i_crit_edge, %if.end.i.if.then13.i.i_crit_edge39
  %option.2.ph.i.i = phi i32 [ 1074041120, %mgag200_has_sgram.exit99.thread.i.i ], [ 1078563105, %mgag200_has_sgram.exit.thread.i.i ], [ 1090818336, %if.end.i.if.then13.i.i_crit_edge ], [ 1090818336, %if.end.i.if.then13.i.i_crit_edge39 ], [ 288, %sw.bb7.i.i ], [ 288, %sw.bb8.i.i ], [ %spec.select.i.i, %mgag200_has_sgram.exit.i.i ], [ %30, %mgag200_has_sgram.exit99.i.i ]
  %option2.0.ph.i.i = phi i32 [ 32768, %mgag200_has_sgram.exit99.thread.i.i ], [ 32768, %mgag200_has_sgram.exit.thread.i.i ], [ 45056, %if.end.i.if.then13.i.i_crit_edge ], [ 45056, %if.end.i.if.then13.i.i_crit_edge39 ], [ 45056, %sw.bb7.i.i ], [ 45056, %sw.bb8.i.i ], [ 32768, %mgag200_has_sgram.exit.i.i ], [ 32768, %mgag200_has_sgram.exit99.i.i ]
  %call10.i.i = call i32 @pci_write_config_dword(ptr noundef %add.ptr.i.i, i32 noundef 64, i32 noundef %option.2.ph.i.i) #8
  %call14.i.i = call i32 @pci_write_config_dword(ptr noundef %add.ptr.i.i, i32 noundef 80, i32 noundef %option2.0.ph.i.i) #8
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then13.i.i, %if.end.i.if.end15.i.i_crit_edge
  %arrayidx.i.i = getelementptr i8, ptr %6, i32 968
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i, align 8
  %rmmio_base.i.i = getelementptr inbounds %struct.mga_device, ptr %call.i, i32 0, i32 2
  %33 = ptrtoint ptr %rmmio_base.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %rmmio_base.i.i, align 8
  %end.i.i = getelementptr i8, ptr %6, i32 972
  %34 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %end.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i53.i = icmp eq i32 %35, 0
  br i1 %cmp.i53.i, label %if.end15.i.i.cond.end.i.i_crit_edge, label %cond.false.i.i

if.end15.i.i.cond.end.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i, align 8
  %sub.i.i = add i32 %35, 1
  %add.i.i = sub i32 %sub.i.i, %37
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %if.end15.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %add.i.i, %cond.false.i.i ], [ 0, %if.end15.i.i.cond.end.i.i_crit_edge ]
  %rmmio_size.i.i = getelementptr inbounds %struct.mga_device, ptr %call.i, i32 0, i32 3
  %38 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %cond.i.i, ptr %rmmio_size.i.i, align 4
  %39 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev1.i.i, align 4
  %call27.i.i = call ptr @__devm_request_region(ptr noundef %40, ptr noundef nonnull @iomem_resource, i32 noundef %32, i32 noundef %cond.i.i, ptr noundef nonnull @.str.3) #8
  %tobool28.not.i.i = icmp eq ptr %call27.i.i, null
  br i1 %tobool28.not.i.i, label %do.end.i.i, label %if.end31.i.i

do.end.i.i:                                       ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev1.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.4) #11
  br label %if.then10

if.end31.i.i:                                     ; preds = %cond.end.i.i
  %call32.i.i = call ptr @pcim_iomap(ptr noundef %add.ptr.i.i, i32 noundef 1, i32 noundef 0) #8
  %rmmio.i.i = getelementptr inbounds %struct.mga_device, ptr %call.i, i32 0, i32 4
  %43 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call32.i.i, ptr %rmmio.i.i, align 8
  %cmp34.i.i = icmp eq ptr %call32.i.i, null
  br i1 %cmp34.i.i, label %if.end31.i.i.if.then10_crit_edge, label %if.end8.i

if.end31.i.i.if.then10_crit_edge:                 ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

if.end8.i:                                        ; preds = %if.end31.i.i
  %add.ptr39.i.i = getelementptr i8, ptr %call32.i.i, i32 8158
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr39.i.i, i8 3) #8, !srcloc !77
  %44 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr41.i.i = getelementptr i8, ptr %45, i32 8159
  %46 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr41.i.i) #8, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  %47 = or i8 %46, -128
  %48 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr49.i.i = getelementptr i8, ptr %49, i32 8158
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr49.i.i, i8 3) #8, !srcloc !77
  %50 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr51.i.i = getelementptr i8, ptr %51, i32 8159
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr51.i.i, i8 %47) #8, !srcloc !77
  %52 = ptrtoint ptr %type4.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %type4.i, align 8
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %53, label %if.end8.i.if.end20.i_crit_edge [
    i32 0, label %if.end8.i.if.then12.i_crit_edge
    i32 1, label %if.end8.i.if.then12.i_crit_edge41
    i32 2, label %if.end8.i.if.then18.i_crit_edge
    i32 3, label %if.end8.i.if.then18.i_crit_edge42
  ]

if.end8.i.if.then18.i_crit_edge42:                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18.i

if.end8.i.if.then18.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18.i

if.end8.i.if.then12.i_crit_edge41:                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.i

if.end8.i.if.then12.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.i

if.end8.i.if.end20.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

if.then12.i:                                      ; preds = %if.end8.i.if.then12.i_crit_edge, %if.end8.i.if.then12.i_crit_edge41
  %55 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev1.i.i, align 4
  %add.ptr.i55.i = getelementptr i8, ptr %56, i32 -136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i.i) #8
  %57 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %size.i.i, align 4, !annotation !74
  %model.i.i = getelementptr inbounds %struct.mga_device, ptr %call.i, i32 0, i32 9
  %pclk_min.i.i = getelementptr inbounds %struct.mga_device, ptr %call.i, i32 0, i32 9, i32 0, i32 1
  %58 = ptrtoint ptr %pclk_min.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 50000, ptr %pclk_min.i.i, align 4
  %pclk_max.i.i = getelementptr inbounds %struct.mga_device, ptr %call.i, i32 0, i32 9, i32 0, i32 2
  %59 = ptrtoint ptr %pclk_max.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 230000, ptr %pclk_max.i.i, align 4
  %60 = ptrtoint ptr %model.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 27050, ptr %model.i.i, align 4
  %call.i.i = call ptr @pci_map_rom(ptr noundef %add.ptr.i55.i, ptr noundef nonnull %size.i.i) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then12.i.mgag200_g200_init_refclk.exit.i_crit_edge, label %if.end.i.i

if.then12.i.mgag200_g200_init_refclk.exit.i_crit_edge: ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mgag200_g200_init_refclk.exit.i

if.end.i.i:                                       ; preds = %if.then12.i
  %61 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %size.i.i, align 4
  %call4.i.i = call noalias ptr @vmalloc(i32 noundef %62) #12
  %tobool5.not.i.i = icmp eq ptr %call4.i.i, null
  br i1 %tobool5.not.i.i, label %if.end.i.i.out.i.i_crit_edge, label %if.end7.i.i

if.end.i.i.out.i.i_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %63 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %size.i.i, align 4
  call void @mmiocpy(ptr noundef nonnull %call4.i.i, ptr noundef nonnull %call.i.i, i32 noundef %64) #8
  %65 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp.not.i.i = icmp eq i32 %66, 0
  br i1 %cmp.not.i.i, label %if.end7.i.i.if.end16.i.i_crit_edge, label %land.lhs.true.i.i

if.end7.i.i.if.end16.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i.i

land.lhs.true.i.i:                                ; preds = %if.end7.i.i
  %67 = ptrtoint ptr %call4.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %call4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %68)
  %cmp8.i.i = icmp eq i8 %68, 85
  br i1 %cmp8.i.i, label %land.lhs.true10.i.i, label %land.lhs.true.i.i.if.end16.i.i_crit_edge

land.lhs.true.i.i.if.end16.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i.i

land.lhs.true10.i.i:                              ; preds = %land.lhs.true.i.i
  %arrayidx11.i.i = getelementptr i8, ptr %call4.i.i, i32 1
  %69 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx11.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %70)
  %cmp13.i.i = icmp ne i8 %70, -86
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %66)
  %cmp.i.i.i = icmp ult i32 %66, 51
  %or.cond.i.i = select i1 %cmp13.i.i, i1 true, i1 %cmp.i.i.i
  br i1 %or.cond.i.i, label %land.lhs.true10.i.i.if.end16.i.i_crit_edge, label %if.end.i.i.i

land.lhs.true10.i.i.if.end16.i.i_crit_edge:       ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true10.i.i
  %arrayidx.i.i.i = getelementptr i8, ptr %call4.i.i, i32 45
  %bcmp.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %arrayidx.i.i.i, ptr noundef nonnull dereferenceable(6) @mgag200_g200_interpret_bios.matrox, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %cmp1.not.i.i.i = icmp ne i32 %bcmp.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32766, i32 %66)
  %cmp4.i.i.i = icmp ult i32 %66, 32766
  %or.cond211.i.i.i = or i1 %cmp4.i.i.i, %cmp1.not.i.i.i
  br i1 %or.cond211.i.i.i, label %if.end.i.i.i.if.end16.i.i_crit_edge, label %if.end6.i.i.i

if.end.i.i.i.if.end16.i.i_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i.i

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  %arrayidx7.i.i.i = getelementptr i8, ptr %call4.i.i, i32 32765
  %71 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx7.i.i.i, align 1
  %conv.i.i.i = zext i8 %72 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 8
  %arrayidx8.i.i.i = getelementptr i8, ptr %call4.i.i, i32 32764
  %73 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %74 to i32
  %or.i.i.i = or i32 %shl.i.i.i, %conv9.i.i.i
  %add.i.i.i = add nuw nsw i32 %or.i.i.i, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %66)
  %cmp10.i.i.i = icmp ugt i32 %add.i.i.i, %66
  br i1 %cmp10.i.i.i, label %if.end6.i.i.i.if.end16.i.i_crit_edge, label %if.end13.i.i.i

if.end6.i.i.i.if.end16.i.i_crit_edge:             ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i.i

if.end13.i.i.i:                                   ; preds = %if.end6.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %call4.i.i, i32 %or.i.i.i
  %75 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %add.ptr.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %76)
  %cmp16.i.i.i = icmp eq i8 %76, 46
  br i1 %cmp16.i.i.i, label %land.lhs.true.i.i.i, label %if.end13.i.i.i.if.end33.thread.i.i.i_crit_edge

if.end13.i.i.i.if.end33.thread.i.i.i_crit_edge:   ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.thread.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end13.i.i.i
  %arrayidx18.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 1
  %77 = ptrtoint ptr %arrayidx18.i.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx18.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %78)
  %cmp20.i.i.i = icmp eq i8 %78, 65
  br i1 %cmp20.i.i.i, label %if.end33.i.i.i, label %land.lhs.true.i.i.i.if.end33.thread.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end33.thread.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.thread.i.i.i

if.end33.thread.i.i.i:                            ; preds = %land.lhs.true.i.i.i.if.end33.thread.i.i.i_crit_edge, %if.end13.i.i.i.if.end33.thread.i.i.i_crit_edge
  %conv28.i.i.i = zext i8 %76 to i32
  %arrayidx29.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 1
  %79 = ptrtoint ptr %arrayidx29.i.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx29.i.i.i, align 1
  %conv30.i.i.i = zext i8 %80 to i32
  %shl31.i.i.i = shl nuw nsw i32 %conv30.i.i.i, 8
  %add32.i.i.i = or i32 %shl31.i.i.i, %conv28.i.i.i
  br label %if.end40.i.i.i

if.end33.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %arrayidx23.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 5
  %81 = ptrtoint ptr %arrayidx23.i.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx23.i.i.i, align 1
  %conv24.i.i.i = zext i8 %82 to i32
  %arrayidx25.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 2
  %83 = ptrtoint ptr %arrayidx25.i.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx25.i.i.i, align 1
  %conv26.i.i.i = zext i8 %84 to i32
  %85 = add nsw i32 %conv24.i.i.i, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %85)
  %86 = icmp ult i32 %85, -5
  br i1 %86, label %do.end.i.i56.i, label %if.end33.i.i.i.if.end40.i.i.i_crit_edge

if.end33.i.i.i.if.end40.i.i.i_crit_edge:          ; preds = %if.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40.i.i.i

do.end.i.i56.i:                                   ; preds = %if.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev1.i.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %88, ptr noundef nonnull @.str.11, i32 noundef %conv24.i.i.i) #11
  br label %if.end16.i.i

if.end40.i.i.i:                                   ; preds = %if.end33.i.i.i.if.end40.i.i.i_crit_edge, %if.end33.thread.i.i.i
  %version.0215.i.i.i = phi i32 [ 1, %if.end33.thread.i.i.i ], [ %conv24.i.i.i, %if.end33.i.i.i.if.end40.i.i.i_crit_edge ]
  %pins_len.0214.i.i.i = phi i32 [ %add32.i.i.i, %if.end33.thread.i.i.i ], [ %conv26.i.i.i, %if.end33.i.i.i.if.end40.i.i.i_crit_edge ]
  %arrayidx41.i.i.i = getelementptr [6 x i32], ptr @mgag200_g200_interpret_bios.expected_length, i32 0, i32 %version.0215.i.i.i
  %89 = ptrtoint ptr %arrayidx41.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx41.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %pins_len.0214.i.i.i, i32 %90)
  %cmp42.not.i.i.i = icmp eq i32 %pins_len.0214.i.i.i, %90
  br i1 %cmp42.not.i.i.i, label %if.end50.i.i.i, label %do.end47.i.i.i

do.end47.i.i.i:                                   ; preds = %if.end40.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %91 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev1.i.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %92, ptr noundef nonnull @.str.15, i32 noundef %pins_len.0214.i.i.i, i32 noundef %90) #11
  br label %if.end16.i.i

if.end50.i.i.i:                                   ; preds = %if.end40.i.i.i
  %add51.i.i.i = add nsw i32 %pins_len.0214.i.i.i, %or.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add51.i.i.i, i32 %66)
  %cmp52.i.i.i = icmp ugt i32 %add51.i.i.i, %66
  br i1 %cmp52.i.i.i, label %if.end50.i.i.i.if.end16.i.i_crit_edge, label %if.end55.i.i.i

if.end50.i.i.i.if.end16.i.i_crit_edge:            ; preds = %if.end50.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i.i

if.end55.i.i.i:                                   ; preds = %if.end50.i.i.i
  %tobool.not.i.i57.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i.i57.i, label %if.end55.i.i.i.cond.end.i.i.i_crit_edge, label %cond.true.i.i.i

if.end55.i.i.i.cond.end.i.i.i_crit_edge:          ; preds = %if.end55.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i.i.i

cond.true.i.i.i:                                  ; preds = %if.end55.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev1.i.i, align 4
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.true.i.i.i, %if.end55.i.i.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi ptr [ %94, %cond.true.i.i.i ], [ null, %if.end55.i.i.i.cond.end.i.i.i_crit_edge ]
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond.i.i.i, i32 noundef 4, ptr noundef nonnull @.str.17, i32 noundef %version.0215.i.i.i, i32 noundef %pins_len.0214.i.i.i) #8
  %trunc.i.i.i = trunc i32 %version.0215.i.i.i to i8
  %95 = zext i8 %trunc.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %trunc.i.i.i, label %cond.end.i.i.i.if.end16.i.i_crit_edge [
    i8 1, label %sw.bb.i.i.i
    i8 2, label %sw.bb66.i.i.i
    i8 3, label %sw.bb79.i.i.i
    i8 4, label %sw.bb98.i.i.i
    i8 5, label %sw.bb119.i.i.i
  ]

cond.end.i.i.i.if.end16.i.i_crit_edge:            ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i.i

sw.bb.i.i.i:                                      ; preds = %cond.end.i.i.i
  %arrayidx57.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 24
  %96 = ptrtoint ptr %arrayidx57.i.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx57.i.i.i, align 1
  %conv58.i.i.i = zext i8 %97 to i32
  %arrayidx59.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 25
  %98 = ptrtoint ptr %arrayidx59.i.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx59.i.i.i, align 1
  %conv60.i.i.i = zext i8 %99 to i32
  %shl61.i.i.i = shl nuw nsw i32 %conv60.i.i.i, 8
  %add62.i.i.i = or i32 %shl61.i.i.i, %conv58.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add62.i.i.i)
  %tobool63.not.i.i.i = icmp eq i32 %add62.i.i.i, 0
  br i1 %tobool63.not.i.i.i, label %sw.bb.i.i.i.if.end16.i.i_crit_edge, label %if.then64.i.i.i

sw.bb.i.i.i.if.end16.i.i_crit_edge:               ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i.i

if.then64.i.i.i:                                  ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i.i.i = mul nuw nsw i32 %add62.i.i.i, 10
  %100 = ptrtoint ptr %pclk_max.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %mul.i.i.i, ptr %pclk_max.i.i, align 4
  br label %if.end16.i.i

sw.bb66.i.i.i:                                    ; preds = %cond.end.i.i.i
  %arrayidx67.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 41
  %101 = ptrtoint ptr %arrayidx67.i.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx67.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %102)
  %cmp69.not.i.i.i = icmp eq i8 %102, -1
  br i1 %cmp69.not.i.i.i, label %sw.bb66.i.i.i.if.end16.i.i_crit_edge, label %if.then71.i.i.i

sw.bb66.i.i.i.if.end16.i.i_crit_edge:             ; preds = %sw.bb66.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i.i

if.then71.i.i.i:                                  ; preds = %sw.bb66.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv68.i.i.i = zext i8 %102 to i32
  %103 = mul nuw nsw i32 %conv68.i.i.i, 1000
  %mul75.i.i.i = add nuw nsw i32 %103, 100000
  %104 = ptrtoint ptr %pclk_max.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %mul75.i.i.i, ptr %pclk_max.i.i, align 4
  br label %if.end16.i.i

sw.bb79.i.i.i:                                    ; preds = %cond.end.i.i.i
  %arrayidx80.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 36
  %105 = ptrtoint ptr %arrayidx80.i.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx80.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %106)
  %cmp82.not.i.i.i = icmp eq i8 %106, -1
  br i1 %cmp82.not.i.i.i, label %sw.bb79.i.i.i.if.end91.i.i.i_crit_edge, label %if.then84.i.i.i

sw.bb79.i.i.i.if.end91.i.i.i_crit_edge:           ; preds = %sw.bb79.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91.i.i.i

if.then84.i.i.i:                                  ; preds = %sw.bb79.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv81.i.i.i = zext i8 %106 to i32
  %107 = mul nuw nsw i32 %conv81.i.i.i, 1000
  %mul88.i.i.i = add nuw nsw i32 %107, 100000
  %108 = ptrtoint ptr %pclk_max.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %mul88.i.i.i, ptr %pclk_max.i.i, align 4
  br label %if.end91.i.i.i

if.end91.i.i.i:                                   ; preds = %if.then84.i.i.i, %sw.bb79.i.i.i.if.end91.i.i.i_crit_edge
  %arrayidx92.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 52
  %109 = ptrtoint ptr %arrayidx92.i.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx92.i.i.i, align 1
  %111 = and i8 %110, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool94.not.i.i.i = icmp eq i8 %111, 0
  br i1 %tobool94.not.i.i.i, label %if.end91.i.i.i.if.end16.i.i_crit_edge, label %if.then95.i.i.i

if.end91.i.i.i.if.end16.i.i_crit_edge:            ; preds = %if.end91.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i.i

if.then95.i.i.i:                                  ; preds = %if.end91.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %112 = ptrtoint ptr %model.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 14318, ptr %model.i.i, align 4
  br label %if.end16.i.i

sw.bb98.i.i.i:                                    ; preds = %cond.end.i.i.i
  %arrayidx99.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 39
  %113 = ptrtoint ptr %arrayidx99.i.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx99.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %114)
  %cmp101.not.i.i.i = icmp eq i8 %114, -1
  br i1 %cmp101.not.i.i.i, label %sw.bb98.i.i.i.if.end110.i.i.i_crit_edge, label %if.then103.i.i.i

sw.bb98.i.i.i.if.end110.i.i.i_crit_edge:          ; preds = %sw.bb98.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110.i.i.i

if.then103.i.i.i:                                 ; preds = %sw.bb98.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv100.i.i.i = zext i8 %114 to i32
  %mul107.i.i.i = mul nuw nsw i32 %conv100.i.i.i, 4000
  %115 = ptrtoint ptr %pclk_max.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %mul107.i.i.i, ptr %pclk_max.i.i, align 4
  br label %if.end110.i.i.i

if.end110.i.i.i:                                  ; preds = %if.then103.i.i.i, %sw.bb98.i.i.i.if.end110.i.i.i_crit_edge
  %arrayidx111.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 92
  %116 = ptrtoint ptr %arrayidx111.i.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx111.i.i.i, align 1
  %118 = and i8 %117, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool114.not.i.i.i = icmp eq i8 %118, 0
  br i1 %tobool114.not.i.i.i, label %if.end110.i.i.i.if.end16.i.i_crit_edge, label %if.then115.i.i.i

if.end110.i.i.i.if.end16.i.i_crit_edge:           ; preds = %if.end110.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i.i

if.then115.i.i.i:                                 ; preds = %if.end110.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %model.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 14318, ptr %model.i.i, align 4
  br label %if.end16.i.i

sw.bb119.i.i.i:                                   ; preds = %cond.end.i.i.i
  %arrayidx120.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 4
  %120 = ptrtoint ptr %arrayidx120.i.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx120.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool122.not.i.i.i = icmp eq i8 %121, 0
  %cond123.i.i.i = select i1 %tobool122.not.i.i.i, i32 6000, i32 8000
  %arrayidx124.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 123
  %122 = ptrtoint ptr %arrayidx124.i.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx124.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %123)
  %cmp126.not.i.i.i = icmp eq i8 %123, -1
  br i1 %cmp126.not.i.i.i, label %sw.bb119.i.i.i.if.end133.i.i.i_crit_edge, label %if.then128.i.i.i

sw.bb119.i.i.i.if.end133.i.i.i_crit_edge:         ; preds = %sw.bb119.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end133.i.i.i

if.then128.i.i.i:                                 ; preds = %sw.bb119.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv125.i.i.i = zext i8 %123 to i32
  %mul131.i.i.i = mul nuw nsw i32 %cond123.i.i.i, %conv125.i.i.i
  %124 = ptrtoint ptr %pclk_min.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %mul131.i.i.i, ptr %pclk_min.i.i, align 4
  br label %if.end133.i.i.i

if.end133.i.i.i:                                  ; preds = %if.then128.i.i.i, %sw.bb119.i.i.i.if.end133.i.i.i_crit_edge
  %arrayidx134.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 38
  %125 = ptrtoint ptr %arrayidx134.i.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx134.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %126)
  %cmp136.not.i.i.i = icmp eq i8 %126, -1
  br i1 %cmp136.not.i.i.i, label %if.end133.i.i.i.if.end144.i.i.i_crit_edge, label %if.then138.i.i.i

if.end133.i.i.i.if.end144.i.i.i_crit_edge:        ; preds = %if.end133.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144.i.i.i

if.then138.i.i.i:                                 ; preds = %if.end133.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv135.i.i.i = zext i8 %126 to i32
  %mul141.i.i.i = mul nuw nsw i32 %cond123.i.i.i, %conv135.i.i.i
  %127 = ptrtoint ptr %pclk_max.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %mul141.i.i.i, ptr %pclk_max.i.i, align 4
  br label %if.end144.i.i.i

if.end144.i.i.i:                                  ; preds = %if.then138.i.i.i, %if.end133.i.i.i.if.end144.i.i.i_crit_edge
  %arrayidx145.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 110
  %128 = ptrtoint ptr %arrayidx145.i.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx145.i.i.i, align 1
  %130 = and i8 %129, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool148.not.i.i.i = icmp eq i8 %130, 0
  br i1 %tobool148.not.i.i.i, label %if.end144.i.i.i.if.end16.i.i_crit_edge, label %if.then149.i.i.i

if.end144.i.i.i.if.end16.i.i_crit_edge:           ; preds = %if.end144.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i.i

if.then149.i.i.i:                                 ; preds = %if.end144.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %131 = ptrtoint ptr %model.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 14318, ptr %model.i.i, align 4
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then149.i.i.i, %if.end144.i.i.i.if.end16.i.i_crit_edge, %if.then115.i.i.i, %if.end110.i.i.i.if.end16.i.i_crit_edge, %if.then95.i.i.i, %if.end91.i.i.i.if.end16.i.i_crit_edge, %if.then71.i.i.i, %sw.bb66.i.i.i.if.end16.i.i_crit_edge, %if.then64.i.i.i, %sw.bb.i.i.i.if.end16.i.i_crit_edge, %cond.end.i.i.i.if.end16.i.i_crit_edge, %if.end50.i.i.i.if.end16.i.i_crit_edge, %do.end47.i.i.i, %do.end.i.i56.i, %if.end6.i.i.i.if.end16.i.i_crit_edge, %if.end.i.i.i.if.end16.i.i_crit_edge, %land.lhs.true10.i.i.if.end16.i.i_crit_edge, %land.lhs.true.i.i.if.end16.i.i_crit_edge, %if.end7.i.i.if.end16.i.i_crit_edge
  %tobool17.not.i.i = icmp eq ptr %call.i, null
  br i1 %tobool17.not.i.i, label %if.end16.i.i.cond.end.i59.i_crit_edge, label %cond.true.i.i

if.end16.i.i.cond.end.i59.i_crit_edge:            ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i59.i

cond.true.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %132 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev1.i.i, align 4
  br label %cond.end.i59.i

cond.end.i59.i:                                   ; preds = %cond.true.i.i, %if.end16.i.i.cond.end.i59.i_crit_edge
  %cond.i58.i = phi ptr [ %133, %cond.true.i.i ], [ null, %if.end16.i.i.cond.end.i59.i_crit_edge ]
  %134 = ptrtoint ptr %pclk_min.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %pclk_min.i.i, align 4
  %136 = ptrtoint ptr %pclk_max.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %pclk_max.i.i, align 4
  %138 = ptrtoint ptr %model.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %model.i.i, align 4
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond.i58.i, i32 noundef 4, ptr noundef nonnull @.str.10, i32 noundef %135, i32 noundef %137, i32 noundef %139) #8
  call void @vfree(ptr noundef nonnull %call4.i.i) #8
  br label %out.i.i

out.i.i:                                          ; preds = %cond.end.i59.i, %if.end.i.i.out.i.i_crit_edge
  call void @pci_unmap_rom(ptr noundef %add.ptr.i55.i, ptr noundef nonnull %call.i.i) #8
  br label %mgag200_g200_init_refclk.exit.i

mgag200_g200_init_refclk.exit.i:                  ; preds = %out.i.i, %if.then12.i.mgag200_g200_init_refclk.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i.i) #8
  br label %if.end20.i

if.then18.i:                                      ; preds = %if.end8.i.if.then18.i_crit_edge, %if.end8.i.if.then18.i_crit_edge42
  %140 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr.i61.i = getelementptr i8, ptr %141, i32 7716
  %142 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61.i) #8, !srcloc !80
  %143 = call i32 @llvm.bswap.i32(i32 %142) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  %model.i62.i = getelementptr inbounds %struct.mga_device, ptr %call.i, i32 0, i32 9
  %144 = ptrtoint ptr %model.i62.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %model.i62.i, align 4
  %tobool.not.i63.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i63.i, label %if.then18.i.mgag200_g200se_init_unique_id.exit.i_crit_edge, label %cond.true.i65.i

if.then18.i.mgag200_g200se_init_unique_id.exit.i_crit_edge: ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mgag200_g200se_init_unique_id.exit.i

cond.true.i65.i:                                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  %145 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev1.i.i, align 4
  br label %mgag200_g200se_init_unique_id.exit.i

mgag200_g200se_init_unique_id.exit.i:             ; preds = %cond.true.i65.i, %if.then18.i.mgag200_g200se_init_unique_id.exit.i_crit_edge
  %cond.i66.i = phi ptr [ %146, %cond.true.i65.i ], [ null, %if.then18.i.mgag200_g200se_init_unique_id.exit.i_crit_edge ]
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond.i66.i, i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef %143) #8
  br label %if.end20.i

if.end20.i:                                       ; preds = %mgag200_g200se_init_unique_id.exit.i, %mgag200_g200_init_refclk.exit.i, %if.end8.i.if.end20.i_crit_edge
  %call21.i = call i32 @mgag200_mm_init(ptr noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end25.i, label %if.then23.i

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %147 = inttoptr i32 %call21.i to ptr
  br label %mgag200_device_create.exit

if.end25.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %call26.i = call i32 @mgag200_modeset_init(ptr noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  %148 = inttoptr i32 %call26.i to ptr
  %spec.select.i = select i1 %tobool27.not.i, ptr %call.i, ptr %148
  br label %mgag200_device_create.exit

mgag200_device_create.exit:                       ; preds = %if.end25.i, %if.then23.i, %if.end7.mgag200_device_create.exit_crit_edge
  %retval.0.i = phi ptr [ %147, %if.then23.i ], [ %call.i, %if.end7.mgag200_device_create.exit_crit_edge ], [ %spec.select.i, %if.end25.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mgag200_device_create.exit.if.then10_crit_edge, label %if.end12

mgag200_device_create.exit.if.then10_crit_edge:   ; preds = %mgag200_device_create.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

if.then10:                                        ; preds = %mgag200_device_create.exit.if.then10_crit_edge, %if.end31.i.i.if.then10_crit_edge, %do.end.i.i
  %retval.0.i36 = phi ptr [ %retval.0.i, %mgag200_device_create.exit.if.then10_crit_edge ], [ inttoptr (i32 -12 to ptr), %do.end.i.i ], [ inttoptr (i32 -12 to ptr), %if.end31.i.i.if.then10_crit_edge ]
  %149 = ptrtoint ptr %retval.0.i36 to i32
  br label %cleanup

if.end12:                                         ; preds = %mgag200_device_create.exit
  %call13 = call i32 @drm_dev_register(ptr noundef %retval.0.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  call void @drm_fbdev_generic_setup(ptr noundef %retval.0.i, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end12.cleanup_crit_edge, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %149, %if.then10 ], [ 0, %if.end16 ], [ %call3, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mgag200_pci_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_dev_unregister(ptr noundef %1) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_aperture_remove_conflicting_pci_framebuffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fbdev_generic_setup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

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
declare dso_local ptr @__devm_drm_dev_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgag200_mm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgag200_modeset_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_map_rom(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unmap_rom(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_firmware_drivers_only() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !39, !40, !41, !42, !43, !45, !47, !49, !51, !53, !54, !55, !56, !57, !59, !60, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @mgag200_modeset, !1, !"mgag200_modeset", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/mgag200/mgag200_drv.c", i32 21, i32 5}
!2 = !{ptr @__UNIQUE_ID_modeset320, !3, !"__UNIQUE_ID_modeset320", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/mgag200/mgag200_drv.c", i32 22, i32 1}
!4 = !{ptr @__param_modeset, !5, !"__param_modeset", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/mgag200/mgag200_drv.c", i32 23, i32 1}
!6 = !{ptr @__UNIQUE_ID_modesettype321, !5, !"__UNIQUE_ID_modesettype321", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_mgag200__322_394_mgag200_init6, !8, !"__initcall__kmod_mgag200__322_394_mgag200_init6", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/mgag200/mgag200_drv.c", i32 394, i32 1}
!9 = !{ptr @__exitcall_mgag200_exit, !10, !"__exitcall_mgag200_exit", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/mgag200/mgag200_drv.c", i32 395, i32 1}
!11 = !{ptr @__UNIQUE_ID_author323, !12, !"__UNIQUE_ID_author323", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/mgag200/mgag200_drv.c", i32 397, i32 1}
!13 = !{ptr @__UNIQUE_ID_description324, !14, !"__UNIQUE_ID_description324", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/mgag200/mgag200_drv.c", i32 398, i32 1}
!15 = !{ptr @__UNIQUE_ID_file325, !16, !"__UNIQUE_ID_file325", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/mgag200/mgag200_drv.c", i32 399, i32 1}
!17 = !{ptr @__UNIQUE_ID_license326, !16, !"__UNIQUE_ID_license326", i1 false, i1 false}
!18 = !{ptr @__param_str_modeset, !5, !"__param_str_modeset", i1 false, i1 false}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/mgag200/mgag200_drv.c", i32 372, i32 10}
!21 = !{ptr @mgag200_pci_driver, !22, !"mgag200_pci_driver", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/mgag200/mgag200_drv.c", i32 371, i32 26}
!23 = !{ptr @mgag200_pciidlist, !24, !"mgag200_pciidlist", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/mgag200/mgag200_drv.c", i32 305, i32 35}
!25 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/mgag200/mgag200_drv.c", i32 35, i32 10}
!27 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/mgag200/mgag200_drv.c", i32 36, i32 10}
!29 = !{ptr @mgag200_driver, !30, !"mgag200_driver", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/mgag200/mgag200_drv.c", i32 31, i32 32}
!31 = !{ptr @mgag200_driver_fops, !32, !"mgag200_driver_fops", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/mgag200/mgag200_drv.c", i32 29, i32 1}
!33 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/mgag200/mgag200_drv.c", i32 112, i32 7}
!35 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/mgag200/mgag200_drv.c", i32 114, i32 3}
!37 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @mgag200_regs_init._entry, !36, !"_entry", i1 false, i1 false}
!42 = !{ptr @mgag200_regs_init._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/mgag200/mgag200_drv.c", i32 55, i32 6}
!45 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/mgag200/mgag200_drv.c", i32 244, i32 2}
!47 = !{ptr @mgag200_g200_interpret_bios.matrox, !48, !"matrox", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/mgag200/mgag200_drv.c", i32 133, i32 20}
!49 = !{ptr @mgag200_g200_interpret_bios.expected_length, !50, !"expected_length", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/mgag200/mgag200_drv.c", i32 134, i32 28}
!51 = !{ptr @.str.11, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/mgag200/mgag200_drv.c", i32 168, i32 3}
!53 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @mgag200_g200_interpret_bios._entry, !52, !"_entry", i1 false, i1 false}
!56 = !{ptr @mgag200_g200_interpret_bios._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/mgag200/mgag200_drv.c", i32 172, i32 3}
!59 = !{ptr @mgag200_g200_interpret_bios._entry.14, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @mgag200_g200_interpret_bios._entry_ptr.16, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/mgag200/mgag200_drv.c", i32 179, i32 2}
!63 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/mgag200/mgag200_drv.c", i32 260, i32 2}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"auto-init"}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{i64 2152528409}
!77 = !{i64 4987064}
!78 = !{i64 4987459}
!79 = !{i64 2152526804}
!80 = !{i64 4987679}
!81 = !{i64 2152528028}
