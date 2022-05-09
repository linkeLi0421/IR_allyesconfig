; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cobalt/cobalt-driver.c_pt.bc'
source_filename = "../drivers/media/pci/cobalt/cobalt-driver.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.adv76xx_platform_data = type { i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, [13 x i8] }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.adv7842_platform_data = type { i8, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i8, %struct.adv7842_sdp_csc_coeff, %struct.adv7842_sdp_io_sync_adjustment, %struct.adv7842_sdp_io_sync_adjustment, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.adv7842_sdp_csc_coeff = type { i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.adv7842_sdp_io_sync_adjustment = type { i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.adv7511_platform_data = type { i8, i8, i8, i32 }
%struct.v4l2_edid = type { i32, i32, i32, [5 x i32], ptr }
%struct.cobalt = type { i32, ptr, %struct.v4l2_device, %struct.mutex, ptr, ptr, i8, i16, [16 x %struct.cobalt_stream], [5 x %struct.i2c_adapter], [5 x %struct.cobalt_i2c_data], i8, i8, ptr, %struct.work_struct, i32, i32, i32, i32, [12 x i32], i32, i32, i32, i32, i8, [512 x i8], ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cobalt_stream = type { %struct.video_device, %struct.vb2_queue, %struct.list_head, ptr, ptr, %struct.mutex, %struct.spinlock, %struct.v4l2_dv_timings, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, [32 x %struct.sg_dma_desc_info], i32, i8, i8, i8, i32, i8, i8, i8, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.88 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.85], %struct.media_entity_enum, i32 }
%struct.anon.85 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_dv_timings = type { i32, %union.anon.116 }
%union.anon.116 = type { [32 x i32] }
%struct.sg_dma_desc_info = type { ptr, i32, i32, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.cobalt_i2c_data = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.84, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.84 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.118, i16, i16, i16, [10 x i16] }
%union.anon.118 = type { i16 }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_audio_ops = type { ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }

