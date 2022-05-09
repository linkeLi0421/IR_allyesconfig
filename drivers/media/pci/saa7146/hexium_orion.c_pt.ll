; ModuleID = '/llk/IR_all_yes/drivers/media/pci/saa7146/hexium_orion.c_pt.bc'
source_filename = "../drivers/media/pci/saa7146/hexium_orion.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.saa7146_extension = type { [32 x i8], i32, ptr, %struct.pci_driver, ptr, ptr, ptr, ptr, i32, ptr }
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
%struct.saa7146_pci_extension_data = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.saa7146_ext_vv = type { i32, i32, i32, i32, ptr, i32, ptr, %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops, ptr, %struct.v4l2_file_operations }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.saa7146_standard = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.anon.119 = type { [8 x %struct.hexium_data] }
%struct.hexium_data = type { i8, i8 }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.saa7146_dev = type { ptr, %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, ptr, i32, [32 x i8], ptr, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.saa7146_dma, %struct.wait_queue_head, i32, %struct.saa7146_dma, %struct.saa7146_dma }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.saa7146_dma = type { i32, ptr }
%struct.hexium = type { i32, %struct.video_device, %struct.i2c_adapter, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.84, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.84 = type { ptr }
%struct.saa7146_fh = type { %struct.v4l2_fh, ptr, %struct.videobuf_queue, %struct.videobuf_queue, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.videobuf_queue = type { %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, i32, i32, i32, i32, [32 x ptr], ptr, ptr, i8, %struct.list_head, i32, ptr, ptr }

@__param_str_debug = internal constant [19 x i8] c"hexium_orion.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype296 = internal constant [32 x i8] c"hexium_orion.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug297 = internal constant [40 x i8] c"hexium_orion.parm=debug:debug verbosity\00", section ".modinfo", align 1
@extension = internal global { %struct.saa7146_extension, [36 x i8] } { %struct.saa7146_extension { [32 x i8] c"hexium HV-PCI6 Orion\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, ptr null, %struct.pci_driver zeroinitializer, ptr @pci_tbl, ptr @hexium_probe, ptr @hexium_attach, ptr @hexium_detach, i32 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_hexium_orion__309_491_hexium_init_module6 = internal global ptr @hexium_init_module, section ".initcall6.init", align 4
@__exitcall_hexium_cleanup_module = internal global ptr @hexium_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_description310 = internal constant [83 x i8] c"hexium_orion.description=video4linux-2 driver for Hexium Orion frame grabber cards\00", section ".modinfo", align 1
@__UNIQUE_ID_author311 = internal constant [53 x i8] c"hexium_orion.author=Michael Hunold <michael@mihu.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file312 = internal constant [57 x i8] c"hexium_orion.file=drivers/media/pci/saa7146/hexium_orion\00", section ".modinfo", align 1
@__UNIQUE_ID_license313 = internal constant [25 x i8] c"hexium_orion.license=GPL\00", section ".modinfo", align 1
@pci_tbl = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 4401, i32 28998, i32 0, i32 0, i32 0, i32 0, i32 ptrtoint (ptr @hexium_hv_pci6 to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 6088, i32 257, i32 0, i32 0, i32 ptrtoint (ptr @hexium_orion_1svhs_3bnc to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 6088, i32 8449, i32 0, i32 0, i32 ptrtoint (ptr @hexium_orion_4bnc to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@hexium_hv_pci6 = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @extension, ptr @.str }, [24 x i8] zeroinitializer }, align 32
@hexium_orion_1svhs_3bnc = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @extension, ptr @.str.1 }, [24 x i8] zeroinitializer }, align 32
@hexium_orion_4bnc = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @extension, ptr @.str.2 }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Hexium HV-PCI6 / Orion\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Hexium HV-PCI6 / Orion (1 SVHS/3 BNC)\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Hexium HV-PCI6 / Orion (4 BNC)\00", [33 x i8] zeroinitializer }, align 32
@hexium_probe.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hexium_orion\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hexium_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/pci/saa7146/hexium_orion.c\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s(): \0A\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hexium_orion: %s(): \0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hexium orion\00", [19 x i8] zeroinitializer }, align 32
@hexium_probe.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.9, i8 0, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s(): cannot register i2c-device. skipping.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"hexium_orion: %s(): cannot register i2c-device. skipping.\0A\00", [37 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@hexium_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.5, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016hexium_orion: device is a Hexium Orion w/ 1 SVHS + 3 BNC inputs\0A\00", [61 x i8] zeroinitializer }, align 32
@hexium_probe._entry_ptr = internal global ptr @hexium_probe._entry, section ".printk_index", align 4
@hexium_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016hexium_orion: device is a Hexium Orion w/ 4 BNC inputs\0A\00", [38 x i8] zeroinitializer }, align 32
@hexium_probe._entry_ptr.14 = internal global ptr @hexium_probe._entry.12, section ".printk_index", align 4
@hexium_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016hexium_orion: device is a Hexium HV-PCI6/Orion (old)\0A\00", [40 x i8] zeroinitializer }, align 32
@hexium_probe._entry_ptr.17 = internal global ptr @hexium_probe._entry.15, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hexium_attach.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.18, ptr @.str.5, ptr @.str.6, i8 0, i8 90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hexium_attach\00", [18 x i8] zeroinitializer }, align 32
@vv_data = internal global { %struct.saa7146_ext_vv, [268 x i8] } { %struct.saa7146_ext_vv { i32 9, i32 0, i32 0, i32 0, ptr @hexium_standards, i32 3, ptr @std_callback, %struct.v4l2_ioctl_ops zeroinitializer, %struct.v4l2_ioctl_ops zeroinitializer, ptr null, %struct.v4l2_file_operations zeroinitializer }, [268 x i8] zeroinitializer }, align 32
@hexium_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.18, ptr @.str.5, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013hexium_orion: Error in saa7146_vv_init()\0A\00", [52 x i8] zeroinitializer }, align 32
@hexium_attach._entry_ptr = internal global ptr @hexium_attach._entry, section ".printk_index", align 4
@hexium_attach._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.5, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013hexium_orion: cannot register capture v4l2 device. skipping.\0A\00", [32 x i8] zeroinitializer }, align 32
@hexium_attach._entry_ptr.22 = internal global ptr @hexium_attach._entry.20, section ".printk_index", align 4
@hexium_attach._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.18, ptr @.str.5, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013hexium_orion: found 'hexium orion' frame grabber-%d\0A\00", [41 x i8] zeroinitializer }, align 32
@hexium_attach._entry_ptr.25 = internal global ptr @hexium_attach._entry.23, section ".printk_index", align 4
@hexium_num = internal global { i32, [28 x i8] } zeroinitializer, align 32
@hexium_standards = internal global { [3 x %struct.saa7146_standard], [40 x i8] } { [3 x %struct.saa7146_standard] [%struct.saa7146_standard { ptr @.str.26, i64 255, i32 16, i32 288, i32 1, i32 680, i32 576, i32 768 }, %struct.saa7146_standard { ptr @.str.27, i64 45056, i32 16, i32 240, i32 1, i32 640, i32 480, i32 640 }, %struct.saa7146_standard { ptr @.str.28, i64 16711680, i32 16, i32 288, i32 1, i32 720, i32 576, i32 768 }], [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PAL\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NTSC\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SECAM\00", [26 x i8] zeroinitializer }, align 32
@vidioc_enum_input.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.29, ptr @.str.5, ptr @.str.30, i8 0, i8 79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vidioc_enum_input\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(): VIDIOC_ENUMINPUT %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"hexium_orion: %s(): VIDIOC_ENUMINPUT %d\0A\00", [55 x i8] zeroinitializer }, align 32
@hexium_inputs = internal constant { [9 x %struct.v4l2_input], [176 x i8] } { [9 x %struct.v4l2_input] [%struct.v4l2_input { i32 0, [32 x i8] c"CVBS 1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i64 16777215, i32 0, i32 4, [3 x i32] zeroinitializer }, %struct.v4l2_input { i32 1, [32 x i8] c"CVBS 2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i64 16777215, i32 0, i32 4, [3 x i32] zeroinitializer }, %struct.v4l2_input { i32 2, [32 x i8] c"CVBS 3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i64 16777215, i32 0, i32 4, [3 x i32] zeroinitializer }, %struct.v4l2_input { i32 3, [32 x i8] c"CVBS 4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i64 16777215, i32 0, i32 4, [3 x i32] zeroinitializer }, %struct.v4l2_input { i32 4, [32 x i8] c"CVBS 5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i64 16777215, i32 0, i32 4, [3 x i32] zeroinitializer }, %struct.v4l2_input { i32 5, [32 x i8] c"CVBS 6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i64 16777215, i32 0, i32 4, [3 x i32] zeroinitializer }, %struct.v4l2_input { i32 6, [32 x i8] c"Y/C 1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i64 16777215, i32 0, i32 4, [3 x i32] zeroinitializer }, %struct.v4l2_input { i32 7, [32 x i8] c"Y/C 2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i64 16777215, i32 0, i32 4, [3 x i32] zeroinitializer }, %struct.v4l2_input { i32 8, [32 x i8] c"Y/C 3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i64 16777215, i32 0, i32 4, [3 x i32] zeroinitializer }], [176 x i8] zeroinitializer }, align 32
@vidioc_enum_input.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.29, ptr @.str.5, ptr @.str.32, i8 0, i8 80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s(): v4l2_ioctl: VIDIOC_ENUMINPUT %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"hexium_orion: %s(): v4l2_ioctl: VIDIOC_ENUMINPUT %d\0A\00", [43 x i8] zeroinitializer }, align 32
@vidioc_g_input.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.34, ptr @.str.5, ptr @.str.35, i8 0, i8 83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vidioc_g_input\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s(): VIDIOC_G_INPUT: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"hexium_orion: %s(): VIDIOC_G_INPUT: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@hexium_set_input.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.37, ptr @.str.5, ptr @.str.6, i8 0, i8 75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hexium_set_input\00", [47 x i8] zeroinitializer }, align 32
@hexium_input_select = internal constant { [9 x %struct.anon.119], [48 x i8] } { [9 x %struct.anon.119] [%struct.anon.119 { [8 x %struct.hexium_data] [%struct.hexium_data { i8 6, i8 0 }, %struct.hexium_data { i8 32, i8 -39 }, %struct.hexium_data { i8 33, i8 23 }, %struct.hexium_data { i8 34, i8 64 }, %struct.hexium_data { i8 44, i8 3 }, %struct.hexium_data { i8 48, i8 68 }, %struct.hexium_data { i8 49, i8 117 }, %struct.hexium_data { i8 33, i8 22 }] }, %struct.anon.119 { [8 x %struct.hexium_data] [%struct.hexium_data { i8 6, i8 0 }, %struct.hexium_data { i8 32, i8 120 }, %struct.hexium_data { i8 33, i8 7 }, %struct.hexium_data { i8 34, i8 -46 }, %struct.hexium_data { i8 44, i8 -125 }, %struct.hexium_data { i8 48, i8 96 }, %struct.hexium_data { i8 49, i8 -75 }, %struct.hexium_data { i8 33, i8 3 }] }, %struct.anon.119 { [8 x %struct.hexium_data] [%struct.hexium_data { i8 6, i8 0 }, %struct.hexium_data { i8 32, i8 -70 }, %struct.hexium_data { i8 33, i8 7 }, %struct.hexium_data { i8 34, i8 -111 }, %struct.hexium_data { i8 44, i8 3 }, %struct.hexium_data { i8 48, i8 96 }, %struct.hexium_data { i8 49, i8 -75 }, %struct.hexium_data { i8 33, i8 5 }] }, %struct.anon.119 { [8 x %struct.hexium_data] [%struct.hexium_data { i8 6, i8 0 }, %struct.hexium_data { i8 32, i8 -40 }, %struct.hexium_data { i8 33, i8 23 }, %struct.hexium_data { i8 34, i8 64 }, %struct.hexium_data { i8 44, i8 3 }, %struct.hexium_data { i8 48, i8 68 }, %struct.hexium_data { i8 49, i8 117 }, %struct.hexium_data { i8 33, i8 22 }] }, %struct.anon.119 { [8 x %struct.hexium_data] [%struct.hexium_data { i8 6, i8 0 }, %struct.hexium_data { i8 32, i8 -72 }, %struct.hexium_data { i8 33, i8 7 }, %struct.hexium_data { i8 34, i8 -111 }, %struct.hexium_data { i8 44, i8 3 }, %struct.hexium_data { i8 48, i8 96 }, %struct.hexium_data { i8 49, i8 -75 }, %struct.hexium_data { i8 33, i8 5 }] }, %struct.anon.119 { [8 x %struct.hexium_data] [%struct.hexium_data { i8 6, i8 0 }, %struct.hexium_data { i8 32, i8 124 }, %struct.hexium_data { i8 33, i8 7 }, %struct.hexium_data { i8 34, i8 -46 }, %struct.hexium_data { i8 44, i8 -125 }, %struct.hexium_data { i8 48, i8 96 }, %struct.hexium_data { i8 49, i8 -75 }, %struct.hexium_data { i8 33, i8 3 }] }, %struct.anon.119 { [8 x %struct.hexium_data] [%struct.hexium_data { i8 6, i8 -128 }, %struct.hexium_data { i8 32, i8 89 }, %struct.hexium_data { i8 33, i8 23 }, %struct.hexium_data { i8 34, i8 66 }, %struct.hexium_data { i8 44, i8 -93 }, %struct.hexium_data { i8 48, i8 68 }, %struct.hexium_data { i8 49, i8 117 }, %struct.hexium_data { i8 33, i8 18 }] }, %struct.anon.119 { [8 x %struct.hexium_data] [%struct.hexium_data { i8 6, i8 -128 }, %struct.hexium_data { i8 32, i8 -102 }, %struct.hexium_data { i8 33, i8 23 }, %struct.hexium_data { i8 34, i8 -79 }, %struct.hexium_data { i8 44, i8 19 }, %struct.hexium_data { i8 48, i8 96 }, %struct.hexium_data { i8 49, i8 -75 }, %struct.hexium_data { i8 33, i8 20 }] }, %struct.anon.119 { [8 x %struct.hexium_data] [%struct.hexium_data { i8 6, i8 -128 }, %struct.hexium_data { i8 32, i8 60 }, %struct.hexium_data { i8 33, i8 39 }, %struct.hexium_data { i8 34, i8 -63 }, %struct.hexium_data { i8 44, i8 35 }, %struct.hexium_data { i8 48, i8 68 }, %struct.hexium_data { i8 49, i8 117 }, %struct.hexium_data { i8 33, i8 33 }] }], [48 x i8] zeroinitializer }, align 32
@hexium_set_input.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.37, ptr @.str.5, ptr @.str.38, i8 0, i8 77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%d: 0x%02x => 0x%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"hexium_orion: %d: 0x%02x => 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@hexium_init_done.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.40, ptr @.str.5, ptr @.str.41, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hexium_init_done\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(): hexium_init_done called\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"hexium_orion: %s(): hexium_init_done called\0A\00", [51 x i8] zeroinitializer }, align 32
@hexium_saa7110 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"L<\0D\EF\BD\F0\00\00\F8\F8``@\86\18\90\00,@FB\1A\FF\DA\F0\8B\00\00\00\00\00\00\D9\17@A\80A\80O\FE\01\0F\0F\03\01\81\03Du\01\8C\03", [43 x i8] zeroinitializer }, align 32
@hexium_init_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.40, ptr @.str.5, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013hexium_orion: failed for address 0x%02x\0A\00", [53 x i8] zeroinitializer }, align 32
@hexium_init_done._entry_ptr = internal global ptr @hexium_init_done._entry, section ".printk_index", align 4
@hexium_detach.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.44, ptr @.str.5, ptr @.str.45, i8 0, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hexium_detach\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s(): dev:%p\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hexium_orion: %s(): dev:%p\0A\00", [36 x i8] zeroinitializer }, align 32
@hexium_init_module.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.47, ptr @.str.5, ptr @.str.48, i8 0, i8 119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hexium_init_module\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s(): failed to register extension\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"hexium_orion: %s(): failed to register extension\0A\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.50 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 20, i32 12 }
@___asan_gen_.53 = private unnamed_addr constant [10 x i8] c"extension\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 461, i32 33 }
@___asan_gen_.56 = private unnamed_addr constant [8 x i8] c"pci_tbl\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 424, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant [15 x i8] c"hexium_hv_pci6\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 409, i32 42 }
@___asan_gen_.62 = private unnamed_addr constant [24 x i8] c"hexium_orion_1svhs_3bnc\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 414, i32 42 }
@___asan_gen_.65 = private unnamed_addr constant [18 x i8] c"hexium_orion_4bnc\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 419, i32 42 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 410, i32 14 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 415, i32 14 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 420, i32 14 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 204, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 222, i32 36 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 226, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 240, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 248, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 260, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 360, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [8 x i8] c"vv_data\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 453, i32 30 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 364, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 372, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 376, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [11 x i8] c"hexium_num\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 25, i32 12 }
@___asan_gen_.146 = private unnamed_addr constant [17 x i8] c"hexium_standards\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 177, i32 32 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 179, i32 11 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 184, i32 11 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 189, i32 11 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 316, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [14 x i8] c"hexium_inputs\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 32, i32 26 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 323, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 334, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 300, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant [20 x i8] c"hexium_input_select\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 74, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 308, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 282, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant [15 x i8] c"hexium_saa7110\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 62, i32 11 }
@___asan_gen_.209 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 288, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 390, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.231 = private constant [44 x i8] c"../drivers/media/pci/saa7146/hexium_orion.c\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 479, i32 3 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__UNIQUE_ID_author311, ptr @__UNIQUE_ID_debug297, ptr @__UNIQUE_ID_debugtype296, ptr @__UNIQUE_ID_description310, ptr @__UNIQUE_ID_file312, ptr @__UNIQUE_ID_license313, ptr @__exitcall_hexium_cleanup_module, ptr @__initcall__kmod_hexium_orion__309_491_hexium_init_module6, ptr @__param_debug, ptr @hexium_attach._entry, ptr @hexium_attach._entry.20, ptr @hexium_attach._entry.23, ptr @hexium_attach._entry_ptr, ptr @hexium_attach._entry_ptr.22, ptr @hexium_attach._entry_ptr.25, ptr @hexium_cleanup_module, ptr @hexium_init_done._entry, ptr @hexium_init_done._entry_ptr, ptr @hexium_probe._entry, ptr @hexium_probe._entry.12, ptr @hexium_probe._entry.15, ptr @hexium_probe._entry_ptr, ptr @hexium_probe._entry_ptr.14, ptr @hexium_probe._entry_ptr.17, ptr @debug, ptr @extension, ptr @pci_tbl, ptr @hexium_hv_pci6, ptr @hexium_orion_1svhs_3bnc, ptr @hexium_orion_4bnc, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @vv_data, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @hexium_num, ptr @hexium_standards, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @hexium_inputs, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @hexium_input_select, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @hexium_saa7110, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extension to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_tbl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hexium_hv_pci6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hexium_orion_1svhs_3bnc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hexium_orion_4bnc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hexium_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hexium_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hexium_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vv_data to i32), i32 1044, i32 1312, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hexium_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hexium_attach._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hexium_attach._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hexium_num to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hexium_standards to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hexium_inputs to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hexium_input_select to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hexium_saa7110 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hexium_init_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hexium_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @saa7146_unregister_extension(ptr noundef nonnull @extension) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_unregister_extension(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hexium_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @saa7146_register_extension(ptr noundef nonnull @extension) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.body:                                          ; preds = %entry
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.return_crit_edge, label %do.body2

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.body2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hexium_init_module.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hexium_init_module, %if.then7)) #7
          to label %return [label %if.then7], !srcloc !142

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hexium_init_module.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47) #7
  br label %return