@__param_str_debug = internal constant [13 x i8] c"cobalt.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@cobalt_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @cobalt_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype300 = internal constant [26 x i8] c"cobalt.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug301 = internal constant [43 x i8] c"cobalt.parm=debug:Debug level. Default: 0\0A\00", section ".modinfo", align 1
@__param_str_ignore_err = internal constant [18 x i8] c"cobalt.ignore_err\00", align 1
@cobalt_ignore_err = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ignore_err = internal constant %struct.kernel_param { ptr @__param_str_ignore_err, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @cobalt_ignore_err } }, section "__param", align 4
@__UNIQUE_ID_ignore_errtype302 = internal constant [31 x i8] c"cobalt.parmtype=ignore_err:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ignore_err303 = internal constant [86 x i8] c"cobalt.parm=ignore_err:If set then ignore missing i2c adapters/receivers. Default: 0\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_author304 = internal constant [69 x i8] c"cobalt.author=Hans Verkuil <hans.verkuil@cisco.com> & Morten Hestnes\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [33 x i8] c"cobalt.description=cobalt driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [44 x i8] c"cobalt.file=drivers/media/pci/cobalt/cobalt\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [19 x i8] c"cobalt.license=GPL\00", section ".modinfo", align 1
@cobalt_pcie_status_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016%s: PCIe device capability 0x%08x: Max payload %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cobalt_pcie_status_show\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/pci/cobalt/cobalt-driver.c\00", [55 x i8] zeroinitializer }, align 32
@cobalt_pcie_status_show._entry_ptr = internal global ptr @cobalt_pcie_status_show._entry, section ".printk_index", align 4
@cobalt_pcie_status_show._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\016%s: PCIe device control 0x%04x: Max payload %d. Max read request %d\0A\00", [57 x i8] zeroinitializer }, align 32
@cobalt_pcie_status_show._entry_ptr.5 = internal global ptr @cobalt_pcie_status_show._entry.3, section ".printk_index", align 4
@cobalt_pcie_status_show._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: PCIe device status 0x%04x\0A\00", [63 x i8] zeroinitializer }, align 32
@cobalt_pcie_status_show._entry_ptr.8 = internal global ptr @cobalt_pcie_status_show._entry.6, section ".printk_index", align 4
@cobalt_pcie_status_show._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016%s: PCIe link capability 0x%08x: %s per lane and %u lanes\0A\00", [35 x i8] zeroinitializer }, align 32
@cobalt_pcie_status_show._entry_ptr.11 = internal global ptr @cobalt_pcie_status_show._entry.9, section ".printk_index", align 4
@cobalt_pcie_status_show._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: PCIe link control 0x%04x\0A\00", [32 x i8] zeroinitializer }, align 32
@cobalt_pcie_status_show._entry_ptr.14 = internal global ptr @cobalt_pcie_status_show._entry.12, section ".printk_index", align 4
@cobalt_pcie_status_show._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016%s: PCIe link status 0x%04x: %s per lane and %u lanes\0A\00", [39 x i8] zeroinitializer }, align 32
@cobalt_pcie_status_show._entry_ptr.17 = internal global ptr @cobalt_pcie_status_show._entry.15, section ".printk_index", align 4
@cobalt_pcie_status_show._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016%s: PCIe bus link capability 0x%08x: %s per lane and %u lanes\0A\00", [63 x i8] zeroinitializer }, align 32
@cobalt_pcie_status_show._entry_ptr.20 = internal global ptr @cobalt_pcie_status_show._entry.18, section ".printk_index", align 4
@cobalt_pcie_status_show._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s: PCIe slot capability 0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@cobalt_pcie_status_show._entry_ptr.23 = internal global ptr @cobalt_pcie_status_show._entry.21, section ".printk_index", align 4
@cobalt_pcie_status_show._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: PCIe slot control 0x%04x\0A\00", [32 x i8] zeroinitializer }, align 32
@cobalt_pcie_status_show._entry_ptr.26 = internal global ptr @cobalt_pcie_status_show._entry.24, section ".printk_index", align 4
@cobalt_pcie_status_show._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: PCIe slot status 0x%04x\0A\00", [33 x i8] zeroinitializer }, align 32
@cobalt_pcie_status_show._entry_ptr.29 = internal global ptr @cobalt_pcie_status_show._entry.27, section ".printk_index", align 4
@__initcall__kmod_cobalt__308_797_cobalt_pci_driver_init6 = internal global ptr @cobalt_pci_driver_init, section ".initcall6.init", align 4
@cobalt_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.34, ptr @cobalt_pci_tbl, ptr @cobalt_probe, ptr @cobalt_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_cobalt_pci_driver_exit = internal global ptr @cobalt_pci_driver_exit, section ".exitcall.exit", align 4
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2.5 Gbit/s\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"5 Gbit/s\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"10 Gbit/s\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Unknown speed\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cobalt\00", [25 x i8] zeroinitializer }, align 32
@cobalt_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4407, i32 10034, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@cobalt_instance = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@cobalt_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&cobalt->pci_lock\00", [46 x i8] zeroinitializer }, align 32
@cobalt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013cobalt: v4l2_device_register of card %d failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cobalt_probe\00", [19 x i8] zeroinitializer }, align 32
@cobalt_probe._entry_ptr = internal global ptr @cobalt_probe._entry, section ".printk_index", align 4
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cobalt-%d\00", [22 x i8] zeroinitializer }, align 32
@cobalt_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.37, ptr @.str.2, i32 682, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s: Initializing card %d\0A\00", [36 x i8] zeroinitializer }, align 32
@cobalt_probe._entry_ptr.41 = internal global ptr @cobalt_probe._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@cobalt_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.37, ptr @.str.2, i32 687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: Could not create workqueue\0A\00", [62 x i8] zeroinitializer }, align 32
@cobalt_probe._entry_ptr.45 = internal global ptr @cobalt_probe._entry.43, section ".printk_index", align 4
@cobalt_probe.__key.46 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&cobalt->irq_work_queue)\00", [53 x i8] zeroinitializer }, align 32
@cobalt_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.37, ptr @.str.2, i32 701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: Not able to read the HDL info\0A\00", [59 x i8] zeroinitializer }, align 32
@cobalt_probe._entry_ptr.50 = internal global ptr @cobalt_probe._entry.48, section ".printk_index", align 4
@cobalt_probe._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.37, ptr @.str.2, i32 703, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\016%s: %s\00", [23 x i8] zeroinitializer }, align 32
@cobalt_probe._entry_ptr.53 = internal global ptr @cobalt_probe._entry.51, section ".printk_index", align 4
@cobalt_probe._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.37, ptr @.str.2, i32 724, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: Error %d registering device nodes\0A\00", [55 x i8] zeroinitializer }, align 32
@cobalt_probe._entry_ptr.56 = internal global ptr @cobalt_probe._entry.54, section ".printk_index", align 4
@cobalt_probe._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.37, ptr @.str.2, i32 731, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: Initialized cobalt card\0A\00", [33 x i8] zeroinitializer }, align 32
@cobalt_probe._entry_ptr.59 = internal global ptr @cobalt_probe._entry.57, section ".printk_index", align 4
@cobalt_probe._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.37, ptr @.str.2, i32 748, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: error %d on initialization\0A\00", [62 x i8] zeroinitializer }, align 32
@cobalt_probe._entry_ptr.62 = internal global ptr @cobalt_probe._entry.60, section ".printk_index", align 4
@cobalt_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: Set hotplug for adv %d to %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cobalt_notify\00", [18 x i8] zeroinitializer }, align 32
@cobalt_notify._entry_ptr = internal global ptr @cobalt_notify._entry, section ".printk_index", align 4
@cobalt_notify._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: Format changed for adv %d\0A\00", [63 x i8] zeroinitializer }, align 32
@cobalt_notify._entry_ptr.67 = internal global ptr @cobalt_notify._entry.65, section ".printk_index", align 4
@cobalt_get_sd_nr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Invalid adv7604 subdev pointer!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cobalt_get_sd_nr\00", [47 x i8] zeroinitializer }, align 32
@cobalt_get_sd_nr._entry_ptr = internal global ptr @cobalt_get_sd_nr._entry, section ".printk_index", align 4
@cobalt_setup_pci._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: enabling pci device\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cobalt_setup_pci\00", [47 x i8] zeroinitializer }, align 32
@cobalt_setup_pci._entry_ptr = internal global ptr @cobalt_setup_pci._entry, section ".printk_index", align 4
@cobalt_setup_pci._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.2, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: can't enable device\0A\00", [37 x i8] zeroinitializer }, align 32
@cobalt_setup_pci._entry_ptr.74 = internal global ptr @cobalt_setup_pci._entry.72, section ".printk_index", align 4
@cobalt_setup_pci._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.71, ptr @.str.2, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: PCI Express interface from Omnitek\0A\00", [54 x i8] zeroinitializer }, align 32
@cobalt_setup_pci._entry_ptr.77 = internal global ptr @cobalt_setup_pci._entry.75, section ".printk_index", align 4
@cobalt_setup_pci._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.71, ptr @.str.2, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016%s: PCI Express interface provider is unknown!\0A\00", [46 x i8] zeroinitializer }, align 32
@cobalt_setup_pci._entry_ptr.80 = internal global ptr @cobalt_setup_pci._entry.78, section ".printk_index", align 4
@cobalt_setup_pci._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.71, ptr @.str.2, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s: PCI Express link width is %d lanes.\0A\00", [53 x i8] zeroinitializer }, align 32
@cobalt_setup_pci._entry_ptr.83 = internal global ptr @cobalt_setup_pci._entry.81, section ".printk_index", align 4
@cobalt_setup_pci._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.71, ptr @.str.2, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\014%s: The current slot only supports %d lanes, for best performance 8 are needed\0A\00", [46 x i8] zeroinitializer }, align 32
@cobalt_setup_pci._entry_ptr.86 = internal global ptr @cobalt_setup_pci._entry.84, section ".printk_index", align 4
@cobalt_setup_pci._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.71, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013%s: The card is most likely not seated correctly in the PCIe slot\0A\00", [59 x i8] zeroinitializer }, align 32
@cobalt_setup_pci._entry_ptr.89 = internal global ptr @cobalt_setup_pci._entry.87, section ".printk_index", align 4
@cobalt_setup_pci._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.71, ptr @.str.2, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: no suitable DMA available\0A\00", [63 x i8] zeroinitializer }, align 32
@cobalt_setup_pci._entry_ptr.92 = internal global ptr @cobalt_setup_pci._entry.90, section ".printk_index", align 4
@cobalt_setup_pci._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.71, ptr @.str.2, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: error requesting regions\0A\00", [32 x i8] zeroinitializer }, align 32
@cobalt_setup_pci._entry_ptr.95 = internal global ptr @cobalt_setup_pci._entry.93, section ".printk_index", align 4
@cobalt_setup_pci._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.71, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016%s: 64-bit BAR\0A\00", [46 x i8] zeroinitializer }, align 32
@cobalt_setup_pci._entry_ptr.98 = internal global ptr @cobalt_setup_pci._entry.96, section ".printk_index", align 4
@cobalt_setup_pci._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.71, ptr @.str.2, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: Could not enable MSI\0A\00", [36 x i8] zeroinitializer }, align 32
@cobalt_setup_pci._entry_ptr.101 = internal global ptr @cobalt_setup_pci._entry.99, section ".printk_index", align 4
@cobalt_setup_pci._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.71, ptr @.str.2, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: Failed to register irq %d\0A\00", [63 x i8] zeroinitializer }, align 32
@cobalt_setup_pci._entry_ptr.104 = internal global ptr @cobalt_setup_pci._entry.102, section ".printk_index", align 4
@msi_config_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\016%s: MSI %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"msi_config_show\00", [16 x i8] zeroinitializer }, align 32
@msi_config_show._entry_ptr = internal global ptr @msi_config_show._entry, section ".printk_index", align 4
@.str.107 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@msi_config_show._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.106, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016%s: MSI multiple message: Capable %u. Enable %u\0A\00", [45 x i8] zeroinitializer }, align 32
@msi_config_show._entry_ptr.111 = internal global ptr @msi_config_show._entry.109, section ".printk_index", align 4
@msi_config_show._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.106, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s: MSI: 64-bit address capable\0A\00", [61 x i8] zeroinitializer }, align 32
@msi_config_show._entry_ptr.114 = internal global ptr @msi_config_show._entry.112, section ".printk_index", align 4
@msi_config_show._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.106, ptr @.str.2, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s: MSI: Address 0x%08x%08x. Data 0x%04x\0A\00", [52 x i8] zeroinitializer }, align 32
@msi_config_show._entry_ptr.117 = internal global ptr @msi_config_show._entry.115, section ".printk_index", align 4
@msi_config_show._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.106, ptr @.str.2, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s: MSI: Address 0x%08x. Data 0x%04x\0A\00", [56 x i8] zeroinitializer }, align 32
@msi_config_show._entry_ptr.120 = internal global ptr @msi_config_show._entry.118, section ".printk_index", align 4
@.str.121 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"** HDL version info **\00", [41 x i8] zeroinitializer }, align 32
@cobalt_stream_struct_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.2, i32 463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016%s: stream #%d -> dma channel #%d <- video channel %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cobalt_stream_struct_init\00", [38 x i8] zeroinitializer }, align 32
@cobalt_stream_struct_init._entry_ptr = internal global ptr @cobalt_stream_struct_init._entry, section ".printk_index", align 4
@cobalt_subdevs_init.adv7604_pdata = internal global { %struct.adv76xx_platform_data, [32 x i8] } { %struct.adv76xx_platform_data { i8 -128, i32 0, i32 2, i32 4, i32 0, i32 2, i8 76, i32 3, i32 3, i32 3, i8 0, i32 1, [13 x i8] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@cobalt_subdevs_init.adv7604_info = internal global { %struct.i2c_board_info, [40 x i8] } { %struct.i2c_board_info { [20 x i8] c"adv7604\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 32, ptr null, ptr @cobalt_subdevs_init.adv7604_pdata, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@edid = internal global { [256 x i8], [64 x i8] } { [256 x i8] c"\00\FF\FF\FF\FF\FF\FF\00P!2'\00\00\00\00\22\1A\01\03\800\1Bx\0F\EE\91\A3TL\99&\0FPT/\CF\001YEYaY\81\99\01\01\01\01\01\01\01\01\02:\80\18q8-@X,E\00\E0\0E\11\00\00\1E\00\00\00\FD\00\18U\18^\11\00\0A      \00\00\00\FC\00cobalt\0A      \00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\9D\02\03\1F\F1J\10\1F\04\13\22! \02\11\01#\09\07\07h\03\0C\00\10\00\00\22\0F\E2\00\CA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00F", [64 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cobalt_subdevs_hsma_init.adv7842_pdata = internal global { %struct.adv7842_platform_data, [60 x i8] } { %struct.adv7842_platform_data { i8 64, i32 0, i32 2, i32 0, i32 3, i32 0, i32 30, i8 64, i32 3, i32 3, i32 3, i8 0, i32 0, i8 64, %struct.adv7842_sdp_csc_coeff zeroinitializer, %struct.adv7842_sdp_io_sync_adjustment zeroinitializer, %struct.adv7842_sdp_io_sync_adjustment zeroinitializer, i8 74, i8 72, i8 34, i8 36, i8 38, i8 52, i8 50, i8 54, i8 62, i8 64, i8 66 }, [60 x i8] zeroinitializer }, align 32
@cobalt_subdevs_hsma_init.adv7842_info = internal global { %struct.i2c_board_info, [40 x i8] } { %struct.i2c_board_info { [20 x i8] c"adv7842\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 32, ptr null, ptr @cobalt_subdevs_hsma_init.adv7842_pdata, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@cobalt_subdevs_hsma_init.adv7511_pdata = internal global { %struct.adv7511_platform_data, [24 x i8] } { %struct.adv7511_platform_data { i8 63, i8 62, i8 56, i32 12000000 }, [24 x i8] zeroinitializer }, align 32
@cobalt_subdevs_hsma_init.adv7511_info = internal global { %struct.i2c_board_info, [40 x i8] } { %struct.i2c_board_info { [20 x i8] c"adv7511-v4l2\00\00\00\00\00\00\00\00", i16 0, i16 57, ptr null, ptr @cobalt_subdevs_hsma_init.adv7511_pdata, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@__const.cobalt_subdevs_hsma_init.cobalt_edid = private unnamed_addr constant %struct.v4l2_edid { i32 0, i32 0, i32 2, [5 x i32] zeroinitializer, ptr @edid }, align 4
@cobalt_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.2, i32 783, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: removed cobalt card\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cobalt_remove\00", [18 x i8] zeroinitializer }, align 32
@cobalt_remove._entry_ptr = internal global ptr @cobalt_remove._entry, section ".printk_index", align 4
@switch.table.cobalt_pcie_status_show = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2048, i32 4096, i32 0, i32 0, i32 128, i32 256, i32 512, i32 1024], [32 x i8] zeroinitializer }, align 32
@switch.table.cobalt_pcie_status_show.126 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2048, i32 4096, i32 0, i32 0, i32 128, i32 256, i32 512, i32 1024], [32 x i8] zeroinitializer }, align 32
@switch.table.cobalt_pcie_status_show.127 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.32], [20 x i8] zeroinitializer }, align 32
@switch.table.cobalt_pcie_status_show.128 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.32], [20 x i8] zeroinitializer }, align 32
@switch.table.cobalt_pcie_status_show.129 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2048, i32 4096, i32 0, i32 0, i32 128, i32 256, i32 512, i32 1024], [32 x i8] zeroinitializer }, align 32
@switch.table.cobalt_pcie_status_show.130 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.32], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 1082684930]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 11]
@___asan_gen_.132 = private unnamed_addr constant [13 x i8] c"cobalt_debug\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 37, i32 5 }
@___asan_gen_.135 = private unnamed_addr constant [18 x i8] c"cobalt_ignore_err\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 41, i32 5 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 199, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 201, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 205, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 211, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 214, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 215, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 221, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 229, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 230, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 231, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [18 x i8] c"cobalt_pci_driver\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 790, i32 26 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 178, i32 17 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 179, i32 17 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 180, i32 17 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 182, i32 9 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 797, i32 1 }
@___asan_gen_.222 = private unnamed_addr constant [15 x i8] c"cobalt_pci_tbl\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 27, i32 35 }
@___asan_gen_.225 = private unnamed_addr constant [16 x i8] c"cobalt_instance\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 35, i32 17 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 670, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 674, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 680, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 682, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 685, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 687, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 692, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 701, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 703, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 724, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 731, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 748, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 150, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 153, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 131, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 302, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 306, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 315, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 318, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 323, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 326, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 329, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 338, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 345, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 355, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 371, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 380, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 262, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 263, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 266, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 271, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 274, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 408, i32 31 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 462, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant [14 x i8] c"adv7604_pdata\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 469, i32 38 }
@___asan_gen_.450 = private unnamed_addr constant [13 x i8] c"adv7604_info\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 483, i32 31 }
@___asan_gen_.453 = private unnamed_addr constant [5 x i8] c"edid\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 50, i32 11 }
@___asan_gen_.456 = private unnamed_addr constant [14 x i8] c"adv7842_pdata\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 546, i32 38 }
@___asan_gen_.459 = private unnamed_addr constant [13 x i8] c"adv7842_info\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 570, i32 31 }
@___asan_gen_.462 = private unnamed_addr constant [14 x i8] c"adv7511_pdata\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 580, i32 38 }
@___asan_gen_.465 = private unnamed_addr constant [13 x i8] c"adv7511_info\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 586, i32 31 }
@___asan_gen_.468 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.474 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.475 = private constant [44 x i8] c"../drivers/media/pci/cobalt/cobalt-driver.c\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 783, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant [37 x i8] c"switch.table.cobalt_pcie_status_show\00", align 1
@___asan_gen_.478 = private unnamed_addr constant [41 x i8] c"switch.table.cobalt_pcie_status_show.126\00", align 1
@___asan_gen_.479 = private unnamed_addr constant [41 x i8] c"switch.table.cobalt_pcie_status_show.127\00", align 1
@___asan_gen_.480 = private unnamed_addr constant [41 x i8] c"switch.table.cobalt_pcie_status_show.128\00", align 1
@___asan_gen_.481 = private unnamed_addr constant [41 x i8] c"switch.table.cobalt_pcie_status_show.129\00", align 1
@___asan_gen_.482 = private unnamed_addr constant [41 x i8] c"switch.table.cobalt_pcie_status_show.130\00", align 1
@llvm.compiler.used = appending global [174 x ptr] [ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_debug301, ptr @__UNIQUE_ID_debugtype300, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_ignore_err303, ptr @__UNIQUE_ID_ignore_errtype302, ptr @__UNIQUE_ID_license307, ptr @__exitcall_cobalt_pci_driver_exit, ptr @__initcall__kmod_cobalt__308_797_cobalt_pci_driver_init6, ptr @__param_debug, ptr @__param_ignore_err, ptr @cobalt_get_sd_nr._entry, ptr @cobalt_get_sd_nr._entry_ptr, ptr @cobalt_notify._entry, ptr @cobalt_notify._entry.65, ptr @cobalt_notify._entry_ptr, ptr @cobalt_notify._entry_ptr.67, ptr @cobalt_pci_driver_exit, ptr @cobalt_pcie_status_show._entry, ptr @cobalt_pcie_status_show._entry.12, ptr @cobalt_pcie_status_show._entry.15, ptr @cobalt_pcie_status_show._entry.18, ptr @cobalt_pcie_status_show._entry.21, ptr @cobalt_pcie_status_show._entry.24, ptr @cobalt_pcie_status_show._entry.27, ptr @cobalt_pcie_status_show._entry.3, ptr @cobalt_pcie_status_show._entry.6, ptr @cobalt_pcie_status_show._entry.9, ptr @cobalt_pcie_status_show._entry_ptr, ptr @cobalt_pcie_status_show._entry_ptr.11, ptr @cobalt_pcie_status_show._entry_ptr.14, ptr @cobalt_pcie_status_show._entry_ptr.17, ptr @cobalt_pcie_status_show._entry_ptr.20, ptr @cobalt_pcie_status_show._entry_ptr.23, ptr @cobalt_pcie_status_show._entry_ptr.26, ptr @cobalt_pcie_status_show._entry_ptr.29, ptr @cobalt_pcie_status_show._entry_ptr.5, ptr @cobalt_pcie_status_show._entry_ptr.8, ptr @cobalt_probe._entry, ptr @cobalt_probe._entry.39, ptr @cobalt_probe._entry.43, ptr @cobalt_probe._entry.48, ptr @cobalt_probe._entry.51, ptr @cobalt_probe._entry.54, ptr @cobalt_probe._entry.57, ptr @cobalt_probe._entry.60, ptr @cobalt_probe._entry_ptr, ptr @cobalt_probe._entry_ptr.41, ptr @cobalt_probe._entry_ptr.45, ptr @cobalt_probe._entry_ptr.50, ptr @cobalt_probe._entry_ptr.53, ptr @cobalt_probe._entry_ptr.56, ptr @cobalt_probe._entry_ptr.59, ptr @cobalt_probe._entry_ptr.62, ptr @cobalt_remove._entry, ptr @cobalt_remove._entry_ptr, ptr @cobalt_setup_pci._entry, ptr @cobalt_setup_pci._entry.102, ptr @cobalt_setup_pci._entry.72, ptr @cobalt_setup_pci._entry.75, ptr @cobalt_setup_pci._entry.78, ptr @cobalt_setup_pci._entry.81, ptr @cobalt_setup_pci._entry.84, ptr @cobalt_setup_pci._entry.87, ptr @cobalt_setup_pci._entry.90, ptr @cobalt_setup_pci._entry.93, ptr @cobalt_setup_pci._entry.96, ptr @cobalt_setup_pci._entry.99, ptr @cobalt_setup_pci._entry_ptr, ptr @cobalt_setup_pci._entry_ptr.101, ptr @cobalt_setup_pci._entry_ptr.104, ptr @cobalt_setup_pci._entry_ptr.74, ptr @cobalt_setup_pci._entry_ptr.77, ptr @cobalt_setup_pci._entry_ptr.80, ptr @cobalt_setup_pci._entry_ptr.83, ptr @cobalt_setup_pci._entry_ptr.86, ptr @cobalt_setup_pci._entry_ptr.89, ptr @cobalt_setup_pci._entry_ptr.92, ptr @cobalt_setup_pci._entry_ptr.95, ptr @cobalt_setup_pci._entry_ptr.98, ptr @cobalt_stream_struct_init._entry, ptr @cobalt_stream_struct_init._entry_ptr, ptr @msi_config_show._entry, ptr @msi_config_show._entry.109, ptr @msi_config_show._entry.112, ptr @msi_config_show._entry.115, ptr @msi_config_show._entry.118, ptr @msi_config_show._entry_ptr, ptr @msi_config_show._entry_ptr.111, ptr @msi_config_show._entry_ptr.114, ptr @msi_config_show._entry_ptr.117, ptr @msi_config_show._entry_ptr.120, ptr @cobalt_debug, ptr @cobalt_ignore_err, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @cobalt_pci_driver, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @cobalt_pci_tbl, ptr @cobalt_instance, ptr @cobalt_probe.__key, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @cobalt_probe.__key.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.119, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @cobalt_subdevs_init.adv7604_pdata, ptr @cobalt_subdevs_init.adv7604_info, ptr @edid, ptr @cobalt_subdevs_hsma_init.adv7842_pdata, ptr @cobalt_subdevs_hsma_init.adv7842_info, ptr @cobalt_subdevs_hsma_init.adv7511_pdata, ptr @cobalt_subdevs_hsma_init.adv7511_info, ptr @.str.124, ptr @.str.125, ptr @switch.table.cobalt_pcie_status_show, ptr @switch.table.cobalt_pcie_status_show.126, ptr @switch.table.cobalt_pcie_status_show.127, ptr @switch.table.cobalt_pcie_status_show.128, ptr @switch.table.cobalt_pcie_status_show.129, ptr @switch.table.cobalt_pcie_status_show.130], section "llvm.metadata"
@0 = internal global [121 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_ignore_err to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_pcie_status_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_pcie_status_show._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_pcie_status_show._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_pcie_status_show._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_pcie_status_show._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_pcie_status_show._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_pcie_status_show._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_pcie_status_show._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_pcie_status_show._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_pcie_status_show._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_instance to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_probe.__key.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_probe._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_probe._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_probe._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_probe._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_notify._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_get_sd_nr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_setup_pci._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_setup_pci._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_setup_pci._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_setup_pci._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_setup_pci._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_setup_pci._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_setup_pci._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_setup_pci._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_setup_pci._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_setup_pci._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_setup_pci._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_setup_pci._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi_config_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi_config_show._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi_config_show._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi_config_show._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi_config_show._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_stream_struct_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_subdevs_init.adv7604_pdata to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_subdevs_init.adv7604_info to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edid to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_subdevs_hsma_init.adv7842_pdata to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_subdevs_hsma_init.adv7842_info to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_subdevs_hsma_init.adv7511_pdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_subdevs_hsma_init.adv7511_info to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cobalt_pcie_status_show to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cobalt_pcie_status_show.126 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cobalt_pcie_status_show.127 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cobalt_pcie_status_show.128 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cobalt_pcie_status_show.129 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cobalt_pcie_status_show.130 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cobalt_pcie_status_show(ptr noundef %cobalt) local_unnamed_addr #0 align 64 {
entry:
  %capa = alloca i32, align 4
  %stat = alloca i16, align 2
  %ctrl = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev1 = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 1
  %0 = ptrtoint ptr %pci_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev1, align 4
  %bus = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 8
  %self = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %self, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %capa) #11
  %6 = ptrtoint ptr %capa to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %capa, align 4, !annotation !247
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %stat) #11
  %7 = ptrtoint ptr %stat to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %stat, align 2, !annotation !247
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ctrl) #11
  %8 = ptrtoint ptr %ctrl to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %ctrl, align 2, !annotation !247
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.i.not = icmp eq i8 %10, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pcie_cap.i.i140 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 19
  %11 = ptrtoint ptr %pcie_cap.i.i140 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pcie_cap.i.i140, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.i141.not = icmp eq i8 %12, 0
  br i1 %tobool.i141.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call4 = call i32 @pcie_capability_read_dword(ptr noundef %1, i32 noundef 4, ptr noundef nonnull %capa) #11
  %call5 = call i32 @pcie_capability_read_word(ptr noundef %1, i32 noundef 8, ptr noundef nonnull %ctrl) #11
  %call6 = call i32 @pcie_capability_read_word(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %stat) #11
  %name = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 2, i32 4
  %13 = ptrtoint ptr %capa to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %capa, align 4
  %switch.tableidx = and i32 %14, 7
  %15 = xor i32 %switch.tableidx, 4
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.cobalt_pcie_status_show, i32 0, i32 %15
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %14, i32 noundef %switch.load) #14
  %17 = ptrtoint ptr %ctrl to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ctrl, align 2
  %conv16 = zext i16 %18 to i32
  %and18 = lshr i16 %18, 5
  %19 = and i16 %and18, 7
  %20 = xor i16 %19, 4
  %21 = zext i16 %20 to i32
  %switch.gep188 = getelementptr inbounds [8 x i32], ptr @switch.table.cobalt_pcie_status_show.129, i32 0, i32 %21
  %22 = ptrtoint ptr %switch.gep188 to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load189 = load i32, ptr %switch.gep188, align 4
  %23 = lshr i16 %18, 12
  %24 = and i16 %23, 7
  %25 = xor i16 %24, 4
  %26 = zext i16 %25 to i32
  %switch.gep176 = getelementptr inbounds [8 x i32], ptr @switch.table.cobalt_pcie_status_show.126, i32 0, i32 %26
  %27 = ptrtoint ptr %switch.gep176 to i32
  call void @__asan_load4_noabort(i32 %27)
  %switch.load177 = load i32, ptr %switch.gep176, align 4
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name, i32 noundef %conv16, i32 noundef %switch.load189, i32 noundef %switch.load177) #14
  %28 = ptrtoint ptr %stat to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %stat, align 2
  %conv34 = zext i16 %29 to i32
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name, i32 noundef %conv34) #14
  %call36 = call i32 @pcie_capability_read_dword(ptr noundef %1, i32 noundef 12, ptr noundef nonnull %capa) #11
  %call37 = call i32 @pcie_capability_read_word(ptr noundef %1, i32 noundef 16, ptr noundef nonnull %ctrl) #11
  %call38 = call i32 @pcie_capability_read_word(ptr noundef %1, i32 noundef 18, ptr noundef nonnull %stat) #11
  %30 = ptrtoint ptr %capa to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %capa, align 4
  %32 = and i32 %31, 15
  %switch.tableidx191 = add nsw i32 %32, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx191)
  %33 = icmp ult i32 %switch.tableidx191, 3
  br i1 %33, label %switch.lookup190, label %if.end.get_link_speed.exit_crit_edge

if.end.get_link_speed.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_link_speed.exit

switch.lookup190:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep192 = getelementptr inbounds [3 x ptr], ptr @switch.table.cobalt_pcie_status_show.130, i32 0, i32 %switch.tableidx191
  %34 = ptrtoint ptr %switch.gep192 to i32
  call void @__asan_load4_noabort(i32 %34)
  %switch.load193 = load ptr, ptr %switch.gep192, align 4
  br label %get_link_speed.exit

get_link_speed.exit:                              ; preds = %switch.lookup190, %if.end.get_link_speed.exit_crit_edge
  %retval.0.i160 = phi ptr [ %switch.load193, %switch.lookup190 ], [ @.str.33, %if.end.get_link_speed.exit_crit_edge ]
  %and48 = lshr i32 %31, 4
  %shr49 = and i32 %and48, 63
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name, i32 noundef %31, ptr noundef nonnull %retval.0.i160, i32 noundef %shr49) #14
  %35 = ptrtoint ptr %ctrl to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %ctrl, align 2
  %conv58 = zext i16 %36 to i32
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name, i32 noundef %conv58) #14
  %37 = ptrtoint ptr %stat to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %stat, align 2
  %conv67 = zext i16 %38 to i32
  %39 = and i16 %38, 15
  %and.i161 = zext i16 %39 to i32
  %switch.tableidx178 = add nsw i32 %and.i161, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx178)
  %40 = icmp ult i32 %switch.tableidx178, 3
  br i1 %40, label %switch.lookup, label %get_link_speed.exit.get_link_speed.exit166_crit_edge

get_link_speed.exit.get_link_speed.exit166_crit_edge: ; preds = %get_link_speed.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_link_speed.exit166

switch.lookup:                                    ; preds = %get_link_speed.exit
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep179 = getelementptr inbounds [3 x ptr], ptr @switch.table.cobalt_pcie_status_show.127, i32 0, i32 %switch.tableidx178
  %41 = ptrtoint ptr %switch.gep179 to i32
  call void @__asan_load4_noabort(i32 %41)
  %switch.load180 = load ptr, ptr %switch.gep179, align 4
  br label %get_link_speed.exit166

get_link_speed.exit166:                           ; preds = %switch.lookup, %get_link_speed.exit.get_link_speed.exit166_crit_edge
  %retval.0.i165 = phi ptr [ %switch.load180, %switch.lookup ], [ @.str.33, %get_link_speed.exit.get_link_speed.exit166_crit_edge ]
  %42 = lshr i16 %38, 4
  %43 = and i16 %42, 63
  %44 = zext i16 %43 to i32
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name, i32 noundef %conv67, ptr noundef nonnull %retval.0.i165, i32 noundef %44) #14
  %call73 = call i32 @pcie_capability_read_dword(ptr noundef %5, i32 noundef 12, ptr noundef nonnull %capa) #11
  %45 = ptrtoint ptr %capa to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %capa, align 4
  %47 = and i32 %46, 15
  %switch.tableidx182 = add nsw i32 %47, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx182)
  %48 = icmp ult i32 %switch.tableidx182, 3
  br i1 %48, label %switch.lookup181, label %get_link_speed.exit166.get_link_speed.exit172_crit_edge

get_link_speed.exit166.get_link_speed.exit172_crit_edge: ; preds = %get_link_speed.exit166
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_link_speed.exit172

switch.lookup181:                                 ; preds = %get_link_speed.exit166
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep183 = getelementptr inbounds [3 x ptr], ptr @switch.table.cobalt_pcie_status_show.128, i32 0, i32 %switch.tableidx182
  %49 = ptrtoint ptr %switch.gep183 to i32
  call void @__asan_load4_noabort(i32 %49)
  %switch.load184 = load ptr, ptr %switch.gep183, align 4
  br label %get_link_speed.exit172

get_link_speed.exit172:                           ; preds = %switch.lookup181, %get_link_speed.exit166.get_link_speed.exit172_crit_edge
  %retval.0.i171 = phi ptr [ %switch.load184, %switch.lookup181 ], [ @.str.33, %get_link_speed.exit166.get_link_speed.exit172_crit_edge ]
  %and83 = lshr i32 %46, 4
  %shr84 = and i32 %and83, 63
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name, i32 noundef %46, ptr noundef nonnull %retval.0.i171, i32 noundef %shr84) #14
  %call86 = call i32 @pcie_capability_read_dword(ptr noundef %1, i32 noundef 20, ptr noundef nonnull %capa) #11
  %call87 = call i32 @pcie_capability_read_word(ptr noundef %1, i32 noundef 24, ptr noundef nonnull %ctrl) #11
  %call88 = call i32 @pcie_capability_read_word(ptr noundef %1, i32 noundef 26, ptr noundef nonnull %stat) #11
  %50 = ptrtoint ptr %capa to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %capa, align 4
  %call96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name, i32 noundef %51) #14
  %52 = ptrtoint ptr %ctrl to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %ctrl, align 2
  %conv104 = zext i16 %53 to i32
  %call105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name, i32 noundef %conv104) #14
  %54 = ptrtoint ptr %stat to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %stat, align 2
  %conv113 = zext i16 %55 to i32
  %call114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name, i32 noundef %conv113) #14
  br label %cleanup

cleanup:                                          ; preds = %get_link_speed.exit172, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ctrl) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %stat) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %capa) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cobalt_pci_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @cobalt_pci_driver, ptr noundef null, ptr noundef nonnull @.str.34) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cobalt_pci_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_unregister_driver(ptr noundef nonnull @cobalt_pci_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cobalt_probe(ptr noundef %pci_dev, ptr nocapture noundef readnone %pci_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @cobalt_instance, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !248
  tail call void @llvm.prefetch.p0(ptr nonnull @cobalt_instance, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @cobalt_instance, ptr nonnull @cobalt_instance, i32 1, ptr nonnull elementtype(i32) @cobalt_instance) #11, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !250
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 53816, i32 noundef 3520, i32 noundef 4) #15
  %cmp = icmp eq ptr %call1.i.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  %sub = add i32 %asmresult.i.i.i.i, -1
  %pci_dev3 = getelementptr inbounds %struct.cobalt, ptr %call1.i.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %pci_dev3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pci_dev, ptr %pci_dev3, align 4
  %2 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %sub, ptr %call1.i.i.i, align 4096
  %pci_lock = getelementptr inbounds %struct.cobalt, ptr %call1.i.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %pci_lock, ptr noundef nonnull @.str.35, ptr noundef nonnull @cobalt_probe.__key) #11
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  %v4l2_dev = getelementptr inbounds %struct.cobalt, ptr %call1.i.i.i, i32 0, i32 2
  %call4 = tail call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef %v4l2_dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end11, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call1.i.i.i, align 4096
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %4) #14
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %name = getelementptr inbounds %struct.cobalt, ptr %call1.i.i.i, i32 0, i32 2, i32 4
  %5 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call1.i.i.i, align 4096
  %call14 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 36, ptr noundef nonnull @.str.38, i32 noundef %6)
  %notify = getelementptr inbounds %struct.cobalt, ptr %call1.i.i.i, i32 0, i32 2, i32 5
  %7 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @cobalt_notify, ptr %notify, align 8
  %8 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call1.i.i.i, align 4096
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name, i32 noundef %9) #14
  %call28 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.42, i32 noundef 917514, i32 noundef 1, ptr noundef %name) #11
  %irq_work_queues = getelementptr inbounds %struct.cobalt, ptr %call1.i.i.i, i32 0, i32 13
  %10 = ptrtoint ptr %irq_work_queues to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call28, ptr %irq_work_queues, align 4
  %cmp30 = icmp eq ptr %call28, null
  br i1 %cmp30, label %do.end34, label %do.body41

do.end34:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name) #14
  br label %do.end142

do.body41:                                        ; preds = %if.end11
  %irq_work_queue = getelementptr inbounds %struct.cobalt, ptr %call1.i.i.i, i32 0, i32 14
  tail call void @__init_work(ptr noundef %irq_work_queue, i32 noundef 0) #11
  %11 = ptrtoint ptr %irq_work_queue to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %irq_work_queue, align 16
  %lockdep_map = getelementptr inbounds %struct.cobalt, ptr %call1.i.i.i, i32 0, i32 14, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.47, ptr noundef nonnull @cobalt_probe.__key.46, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry45 = getelementptr inbounds %struct.cobalt, ptr %call1.i.i.i, i32 0, i32 14, i32 1
  %12 = ptrtoint ptr %entry45 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry45, ptr %entry45, align 4
  %prev.i = getelementptr inbounds %struct.cobalt, ptr %call1.i.i.i, i32 0, i32 14, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry45, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.cobalt, ptr %call1.i.i.i, i32 0, i32 14, i32 2
  %14 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @cobalt_irq_work_handler, ptr %func, align 4
  %call49 = tail call fastcc i32 @cobalt_setup_pci(ptr noundef nonnull %call1.i.i.i, ptr noundef %pci_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50.not = icmp eq i32 %call49, 0
  br i1 %cmp50.not, label %if.end52, label %do.body41.err_wq_crit_edge

do.body41.err_wq_crit_edge:                       ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_wq

if.end52:                                         ; preds = %do.body41
  %call53 = tail call fastcc i32 @cobalt_hdl_info_get(ptr noundef nonnull %call1.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %do.end66, label %do.end58

do.end58:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name) #14
  br label %if.end73

do.end66:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  %hdl_info = getelementptr inbounds %struct.cobalt, ptr %call1.i.i.i, i32 0, i32 25
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name, ptr noundef %hdl_info) #14
  br label %if.end73

if.end73:                                         ; preds = %do.end66, %do.end58
  %call74 = tail call i32 @cobalt_i2c_init(ptr noundef nonnull %call1.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.end73.err_pci_crit_edge

if.end73.err_pci_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_pci

if.end77:                                         ; preds = %if.end73
  tail call fastcc void @cobalt_stream_struct_init(ptr noundef nonnull %call1.i.i.i)
  %call78 = tail call fastcc i32 @cobalt_subdevs_init(ptr noundef nonnull %call1.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.end77.err_i2c_crit_edge

if.end77.err_i2c_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_i2c

if.end81:                                         ; preds = %if.end77
  %bar1.i = getelementptr inbounds %struct.cobalt, ptr %call1.i.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i = getelementptr i8, ptr %16, i32 1280
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !252
  %18 = and i32 %17, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool83.not = icmp eq i32 %18, 0
  br i1 %tobool83.not, label %if.then84, label %if.end81.if.end89_crit_edge

if.end81.if.end89_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

if.then84:                                        ; preds = %if.end81
  %call85 = tail call fastcc i32 @cobalt_subdevs_hsma_init(ptr noundef nonnull %call1.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.then84.if.end89_crit_edge, label %if.then84.err_i2c_crit_edge

if.then84.err_i2c_crit_edge:                      ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_i2c

if.then84.if.end89_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

if.end89:                                         ; preds = %if.then84.if.end89_crit_edge, %if.end81.if.end89_crit_edge
  %call90 = tail call i32 @cobalt_nodes_register(ptr noundef nonnull %call1.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end101, label %do.end95

do.end95:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %name, i32 noundef %call90) #14
  br label %err_i2c

if.end101:                                        ; preds = %if.end89
  tail call fastcc void @cobalt_set_interrupt(ptr noundef nonnull %call1.i.i.i, i1 noundef zeroext true)
  %subdevs = getelementptr inbounds %struct.cobalt, ptr %call1.i.i.i, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn217 = load ptr, ptr %subdevs, align 16
  %cmp108.not219 = icmp eq ptr %.pn217, %subdevs
  br i1 %cmp108.not219, label %if.end101.do.end125_crit_edge, label %if.end101.for.body_crit_edge

if.end101.for.body_crit_edge:                     ; preds = %if.end101
  br label %for.body

if.end101.do.end125_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end125

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end101.for.body_crit_edge
  %.pn220 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn217, %if.end101.for.body_crit_edge ]
  %__sd.0221 = getelementptr i8, ptr %.pn220, i32 -80
  %ops = getelementptr i8, ptr %.pn220, i32 24
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %tobool109.not = icmp eq ptr %23, null
  br i1 %tobool109.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %interrupt_service_routine = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %interrupt_service_routine to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %interrupt_service_routine, align 4
  %tobool112.not = icmp eq ptr %25, null
  br i1 %tobool112.not, label %land.lhs.true.for.inc_crit_edge, label %if.then113

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then113:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call117 = tail call i32 %25(ptr noundef %__sd.0221, i32 noundef 0, ptr noundef null) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then113, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %26 = ptrtoint ptr %.pn220 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn = load ptr, ptr %.pn220, align 4
  %cmp108.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp108.not, label %for.inc.do.end125_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.do.end125_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end125

do.end125:                                        ; preds = %for.inc.do.end125_crit_edge, %if.end101.do.end125_crit_edge
  %call135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %name) #14
  %call136 = tail call i32 @cobalt_flash_probe(ptr noundef nonnull %call1.i.i.i) #11
  br label %cleanup

err_i2c:                                          ; preds = %do.end95, %if.then84.err_i2c_crit_edge, %if.end77.err_i2c_crit_edge
  %retval1.0 = phi i32 [ %call78, %if.end77.err_i2c_crit_edge ], [ %call90, %do.end95 ], [ %call85, %if.then84.err_i2c_crit_edge ]
  tail call void @cobalt_i2c_exit(ptr noundef nonnull %call1.i.i.i) #11
  tail call fastcc void @cobalt_s_bit_sysctrl(ptr noundef nonnull %call1.i.i.i, i32 noundef 1, i32 noundef 0)
  br label %err_pci

err_pci:                                          ; preds = %err_i2c, %if.end73.err_pci_crit_edge
  %retval1.1 = phi i32 [ %call74, %if.end73.err_pci_crit_edge ], [ %retval1.0, %err_i2c ]
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 46
  %27 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq.i, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %28, ptr noundef nonnull %call1.i.i.i) #11
  tail call void @pci_free_irq_vectors(ptr noundef %pci_dev) #11
  tail call fastcc void @cobalt_pci_iounmap(ptr noundef nonnull %call1.i.i.i, ptr noundef %pci_dev)
  %29 = ptrtoint ptr %pci_dev3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pci_dev3, align 4
  tail call void @pci_release_regions(ptr noundef %30) #11
  %31 = ptrtoint ptr %pci_dev3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pci_dev3, align 4
  tail call void @pci_disable_device(ptr noundef %32) #11
  br label %err_wq

err_wq:                                           ; preds = %err_pci, %do.body41.err_wq_crit_edge
  %retval1.2 = phi i32 [ %call49, %do.body41.err_wq_crit_edge ], [ %retval1.1, %err_pci ]
  %33 = ptrtoint ptr %irq_work_queues to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %irq_work_queues, align 4
  tail call void @destroy_workqueue(ptr noundef %34) #11
  br label %do.end142

do.end142:                                        ; preds = %err_wq, %do.end34
  %retval1.3 = phi i32 [ -12, %do.end34 ], [ %retval1.2, %err_wq ]
  %call147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %name, i32 noundef %retval1.3) #14
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #11
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end142, %do.end125, %do.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end8 ], [ %retval1.3, %do.end142 ], [ 0, %do.end125 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cobalt_remove(ptr noundef %pci_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  tail call void @cobalt_flash_remove(ptr noundef %add.ptr.i) #11
  %bar1.i16.i = getelementptr i8, ptr %1, i32 224
  %2 = ptrtoint ptr %bar1.i16.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bar1.i16.i, align 8
  %add.ptr.i17.i = getelementptr i8, ptr %3, i32 1288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !253
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 0) #11, !srcloc !254
  %irq_work_queues = getelementptr i8, ptr %1, i32 53156
  %4 = ptrtoint ptr %irq_work_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_work_queues, align 4
  tail call void @flush_workqueue(ptr noundef %5) #11
  tail call void @cobalt_nodes_unregister(ptr noundef %add.ptr.i) #11
  %sd2 = getelementptr i8, ptr %1, i32 2108
  %6 = ptrtoint ptr %sd2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd2, align 4
  %cmp3 = icmp eq ptr %7, null
  br i1 %cmp3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_priv.i, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef nonnull %7) #11
  tail call void @i2c_unregister_device(ptr noundef %9) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %sd2.1 = getelementptr i8, ptr %1, i32 4988
  %10 = ptrtoint ptr %sd2.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sd2.1, align 4
  %cmp3.1 = icmp eq ptr %11, null
  br i1 %cmp3.1, label %cleanup.cleanup.1_crit_edge, label %if.end.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.1

if.end.1:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  %dev_priv.i.1 = getelementptr inbounds %struct.v4l2_subdev, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %dev_priv.i.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i.1, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef nonnull %11) #11
  tail call void @i2c_unregister_device(ptr noundef %13) #11
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end.1, %cleanup.cleanup.1_crit_edge
  %sd2.2 = getelementptr i8, ptr %1, i32 7868
  %14 = ptrtoint ptr %sd2.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sd2.2, align 4
  %cmp3.2 = icmp eq ptr %15, null
  br i1 %cmp3.2, label %cleanup.1.cleanup.2_crit_edge, label %if.end.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.2

if.end.2:                                         ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #13
  %dev_priv.i.2 = getelementptr inbounds %struct.v4l2_subdev, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %dev_priv.i.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_priv.i.2, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef nonnull %15) #11
  tail call void @i2c_unregister_device(ptr noundef %17) #11
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.end.2, %cleanup.1.cleanup.2_crit_edge
  %sd2.3 = getelementptr i8, ptr %1, i32 10748
  %18 = ptrtoint ptr %sd2.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sd2.3, align 4
  %cmp3.3 = icmp eq ptr %19, null
  br i1 %cmp3.3, label %cleanup.2.cleanup.3_crit_edge, label %if.end.3

cleanup.2.cleanup.3_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.3

if.end.3:                                         ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #13
  %dev_priv.i.3 = getelementptr inbounds %struct.v4l2_subdev, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %dev_priv.i.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_priv.i.3, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef nonnull %19) #11
  tail call void @i2c_unregister_device(ptr noundef %21) #11
  br label %cleanup.3

cleanup.3:                                        ; preds = %if.end.3, %cleanup.2.cleanup.3_crit_edge
  %sd2.4 = getelementptr i8, ptr %1, i32 13628
  %22 = ptrtoint ptr %sd2.4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sd2.4, align 4
  %cmp3.4 = icmp eq ptr %23, null
  br i1 %cmp3.4, label %cleanup.3.cleanup.4_crit_edge, label %if.end.4

cleanup.3.cleanup.4_crit_edge:                    ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.4

if.end.4:                                         ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #13
  %dev_priv.i.4 = getelementptr inbounds %struct.v4l2_subdev, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %dev_priv.i.4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_priv.i.4, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef nonnull %23) #11
  tail call void @i2c_unregister_device(ptr noundef %25) #11
  br label %cleanup.4