return:                                           ; preds = %if.then7, %do.body2, %do.body.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -19, %do.body.return_crit_edge ], [ -19, %if.then7 ], [ 0, %entry.return_crit_edge ], [ -19, %do.body2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hexium_probe(ptr noundef %dev) #2 align 64 {
entry:
  %data = alloca %union.i2c_smbus_data, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data) #7
  %0 = call ptr @memset(ptr %data, i32 255, i32 34)
  %1 = load i32, ptr @debug, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hexium_probe.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hexium_probe, %if.then5)) #7
          to label %do.end8 [label %if.then5], !srcloc !142

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hexium_probe.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4) #7
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  %revision = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %do.end8.cleanup_crit_edge, label %if.end10

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %do.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 2728) #10
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %do.body15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body15:                                        ; preds = %if.end10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  tail call void @arm_heavy_mb() #7
  %mem = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 5
  %5 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 327685) #7, !srcloc !144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mem, align 4
  %add.ptr22 = getelementptr i8, ptr %8, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 65537) #7, !srcloc !144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !146
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mem, align 4
  %add.ptr27 = getelementptr i8, ptr %10, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 0) #7, !srcloc !144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mem, align 4
  %add.ptr32 = getelementptr i8, ptr %12, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 393222) #7, !srcloc !144
  %i2c_adapter = getelementptr inbounds %struct.hexium, ptr %call7.i.i, i32 0, i32 2
  %name = getelementptr inbounds %struct.hexium, ptr %call7.i.i, i32 0, i32 2, i32 12
  %call33 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.8, i32 noundef 48) #7
  %call35 = tail call i32 @saa7146_i2c_adapter_prepare(ptr noundef %dev, ptr noundef %i2c_adapter, i32 noundef 1024) #7
  %call37 = tail call i32 @i2c_add_adapter(ptr noundef %i2c_adapter) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %do.body40, label %if.end63