cleanup.4:                                        ; preds = %if.end.4, %cleanup.3.cleanup.4_crit_edge
  tail call void @cobalt_i2c_exit(ptr noundef %add.ptr.i) #11
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 46
  %26 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq.i, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %27, ptr noundef %add.ptr.i) #11
  tail call void @pci_free_irq_vectors(ptr noundef %pci_dev) #11
  %pci_lock.i = getelementptr i8, ptr %1, i32 128
  tail call void @mutex_lock_nested(ptr noundef %pci_lock.i, i32 noundef 0) #11
  %28 = ptrtoint ptr %bar1.i16.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bar1.i16.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 1024
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !252
  %31 = and i32 %30, -33554433
  %32 = ptrtoint ptr %bar1.i16.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bar1.i16.i, align 8
  %add.ptr.i8.i = getelementptr i8, ptr %33, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !253
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %31) #11, !srcloc !254
  tail call void @mutex_unlock(ptr noundef %pci_lock.i) #11
  %bar0.i = getelementptr i8, ptr %1, i32 220
  %34 = ptrtoint ptr %bar0.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bar0.i, align 4
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %cleanup.4.if.end.i_crit_edge, label %if.then.i

cleanup.4.if.end.i_crit_edge:                     ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_iounmap(ptr noundef %pci_dev, ptr noundef nonnull %35) #11
  %36 = ptrtoint ptr %bar0.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %bar0.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %cleanup.4.if.end.i_crit_edge
  %37 = ptrtoint ptr %bar1.i16.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bar1.i16.i, align 8
  %tobool3.not.i = icmp eq ptr %38, null
  br i1 %tobool3.not.i, label %if.end.i.cobalt_pci_iounmap.exit_crit_edge, label %if.then4.i

if.end.i.cobalt_pci_iounmap.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cobalt_pci_iounmap.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_iounmap(ptr noundef %pci_dev, ptr noundef nonnull %38) #11
  %39 = ptrtoint ptr %bar1.i16.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %bar1.i16.i, align 8
  br label %cobalt_pci_iounmap.exit

cobalt_pci_iounmap.exit:                          ; preds = %if.then4.i, %if.end.i.cobalt_pci_iounmap.exit_crit_edge
  %pci_dev6 = getelementptr i8, ptr %1, i32 -4
  %40 = ptrtoint ptr %pci_dev6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pci_dev6, align 4
  tail call void @pci_release_regions(ptr noundef %41) #11
  %42 = ptrtoint ptr %pci_dev6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pci_dev6, align 4
  tail call void @pci_disable_device(ptr noundef %43) #11
  %44 = ptrtoint ptr %irq_work_queues to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %irq_work_queues, align 4
  tail call void @destroy_workqueue(ptr noundef %45) #11
  %name = getelementptr i8, ptr %1, i32 60
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef %name) #14
  tail call void @v4l2_device_unregister(ptr noundef %1) #11
  tail call void @kfree(ptr noundef %add.ptr.i) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cobalt_notify(ptr noundef readonly %sd, i32 noundef %notification, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_dev = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 5
  %0 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_dev, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %sd1.i = getelementptr i8, ptr %1, i32 2108
  %2 = ptrtoint ptr %sd1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd1.i, align 4
  %cmp2.i = icmp eq ptr %3, %sd
  br i1 %cmp2.i, label %entry.cobalt_get_sd_nr.exit_crit_edge, label %for.inc.i

entry.cobalt_get_sd_nr.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cobalt_get_sd_nr.exit

for.inc.i:                                        ; preds = %entry
  %sd1.1.i = getelementptr i8, ptr %1, i32 4988
  %4 = ptrtoint ptr %sd1.1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd1.1.i, align 4
  %cmp2.1.i = icmp eq ptr %5, %sd
  br i1 %cmp2.1.i, label %for.inc.i.cobalt_get_sd_nr.exit_crit_edge, label %for.inc.1.i

for.inc.i.cobalt_get_sd_nr.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cobalt_get_sd_nr.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %sd1.2.i = getelementptr i8, ptr %1, i32 7868
  %6 = ptrtoint ptr %sd1.2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd1.2.i, align 4
  %cmp2.2.i = icmp eq ptr %7, %sd
  br i1 %cmp2.2.i, label %for.inc.1.i.cobalt_get_sd_nr.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.cobalt_get_sd_nr.exit_crit_edge:      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cobalt_get_sd_nr.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %sd1.3.i = getelementptr i8, ptr %1, i32 10748
  %8 = ptrtoint ptr %sd1.3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd1.3.i, align 4
  %cmp2.3.i = icmp eq ptr %9, %sd
  br i1 %cmp2.3.i, label %for.inc.2.i.cobalt_get_sd_nr.exit_crit_edge, label %for.inc.3.i

for.inc.2.i.cobalt_get_sd_nr.exit_crit_edge:      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cobalt_get_sd_nr.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %sd1.4.i = getelementptr i8, ptr %1, i32 13628
  %10 = ptrtoint ptr %sd1.4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sd1.4.i, align 4
  %cmp2.4.i = icmp eq ptr %11, %sd
  br i1 %cmp2.4.i, label %for.inc.3.i.cobalt_get_sd_nr.exit_crit_edge, label %for.inc.4.i

for.inc.3.i.cobalt_get_sd_nr.exit_crit_edge:      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cobalt_get_sd_nr.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %sd1.5.i = getelementptr i8, ptr %1, i32 16508
  %12 = ptrtoint ptr %sd1.5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sd1.5.i, align 4
  %cmp2.5.i = icmp eq ptr %13, %sd
  br i1 %cmp2.5.i, label %for.inc.4.i.cobalt_get_sd_nr.exit_crit_edge, label %for.inc.5.i

for.inc.4.i.cobalt_get_sd_nr.exit_crit_edge:      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cobalt_get_sd_nr.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr i8, ptr %1, i32 60
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %name.i) #14
  br label %cobalt_get_sd_nr.exit

cobalt_get_sd_nr.exit:                            ; preds = %for.inc.5.i, %for.inc.4.i.cobalt_get_sd_nr.exit_crit_edge, %for.inc.3.i.cobalt_get_sd_nr.exit_crit_edge, %for.inc.2.i.cobalt_get_sd_nr.exit_crit_edge, %for.inc.1.i.cobalt_get_sd_nr.exit_crit_edge, %for.inc.i.cobalt_get_sd_nr.exit_crit_edge, %entry.cobalt_get_sd_nr.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.inc.5.i ], [ 0, %entry.cobalt_get_sd_nr.exit_crit_edge ], [ 1, %for.inc.i.cobalt_get_sd_nr.exit_crit_edge ], [ 2, %for.inc.1.i.cobalt_get_sd_nr.exit_crit_edge ], [ 3, %for.inc.2.i.cobalt_get_sd_nr.exit_crit_edge ], [ 4, %for.inc.3.i.cobalt_get_sd_nr.exit_crit_edge ], [ 5, %for.inc.4.i.cobalt_get_sd_nr.exit_crit_edge ]
  %arrayidx = getelementptr %struct.cobalt, ptr %add.ptr.i, i32 0, i32 8, i32 %retval.0.i
  %tobool.not = icmp eq ptr %arg, null
  br i1 %tobool.not, label %cobalt_get_sd_nr.exit.cond.end_crit_edge, label %cond.true

cobalt_get_sd_nr.exit.cond.end_crit_edge:         ; preds = %cobalt_get_sd_nr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %cobalt_get_sd_nr.exit
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %phi.cmp = icmp ne i32 %15, 0
  %phi.cast = zext i1 %phi.cmp to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %cobalt_get_sd_nr.exit.cond.end_crit_edge
  %cond = phi i32 [ %phi.cast, %cond.true ], [ 0, %cobalt_get_sd_nr.exit.cond.end_crit_edge ]
  %is_output = getelementptr %struct.cobalt, ptr %add.ptr.i, i32 0, i32 8, i32 %retval.0.i, i32 30
  %16 = ptrtoint ptr %is_output to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_output, align 8, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool3.not = icmp eq i8 %17, 0
  br i1 %tobool3.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %18 = zext i32 %notification to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %notification, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 1082684930, label %do.body16
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %mul = shl nuw nsw i32 %retval.0.i, 2
  %add = add nuw nsw i32 %mul, 6
  %pci_lock.i = getelementptr i8, ptr %1, i32 128
  tail call void @mutex_lock_nested(ptr noundef %pci_lock.i, i32 noundef 0) #11
  %bar1.i.i = getelementptr i8, ptr %1, i32 224
  %19 = ptrtoint ptr %bar1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bar1.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 1024
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !251
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !252
  %shl.i = shl nuw nsw i32 64, %mul
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %22, %neg.i
  %shl1.i = shl nuw nsw i32 %cond, %add
  %or.i = or i32 %and.i, %shl1.i
  %23 = ptrtoint ptr %bar1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bar1.i.i, align 8
  %add.ptr.i8.i = getelementptr i8, ptr %24, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !253
  tail call void @arm_heavy_mb() #11
  %25 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %25) #11, !srcloc !254
  tail call void @mutex_unlock(ptr noundef %pci_lock.i) #11
  %26 = load i32, ptr @cobalt_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp = icmp sgt i32 %26, 0
  br i1 %cmp, label %do.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr i8, ptr %1, i32 60
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %name, i32 noundef %retval.0.i, i32 noundef %cond) #14
  br label %cleanup

do.body16:                                        ; preds = %if.end
  %27 = load i32, ptr @cobalt_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp17 = icmp sgt i32 %27, 0
  br i1 %cmp17, label %do.end22, label %do.body16.do.end30_crit_edge

do.body16.do.end30_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30

do.end22:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #13
  %name25 = getelementptr i8, ptr %1, i32 60
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %name25, i32 noundef %retval.0.i) #14
  br label %do.end30

do.end30:                                         ; preds = %do.end22, %do.body16.do.end30_crit_edge
  tail call void @v4l2_event_queue(ptr noundef %arrayidx, ptr noundef %arg) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %do.end, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cobalt_irq_work_handler(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cobalt_setup_pci(ptr noundef %cobalt, ptr noundef %pci_dev) unnamed_addr #0 align 64 {
entry:
  %ctrl.i = alloca i16, align 2
  %data.i = alloca i16, align 2
  %adrs_l.i = alloca i32, align 4
  %adrs_h.i = alloca i32, align 4
  %link.i24 = alloca i32, align 4
  %link.i16 = alloca i16, align 2
  %link.i9 = alloca i32, align 4
  %link.i1 = alloca i16, align 2
  %link.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @cobalt_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %name) #14
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call i32 @pci_enable_device(ptr noundef %pci_dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end14, label %do.end8

do.end8:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #13
  %name11 = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 2, i32 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %name11) #14
  br label %cleanup

if.end14:                                         ; preds = %do.end3
  tail call void @pci_set_master(ptr noundef %pci_dev) #11
  %card_rev = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 6
  %call15 = tail call i32 @pci_read_config_byte(ptr noundef %pci_dev, i32 noundef 8, ptr noundef %card_rev) #11
  %device_id = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 7
  %call16 = tail call i32 @pci_read_config_word(ptr noundef %pci_dev, i32 noundef 2, ptr noundef %device_id) #11
  %1 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %device_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10034, i16 %2)
  %cond = icmp eq i16 %2, 10034
  %name23 = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 2, i32 4
  %.str.76..str.79 = select i1 %cond, ptr @.str.76, ptr @.str.79
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.76..str.79, ptr noundef %name23) #14
  %pci_dev1.i = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 1
  %3 = ptrtoint ptr %pci_dev1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %link.i) #11
  %5 = ptrtoint ptr %link.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %link.i, align 2, !annotation !247
  %pcie_cap.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 19
  %6 = ptrtoint ptr %pcie_cap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pcie_cap.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.i.not.i = icmp eq i8 %7, 0
  br i1 %tobool.i.not.i, label %pcie_link_get_lanes.exit.thread, label %pcie_link_get_lanes.exit

pcie_link_get_lanes.exit.thread:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %link.i) #11
  br label %do.end40

pcie_link_get_lanes.exit:                         ; preds = %if.end14
  %call2.i = call i32 @pcie_capability_read_word(ptr noundef %4, i32 noundef 18, ptr noundef nonnull %link.i) #11
  %8 = ptrtoint ptr %link.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %link.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %link.i) #11
  %10 = and i16 %9, 1008
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %10)
  %cmp35.not = icmp eq i16 %10, 128
  br i1 %cmp35.not, label %pcie_link_get_lanes.exit.if.end75_crit_edge, label %pcie_link_get_lanes.exit.do.end40_crit_edge

pcie_link_get_lanes.exit.do.end40_crit_edge:      ; preds = %pcie_link_get_lanes.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end40

pcie_link_get_lanes.exit.if.end75_crit_edge:      ; preds = %pcie_link_get_lanes.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

do.end40:                                         ; preds = %pcie_link_get_lanes.exit.do.end40_crit_edge, %pcie_link_get_lanes.exit.thread
  %name43 = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 2, i32 4
  %11 = ptrtoint ptr %pci_dev1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci_dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %link.i1) #11
  %13 = ptrtoint ptr %link.i1 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %link.i1, align 2, !annotation !247
  %pcie_cap.i.i.i3 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 19
  %14 = ptrtoint ptr %pcie_cap.i.i.i3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pcie_cap.i.i.i3, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.i.not.i4 = icmp eq i8 %15, 0
  br i1 %tobool.i.not.i4, label %do.end40.pcie_link_get_lanes.exit8_crit_edge, label %if.end.i6

do.end40.pcie_link_get_lanes.exit8_crit_edge:     ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %pcie_link_get_lanes.exit8

if.end.i6:                                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i5 = call i32 @pcie_capability_read_word(ptr noundef %12, i32 noundef 18, ptr noundef nonnull %link.i1) #11
  %16 = ptrtoint ptr %link.i1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %link.i1, align 2
  %18 = lshr i16 %17, 4
  %19 = and i16 %18, 63
  %20 = zext i16 %19 to i32
  br label %pcie_link_get_lanes.exit8

pcie_link_get_lanes.exit8:                        ; preds = %if.end.i6, %do.end40.pcie_link_get_lanes.exit8_crit_edge
  %retval.0.i7 = phi i32 [ %20, %if.end.i6 ], [ 0, %do.end40.pcie_link_get_lanes.exit8_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %link.i1) #11
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %name43, i32 noundef %retval.0.i7) #14
  %21 = ptrtoint ptr %pci_dev1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci_dev1.i, align 4
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus.i, align 8
  %self.i = getelementptr inbounds %struct.pci_bus, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %self.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link.i9) #11
  %27 = ptrtoint ptr %link.i9 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %link.i9, align 4, !annotation !247
  %pcie_cap.i.i.i11 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 19
  %28 = ptrtoint ptr %pcie_cap.i.i.i11 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pcie_cap.i.i.i11, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.i.not.i12 = icmp eq i8 %29, 0
  br i1 %tobool.i.not.i12, label %pcie_bus_link_get_lanes.exit.thread, label %pcie_bus_link_get_lanes.exit

pcie_bus_link_get_lanes.exit.thread:              ; preds = %pcie_link_get_lanes.exit8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link.i9) #11
  br label %do.end53

pcie_bus_link_get_lanes.exit:                     ; preds = %pcie_link_get_lanes.exit8
  %call2.i13 = call i32 @pcie_capability_read_dword(ptr noundef %26, i32 noundef 12, ptr noundef nonnull %link.i9) #11
  %30 = ptrtoint ptr %link.i9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %link.i9, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link.i9) #11
  %32 = and i32 %31, 896
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp48 = icmp eq i32 %32, 0
  br i1 %cmp48, label %pcie_bus_link_get_lanes.exit.do.end53_crit_edge, label %pcie_bus_link_get_lanes.exit.if.end60_crit_edge

pcie_bus_link_get_lanes.exit.if.end60_crit_edge:  ; preds = %pcie_bus_link_get_lanes.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

pcie_bus_link_get_lanes.exit.do.end53_crit_edge:  ; preds = %pcie_bus_link_get_lanes.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end53

do.end53:                                         ; preds = %pcie_bus_link_get_lanes.exit.do.end53_crit_edge, %pcie_bus_link_get_lanes.exit.thread
  %call58 = call fastcc i32 @pcie_bus_link_get_lanes(ptr noundef %cobalt), !range !256
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %name43, i32 noundef %call58) #14
  br label %if.end60

if.end60:                                         ; preds = %do.end53, %pcie_bus_link_get_lanes.exit.if.end60_crit_edge
  %33 = ptrtoint ptr %pci_dev1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pci_dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %link.i16) #11
  %35 = ptrtoint ptr %link.i16 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 -1, ptr %link.i16, align 2, !annotation !247
  %pcie_cap.i.i.i18 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 19
  %36 = ptrtoint ptr %pcie_cap.i.i.i18 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %pcie_cap.i.i.i18, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.i.not.i19 = icmp eq i8 %37, 0
  br i1 %tobool.i.not.i19, label %if.end60.pcie_link_get_lanes.exit23_crit_edge, label %if.end.i21

if.end60.pcie_link_get_lanes.exit23_crit_edge:    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %pcie_link_get_lanes.exit23

if.end.i21:                                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i20 = call i32 @pcie_capability_read_word(ptr noundef %34, i32 noundef 18, ptr noundef nonnull %link.i16) #11
  %38 = ptrtoint ptr %link.i16 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %link.i16, align 2
  %40 = lshr i16 %39, 4
  %41 = and i16 %40, 63
  %42 = zext i16 %41 to i32
  br label %pcie_link_get_lanes.exit23

pcie_link_get_lanes.exit23:                       ; preds = %if.end.i21, %if.end60.pcie_link_get_lanes.exit23_crit_edge
  %retval.0.i22 = phi i32 [ %42, %if.end.i21 ], [ 0, %if.end60.pcie_link_get_lanes.exit23_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %link.i16) #11
  %43 = ptrtoint ptr %pci_dev1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pci_dev1.i, align 4
  %bus.i26 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %bus.i26 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bus.i26, align 8
  %self.i27 = getelementptr inbounds %struct.pci_bus, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %self.i27 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %self.i27, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link.i24) #11
  %49 = ptrtoint ptr %link.i24 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %link.i24, align 4, !annotation !247
  %pcie_cap.i.i.i28 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 19
  %50 = ptrtoint ptr %pcie_cap.i.i.i28 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %pcie_cap.i.i.i28, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.i.not.i29 = icmp eq i8 %51, 0
  br i1 %tobool.i.not.i29, label %pcie_link_get_lanes.exit23.pcie_bus_link_get_lanes.exit35_crit_edge, label %if.end.i33

pcie_link_get_lanes.exit23.pcie_bus_link_get_lanes.exit35_crit_edge: ; preds = %pcie_link_get_lanes.exit23
  call void @__sanitizer_cov_trace_pc() #13
  br label %pcie_bus_link_get_lanes.exit35

if.end.i33:                                       ; preds = %pcie_link_get_lanes.exit23
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i30 = call i32 @pcie_capability_read_dword(ptr noundef %48, i32 noundef 12, ptr noundef nonnull %link.i24) #11
  %52 = ptrtoint ptr %link.i24 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %link.i24, align 4
  %and.i31 = lshr i32 %53, 4
  %shr.i32 = and i32 %and.i31, 63
  br label %pcie_bus_link_get_lanes.exit35

pcie_bus_link_get_lanes.exit35:                   ; preds = %if.end.i33, %pcie_link_get_lanes.exit23.pcie_bus_link_get_lanes.exit35_crit_edge
  %retval.0.i34 = phi i32 [ %shr.i32, %if.end.i33 ], [ 0, %pcie_link_get_lanes.exit23.pcie_bus_link_get_lanes.exit35_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link.i24) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i22, i32 %retval.0.i34)
  %cmp63.not = icmp eq i32 %retval.0.i22, %retval.0.i34
  br i1 %cmp63.not, label %pcie_bus_link_get_lanes.exit35.if.end75_crit_edge, label %do.end68

pcie_bus_link_get_lanes.exit35.if.end75_crit_edge: ; preds = %pcie_bus_link_get_lanes.exit35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

do.end68:                                         ; preds = %pcie_bus_link_get_lanes.exit35
  call void @__sanitizer_cov_trace_pc() #13
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %name43) #14
  br label %err_disable

if.end75:                                         ; preds = %pcie_bus_link_get_lanes.exit35.if.end75_crit_edge, %pcie_link_get_lanes.exit.if.end75_crit_edge
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  %call76 = call i32 @dma_set_mask(ptr noundef %dev, i64 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end75.if.end92_crit_edge, label %if.then78

if.end75.if.end92_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

if.then78:                                        ; preds = %if.end75
  %call80 = call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then78.if.end92_crit_edge, label %do.end85

if.then78.if.end92_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

do.end85:                                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #13
  %name88 = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 2, i32 4
  %call90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %name88) #14
  br label %err_disable

if.end92:                                         ; preds = %if.then78.if.end92_crit_edge, %if.end75.if.end92_crit_edge
  %call93 = call i32 @pci_request_regions(ptr noundef %pci_dev, ptr noundef nonnull @.str.34) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end104, label %do.end98

do.end98:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  %name101 = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 2, i32 4
  %call103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %name101) #14
  br label %err_disable

if.end104:                                        ; preds = %if.end92
  call void @cobalt_pcie_status_show(ptr noundef %cobalt)
  %call105 = call ptr @pci_iomap(ptr noundef %pci_dev, i32 noundef 0, i32 noundef 0) #11
  %bar0 = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 4
  %54 = ptrtoint ptr %bar0 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call105, ptr %bar0, align 4
  %call106 = call ptr @pci_iomap(ptr noundef %pci_dev, i32 noundef 1, i32 noundef 0) #11
  %bar1 = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 5
  %55 = ptrtoint ptr %bar1 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call106, ptr %bar1, align 8
  %cmp108 = icmp eq ptr %call106, null
  br i1 %cmp108, label %if.then110, label %if.end104.if.end121_crit_edge

if.end104.if.end121_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

if.then110:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #13
  %call111 = call ptr @pci_iomap(ptr noundef %pci_dev, i32 noundef 2, i32 noundef 0) #11
  %56 = ptrtoint ptr %bar1 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call111, ptr %bar1, align 8
  %name118 = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 2, i32 4
  %call120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %name118) #14
  br label %if.end121

if.end121:                                        ; preds = %if.then110, %if.end104.if.end121_crit_edge
  %57 = ptrtoint ptr %bar0 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bar0, align 4
  %tobool123.not = icmp eq ptr %58, null
  br i1 %tobool123.not, label %if.end121.if.end.i43_crit_edge, label %lor.lhs.false

if.end121.if.end.i43_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i43

lor.lhs.false:                                    ; preds = %if.end121
  %59 = ptrtoint ptr %bar1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bar1, align 8
  %tobool125.not = icmp eq ptr %60, null
  br i1 %tobool125.not, label %lor.lhs.false.if.then.i_crit_edge, label %if.end127

lor.lhs.false.if.then.i_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end127:                                        ; preds = %lor.lhs.false
  %add.ptr.i = getelementptr i8, ptr %60, i32 1024
  %61 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !251
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !252
  %62 = and i32 %61, -983041
  %63 = ptrtoint ptr %bar1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bar1, align 8
  %add.ptr.i37 = getelementptr i8, ptr %64, i32 1024
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !253
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %62) #11, !srcloc !254
  %65 = ptrtoint ptr %bar1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bar1, align 8
  %add.ptr.i17.i = getelementptr i8, ptr %66, i32 1288
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !253
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 0) #11, !srcloc !254
  %call.i = call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %pci_dev, i32 noundef 1, i32 noundef 1, i32 noundef 2, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp130 = icmp slt i32 %call.i, 1
  br i1 %cmp130, label %do.end135, label %if.end141

do.end135:                                        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #13
  %name138 = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 2, i32 4
  %call140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %name138) #14
  br label %err_release

if.end141:                                        ; preds = %if.end127
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ctrl.i) #11
  %67 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 -1, ptr %ctrl.i, align 2, !annotation !247
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #11
  %68 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 -1, ptr %data.i, align 2, !annotation !247
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %adrs_l.i) #11
  %69 = ptrtoint ptr %adrs_l.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %adrs_l.i, align 4, !annotation !247
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %adrs_h.i) #11
  %70 = ptrtoint ptr %adrs_h.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %adrs_h.i, align 4, !annotation !247
  %call.i38 = call i32 @pci_read_config_word(ptr noundef %pci_dev, i32 noundef 82, ptr noundef nonnull %ctrl.i) #11
  %name.i = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 2, i32 4
  %71 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %ctrl.i, align 2
  %73 = and i16 %72, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool.not.i = icmp eq i16 %73, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.108, ptr @.str.107
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %name.i, ptr noundef nonnull %cond.i) #14
  %74 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %ctrl.i, align 2
  %conv9.i = zext i16 %75 to i32
  %76 = lshr i32 %conv9.i, 1
  %and10.i = and i32 %76, 7
  %shl.i = shl nuw nsw i32 1, %and10.i
  %77 = lshr i32 %conv9.i, 4
  %and13.i = and i32 %77, 7
  %shl14.i = shl nuw nsw i32 1, %and13.i
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef %name.i, i32 noundef %shl.i, i32 noundef %shl14.i) #14
  %78 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %ctrl.i, align 2
  %80 = and i16 %79, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool18.not.i = icmp eq i16 %80, 0
  br i1 %tobool18.not.i, label %if.end141.if.end.i39_crit_edge, label %do.end21.i

if.end141.if.end.i39_crit_edge:                   ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i39

do.end21.i:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #13
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %name.i) #14
  br label %if.end.i39

if.end.i39:                                       ; preds = %do.end21.i, %if.end141.if.end.i39_crit_edge
  %call27.i = call i32 @pci_read_config_dword(ptr noundef %pci_dev, i32 noundef 84, ptr noundef nonnull %adrs_l.i) #11
  %call28.i = call i32 @pci_read_config_dword(ptr noundef %pci_dev, i32 noundef 88, ptr noundef nonnull %adrs_h.i) #11
  %call29.i = call i32 @pci_read_config_word(ptr noundef %pci_dev, i32 noundef 92, ptr noundef nonnull %data.i) #11
  %81 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %ctrl.i, align 2
  %83 = and i16 %82, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool32.not.i = icmp eq i16 %83, 0
  br i1 %tobool32.not.i, label %do.end45.i, label %do.end36.i

do.end36.i:                                       ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #13
  %84 = ptrtoint ptr %adrs_h.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %adrs_h.i, align 4
  %86 = ptrtoint ptr %adrs_l.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %adrs_l.i, align 4
  %88 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %data.i, align 2
  %conv41.i = zext i16 %89 to i32
  %call42.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef %name.i, i32 noundef %85, i32 noundef %87, i32 noundef %conv41.i) #14
  br label %msi_config_show.exit

do.end45.i:                                       ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #13
  %90 = ptrtoint ptr %adrs_l.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %adrs_l.i, align 4
  %92 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %data.i, align 2
  %conv50.i = zext i16 %93 to i32
  %call51.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef %name.i, i32 noundef %91, i32 noundef %conv50.i) #14
  br label %msi_config_show.exit

msi_config_show.exit:                             ; preds = %do.end45.i, %do.end36.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adrs_h.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adrs_l.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ctrl.i) #11
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 46
  %94 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %irq, align 4
  %call.i40 = call i32 @request_threaded_irq(i32 noundef %95, ptr noundef nonnull @cobalt_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %name.i, ptr noundef %cobalt) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool146.not = icmp eq i32 %call.i40, 0
  br i1 %tobool146.not, label %if.end157, label %do.end150

do.end150:                                        ; preds = %msi_config_show.exit
  call void @__sanitizer_cov_trace_pc() #13
  %96 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %irq, align 4
  %call156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %name.i, i32 noundef %97) #14
  call void @pci_disable_msi(ptr noundef %pci_dev) #11
  br label %err_release

if.end157:                                        ; preds = %msi_config_show.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call158 = call i32 @omni_sg_dma_init(ptr noundef %cobalt) #11
  br label %cleanup

err_release:                                      ; preds = %do.end150, %do.end135
  %98 = ptrtoint ptr %bar0 to i32
  call void @__asan_load4_noabort(i32 %98)
  %.pr = load ptr, ptr %bar0, align 4
  %tobool.not.i41 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i41, label %err_release.if.end.i43_crit_edge, label %err_release.if.then.i_crit_edge

err_release.if.then.i_crit_edge:                  ; preds = %err_release
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

err_release.if.end.i43_crit_edge:                 ; preds = %err_release
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i43

if.then.i:                                        ; preds = %err_release.if.then.i_crit_edge, %lor.lhs.false.if.then.i_crit_edge
  %99 = phi ptr [ %.pr, %err_release.if.then.i_crit_edge ], [ %58, %lor.lhs.false.if.then.i_crit_edge ]
  call void @pci_iounmap(ptr noundef %pci_dev, ptr noundef nonnull %99) #11
  %100 = ptrtoint ptr %bar0 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %bar0, align 4
  br label %if.end.i43

if.end.i43:                                       ; preds = %if.then.i, %err_release.if.end.i43_crit_edge, %if.end121.if.end.i43_crit_edge
  %101 = ptrtoint ptr %bar1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %bar1, align 8
  %tobool3.not.i = icmp eq ptr %102, null
  br i1 %tobool3.not.i, label %if.end.i43.cobalt_pci_iounmap.exit_crit_edge, label %if.then4.i

if.end.i43.cobalt_pci_iounmap.exit_crit_edge:     ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cobalt_pci_iounmap.exit

if.then4.i:                                       ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #13
  call void @pci_iounmap(ptr noundef %pci_dev, ptr noundef nonnull %102) #11
  %103 = ptrtoint ptr %bar1 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %bar1, align 8
  br label %cobalt_pci_iounmap.exit

cobalt_pci_iounmap.exit:                          ; preds = %if.then4.i, %if.end.i43.cobalt_pci_iounmap.exit_crit_edge
  call void @pci_release_regions(ptr noundef %pci_dev) #11
  br label %err_disable

err_disable:                                      ; preds = %cobalt_pci_iounmap.exit, %do.end98, %do.end85, %do.end68
  %ret.1 = phi i32 [ -5, %do.end68 ], [ %call80, %do.end85 ], [ %call93, %do.end98 ], [ -5, %cobalt_pci_iounmap.exit ]
  %104 = ptrtoint ptr %pci_dev1.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pci_dev1.i, align 4
  call void @pci_disable_device(ptr noundef %105) #11
  br label %cleanup

cleanup:                                          ; preds = %err_disable, %if.end157, %do.end8
  %retval.0 = phi i32 [ %call4, %do.end8 ], [ %ret.1, %err_disable ], [ 0, %if.end157 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cobalt_hdl_info_get(ptr noundef %cobalt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bar1 = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.012 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %bar1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bar1, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 18432
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %i.012
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1) #11, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !258
  %arrayidx = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 25, i32 %i.012
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, 512
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %hdl_info2 = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 25
  %arrayidx3 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 25, i32 511
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx3, align 1
  %call5 = tail call ptr @strstr(ptr noundef %hdl_info2, ptr noundef nonnull @.str.121)
  %tobool.not = icmp eq ptr %call5, null
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cobalt_i2c_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cobalt_stream_struct_init(ptr noundef %cobalt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 2, i32 4
  %first_fifo_channel = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 23
  %dma_channel29 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 8, i32 11, i32 20
  %video_channel32 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 8, i32 11, i32 21
  %dma_fifo_mask33 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 8, i32 11, i32 22
  %dma_channel20 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 8, i32 5, i32 20
  %video_channel22 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 8, i32 5, i32 21
  %dma_fifo_mask23 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 8, i32 5, i32 22
  %adv_irq_mask24 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 8, i32 5, i32 23
  br label %for.body

for.body:                                         ; preds = %do.end.for.body_crit_edge, %entry
  %i.087 = phi i32 [ 0, %entry ], [ %inc, %do.end.for.body_crit_edge ]
  %cobalt1 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 8, i32 %i.087, i32 33
  %0 = ptrtoint ptr %cobalt1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %cobalt, ptr %cobalt1, align 4
  %flags = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 8, i32 %i.087, i32 25
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %flags, align 4
  %is_audio = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 8, i32 %i.087, i32 31
  %2 = ptrtoint ptr %is_audio to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %is_audio, align 1
  %is_output = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 8, i32 %i.087, i32 30
  %3 = ptrtoint ptr %is_output to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %is_output, align 8
  %is_dummy = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 8, i32 %i.087, i32 32
  %4 = ptrtoint ptr %is_dummy to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %is_dummy, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.087)
  %cmp2 = icmp ult i32 %i.087, 5
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %first_fifo_channel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %first_fifo_channel, align 8
  %add = add i32 %6, %i.087
  %conv = trunc i32 %add to i8
  %dma_channel = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 8, i32 %i.087, i32 20
  %7 = ptrtoint ptr %dma_channel to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %dma_channel, align 4
  %video_channel = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 8, i32 %i.087, i32 21
  %8 = ptrtoint ptr %video_channel to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %i.087, ptr %video_channel, align 8
  %mul = shl nuw nsw i32 %i.087, 2
  %shl = shl nuw nsw i32 128, %mul
  %dma_fifo_mask = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 8, i32 %i.087, i32 22
  %9 = ptrtoint ptr %dma_fifo_mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shl, ptr %dma_fifo_mask, align 4
  %shl4 = shl nuw nsw i32 32, %mul
  %adv_irq_mask = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 8, i32 %i.087, i32 23
  %10 = ptrtoint ptr %adv_irq_mask to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shl4, ptr %adv_irq_mask, align 8
  br label %do.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.087)
  %cmp5.not = icmp ne i32 %i.087, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %i.087)
  %cmp7 = icmp ult i32 %i.087, 11
  %or.cond = and i1 %cmp5.not, %cmp7
  br i1 %or.cond, label %if.then9, label %if.else16

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add nsw i32 %i.087, -6
  %conv11 = trunc i32 %i.087 to i8
  %dma_channel12 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 8, i32 %i.087, i32 20
  %11 = ptrtoint ptr %dma_channel12 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv11, ptr %dma_channel12, align 4
  %12 = ptrtoint ptr %is_audio to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %is_audio, align 1
  %video_channel14 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 8, i32 %i.087, i32 21
  %13 = ptrtoint ptr %video_channel14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub, ptr %video_channel14, align 8
  %dma_fifo_mask15 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 8, i32 %i.087, i32 22
  %14 = ptrtoint ptr %dma_fifo_mask15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 536870912, ptr %dma_fifo_mask15, align 4
  br label %do.end

if.else16:                                        ; preds = %if.else
  %15 = zext i32 %i.087 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %i.087, label %if.else34 [
    i32 5, label %if.then19
    i32 11, label %if.then28
  ]