do.body40:                                        ; preds = %do.body15
  %13 = load i32, ptr @debug, align 4
  %and41 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %do.body40.do.end62_crit_edge, label %do.body44

do.body40.do.end62_crit_edge:                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end62

do.body44:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hexium_probe.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hexium_probe, %if.then56)) #7
          to label %do.end62 [label %if.then56], !srcloc !142

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hexium_probe.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4) #7
  br label %do.end62

do.end62:                                         ; preds = %if.then56, %do.body44, %do.body40.do.end62_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end63:                                         ; preds = %do.body15
  tail call void @saa7146_setgpio(ptr noundef %dev, i32 noundef 0, i32 noundef 80) #7
  tail call void @saa7146_setgpio(ptr noundef %dev, i32 noundef 2, i32 noundef 80) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #7
  %pci = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 8
  %24 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci, align 4
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6088, i16 %27)
  %cmp65 = icmp eq i16 %27, 6088
  br i1 %cmp65, label %land.lhs.true, label %if.end63.if.end97_crit_edge

if.end63.if.end97_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

land.lhs.true:                                    ; preds = %if.end63
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 10
  %28 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 257, i16 %29)
  %cmp69 = icmp eq i16 %29, 257
  br i1 %cmp69, label %do.end74, label %land.lhs.true83