if.then19:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %dma_channel20 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 11, ptr %dma_channel20, align 4
  %17 = ptrtoint ptr %is_output to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %is_output, align 8
  %18 = ptrtoint ptr %video_channel22 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 5, ptr %video_channel22, align 8
  %19 = ptrtoint ptr %dma_fifo_mask23 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 67108864, ptr %dma_fifo_mask23, align 4
  %20 = ptrtoint ptr %adv_irq_mask24 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16777216, ptr %adv_irq_mask24, align 8
  br label %do.end

if.then28:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %dma_channel29 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 12, ptr %dma_channel29, align 4
  %22 = ptrtoint ptr %is_audio to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %is_audio, align 1
  %23 = ptrtoint ptr %is_output to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %is_output, align 8
  %24 = ptrtoint ptr %video_channel32 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 5, ptr %video_channel32, align 8
  %25 = ptrtoint ptr %dma_fifo_mask33 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1073741824, ptr %dma_fifo_mask33, align 4
  br label %do.end

if.else34:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #13
  %26 = trunc i32 %i.087 to i8
  %conv36 = add nsw i8 %26, -6
  %dma_channel37 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 8, i32 %i.087, i32 20
  %27 = ptrtoint ptr %dma_channel37 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv36, ptr %dma_channel37, align 4
  br label %do.end

do.end:                                           ; preds = %if.else34, %if.then28, %if.then19, %if.then9, %if.then
  %dma_channel41 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 8, i32 %i.087, i32 20
  %28 = ptrtoint ptr %dma_channel41 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %dma_channel41, align 4
  %conv42 = zext i8 %29 to i32
  %video_channel43 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 8, i32 %i.087, i32 21
  %30 = ptrtoint ptr %video_channel43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %video_channel43, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %name, i32 noundef %i.087, i32 noundef %conv42, i32 noundef %31) #14
  %inc = add nuw nsw i32 %i.087, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.end, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cobalt_subdevs_init(ptr noundef %cobalt) unnamed_addr #0 align 64 {
entry:
  %sd_fmt = alloca %struct.v4l2_subdev_format, align 4
  %cobalt_edid = alloca %struct.v4l2_edid, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %streams = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 8
  %0 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 2
  %pci_lock.i = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 3
  %bar1.i.i = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 5
  %v4l2_dev = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %sd_fmt, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0212 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %sd_fmt) #11
  %3 = call ptr @memset(ptr %2, i32 0, i32 80)
  %4 = ptrtoint ptr %sd_fmt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %sd_fmt, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 6, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8209, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cobalt_edid) #11
  %7 = call ptr @memcpy(ptr %cobalt_edid, ptr @__const.cobalt_subdevs_hsma_init.cobalt_edid, i32 36)
  %pad_source = getelementptr %struct.cobalt_stream, ptr %streams, i32 %i.0212, i32 9
  %8 = ptrtoint ptr %pad_source to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 6, ptr %pad_source, align 8
  %arrayidx1 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 9, i32 %i.0212
  %i2c_adap3 = getelementptr %struct.cobalt_stream, ptr %streams, i32 %i.0212, i32 3
  %9 = ptrtoint ptr %i2c_adap3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx1, ptr %i2c_adap3, align 8
  %parent = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 9, i32 %i.0212, i32 9, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %cmp6 = icmp eq ptr %11, null
  br i1 %cmp6, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  %mul = shl i32 %i.0212, 2
  call void @mutex_lock_nested(ptr noundef %pci_lock.i, i32 noundef 0) #11
  %12 = ptrtoint ptr %bar1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bar1.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 1024
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !251
  %15 = call i32 @llvm.bswap.i32(i32 %14) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !252
  %shl.i = shl i32 32, %mul
  %or.i = or i32 %15, %shl.i
  %16 = ptrtoint ptr %bar1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bar1.i.i, align 8
  %add.ptr.i8.i = getelementptr i8, ptr %17, i32 1024
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !253
  call void @arm_heavy_mb() #11
  %18 = call i32 @llvm.bswap.i32(i32 %or.i) #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %18) #11, !srcloc !254
  call void @mutex_unlock(ptr noundef %pci_lock.i) #11
  %19 = ptrtoint ptr %i2c_adap3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_adap3, align 8
  %call = call ptr @v4l2_i2c_new_subdev_board(ptr noundef %v4l2_dev, ptr noundef %20, ptr noundef nonnull @cobalt_subdevs_init.adv7604_info, ptr noundef null) #11
  %sd = getelementptr %struct.cobalt_stream, ptr %streams, i32 %i.0212, i32 4
  %21 = ptrtoint ptr %sd to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call, ptr %sd, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  %22 = load i32, ptr @cobalt_ignore_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool13.not = icmp eq i32 %22, 0
  br i1 %tobool13.not, label %if.then12.cleanup.thread_crit_edge, label %if.then12.for.inc_crit_edge

if.then12.for.inc_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then12.cleanup.thread_crit_edge:               ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call, i32 0, i32 6
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %video, align 4
  %tobool21.not = icmp eq ptr %26, null
  br i1 %tobool21.not, label %if.else.cleanup.thread_crit_edge, label %land.lhs.true

if.else.cleanup.thread_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

land.lhs.true:                                    ; preds = %if.else
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %tobool24.not = icmp eq ptr %28, null
  br i1 %tobool24.not, label %land.lhs.true.cleanup.thread_crit_edge, label %if.else26

land.lhs.true.cleanup.thread_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.else26:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool27.not = icmp eq ptr %29, null
  br i1 %tobool27.not, label %if.else26.if.else34_crit_edge, label %land.lhs.true28

if.else26.if.else34_crit_edge:                    ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else34

land.lhs.true28:                                  ; preds = %if.else26
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %tobool30.not = icmp eq ptr %31, null
  br i1 %tobool30.not, label %land.lhs.true28.if.else34_crit_edge, label %land.lhs.true28.if.end41_crit_edge

land.lhs.true28.if.end41_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

land.lhs.true28.if.else34_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else34

if.else34:                                        ; preds = %land.lhs.true28.if.else34_crit_edge, %if.else26.if.else34_crit_edge
  br label %if.end41

if.end41:                                         ; preds = %if.else34, %land.lhs.true28.if.end41_crit_edge
  %.sink = phi ptr [ %28, %if.else34 ], [ %31, %land.lhs.true28.if.end41_crit_edge ]
  %call38 = call i32 %.sink(ptr noundef nonnull %call, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool42.not = icmp eq i32 %call38, 0
  br i1 %tobool42.not, label %if.end44, label %if.end41.cleanup.thread_crit_edge

if.end41.cleanup.thread_crit_edge:                ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.end44:                                         ; preds = %if.end41
  %32 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sd, align 4
  %tobool49.not = icmp eq ptr %33, null
  br i1 %tobool49.not, label %if.end44.cleanup.thread_crit_edge, label %if.else51

if.end44.cleanup.thread_crit_edge:                ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.else51:                                        ; preds = %if.end44
  %ops52 = getelementptr inbounds %struct.v4l2_subdev, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %ops52 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops52, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pad, align 4
  %tobool53.not = icmp eq ptr %37, null
  br i1 %tobool53.not, label %if.else51.cleanup.thread_crit_edge, label %land.lhs.true54

if.else51.cleanup.thread_crit_edge:               ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

land.lhs.true54:                                  ; preds = %if.else51
  %set_edid = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %set_edid to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %set_edid, align 4
  %tobool57.not = icmp eq ptr %39, null
  br i1 %tobool57.not, label %land.lhs.true54.cleanup.thread_crit_edge, label %if.else59

land.lhs.true54.cleanup.thread_crit_edge:         ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.else59:                                        ; preds = %land.lhs.true54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool60.not = icmp eq ptr %40, null
  br i1 %tobool60.not, label %if.else59.if.else67_crit_edge, label %land.lhs.true61

if.else59.if.else67_crit_edge:                    ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else67

land.lhs.true61:                                  ; preds = %if.else59
  %set_edid62 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %40, i32 0, i32 9
  %41 = ptrtoint ptr %set_edid62 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %set_edid62, align 4
  %tobool63.not = icmp eq ptr %42, null
  br i1 %tobool63.not, label %land.lhs.true61.if.else67_crit_edge, label %land.lhs.true61.if.end74_crit_edge

land.lhs.true61.if.end74_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

land.lhs.true61.if.else67_crit_edge:              ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else67

if.else67:                                        ; preds = %land.lhs.true61.if.else67_crit_edge, %if.else59.if.else67_crit_edge
  br label %if.end74

if.end74:                                         ; preds = %if.else67, %land.lhs.true61.if.end74_crit_edge
  %.sink214 = phi ptr [ %39, %if.else67 ], [ %42, %land.lhs.true61.if.end74_crit_edge ]
  %call71 = call i32 %.sink214(ptr noundef nonnull %33, ptr noundef nonnull %cobalt_edid) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool76.not = icmp eq i32 %call71, 0
  br i1 %tobool76.not, label %if.end78, label %if.end74.cleanup.thread_crit_edge

if.end74.cleanup.thread_crit_edge:                ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.end78:                                         ; preds = %if.end74
  %43 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sd, align 4
  %tobool83.not = icmp eq ptr %44, null
  br i1 %tobool83.not, label %if.end78.cleanup.thread_crit_edge, label %if.else85

if.end78.cleanup.thread_crit_edge:                ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.else85:                                        ; preds = %if.end78
  %ops86 = getelementptr inbounds %struct.v4l2_subdev, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %ops86 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops86, align 4
  %pad87 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %pad87 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pad87, align 4
  %tobool88.not = icmp eq ptr %48, null
  br i1 %tobool88.not, label %if.else85.cleanup.thread_crit_edge, label %land.lhs.true89

if.else85.cleanup.thread_crit_edge:               ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

land.lhs.true89:                                  ; preds = %if.else85
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %set_fmt, align 4
  %tobool92.not = icmp eq ptr %50, null
  br i1 %tobool92.not, label %land.lhs.true89.cleanup.thread_crit_edge, label %if.else94

land.lhs.true89.cleanup.thread_crit_edge:         ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.else94:                                        ; preds = %land.lhs.true89
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool95.not = icmp eq ptr %51, null
  br i1 %tobool95.not, label %if.else94.if.else102_crit_edge, label %land.lhs.true96

if.else94.if.else102_crit_edge:                   ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else102

land.lhs.true96:                                  ; preds = %if.else94
  %set_fmt97 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %set_fmt97 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %set_fmt97, align 4
  %tobool98.not = icmp eq ptr %53, null
  br i1 %tobool98.not, label %land.lhs.true96.if.else102_crit_edge, label %land.lhs.true96.if.end109_crit_edge

land.lhs.true96.if.end109_crit_edge:              ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

land.lhs.true96.if.else102_crit_edge:             ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else102

if.else102:                                       ; preds = %land.lhs.true96.if.else102_crit_edge, %if.else94.if.else102_crit_edge
  br label %if.end109

if.end109:                                        ; preds = %if.else102, %land.lhs.true96.if.end109_crit_edge
  %.sink215 = phi ptr [ %50, %if.else102 ], [ %53, %land.lhs.true96.if.end109_crit_edge ]
  %call106 = call i32 %.sink215(ptr noundef nonnull %44, ptr noundef null, ptr noundef nonnull %sd_fmt) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool111.not = icmp eq i32 %call106, 0
  br i1 %tobool111.not, label %if.end113, label %if.end109.cleanup.thread_crit_edge

if.end109.cleanup.thread_crit_edge:               ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.end113:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  call void @mutex_lock_nested(ptr noundef %pci_lock.i, i32 noundef 0) #11
  %54 = ptrtoint ptr %bar1.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bar1.i.i, align 8
  %add.ptr.i.i190 = getelementptr i8, ptr %55, i32 1024
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i190) #11, !srcloc !251
  %57 = call i32 @llvm.bswap.i32(i32 %56) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !252
  %shl.i191 = shl i32 16, %mul
  %neg.i192 = xor i32 %shl.i191, -1
  %and.i193 = and i32 %57, %neg.i192
  %58 = ptrtoint ptr %bar1.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bar1.i.i, align 8
  %add.ptr.i8.i194 = getelementptr i8, ptr %59, i32 1024
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !253
  call void @arm_heavy_mb() #11
  %60 = call i32 @llvm.bswap.i32(i32 %and.i193) #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i194, i32 %60) #11, !srcloc !254
  call void @mutex_unlock(ptr noundef %pci_lock.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %61(i32 noundef 429496000) #11
  call void @mutex_lock_nested(ptr noundef %pci_lock.i, i32 noundef 0) #11
  %62 = ptrtoint ptr %bar1.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bar1.i.i, align 8
  %add.ptr.i.i197 = getelementptr i8, ptr %63, i32 1024
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i197) #11, !srcloc !251
  %65 = call i32 @llvm.bswap.i32(i32 %64) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !252
  %or.i202 = or i32 %65, %shl.i191
  %66 = ptrtoint ptr %bar1.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bar1.i.i, align 8
  %add.ptr.i8.i203 = getelementptr i8, ptr %67, i32 1024
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !253
  call void @arm_heavy_mb() #11
  %68 = call i32 @llvm.bswap.i32(i32 %or.i202) #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i203, i32 %68) #11, !srcloc !254
  call void @mutex_unlock(ptr noundef %pci_lock.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %69(i32 noundef 214748000) #11
  %is_dummy = getelementptr %struct.cobalt_stream, ptr %streams, i32 %i.0212, i32 32
  %70 = ptrtoint ptr %is_dummy to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %is_dummy, align 2
  %add120 = add nuw nsw i32 %i.0212, 6
  %is_dummy122 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 8, i32 %add120, i32 32
  %71 = ptrtoint ptr %is_dummy122 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %is_dummy122, align 2
  br label %for.inc

cleanup.thread:                                   ; preds = %if.end109.cleanup.thread_crit_edge, %land.lhs.true89.cleanup.thread_crit_edge, %if.else85.cleanup.thread_crit_edge, %if.end78.cleanup.thread_crit_edge, %if.end74.cleanup.thread_crit_edge, %land.lhs.true54.cleanup.thread_crit_edge, %if.else51.cleanup.thread_crit_edge, %if.end44.cleanup.thread_crit_edge, %if.end41.cleanup.thread_crit_edge, %land.lhs.true.cleanup.thread_crit_edge, %if.else.cleanup.thread_crit_edge, %if.then12.cleanup.thread_crit_edge
  %retval.1.ph = phi i32 [ %call106, %if.end109.cleanup.thread_crit_edge ], [ %call71, %if.end74.cleanup.thread_crit_edge ], [ %call38, %if.end41.cleanup.thread_crit_edge ], [ -515, %land.lhs.true.cleanup.thread_crit_edge ], [ -515, %if.else.cleanup.thread_crit_edge ], [ -515, %if.else51.cleanup.thread_crit_edge ], [ -515, %land.lhs.true54.cleanup.thread_crit_edge ], [ -19, %if.end44.cleanup.thread_crit_edge ], [ -515, %if.else85.cleanup.thread_crit_edge ], [ -515, %land.lhs.true89.cleanup.thread_crit_edge ], [ -19, %if.end78.cleanup.thread_crit_edge ], [ -19, %if.then12.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cobalt_edid) #11
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sd_fmt) #11
  br label %cleanup125

for.inc:                                          ; preds = %if.end113, %if.then12.for.inc_crit_edge, %for.body.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cobalt_edid) #11
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sd_fmt) #11
  %inc = add nuw nsw i32 %i.0212, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.cleanup125_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup125_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup125

cleanup125:                                       ; preds = %for.inc.cleanup125_crit_edge, %cleanup.thread
  %retval.2 = phi i32 [ %retval.1.ph, %cleanup.thread ], [ 0, %for.inc.cleanup125_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cobalt_subdevs_hsma_init(ptr noundef %cobalt) unnamed_addr #0 align 64 {
entry:
  %sd_fmt = alloca %struct.v4l2_subdev_format, align 4
  %cobalt_edid = alloca %struct.v4l2_edid, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %sd_fmt) #11
  %0 = getelementptr inbounds i8, ptr %sd_fmt, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 80)
  %2 = ptrtoint ptr %sd_fmt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %sd_fmt, align 4
  %3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %3, align 4
  %5 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8209, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cobalt_edid) #11
  %7 = call ptr @memcpy(ptr %cobalt_edid, ptr @__const.cobalt_subdevs_hsma_init.cobalt_edid, i32 36)
  %arrayidx1 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 9, i32 4
  %i2c_adap2 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 8, i32 4, i32 3
  %8 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx1, ptr %i2c_adap2, align 8
  %parent = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 9, i32 4, i32 9, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 8
  %cmp = icmp eq ptr %10, null
  br i1 %cmp, label %entry.cleanup181_crit_edge, label %if.end

entry.cleanup181_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup181

if.end:                                           ; preds = %entry
  %pci_lock.i = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %pci_lock.i, i32 noundef 0) #11
  %bar1.i.i = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 5
  %11 = ptrtoint ptr %bar1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bar1.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 1024
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !252
  %14 = or i32 %13, 8192
  %15 = ptrtoint ptr %bar1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bar1.i.i, align 8
  %add.ptr.i8.i = getelementptr i8, ptr %16, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !253
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %14) #11, !srcloc !254
  tail call void @mutex_unlock(ptr noundef %pci_lock.i) #11
  %v4l2_dev = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 2
  %17 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_adap2, align 8
  %call = tail call ptr @v4l2_i2c_new_subdev_board(ptr noundef %v4l2_dev, ptr noundef %18, ptr noundef nonnull @cobalt_subdevs_hsma_init.adv7842_info, ptr noundef null) #11
  %sd = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 8, i32 4, i32 4
  %19 = ptrtoint ptr %sd to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call, ptr %sd, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end71, label %if.else

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call, i32 0, i32 6
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pad, align 4
  %tobool10.not = icmp eq ptr %23, null
  br i1 %tobool10.not, label %if.else.cleanup181_crit_edge, label %land.lhs.true

if.else.cleanup181_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup181

land.lhs.true:                                    ; preds = %if.else
  %set_edid = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %set_edid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_edid, align 4
  %tobool13.not = icmp eq ptr %25, null
  br i1 %tobool13.not, label %land.lhs.true.cleanup181_crit_edge, label %if.else15

land.lhs.true.cleanup181_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup181

if.else15:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool16.not = icmp eq ptr %26, null
  br i1 %tobool16.not, label %if.else15.if.else23_crit_edge, label %land.lhs.true17

if.else15.if.else23_crit_edge:                    ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else23

land.lhs.true17:                                  ; preds = %if.else15
  %set_edid18 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %set_edid18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_edid18, align 4
  %tobool19.not = icmp eq ptr %28, null
  br i1 %tobool19.not, label %land.lhs.true17.if.else23_crit_edge, label %land.lhs.true17.if.end30_crit_edge

land.lhs.true17.if.end30_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

land.lhs.true17.if.else23_crit_edge:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else23

if.else23:                                        ; preds = %land.lhs.true17.if.else23_crit_edge, %if.else15.if.else23_crit_edge
  br label %if.end30

if.end30:                                         ; preds = %if.else23, %land.lhs.true17.if.end30_crit_edge
  %.sink = phi ptr [ %25, %if.else23 ], [ %28, %land.lhs.true17.if.end30_crit_edge ]
  %call27 = call i32 %.sink(ptr noundef nonnull %call, ptr noundef nonnull %cobalt_edid) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool31.not = icmp eq i32 %call27, 0
  br i1 %tobool31.not, label %if.end33, label %if.end30.cleanup181_crit_edge

if.end30.cleanup181_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup181

if.end33:                                         ; preds = %if.end30
  %29 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sd, align 4
  %tobool37.not = icmp eq ptr %30, null
  br i1 %tobool37.not, label %if.end33.cleanup181_crit_edge, label %if.else39

if.end33.cleanup181_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup181

if.else39:                                        ; preds = %if.end33
  %ops40 = getelementptr inbounds %struct.v4l2_subdev, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %ops40 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops40, align 4
  %pad41 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %pad41 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pad41, align 4
  %tobool42.not = icmp eq ptr %34, null
  br i1 %tobool42.not, label %if.else39.cleanup181_crit_edge, label %land.lhs.true43

if.else39.cleanup181_crit_edge:                   ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup181

land.lhs.true43:                                  ; preds = %if.else39
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_fmt, align 4
  %tobool46.not = icmp eq ptr %36, null
  br i1 %tobool46.not, label %land.lhs.true43.cleanup181_crit_edge, label %if.else48

land.lhs.true43.cleanup181_crit_edge:             ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup181

if.else48:                                        ; preds = %land.lhs.true43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool49.not = icmp eq ptr %37, null
  br i1 %tobool49.not, label %if.else48.if.else56_crit_edge, label %land.lhs.true50

if.else48.if.else56_crit_edge:                    ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else56

land.lhs.true50:                                  ; preds = %if.else48
  %set_fmt51 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %set_fmt51 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %set_fmt51, align 4
  %tobool52.not = icmp eq ptr %39, null
  br i1 %tobool52.not, label %land.lhs.true50.if.else56_crit_edge, label %land.lhs.true50.if.end63_crit_edge

land.lhs.true50.if.end63_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

land.lhs.true50.if.else56_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else56

if.else56:                                        ; preds = %land.lhs.true50.if.else56_crit_edge, %if.else48.if.else56_crit_edge
  br label %if.end63

if.end63:                                         ; preds = %if.else56, %land.lhs.true50.if.end63_crit_edge
  %.sink310 = phi ptr [ %36, %if.else56 ], [ %39, %land.lhs.true50.if.end63_crit_edge ]
  %call60 = call i32 %.sink310(ptr noundef nonnull %30, ptr noundef null, ptr noundef nonnull %sd_fmt) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool65.not = icmp eq i32 %call60, 0
  br i1 %tobool65.not, label %if.end67, label %if.end63.cleanup181_crit_edge

if.end63.cleanup181_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup181

if.end67:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  %have_hsma_rx = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 11
  %40 = ptrtoint ptr %have_hsma_rx to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %have_hsma_rx, align 8
  %pad_source = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 8, i32 4, i32 9
  %41 = ptrtoint ptr %pad_source to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 3, ptr %pad_source, align 8
  %is_dummy = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 8, i32 4, i32 32
  %42 = ptrtoint ptr %is_dummy to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %is_dummy, align 2
  %is_dummy70 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 8, i32 10, i32 32
  %43 = ptrtoint ptr %is_dummy70 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %is_dummy70, align 2
  call void @mutex_lock_nested(ptr noundef %pci_lock.i, i32 noundef 0) #11
  %44 = ptrtoint ptr %bar1.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bar1.i.i, align 8
  %add.ptr.i.i267 = getelementptr i8, ptr %45, i32 1024
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i267) #11, !srcloc !251
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !252
  %47 = and i32 %46, -4097
  %48 = ptrtoint ptr %bar1.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bar1.i.i, align 8
  %add.ptr.i8.i269 = getelementptr i8, ptr %49, i32 1024
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !253
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i269, i32 %47) #11, !srcloc !254
  call void @mutex_unlock(ptr noundef %pci_lock.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %50(i32 noundef 429496000) #11
  call void @mutex_lock_nested(ptr noundef %pci_lock.i, i32 noundef 0) #11
  %51 = ptrtoint ptr %bar1.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bar1.i.i, align 8
  %add.ptr.i.i272 = getelementptr i8, ptr %52, i32 1024
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i272) #11, !srcloc !251
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !252
  %54 = or i32 %53, 4096
  %55 = ptrtoint ptr %bar1.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bar1.i.i, align 8
  %add.ptr.i8.i275 = getelementptr i8, ptr %56, i32 1024
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !253
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i275, i32 %54) #11, !srcloc !254
  call void @mutex_unlock(ptr noundef %pci_lock.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %57(i32 noundef 214748000) #11
  br label %cleanup181

if.end71:                                         ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef %pci_lock.i, i32 noundef 0) #11
  %58 = ptrtoint ptr %bar1.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bar1.i.i, align 8
  %add.ptr.i.i278 = getelementptr i8, ptr %59, i32 1024
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i278) #11, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !252
  %61 = and i32 %60, -8193
  %62 = ptrtoint ptr %bar1.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bar1.i.i, align 8
  %add.ptr.i8.i280 = getelementptr i8, ptr %63, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !253
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i280, i32 %61) #11, !srcloc !254
  tail call void @mutex_unlock(ptr noundef %pci_lock.i) #11
  tail call void @mutex_lock_nested(ptr noundef %pci_lock.i, i32 noundef 0) #11
  %64 = ptrtoint ptr %bar1.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bar1.i.i, align 8
  %add.ptr.i.i283 = getelementptr i8, ptr %65, i32 1024
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i283) #11, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !252
  %67 = and i32 %66, -2
  %68 = ptrtoint ptr %bar1.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bar1.i.i, align 8
  %add.ptr.i8.i285 = getelementptr i8, ptr %69, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !253
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i285, i32 %67) #11, !srcloc !254
  tail call void @mutex_unlock(ptr noundef %pci_lock.i) #11
  %i2c_adap74 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 8, i32 5, i32 3
  %70 = ptrtoint ptr %i2c_adap74 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %arrayidx1, ptr %i2c_adap74, align 8
  %call77 = tail call ptr @v4l2_i2c_new_subdev_board(ptr noundef %v4l2_dev, ptr noundef %arrayidx1, ptr noundef nonnull @cobalt_subdevs_hsma_init.adv7511_info, ptr noundef null) #11
  %sd78 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 8, i32 5, i32 4
  %71 = ptrtoint ptr %sd78 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call77, ptr %sd78, align 4
  %tobool80.not = icmp eq ptr %call77, null
  br i1 %tobool80.not, label %if.end71.cleanup181_crit_edge, label %if.then81

if.end71.cleanup181_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup181

if.then81:                                        ; preds = %if.end71
  tail call void @mutex_lock_nested(ptr noundef %pci_lock.i, i32 noundef 0) #11
  %72 = ptrtoint ptr %bar1.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bar1.i.i, align 8
  %add.ptr.i.i288 = getelementptr i8, ptr %73, i32 1024
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i288) #11, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !252
  %75 = or i32 %74, 33554432
  %76 = ptrtoint ptr %bar1.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bar1.i.i, align 8
  %add.ptr.i8.i291 = getelementptr i8, ptr %77, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !253
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i291, i32 %75) #11, !srcloc !254
  tail call void @mutex_unlock(ptr noundef %pci_lock.i) #11
  tail call void @mutex_lock_nested(ptr noundef %pci_lock.i, i32 noundef 0) #11
  %78 = ptrtoint ptr %bar1.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bar1.i.i, align 8
  %add.ptr.i.i294 = getelementptr i8, ptr %79, i32 1024
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i294) #11, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !252
  %81 = and i32 %80, -4097
  %82 = ptrtoint ptr %bar1.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bar1.i.i, align 8
  %add.ptr.i8.i296 = getelementptr i8, ptr %83, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !253
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i296, i32 %81) #11, !srcloc !254
  tail call void @mutex_unlock(ptr noundef %pci_lock.i) #11
  tail call void @mutex_lock_nested(ptr noundef %pci_lock.i, i32 noundef 0) #11
  %84 = ptrtoint ptr %bar1.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bar1.i.i, align 8
  %add.ptr.i.i299 = getelementptr i8, ptr %85, i32 1024
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i299) #11, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !252
  %87 = or i32 %86, 2
  %88 = ptrtoint ptr %bar1.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bar1.i.i, align 8
  %add.ptr.i8.i302 = getelementptr i8, ptr %89, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !253
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i302, i32 %87) #11, !srcloc !254
  tail call void @mutex_unlock(ptr noundef %pci_lock.i) #11
  %have_hsma_tx = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 12
  %90 = ptrtoint ptr %have_hsma_tx to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %have_hsma_tx, align 1
  %91 = ptrtoint ptr %sd78 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %sd78, align 4
  %tobool85.not = icmp eq ptr %92, null
  br i1 %tobool85.not, label %if.then81.if.end171_crit_edge, label %if.else87

if.then81.if.end171_crit_edge:                    ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end171

if.else87:                                        ; preds = %if.then81
  %ops88 = getelementptr inbounds %struct.v4l2_subdev, ptr %92, i32 0, i32 6
  %93 = ptrtoint ptr %ops88 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ops88, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  %tobool89.not = icmp eq ptr %96, null
  br i1 %tobool89.not, label %if.else87.if.end110_crit_edge, label %land.lhs.true90

if.else87.if.end110_crit_edge:                    ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end110

land.lhs.true90:                                  ; preds = %if.else87
  %s_power = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %96, i32 0, i32 10
  %97 = ptrtoint ptr %s_power to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %s_power, align 4
  %tobool93.not = icmp eq ptr %98, null
  br i1 %tobool93.not, label %land.lhs.true90.if.end110_crit_edge, label %if.else95

land.lhs.true90.if.end110_crit_edge:              ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end110

if.else95:                                        ; preds = %land.lhs.true90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %99 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool96.not = icmp eq ptr %99, null
  br i1 %tobool96.not, label %if.else95.if.else103_crit_edge, label %land.lhs.true97

if.else95.if.else103_crit_edge:                   ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else103

land.lhs.true97:                                  ; preds = %if.else95
  %s_power98 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %99, i32 0, i32 10
  %100 = ptrtoint ptr %s_power98 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %s_power98, align 4
  %tobool99.not = icmp eq ptr %101, null
  br i1 %tobool99.not, label %land.lhs.true97.if.else103_crit_edge, label %land.lhs.true97.if.end110.sink.split_crit_edge

land.lhs.true97.if.end110.sink.split_crit_edge:   ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end110.sink.split

land.lhs.true97.if.else103_crit_edge:             ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else103

if.else103:                                       ; preds = %land.lhs.true97.if.else103_crit_edge, %if.else95.if.else103_crit_edge
  br label %if.end110.sink.split

if.end110.sink.split:                             ; preds = %if.else103, %land.lhs.true97.if.end110.sink.split_crit_edge
  %.sink311 = phi ptr [ %98, %if.else103 ], [ %101, %land.lhs.true97.if.end110.sink.split_crit_edge ]
  %call107 = tail call i32 %.sink311(ptr noundef nonnull %92, i32 noundef 1) #11
  br label %if.end110

if.end110:                                        ; preds = %if.end110.sink.split, %land.lhs.true90.if.end110_crit_edge, %if.else87.if.end110_crit_edge
  %102 = ptrtoint ptr %sd78 to i32
  call void @__asan_load4_noabort(i32 %102)
  %.pr = load ptr, ptr %sd78, align 4
  %tobool115.not = icmp eq ptr %.pr, null
  br i1 %tobool115.not, label %if.end110.if.end171_crit_edge, label %if.else117

if.end110.if.end171_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end171

if.else117:                                       ; preds = %if.end110
  %ops118 = getelementptr inbounds %struct.v4l2_subdev, ptr %.pr, i32 0, i32 6
  %103 = ptrtoint ptr %ops118 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ops118, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %104, i32 0, i32 3
  %105 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %video, align 4
  %tobool119.not = icmp eq ptr %106, null
  br i1 %tobool119.not, label %if.else117.if.end140_crit_edge, label %land.lhs.true120

if.else117.if.end140_crit_edge:                   ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end140

land.lhs.true120:                                 ; preds = %if.else117
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %106, i32 0, i32 10
  %107 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %s_stream, align 4
  %tobool123.not = icmp eq ptr %108, null
  br i1 %tobool123.not, label %land.lhs.true120.if.end140_crit_edge, label %if.else125

land.lhs.true120.if.end140_crit_edge:             ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end140

if.else125:                                       ; preds = %land.lhs.true120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %109 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool126.not = icmp eq ptr %109, null
  br i1 %tobool126.not, label %if.else125.if.else133_crit_edge, label %land.lhs.true127

if.else125.if.else133_crit_edge:                  ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else133

land.lhs.true127:                                 ; preds = %if.else125
  %s_stream128 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %109, i32 0, i32 10
  %110 = ptrtoint ptr %s_stream128 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %s_stream128, align 4
  %tobool129.not = icmp eq ptr %111, null
  br i1 %tobool129.not, label %land.lhs.true127.if.else133_crit_edge, label %land.lhs.true127.if.end140.sink.split_crit_edge

land.lhs.true127.if.end140.sink.split_crit_edge:  ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end140.sink.split

land.lhs.true127.if.else133_crit_edge:            ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else133

if.else133:                                       ; preds = %land.lhs.true127.if.else133_crit_edge, %if.else125.if.else133_crit_edge
  br label %if.end140.sink.split

if.end140.sink.split:                             ; preds = %if.else133, %land.lhs.true127.if.end140.sink.split_crit_edge
  %.sink312 = phi ptr [ %108, %if.else133 ], [ %111, %land.lhs.true127.if.end140.sink.split_crit_edge ]
  %call137 = tail call i32 %.sink312(ptr noundef nonnull %.pr, i32 noundef 1) #11
  br label %if.end140

if.end140:                                        ; preds = %if.end140.sink.split, %land.lhs.true120.if.end140_crit_edge, %if.else117.if.end140_crit_edge
  %112 = ptrtoint ptr %sd78 to i32
  call void @__asan_load4_noabort(i32 %112)
  %.pr308 = load ptr, ptr %sd78, align 4
  %tobool145.not = icmp eq ptr %.pr308, null
  br i1 %tobool145.not, label %if.end140.if.end171_crit_edge, label %if.else147

if.end140.if.end171_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end171

if.else147:                                       ; preds = %if.end140
  %ops148 = getelementptr inbounds %struct.v4l2_subdev, ptr %.pr308, i32 0, i32 6
  %113 = ptrtoint ptr %ops148 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ops148, align 4
  %audio = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %audio, align 4
  %tobool149.not = icmp eq ptr %116, null
  br i1 %tobool149.not, label %if.else147.if.end171_crit_edge, label %land.lhs.true150

if.else147.if.end171_crit_edge:                   ; preds = %if.else147
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end171

land.lhs.true150:                                 ; preds = %if.else147
  %s_stream153 = getelementptr inbounds %struct.v4l2_subdev_audio_ops, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %s_stream153 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %s_stream153, align 4
  %tobool154.not = icmp eq ptr %118, null
  br i1 %tobool154.not, label %land.lhs.true150.if.end171_crit_edge, label %if.else156

land.lhs.true150.if.end171_crit_edge:             ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end171

if.else156:                                       ; preds = %land.lhs.true150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 2) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 2), align 4
  %tobool157.not = icmp eq ptr %119, null
  br i1 %tobool157.not, label %if.else156.if.else164_crit_edge, label %land.lhs.true158

if.else156.if.else164_crit_edge:                  ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else164