do.end74:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #11
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 12
  %30 = ptrtoint ptr %ext_priv to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i, ptr %ext_priv, align 4
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %call7.i.i, align 8
  br label %cleanup

land.lhs.true83:                                  ; preds = %land.lhs.true
  %32 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8449, i16 %33)
  %cmp87 = icmp eq i16 %33, 8449
  br i1 %cmp87, label %do.end92, label %land.lhs.true83.if.end97_crit_edge

land.lhs.true83.if.end97_crit_edge:               ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

do.end92:                                         ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #9
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #11
  %ext_priv95 = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 12
  %34 = ptrtoint ptr %ext_priv95 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i, ptr %ext_priv95, align 4
  %35 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3, ptr %call7.i.i, align 8
  br label %cleanup

if.end97:                                         ; preds = %land.lhs.true83.if.end97_crit_edge, %if.end63.if.end97_crit_edge
  %call99 = call i32 @i2c_smbus_xfer(ptr noundef %i2c_adapter, i16 noundef zeroext 78, i16 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 2, ptr noundef nonnull %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %cmp100 = icmp eq i32 %call99, 0
  br i1 %cmp100, label %do.end105, label %if.end110

do.end105:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  %call107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #11
  %ext_priv108 = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 12
  %36 = ptrtoint ptr %ext_priv108 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i.i, ptr %ext_priv108, align 4
  %37 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %call7.i.i, align 8
  br label %cleanup

if.end110:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  call void @i2c_del_adapter(ptr noundef %i2c_adapter) #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end110, %do.end105, %do.end92, %do.end74, %do.end62, %if.end10.cleanup_crit_edge, %do.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %do.end62 ], [ 0, %do.end74 ], [ 0, %do.end92 ], [ 0, %do.end105 ], [ -14, %if.end110 ], [ -14, %do.end8.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hexium_attach(ptr noundef %dev, ptr nocapture noundef readnone %info) #2 align 64 {
entry:
  %data.i = alloca %union.i2c_smbus_data, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext_priv, align 4
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hexium_attach.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hexium_attach, %if.then5)) #7
          to label %do.end8 [label %if.then5], !srcloc !142

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hexium_attach.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.18) #7
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  %call9 = tail call i32 @saa7146_vv_init(ptr noundef %dev, ptr noundef nonnull @vv_data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end17, label %do.end14

do.end14:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #11
  br label %cleanup

if.end17:                                         ; preds = %do.end8
  store ptr @vidioc_enum_input, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @vv_data, i32 0, i32 7, i32 65), align 4
  store ptr @vidioc_g_input, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @vv_data, i32 0, i32 7, i32 66), align 4
  store ptr @vidioc_s_input, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @vv_data, i32 0, i32 7, i32 67), align 4
  %video_dev = getelementptr inbounds %struct.hexium, ptr %1, i32 0, i32 1
  %call18 = tail call i32 @saa7146_register_device(ptr noundef %video_dev, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp.not = icmp eq i32 %call18, 0
  br i1 %cmp.not, label %do.end28, label %do.end22

do.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #11
  br label %cleanup

do.end28:                                         ; preds = %if.end17
  %3 = load i32, ptr @hexium_num, align 4
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %3) #11
  %4 = load i32, ptr @hexium_num, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr @hexium_num, align 4
  %cur_input = getelementptr inbounds %struct.hexium, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %cur_input to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %cur_input, align 8
  %6 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ext_priv, align 4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i) #7
  %8 = call ptr @memset(ptr %data.i, i32 255, i32 34)
  %9 = load i32, ptr @debug, align 4
  %and.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end28.do.end8.i_crit_edge, label %do.body1.i

do.end28.do.end8.i_crit_edge:                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8.i

do.body1.i:                                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hexium_init_done.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hexium_attach, %if.then5.i)) #7
          to label %do.end8.i [label %if.then5.i], !srcloc !142

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hexium_init_done.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40) #7
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then5.i, %do.body1.i, %do.end28.do.end8.i_crit_edge
  %i2c_adapter.i = getelementptr inbounds %struct.hexium, ptr %7, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end8.i
  %i.02.i = phi i32 [ 0, %do.end8.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [53 x i8], ptr @hexium_saa7110, i32 0, i32 %i.02.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %data.i, align 2
  %conv.i = trunc i32 %i.02.i to i8
  %call9.i = call i32 @i2c_smbus_xfer(ptr noundef %i2c_adapter.i, i16 noundef zeroext 78, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %conv.i, i32 noundef 2, ptr noundef nonnull %data.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.not.i = icmp eq i32 %call9.i, 0
  br i1 %cmp10.not.i, label %for.body.i.for.inc.i_crit_edge, label %do.end15.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

do.end15.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %i.02.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end15.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 53
  br i1 %exitcond.not.i, label %hexium_init_done.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

hexium_init_done.exit:                            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i) #7
  br label %cleanup

cleanup:                                          ; preds = %hexium_init_done.exit, %do.end22, %do.end14
  %retval.0 = phi i32 [ %call9, %do.end14 ], [ -1, %do.end22 ], [ 0, %hexium_init_done.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hexium_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext_priv, align 4
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hexium_detach.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hexium_detach, %if.then5)) #7
          to label %do.end8 [label %if.then5], !srcloc !142

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hexium_detach.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.44, ptr noundef %dev) #7
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  %video_dev = getelementptr inbounds %struct.hexium, ptr %1, i32 0, i32 1
  %call9 = tail call i32 @saa7146_unregister_device(ptr noundef %video_dev, ptr noundef %dev) #7
  %call10 = tail call i32 @saa7146_vv_release(ptr noundef %dev) #7
  %3 = load i32, ptr @hexium_num, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr @hexium_num, align 4
  %i2c_adapter = getelementptr inbounds %struct.hexium, ptr %1, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %i2c_adapter) #7
  tail call void @kfree(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_i2c_adapter_prepare(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7146_setgpio(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_xfer(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_vv_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.body1

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_enum_input.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_enum_input, %if.then5)) #7
          to label %do.end7 [label %if.then5], !srcloc !142

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_enum_input.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29, i32 noundef %2) #7
  br label %do.end7

do.end7:                                          ; preds = %if.then5, %do.body1, %entry.do.end7_crit_edge
  %3 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %cmp = icmp ugt i32 %4, 8
  br i1 %cmp, label %do.end7.return_crit_edge, label %if.end10

do.end7.return_crit_edge:                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end10:                                         ; preds = %do.end7
  %arrayidx = getelementptr [9 x %struct.v4l2_input], ptr @hexium_inputs, i32 0, i32 %4
  %5 = call ptr @memcpy(ptr %i, ptr %arrayidx, i32 80)
  %6 = load i32, ptr @debug, align 4
  %and13 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end10.return_crit_edge, label %do.body16

if.end10.return_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.body16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_enum_input.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_enum_input, %if.then28)) #7
          to label %return [label %if.then28], !srcloc !142

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_enum_input.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.29, i32 noundef %8) #7
  br label %return