land.lhs.true158:                                 ; preds = %if.else156
  %s_stream159 = getelementptr inbounds %struct.v4l2_subdev_audio_ops, ptr %119, i32 0, i32 3
  %120 = ptrtoint ptr %s_stream159 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %s_stream159, align 4
  %tobool160.not = icmp eq ptr %121, null
  br i1 %tobool160.not, label %land.lhs.true158.if.else164_crit_edge, label %land.lhs.true158.if.end171.sink.split_crit_edge

land.lhs.true158.if.end171.sink.split_crit_edge:  ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end171.sink.split

land.lhs.true158.if.else164_crit_edge:            ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else164

if.else164:                                       ; preds = %land.lhs.true158.if.else164_crit_edge, %if.else156.if.else164_crit_edge
  br label %if.end171.sink.split

if.end171.sink.split:                             ; preds = %if.else164, %land.lhs.true158.if.end171.sink.split_crit_edge
  %.sink313 = phi ptr [ %118, %if.else164 ], [ %121, %land.lhs.true158.if.end171.sink.split_crit_edge ]
  %call168 = tail call i32 %.sink313(ptr noundef nonnull %.pr308, i32 noundef 1) #11
  br label %if.end171

if.end171:                                        ; preds = %if.end171.sink.split, %land.lhs.true150.if.end171_crit_edge, %if.else147.if.end171_crit_edge, %if.end140.if.end171_crit_edge, %if.end110.if.end171_crit_edge, %if.then81.if.end171_crit_edge
  %122 = ptrtoint ptr %sd78 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %sd78, align 4
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %123, i32 0, i32 8
  %124 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ctrl_handler, align 4
  %call174 = tail call ptr @v4l2_ctrl_find(ptr noundef %125, i32 noundef 10488068) #11
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call174, i32 0, i32 2
  %126 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %129, i32 noundef 0) #11
  %call.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %call174, i32 noundef 1) #11
  %130 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %handler.i.i, align 8
  %lock.i2.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %lock.i2.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %lock.i2.i, align 4
  tail call void @mutex_unlock(ptr noundef %133) #11
  %is_dummy176 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 8, i32 5, i32 32
  %134 = ptrtoint ptr %is_dummy176 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %is_dummy176, align 2
  %is_dummy179 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 8, i32 11, i32 32
  %135 = ptrtoint ptr %is_dummy179 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %is_dummy179, align 2
  br label %cleanup181

cleanup181:                                       ; preds = %if.end171, %if.end71.cleanup181_crit_edge, %if.end67, %if.end63.cleanup181_crit_edge, %land.lhs.true43.cleanup181_crit_edge, %if.else39.cleanup181_crit_edge, %if.end33.cleanup181_crit_edge, %if.end30.cleanup181_crit_edge, %land.lhs.true.cleanup181_crit_edge, %if.else.cleanup181_crit_edge, %entry.cleanup181_crit_edge
  %retval.1 = phi i32 [ 0, %if.end171 ], [ 0, %entry.cleanup181_crit_edge ], [ 0, %if.end67 ], [ %call27, %if.end30.cleanup181_crit_edge ], [ %call60, %if.end63.cleanup181_crit_edge ], [ -19, %if.end71.cleanup181_crit_edge ], [ -515, %land.lhs.true.cleanup181_crit_edge ], [ -515, %if.else.cleanup181_crit_edge ], [ -515, %if.else39.cleanup181_crit_edge ], [ -515, %land.lhs.true43.cleanup181_crit_edge ], [ -19, %if.end33.cleanup181_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cobalt_edid) #11
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sd_fmt) #11
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cobalt_nodes_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cobalt_set_interrupt(ptr nocapture noundef readonly %cobalt, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %have_hsma_rx = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 11
  %0 = ptrtoint ptr %have_hsma_rx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %have_hsma_rx, align 8, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  %spec.select = select i1 %tobool1.not, i32 537849568, i32 552529632
  %have_hsma_tx = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 12
  %2 = ptrtoint ptr %have_hsma_tx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %have_hsma_tx, align 1, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  %or5 = or i32 %spec.select, 1157627904
  %irqs.1 = select i1 %tobool3.not, i32 %spec.select, i32 %or5
  %bar1.i = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 5
  %4 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 1292
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !253
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #11, !srcloc !254
  %6 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i15 = getelementptr i8, ptr %7, i32 1288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !253
  tail call void @arm_heavy_mb() #11
  %8 = tail call i32 @llvm.bswap.i32(i32 %irqs.1) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %8) #11, !srcloc !254
  br label %if.end7

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bar1.i16 = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 5
  %9 = ptrtoint ptr %bar1.i16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bar1.i16, align 8
  %add.ptr.i17 = getelementptr i8, ptr %10, i32 1288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !253
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 0) #11, !srcloc !254
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cobalt_flash_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cobalt_i2c_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cobalt_s_bit_sysctrl(ptr noundef %cobalt, i32 noundef %bit, i32 noundef %val) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %pci_lock = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %pci_lock, i32 noundef 0) #11
  %bar1.i = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 5
  %0 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 1024
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !251
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !252
  %shl = shl nuw i32 1, %bit
  %neg = xor i32 %shl, -1
  %and = and i32 %3, %neg
  %shl1 = shl i32 %val, %bit
  %or = or i32 %and, %shl1
  %4 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i8 = getelementptr i8, ptr %5, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !253
  tail call void @arm_heavy_mb() #11
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %6) #11, !srcloc !254
  tail call void @mutex_unlock(ptr noundef %pci_lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cobalt_pci_iounmap(ptr nocapture noundef %cobalt, ptr noundef %pci_dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bar0 = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 4
  %0 = ptrtoint ptr %bar0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bar0, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_iounmap(ptr noundef %pci_dev, ptr noundef nonnull %1) #11
  %2 = ptrtoint ptr %bar0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bar0, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bar1 = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 5
  %3 = ptrtoint ptr %bar1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bar1, align 8
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_iounmap(ptr noundef %pci_dev, ptr noundef nonnull %4) #11
  %5 = ptrtoint ptr %bar1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %bar1, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcie_bus_link_get_lanes(ptr nocapture noundef readonly %cobalt) unnamed_addr #0 align 64 {
entry:
  %link = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev1 = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 1
  %0 = ptrtoint ptr %pci_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev1, align 4
  %bus = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 8
  %self = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %self, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link) #11
  %6 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %link, align 4, !annotation !247
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 19
  %7 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.i.not = icmp eq i8 %8, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = call i32 @pcie_capability_read_dword(ptr noundef %5, i32 noundef 12, ptr noundef nonnull %link) #11
  %9 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %link, align 4
  %and = lshr i32 %10, 4
  %shr = and i32 %and, 63
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %shr, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cobalt_irq_handler(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omni_sg_dma_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_new_subdev_board(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cobalt_flash_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cobalt_nodes_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !64, !66, !67, !68, !70, !72, !74, !76, !77, !79, !81, !83, !84, !86, !87, !88, !89, !91, !93, !94, !95, !97, !99, !100, !101, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !216, !217, !218, !219, !221, !223, !225, !227, !229, !231, !233, !235, !236, !237}
!llvm.module.flags = !{!238, !239, !240, !241, !242, !243, !244, !245}
!llvm.ident = !{!246}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 38, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype300, !1, !"__UNIQUE_ID_debugtype300", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug301, !4, !"__UNIQUE_ID_debug301", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 39, i32 1}
!5 = !{ptr @__param_ignore_err, !6, !"__param_ignore_err", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 42, i32 1}
!7 = !{ptr @__UNIQUE_ID_ignore_errtype302, !6, !"__UNIQUE_ID_ignore_errtype302", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_ignore_err303, !9, !"__UNIQUE_ID_ignore_err303", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 43, i32 1}
!10 = !{ptr @__UNIQUE_ID_author304, !11, !"__UNIQUE_ID_author304", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 46, i32 1}
!12 = !{ptr @__UNIQUE_ID_description305, !13, !"__UNIQUE_ID_description305", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 47, i32 1}
!14 = !{ptr @__UNIQUE_ID_file306, !15, !"__UNIQUE_ID_file306", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 48, i32 1}
!16 = !{ptr @__UNIQUE_ID_license307, !15, !"__UNIQUE_ID_license307", i1 false, i1 false}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 199, i32 2}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @cobalt_pcie_status_show._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @cobalt_pcie_status_show._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 201, i32 2}
!25 = !{ptr @cobalt_pcie_status_show._entry.3, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @cobalt_pcie_status_show._entry_ptr.5, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 205, i32 2}
!29 = !{ptr @cobalt_pcie_status_show._entry.6, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @cobalt_pcie_status_show._entry_ptr.8, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 211, i32 2}
!33 = !{ptr @cobalt_pcie_status_show._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @cobalt_pcie_status_show._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 214, i32 2}
!37 = !{ptr @cobalt_pcie_status_show._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @cobalt_pcie_status_show._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 215, i32 2}
!41 = !{ptr @cobalt_pcie_status_show._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @cobalt_pcie_status_show._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 221, i32 2}
!45 = !{ptr @cobalt_pcie_status_show._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @cobalt_pcie_status_show._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 229, i32 2}
!49 = !{ptr @cobalt_pcie_status_show._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @cobalt_pcie_status_show._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 230, i32 2}
!53 = !{ptr @cobalt_pcie_status_show._entry.24, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @cobalt_pcie_status_show._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 231, i32 2}
!57 = !{ptr @cobalt_pcie_status_show._entry.27, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @cobalt_pcie_status_show._entry_ptr.29, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @__initcall__kmod_cobalt__308_797_cobalt_pci_driver_init6, !60, !"__initcall__kmod_cobalt__308_797_cobalt_pci_driver_init6", i1 false, i1 false}
!60 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 797, i32 1}
!61 = !{ptr @__exitcall_cobalt_pci_driver_exit, !60, !"__exitcall_cobalt_pci_driver_exit", i1 false, i1 false}
!62 = !{ptr @cobalt_debug, !63, !"cobalt_debug", i1 false, i1 false}
!63 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 37, i32 5}
!64 = !{ptr @cobalt_ignore_err, !65, !"cobalt_ignore_err", i1 false, i1 false}
!65 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 41, i32 5}
!66 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!67 = !{ptr @__param_str_ignore_err, !6, !"__param_str_ignore_err", i1 false, i1 false}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 178, i32 17}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 179, i32 17}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 180, i32 17}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 182, i32 9}
!76 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @cobalt_pci_driver, !78, !"cobalt_pci_driver", i1 false, i1 false}
!78 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 790, i32 26}
!79 = !{ptr @cobalt_pci_tbl, !80, !"cobalt_pci_tbl", i1 false, i1 false}
!80 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 27, i32 35}
!81 = !{ptr @cobalt_probe.__key, !82, !"__key", i1 false, i1 false}
!82 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 670, i32 2}
!83 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 674, i32 3}
!86 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @cobalt_probe._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @cobalt_probe._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 680, i32 4}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 682, i32 2}
!93 = !{ptr @cobalt_probe._entry.39, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @cobalt_probe._entry_ptr.41, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 685, i32 3}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 687, i32 3}
!99 = !{ptr @cobalt_probe._entry.43, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @cobalt_probe._entry_ptr.45, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @cobalt_probe.__key.46, !102, !"__key", i1 false, i1 false}
!102 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 692, i32 2}
!103 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 701, i32 3}
!106 = !{ptr @cobalt_probe._entry.48, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @cobalt_probe._entry_ptr.50, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 703, i32 3}
!110 = !{ptr @cobalt_probe._entry.51, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @cobalt_probe._entry_ptr.53, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 724, i32 3}
!114 = !{ptr @cobalt_probe._entry.54, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @cobalt_probe._entry_ptr.56, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 731, i32 2}
!118 = !{ptr @cobalt_probe._entry.57, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @cobalt_probe._entry_ptr.59, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 748, i32 2}
!122 = !{ptr @cobalt_probe._entry.60, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @cobalt_probe._entry_ptr.62, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @cobalt_instance, !125, !"cobalt_instance", i1 false, i1 false}
!125 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 35, i32 17}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 150, i32 3}
!128 = !{ptr @.str.64, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @cobalt_notify._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @cobalt_notify._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.66, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 153, i32 3}
!133 = !{ptr @cobalt_notify._entry.65, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @cobalt_notify._entry_ptr.67, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.68, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 131, i32 2}
!137 = !{ptr @.str.69, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @cobalt_get_sd_nr._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @cobalt_get_sd_nr._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 302, i32 2}
!142 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @cobalt_setup_pci._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @cobalt_setup_pci._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.73, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 306, i32 3}
!147 = !{ptr @cobalt_setup_pci._entry.72, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @cobalt_setup_pci._entry_ptr.74, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.76, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 315, i32 3}
!151 = !{ptr @cobalt_setup_pci._entry.75, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @cobalt_setup_pci._entry_ptr.77, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.79, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 318, i32 3}
!155 = !{ptr @cobalt_setup_pci._entry.78, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @cobalt_setup_pci._entry_ptr.80, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.82, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 323, i32 3}
!159 = !{ptr @cobalt_setup_pci._entry.81, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @cobalt_setup_pci._entry_ptr.83, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.85, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 326, i32 4}
!163 = !{ptr @cobalt_setup_pci._entry.84, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @cobalt_setup_pci._entry_ptr.86, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.88, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 329, i32 4}
!167 = !{ptr @cobalt_setup_pci._entry.87, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @cobalt_setup_pci._entry_ptr.89, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.91, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 338, i32 4}
!171 = !{ptr @cobalt_setup_pci._entry.90, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @cobalt_setup_pci._entry_ptr.92, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.94, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 345, i32 3}
!175 = !{ptr @cobalt_setup_pci._entry.93, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @cobalt_setup_pci._entry_ptr.95, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.97, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 355, i32 3}
!179 = !{ptr @cobalt_setup_pci._entry.96, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @cobalt_setup_pci._entry_ptr.98, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.100, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 371, i32 3}
!183 = !{ptr @cobalt_setup_pci._entry.99, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @cobalt_setup_pci._entry_ptr.101, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.103, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 380, i32 3}
!187 = !{ptr @cobalt_setup_pci._entry.102, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @cobalt_setup_pci._entry_ptr.104, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.105, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 262, i32 2}
!191 = !{ptr @.str.106, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @msi_config_show._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @msi_config_show._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.107, !190, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.108, !190, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.110, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 263, i32 2}
!198 = !{ptr @msi_config_show._entry.109, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @msi_config_show._entry_ptr.111, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.113, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 266, i32 3}
!202 = !{ptr @msi_config_show._entry.112, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @msi_config_show._entry_ptr.114, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.116, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 271, i32 3}
!206 = !{ptr @msi_config_show._entry.115, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @msi_config_show._entry_ptr.117, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.119, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 274, i32 3}
!210 = !{ptr @msi_config_show._entry.118, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @msi_config_show._entry_ptr.120, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.121, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 408, i32 31}
!214 = !{ptr @.str.122, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 462, i32 3}
!216 = !{ptr @.str.123, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @cobalt_stream_struct_init._entry, !215, !"_entry", i1 false, i1 false}
!218 = !{ptr @cobalt_stream_struct_init._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @cobalt_subdevs_init.adv7604_pdata, !220, !"adv7604_pdata", i1 false, i1 false}
!220 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 469, i32 38}
!221 = !{ptr @cobalt_subdevs_init.adv7604_info, !222, !"adv7604_info", i1 false, i1 false}
!222 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 483, i32 31}
!223 = !{ptr @edid, !224, !"edid", i1 false, i1 false}
!224 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 50, i32 11}
!225 = !{ptr @cobalt_subdevs_hsma_init.adv7842_pdata, !226, !"adv7842_pdata", i1 false, i1 false}
!226 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 546, i32 38}
!227 = !{ptr @cobalt_subdevs_hsma_init.adv7842_info, !228, !"adv7842_info", i1 false, i1 false}
!228 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 570, i32 31}
!229 = !{ptr @cobalt_subdevs_hsma_init.adv7511_pdata, !230, !"adv7511_pdata", i1 false, i1 false}
!230 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 580, i32 38}
!231 = !{ptr @cobalt_subdevs_hsma_init.adv7511_info, !232, !"adv7511_info", i1 false, i1 false}
!232 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 586, i32 31}
!233 = !{ptr @.str.124, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/media/pci/cobalt/cobalt-driver.c", i32 783, i32 2}
!235 = !{ptr @.str.125, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @cobalt_remove._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @cobalt_remove._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{i32 1, !"wchar_size", i32 2}
!239 = !{i32 1, !"min_enum_size", i32 4}
!240 = !{i32 8, !"branch-target-enforcement", i32 0}
!241 = !{i32 8, !"sign-return-address", i32 0}
!242 = !{i32 8, !"sign-return-address-all", i32 0}
!243 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!244 = !{i32 7, !"uwtable", i32 1}
!245 = !{i32 7, !"frame-pointer", i32 2}
!246 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!247 = !{!"auto-init"}
!248 = !{i64 2148295407}
!249 = !{i64 2148210716, i64 2148210748, i64 2148210777, i64 2148210811, i64 2148210842, i64 2148210865}
!250 = !{i64 2148295636}
!251 = !{i64 6551563}
!252 = !{i64 2154084422}
!253 = !{i64 2154085777}
!254 = !{i64 6551145}
!255 = !{i8 0, i8 2}
!256 = !{i32 0, i32 64}
!257 = !{i64 6551343}
!258 = !{i64 2154083198}