return:                                           ; preds = %if.then28, %do.body16, %if.end10.return_crit_edge, %do.end7.return_crit_edge
  %retval.0 = phi i32 [ -22, %do.end7.return_crit_edge ], [ 0, %if.end10.return_crit_edge ], [ 0, %if.then28 ], [ 0, %do.body16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext_priv, align 4
  %cur_input = getelementptr inbounds %struct.hexium, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cur_input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_input, align 8
  %6 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %input, align 4
  %7 = load i32, ptr @debug, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body2

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_g_input.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_g_input, %if.then6)) #7
          to label %do.end9 [label %if.then6], !srcloc !142

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %input, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_g_input.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, i32 noundef %9) #7
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body2, %entry.do.end9_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, i32 noundef %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %input)
  %cmp = icmp ugt i32 %input, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext_priv, align 4
  %cur_input = getelementptr inbounds %struct.hexium, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cur_input to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %input, ptr %cur_input, align 8
  tail call fastcc void @hexium_set_input(ptr noundef %3, i32 noundef %input)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_register_device(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @std_callback(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %std) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hexium_set_input(ptr noundef %hexium, i32 noundef %input) unnamed_addr #2 align 64 {
entry:
  %data = alloca %union.i2c_smbus_data, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data) #7
  %0 = call ptr @memset(ptr %data, i32 255, i32 34)
  %1 = load i32, ptr @debug, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hexium_set_input.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hexium_set_input, %if.then5)) #7
          to label %do.end8 [label %if.then5], !srcloc !142

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hexium_set_input.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.37) #7
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  %arrayidx = getelementptr [9 x %struct.anon.119], ptr @hexium_input_select, i32 0, i32 %input
  %i2c_adapter = getelementptr inbounds %struct.hexium, ptr %hexium, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end8
  %i.07 = phi i32 [ 0, %do.end8 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx10 = getelementptr [8 x %struct.hexium_data], ptr %arrayidx, i32 0, i32 %i.07
  %2 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx10, align 1
  %conv = sext i8 %3 to i32
  %byte = getelementptr [8 x %struct.hexium_data], ptr %arrayidx, i32 0, i32 %i.07, i32 1
  %4 = ptrtoint ptr %byte to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %byte, align 1
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %data, align 2
  %call16 = call i32 @i2c_smbus_xfer(ptr noundef %i2c_adapter, i16 noundef zeroext 78, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %3, i32 noundef 2, ptr noundef nonnull %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %do.body21, label %for.body.cleanup38_crit_edge

for.body.cleanup38_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup38

do.body21:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hexium_set_input.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hexium_set_input, %if.then33)) #7
          to label %for.inc [label %if.then33], !srcloc !142

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data, align 2
  %conv34 = zext i8 %8 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hexium_set_input.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.39, i32 noundef %input, i32 noundef %conv, i32 noundef %conv34) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then33, %do.body21
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.cleanup38_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup38_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup38

cleanup38:                                        ; preds = %for.inc.cleanup38_crit_edge, %for.body.cleanup38_crit_edge
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_unregister_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_vv_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_register_extension(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !39, !40, !41, !42, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !79, !81, !83, !85, !87, !88, !89, !90, !92, !93, !94, !96, !98, !99, !100, !101, !103, !104, !106, !107, !108, !110, !112, !114, !115, !116, !117, !119, !120, !121, !123, !125, !126, !127, !128, !130, !131, !132}
!llvm.module.flags = !{!133, !134, !135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype296, !1, !"__UNIQUE_ID_debugtype296", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug297, !4, !"__UNIQUE_ID_debug297", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 22, i32 1}
!5 = !{ptr @__initcall__kmod_hexium_orion__309_491_hexium_init_module6, !6, !"__initcall__kmod_hexium_orion__309_491_hexium_init_module6", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 491, i32 1}
!7 = !{ptr @__exitcall_hexium_cleanup_module, !8, !"__exitcall_hexium_cleanup_module", i1 false, i1 false}
!8 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 492, i32 1}
!9 = !{ptr @__UNIQUE_ID_description310, !10, !"__UNIQUE_ID_description310", i1 false, i1 false}
!10 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 494, i32 1}
!11 = !{ptr @__UNIQUE_ID_author311, !12, !"__UNIQUE_ID_author311", i1 false, i1 false}
!12 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 495, i32 1}
!13 = !{ptr @__UNIQUE_ID_file312, !14, !"__UNIQUE_ID_file312", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 496, i32 1}
!15 = !{ptr @__UNIQUE_ID_license313, !14, !"__UNIQUE_ID_license313", i1 false, i1 false}
!16 = !{ptr @debug, !17, !"debug", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 20, i32 12}
!18 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!19 = !{ptr @extension, !20, !"extension", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 461, i32 33}
!21 = !{ptr @pci_tbl, !22, !"pci_tbl", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 424, i32 35}
!23 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 410, i32 14}
!25 = !{ptr @hexium_hv_pci6, !26, !"hexium_hv_pci6", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 409, i32 42}
!27 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 415, i32 14}
!29 = !{ptr @hexium_orion_1svhs_3bnc, !30, !"hexium_orion_1svhs_3bnc", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 414, i32 42}
!31 = !{ptr @.str.2, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 420, i32 14}
!33 = !{ptr @hexium_orion_4bnc, !34, !"hexium_orion_4bnc", i1 false, i1 false}
!34 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 419, i32 42}
!35 = !{ptr @.str.3, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 204, i32 2}
!37 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @hexium_probe.__UNIQUE_ID_ddebug298, !36, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!41 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 222, i32 36}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 226, i32 3}
!46 = !{ptr @hexium_probe.__UNIQUE_ID_ddebug299, !45, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!47 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 240, i32 3}
!50 = !{ptr @hexium_probe._entry, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @hexium_probe._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 248, i32 3}
!54 = !{ptr @hexium_probe._entry.12, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @hexium_probe._entry_ptr.14, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 260, i32 3}
!58 = !{ptr @hexium_probe._entry.15, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @hexium_probe._entry_ptr.17, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 360, i32 2}
!62 = !{ptr @hexium_attach.__UNIQUE_ID_ddebug306, !61, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 364, i32 3}
!65 = !{ptr @hexium_attach._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @hexium_attach._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 372, i32 3}
!69 = !{ptr @hexium_attach._entry.20, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @hexium_attach._entry_ptr.22, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 376, i32 2}
!73 = !{ptr @hexium_attach._entry.23, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @hexium_attach._entry_ptr.25, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @vv_data, !76, !"vv_data", i1 false, i1 false}
!76 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 453, i32 30}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 179, i32 11}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 184, i32 11}
!81 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 189, i32 11}
!83 = !{ptr @hexium_standards, !84, !"hexium_standards", i1 false, i1 false}
!84 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 177, i32 32}
!85 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 316, i32 2}
!87 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @vidioc_enum_input.__UNIQUE_ID_ddebug303, !86, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!89 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 323, i32 2}
!92 = !{ptr @vidioc_enum_input.__UNIQUE_ID_ddebug304, !91, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!93 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @hexium_inputs, !95, !"hexium_inputs", i1 false, i1 false}
!95 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 32, i32 26}
!96 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 334, i32 2}
!98 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @vidioc_g_input.__UNIQUE_ID_ddebug305, !97, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!100 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.37, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 300, i32 2}
!103 = !{ptr @hexium_set_input.__UNIQUE_ID_ddebug301, !102, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!104 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 308, i32 3}
!106 = !{ptr @hexium_set_input.__UNIQUE_ID_ddebug302, !105, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!107 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @hexium_input_select, !109, !"hexium_input_select", i1 false, i1 false}
!109 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 74, i32 3}
!110 = !{ptr @hexium_num, !111, !"hexium_num", i1 false, i1 false}
!111 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 25, i32 12}
!112 = !{ptr @.str.40, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 282, i32 2}
!114 = !{ptr @.str.41, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @hexium_init_done.__UNIQUE_ID_ddebug300, !113, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!116 = !{ptr @.str.42, !113, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.43, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 288, i32 4}
!119 = !{ptr @hexium_init_done._entry, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @hexium_init_done._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @hexium_saa7110, !122, !"hexium_saa7110", i1 false, i1 false}
!122 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 62, i32 11}
!123 = !{ptr @.str.44, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 390, i32 2}
!125 = !{ptr @.str.45, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @hexium_detach.__UNIQUE_ID_ddebug307, !124, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!127 = !{ptr @.str.46, !124, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.47, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/pci/saa7146/hexium_orion.c", i32 479, i32 3}
!130 = !{ptr @.str.48, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @hexium_init_module.__UNIQUE_ID_ddebug308, !129, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!132 = !{ptr @.str.49, !129, !"<string literal>", i1 false, i1 false}
!133 = !{i32 1, !"wchar_size", i32 2}
!134 = !{i32 1, !"min_enum_size", i32 4}
!135 = !{i32 8, !"branch-target-enforcement", i32 0}
!136 = !{i32 8, !"sign-return-address", i32 0}
!137 = !{i32 8, !"sign-return-address-all", i32 0}
!138 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!139 = !{i32 7, !"uwtable", i32 1}
!140 = !{i32 7, !"frame-pointer", i32 2}
!141 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!142 = !{i64 2148820810, i64 2148820815, i64 2148820828, i64 2148820872, i64 2148820906, i64 2148820927}
!143 = !{i64 2156625261}
!144 = !{i64 7160683}
!145 = !{i64 2156625887}
!146 = !{i64 2156626384}
!147 = !{i64 2156627014}
