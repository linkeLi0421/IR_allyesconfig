; ModuleID = '/llk/IR_all_yes/drivers/media/pci/saa7146/mxb.c_pt.bc'
source_filename = "../drivers/media/pci/saa7146/mxb.c"
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
%struct.saa7146_ext_vv = type { i32, i32, i32, i32, ptr, i32, ptr, %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops, ptr, %struct.v4l2_file_operations }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.saa7146_standard = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.mxb_routing = type { i32, i32 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_audio = type { i32, [32 x i8], i32, i32, [2 x i32] }
%struct.anon.120 = type { i32, [9 x i8] }
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
%struct.mxb = type { %struct.video_device, %struct.video_device, %struct.i2c_adapter, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.v4l2_frequency }
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
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.saa7146_fh = type { %struct.v4l2_fh, ptr, %struct.videobuf_queue, %struct.videobuf_queue, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.videobuf_queue = type { %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, i32, i32, i32, i32, [32 x ptr], ptr, ptr, i8, %struct.list_head, i32, ptr, ptr }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.saa7146_vv = type { %struct.saa7146_dmaqueue, %struct.v4l2_vbi_format, %struct.timer_list, ptr, %struct.wait_queue_head, i32, ptr, i32, ptr, %struct.saa7146_overlay, %struct.v4l2_framebuffer, ptr, ptr, %struct.saa7146_dmaqueue, %struct.v4l2_pix_format, i32, ptr, i32, i32, i32, i32, %struct.saa7146_dma, i32 }
%struct.v4l2_vbi_format = type { i32, i32, i32, i32, [2 x i32], [2 x i32], i32, [2 x i32] }
%struct.saa7146_overlay = type { ptr, %struct.v4l2_window, [16 x %struct.v4l2_clip], i32 }
%struct.v4l2_window = type { %struct.v4l2_rect, i32, i32, ptr, i32, ptr, i8 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.100 }
%struct.anon.100 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.saa7146_dmaqueue = type { ptr, ptr, %struct.list_head, %struct.timer_list }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.95, i32, i32 }
%union.anon.95 = type { i32 }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.90 }
%union.anon.90 = type { i32, [28 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.84, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.84 = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.tuner_setup = type { i16, i32, i32, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_subdev_audio_ops = type { ptr, ptr, ptr, ptr }

@__param_str_freq = internal constant [9 x i8] c"mxb.freq\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@freq = internal global { i32, [28 x i8] } { i32 4148, [28 x i8] zeroinitializer }, align 32
@__param_freq = internal constant %struct.kernel_param { ptr @__param_str_freq, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @freq } }, section "__param", align 4
@__UNIQUE_ID_freqtype296 = internal constant [22 x i8] c"mxb.parmtype=freq:int\00", section ".modinfo", align 1
@__UNIQUE_ID_freq297 = internal constant [71 x i8] c"mxb.parm=freq:initial frequency the tuner will be tuned to while setup\00", section ".modinfo", align 1
@__param_str_debug = internal constant [10 x i8] c"mxb.debug\00", align 1
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype298 = internal constant [23 x i8] c"mxb.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug299 = internal constant [59 x i8] c"mxb.parm=debug:Turn on/off device debugging (default:off).\00", section ".modinfo", align 1
@extension = internal global { %struct.saa7146_extension, [36 x i8] } { %struct.saa7146_extension { [32 x i8] c"Multimedia eXtension Board\00\00\00\00\00\00", i32 1, ptr null, %struct.pci_driver zeroinitializer, ptr @pci_tbl, ptr null, ptr @mxb_attach, ptr @mxb_detach, i32 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_mxb__318_868_mxb_init_module6 = internal global ptr @mxb_init_module, section ".initcall6.init", align 4
@__exitcall_mxb_cleanup_module = internal global ptr @mxb_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_description319 = internal constant [90 x i8] c"mxb.description=video4linux-2 driver for the Siemens-Nixdorf 'Multimedia eXtension board'\00", section ".modinfo", align 1
@__UNIQUE_ID_author320 = internal constant [44 x i8] c"mxb.author=Michael Hunold <michael@mihu.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file321 = internal constant [39 x i8] c"mxb.file=drivers/media/pci/saa7146/mxb\00", section ".modinfo", align 1
@__UNIQUE_ID_license322 = internal constant [16 x i8] c"mxb.license=GPL\00", section ".modinfo", align 1
@pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4401, i32 28998, i32 0, i32 0, i32 0, i32 0, i32 ptrtoint (ptr @mxb to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@mxb = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @extension, ptr @.str }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Multimedia eXtension Board\00", [37 x i8] zeroinitializer }, align 32
@mxb_attach.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mxb\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mxb_attach\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/media/pci/saa7146/mxb.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s(): dev:%p\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mxb: %s(): dev:%p\0A\00", [45 x i8] zeroinitializer }, align 32
@vv_data = internal global { %struct.saa7146_ext_vv, [268 x i8] } { %struct.saa7146_ext_vv { i32 4, i32 0, i32 196624, i32 0, ptr @standard, i32 4, ptr @std_callback, %struct.v4l2_ioctl_ops zeroinitializer, %struct.v4l2_ioctl_ops zeroinitializer, ptr null, %struct.v4l2_file_operations zeroinitializer }, [268 x i8] zeroinitializer }, align 32
@mxb_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013mxb: %s: Error in saa7146_vv_init()\00", [58 x i8] zeroinitializer }, align 32
@mxb_attach._entry_ptr = internal global ptr @mxb_attach._entry, section ".printk_index", align 4
@mxb_attach._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 717, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013mxb: %s: cannot register capture v4l2 device. skipping.\0A\00", [37 x i8] zeroinitializer }, align 32
@mxb_attach._entry_ptr.9 = internal global ptr @mxb_attach._entry.7, section ".printk_index", align 4
@mxb_attach._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013mxb: %s: cannot register vbi v4l2 device. skipping.\0A\00", [41 x i8] zeroinitializer }, align 32
@mxb_attach._entry_ptr.12 = internal global ptr @mxb_attach._entry.10, section ".printk_index", align 4
@mxb_attach._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016mxb: found Multimedia eXtension Board #%d\0A\00", [51 x i8] zeroinitializer }, align 32
@mxb_attach._entry_ptr.15 = internal global ptr @mxb_attach._entry.13, section ".printk_index", align 4
@mxb_num = internal global { i32, [28 x i8] } zeroinitializer, align 32
@standard = internal global { [4 x %struct.saa7146_standard], [32 x i8] } { [4 x %struct.saa7146_standard] [%struct.saa7146_standard { ptr @.str.16, i64 7, i32 23, i32 288, i32 20, i32 680, i32 576, i32 768 }, %struct.saa7146_standard { ptr @.str.17, i64 16, i32 23, i32 288, i32 20, i32 680, i32 576, i32 768 }, %struct.saa7146_standard { ptr @.str.18, i64 45056, i32 22, i32 240, i32 6, i32 708, i32 480, i32 640 }, %struct.saa7146_standard { ptr @.str.19, i64 16711680, i32 20, i32 288, i32 20, i32 720, i32 576, i32 768 }], [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PAL-BG\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PAL-I\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NTSC\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SECAM\00", [26 x i8] zeroinitializer }, align 32
@std_callback.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 0, i8 -65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"std_callback\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s(): VIDIOC_S_STD: setting mxb for PAL_I\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"mxb: %s(): VIDIOC_S_STD: setting mxb for PAL_I\0A\00", [48 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@std_callback.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.23, i8 0, i8 -62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s(): VIDIOC_S_STD: setting mxb for PAL/NTSC/SECAM\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"mxb: %s(): VIDIOC_S_STD: setting mxb for PAL/NTSC/SECAM\0A\00", [39 x i8] zeroinitializer }, align 32
@mxb_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @mxb_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@mxb_probe.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mxb_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s(): not enough kernel memory\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"mxb: %s(): not enough kernel memory\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mxb%d\00", [26 x i8] zeroinitializer }, align 32
@mxb_probe.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.25, ptr @.str.3, ptr @.str.29, i8 0, i8 59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s(): cannot register i2c-device. skipping.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"mxb: %s(): cannot register i2c-device. skipping.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"saa7111\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tea6420\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tea6415c\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tda9840\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tuner\00", [26 x i8] zeroinitializer }, align 32
@mxb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.25, ptr @.str.3, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013mxb: did not find all i2c devices. aborting\0A\00", [49 x i8] zeroinitializer }, align 32
@mxb_probe._entry_ptr = internal global ptr @mxb_probe._entry, section ".printk_index", align 4
@video_audio_connect = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 3, i32 3], [16 x i8] zeroinitializer }, align 32
@TEA6420_cd = internal constant { [7 x [2 x %struct.mxb_routing]], [48 x i8] } { [7 x [2 x %struct.mxb_routing]] [[2 x %struct.mxb_routing] [%struct.mxb_routing { i32 1, i32 1 }, %struct.mxb_routing { i32 1, i32 1 }], [2 x %struct.mxb_routing] [%struct.mxb_routing { i32 5, i32 1 }, %struct.mxb_routing { i32 6, i32 1 }], [2 x %struct.mxb_routing] [%struct.mxb_routing { i32 4, i32 1 }, %struct.mxb_routing { i32 6, i32 1 }], [2 x %struct.mxb_routing] [%struct.mxb_routing { i32 3, i32 1 }, %struct.mxb_routing { i32 6, i32 1 }], [2 x %struct.mxb_routing] [%struct.mxb_routing { i32 1, i32 1 }, %struct.mxb_routing { i32 3, i32 1 }], [2 x %struct.mxb_routing] [%struct.mxb_routing { i32 1, i32 1 }, %struct.mxb_routing { i32 2, i32 1 }], [2 x %struct.mxb_routing] [%struct.mxb_routing { i32 6, i32 1 }, %struct.mxb_routing { i32 6, i32 1 }]], [48 x i8] zeroinitializer }, align 32
@TEA6420_line = internal constant { [7 x [2 x %struct.mxb_routing]], [48 x i8] } { [7 x [2 x %struct.mxb_routing]] [[2 x %struct.mxb_routing] [%struct.mxb_routing { i32 2, i32 3 }, %struct.mxb_routing { i32 1, i32 2 }], [2 x %struct.mxb_routing] [%struct.mxb_routing { i32 5, i32 3 }, %struct.mxb_routing { i32 6, i32 2 }], [2 x %struct.mxb_routing] [%struct.mxb_routing { i32 4, i32 3 }, %struct.mxb_routing { i32 6, i32 2 }], [2 x %struct.mxb_routing] [%struct.mxb_routing { i32 3, i32 3 }, %struct.mxb_routing { i32 6, i32 2 }], [2 x %struct.mxb_routing] [%struct.mxb_routing { i32 2, i32 3 }, %struct.mxb_routing { i32 3, i32 2 }], [2 x %struct.mxb_routing] [%struct.mxb_routing { i32 2, i32 3 }, %struct.mxb_routing { i32 2, i32 2 }], [2 x %struct.mxb_routing] [%struct.mxb_routing { i32 6, i32 3 }, %struct.mxb_routing { i32 6, i32 2 }]], [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vidioc_enum_input.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str.3, ptr @.str.38, i8 0, i8 112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vidioc_enum_input\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(): VIDIOC_ENUMINPUT %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mxb: %s(): VIDIOC_ENUMINPUT %d\0A\00", [32 x i8] zeroinitializer }, align 32
@mxb_inputs = internal constant { [4 x %struct.v4l2_input], [64 x i8] } { [4 x %struct.v4l2_input] [%struct.v4l2_input { i32 0, [32 x i8] c"Tuner\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 63, i32 0, i64 23, i32 0, i32 4, [3 x i32] zeroinitializer }, %struct.v4l2_input { i32 1, [32 x i8] c"AUX1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 63, i32 0, i64 16777215, i32 0, i32 4, [3 x i32] zeroinitializer }, %struct.v4l2_input { i32 2, [32 x i8] c"AUX3 Composite\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 63, i32 0, i64 16777215, i32 0, i32 4, [3 x i32] zeroinitializer }, %struct.v4l2_input { i32 3, [32 x i8] c"AUX3 S-Video\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 63, i32 0, i64 16777215, i32 0, i32 4, [3 x i32] zeroinitializer }], [64 x i8] zeroinitializer }, align 32
@vidioc_g_input.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.40, ptr @.str.3, ptr @.str.41, i8 0, i8 115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vidioc_g_input\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(): VIDIOC_G_INPUT %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mxb: %s(): VIDIOC_G_INPUT %d\0A\00", [34 x i8] zeroinitializer }, align 32
@vidioc_s_input.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.43, ptr @.str.3, ptr @.str.44, i8 0, i8 118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vidioc_s_input\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(): VIDIOC_S_INPUT %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mxb: %s(): VIDIOC_S_INPUT %d\0A\00", [34 x i8] zeroinitializer }, align 32
@vidioc_s_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.43, ptr @.str.3, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013mxb: VIDIOC_S_INPUT: could not address saa7111a\0A\00", [45 x i8] zeroinitializer }, align 32
@vidioc_s_input._entry_ptr = internal global ptr @vidioc_s_input._entry, section ".printk_index", align 4
@vidioc_g_tuner.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.47, ptr @.str.3, ptr @.str.48, i8 0, i8 -122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vidioc_g_tuner\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s(): VIDIOC_G_TUNER: channel %d does not have a tuner attached\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"mxb: %s(): VIDIOC_G_TUNER: channel %d does not have a tuner attached\0A\00", [58 x i8] zeroinitializer }, align 32
@vidioc_g_tuner.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.47, ptr @.str.3, ptr @.str.50, i8 0, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s(): VIDIOC_G_TUNER: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mxb: %s(): VIDIOC_G_TUNER: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TV Tuner\00", [23 x i8] zeroinitializer }, align 32
@vidioc_s_tuner.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.3, ptr @.str.54, i8 0, i8 -117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vidioc_s_tuner\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s(): VIDIOC_S_TUNER: channel %d does not have a tuner attached\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"mxb: %s(): VIDIOC_S_TUNER: channel %d does not have a tuner attached\0A\00", [58 x i8] zeroinitializer }, align 32
@vidioc_g_frequency.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.56, ptr @.str.3, ptr @.str.57, i8 0, i8 -111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vidioc_g_frequency\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(): VIDIOC_G_FREQ: freq:0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"mxb: %s(): VIDIOC_G_FREQ: freq:0x%08x\0A\00", [57 x i8] zeroinitializer }, align 32
@vidioc_s_frequency.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.59, ptr @.str.3, ptr @.str.60, i8 0, i8 -107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vidioc_s_frequency\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s(): VIDIOC_S_FREQUENCY: freq:0x%08x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mxb: %s(): VIDIOC_S_FREQUENCY: freq:0x%08x\0A\00", [52 x i8] zeroinitializer }, align 32
@mxb_audios = internal constant { [6 x %struct.v4l2_audio], [72 x i8] } { [6 x %struct.v4l2_audio] [%struct.v4l2_audio { i32 0, [32 x i8] c"Tuner\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, [2 x i32] zeroinitializer }, %struct.v4l2_audio { i32 1, [32 x i8] c"AUX1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, [2 x i32] zeroinitializer }, %struct.v4l2_audio { i32 2, [32 x i8] c"AUX2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, [2 x i32] zeroinitializer }, %struct.v4l2_audio { i32 3, [32 x i8] c"AUX3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, [2 x i32] zeroinitializer }, %struct.v4l2_audio { i32 4, [32 x i8] c"Radio (X9)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, [2 x i32] zeroinitializer }, %struct.v4l2_audio { i32 5, [32 x i8] c"CD-ROM (X10)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, [2 x i32] zeroinitializer }], [72 x i8] zeroinitializer }, align 32
@vidioc_g_audio.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.62, ptr @.str.3, ptr @.str.63, i8 0, i8 -98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vidioc_g_audio\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s(): VIDIOC_G_AUDIO\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mxb: %s(): VIDIOC_G_AUDIO\0A\00", [37 x i8] zeroinitializer }, align 32
@vidioc_s_audio.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.65, ptr @.str.3, ptr @.str.66, i8 0, i8 -96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vidioc_s_audio\00", [17 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(): VIDIOC_S_AUDIO %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mxb: %s(): VIDIOC_S_AUDIO %d\0A\00", [34 x i8] zeroinitializer }, align 32
@mxb_init_done.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.68, ptr @.str.3, ptr @.str.69, i8 0, i8 103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mxb_init_done\00", [18 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s(): failed to initialize 'sound arena module'\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"mxb: %s(): failed to initialize 'sound arena module'\0A\00", [42 x i8] zeroinitializer }, align 32
@mxb_init_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.68, ptr @.str.3, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016mxb: 'sound arena module' detected\0A\00", [58 x i8] zeroinitializer }, align 32
@mxb_init_done._entry_ptr = internal global ptr @mxb_init_done._entry, section ".printk_index", align 4
@mxb_saa7740_init = internal global { <{ { i32, <{ i8, [8 x i8] }> }, %struct.anon.120, %struct.anon.120, %struct.anon.120, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120 }>, [304 x i8] } { <{ { i32, <{ i8, [8 x i8] }> }, %struct.anon.120, %struct.anon.120, %struct.anon.120, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120 }> <{ { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 -128, [8 x i8] zeroinitializer }> }, %struct.anon.120 { i32 3, [9 x i8] c"\80\89\00\00\00\00\00\00\00" }, %struct.anon.120 { i32 3, [9 x i8] c"\80\B0\0A\00\00\00\00\00\00" }, %struct.anon.120 { i32 3, [9 x i8] zeroinitializer }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 73, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 74, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 75, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 76, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 77, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 78, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 79, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 80, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 81, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 82, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 83, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 84, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 85, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 86, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 87, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 88, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 89, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 90, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 91, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 92, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 93, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 94, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 95, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 96, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 97, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 98, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 99, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 100, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 101, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 102, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 103, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 104, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 105, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 106, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 107, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 108, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 109, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 110, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 111, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 112, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 113, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 114, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 115, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 116, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 117, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 118, [8 x i8] zeroinitializer }> }, { i32, <{ i8, [8 x i8] }> } { i32 3, <{ i8, [8 x i8] }> <{ i8 119, [8 x i8] zeroinitializer }> }, %struct.anon.120 { i32 3, [9 x i8] c"A\00B\00\00\00\00\00\00" }, %struct.anon.120 { i32 3, [9 x i8] c"B\10B\00\00\00\00\00\00" }, %struct.anon.120 { i32 3, [9 x i8] c"C B\00\00\00\00\00\00" }, %struct.anon.120 { i32 3, [9 x i8] c"D0B\00\00\00\00\00\00" }, %struct.anon.120 { i32 3, [9 x i8] c"E\00\01\00\00\00\00\00\00" }, %struct.anon.120 { i32 3, [9 x i8] c"F\00\01\00\00\00\00\00\00" }, %struct.anon.120 { i32 3, [9 x i8] c"G\00\01\00\00\00\00\00\00" }, %struct.anon.120 { i32 3, [9 x i8] c"H\00\01\00\00\00\00\00\00" }, %struct.anon.120 { i32 9, [9 x i8] c"\01\03\C5\\z\85\01\00T" }, %struct.anon.120 { i32 9, [9 x i8] c"!\03\C5\\z\85\01\00T" }, %struct.anon.120 { i32 9, [9 x i8] c"\09\0B\B4kt\85\95\004" }, %struct.anon.120 { i32 9, [9 x i8] c")\0B\B4kt\85\95\004" }, %struct.anon.120 { i32 9, [9 x i8] c"\11\17Cbh\89\D1\FF\B0" }, %struct.anon.120 { i32 9, [9 x i8] c"1\17Cbh\89\D1\FF\B0" }, %struct.anon.120 { i32 9, [9 x i8] c"\19 bQZ\95\19\01P" }, %struct.anon.120 { i32 9, [9 x i8] c"9 bQZ\95\19\01P" }, %struct.anon.120 { i32 9, [9 x i8] c"\05>\D2iN\9AQ\00\F0" }, %struct.anon.120 { i32 9, [9 x i8] c"%>\D2iN\9AQ\00\F0" }, %struct.anon.120 { i32 9, [9 x i8] c"\0D=\A1@}\9F)\FE\14" }, %struct.anon.120 { i32 9, [9 x i8] c"-=\A1@}\9F)\FE\14" }, %struct.anon.120 { i32 9, [9 x i8] c"\15s\A1P]\A6\F5\FE8" }, %struct.anon.120 { i32 9, [9 x i8] c"5s\A1P]\A6\F5\FE8" }, %struct.anon.120 { i32 9, [9 x i8] c"\1D\ED\D0h)\B4\E1\00\B8" }, %struct.anon.120 { i32 9, [9 x i8] c"=\ED\D0h)\B4\E1\00\B8" }, %struct.anon.120 { i32 3, [9 x i8] c"\80\B3\0A\00\00\00\00\00\00" }, %struct.anon.120 { i32 -1, [9 x i8] zeroinitializer } }>, [304 x i8] zeroinitializer }, align 32
@mxb_detach.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.73, ptr @.str.3, ptr @.str.4, i8 0, i8 -71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mxb_detach\00", [21 x i8] zeroinitializer }, align 32
@mxb_init_module.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.74, ptr @.str.3, ptr @.str.75, i8 0, i8 -42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mxb_init_module\00", [16 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s(): failed to register extension\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"mxb: %s(): failed to register extension\0A\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@___asan_gen_.80 = private unnamed_addr constant [5 x i8] c"freq\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 43, i32 12 }
@___asan_gen_.83 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 47, i32 12 }
@___asan_gen_.86 = private unnamed_addr constant [10 x i8] c"extension\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 839, i32 33 }
@___asan_gen_.89 = private unnamed_addr constant [8 x i8] c"pci_tbl\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 817, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant [4 x i8] c"mxb\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 812, i32 42 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 813, i32 14 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 687, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [8 x i8] c"vv_data\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 831, i32 30 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 691, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 717, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 725, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 729, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [8 x i8] c"mxb_num\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 38, i32 12 }
@___asan_gen_.143 = private unnamed_addr constant [9 x i8] c"standard\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 788, i32 32 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 790, i32 11 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 795, i32 11 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 800, i32 11 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 805, i32 11 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 765, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 777, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant [13 x i8] c"mxb_ctrl_ops\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 215, i32 35 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 230, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 235, i32 65 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 239, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 245, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 247, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 251, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 253, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 255, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 260, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [20 x i8] c"video_audio_connect\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 79, i32 12 }
@___asan_gen_.218 = private unnamed_addr constant [11 x i8] c"TEA6420_cd\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 119, i32 27 }
@___asan_gen_.221 = private unnamed_addr constant [13 x i8] c"TEA6420_line\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 131, i32 27 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 450, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant [11 x i8] c"mxb_inputs\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 54, i32 26 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 463, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 474, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 517, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 535, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 540, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 543, i32 19 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 557, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 582, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 598, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant [11 x i8] c"mxb_audios\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 89, i32 26 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 632, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 642, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 412, i32 5 }
@___asan_gen_.335 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 416, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant [17 x i8] c"mxb_saa7740_init\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 281, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 740, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.354 = private constant [35 x i8] c"../drivers/media/pci/saa7146/mxb.c\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 856, i32 3 }
@llvm.compiler.used = appending global [112 x ptr] [ptr @__UNIQUE_ID_author320, ptr @__UNIQUE_ID_debug299, ptr @__UNIQUE_ID_debugtype298, ptr @__UNIQUE_ID_description319, ptr @__UNIQUE_ID_file321, ptr @__UNIQUE_ID_freq297, ptr @__UNIQUE_ID_freqtype296, ptr @__UNIQUE_ID_license322, ptr @__exitcall_mxb_cleanup_module, ptr @__initcall__kmod_mxb__318_868_mxb_init_module6, ptr @__param_debug, ptr @__param_freq, ptr @mxb_attach._entry, ptr @mxb_attach._entry.10, ptr @mxb_attach._entry.13, ptr @mxb_attach._entry.7, ptr @mxb_attach._entry_ptr, ptr @mxb_attach._entry_ptr.12, ptr @mxb_attach._entry_ptr.15, ptr @mxb_attach._entry_ptr.9, ptr @mxb_cleanup_module, ptr @mxb_init_done._entry, ptr @mxb_init_done._entry_ptr, ptr @mxb_probe._entry, ptr @mxb_probe._entry_ptr, ptr @vidioc_s_input._entry, ptr @vidioc_s_input._entry_ptr, ptr @freq, ptr @debug, ptr @extension, ptr @pci_tbl, ptr @mxb, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @vv_data, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @mxb_num, ptr @standard, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @mxb_ctrl_ops, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @video_audio_connect, ptr @TEA6420_cd, ptr @TEA6420_line, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @mxb_inputs, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @mxb_audios, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @mxb_saa7740_init, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extension to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxb to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vv_data to i32), i32 1044, i32 1312, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxb_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxb_attach._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxb_attach._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxb_attach._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxb_num to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @standard to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxb_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_audio_connect to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TEA6420_cd to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TEA6420_line to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxb_inputs to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxb_audios to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxb_init_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxb_saa7740_init to i32), i32 1232, i32 1536, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mxb_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @saa7146_unregister_extension(ptr noundef nonnull @extension) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_unregister_extension(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mxb_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @saa7146_register_extension(ptr noundef nonnull @extension) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.body:                                          ; preds = %entry
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.return_crit_edge, label %do.body3

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.body3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxb_init_module.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxb_init_module, %if.then8)) #10
          to label %return [label %if.then8], !srcloc !203

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxb_init_module.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.74) #10
  br label %return

return:                                           ; preds = %if.then8, %do.body3, %do.body.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -19, %do.body.return_crit_edge ], [ -19, %if.then8 ], [ 0, %entry.return_crit_edge ], [ -19, %do.body3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxb_attach(ptr noundef %dev, ptr nocapture noundef readnone %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxb_attach.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxb_attach, %if.then5)) #10
          to label %do.end8 [label %if.then5], !srcloc !203

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxb_attach.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, ptr noundef %dev) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  %call9 = tail call i32 @saa7146_vv_init(ptr noundef %dev, ptr noundef nonnull @vv_data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end17, label %do.end14

do.end14:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2) #13
  br label %cleanup

if.end17:                                         ; preds = %do.end8
  %call18 = tail call fastcc i32 @mxb_probe(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = tail call i32 @saa7146_vv_release(ptr noundef %dev) #10
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 12
  %1 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ext_priv, align 4
  store ptr @vidioc_enum_input, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @vv_data, i32 0, i32 7, i32 65), align 4
  store ptr @vidioc_g_input, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @vv_data, i32 0, i32 7, i32 66), align 4
  store ptr @vidioc_s_input, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @vv_data, i32 0, i32 7, i32 67), align 4
  store ptr @vidioc_querystd, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @vv_data, i32 0, i32 7, i32 64), align 4
  store ptr @vidioc_g_tuner, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @vv_data, i32 0, i32 7, i32 99), align 4
  store ptr @vidioc_s_tuner, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @vv_data, i32 0, i32 7, i32 100), align 4
  store ptr @vidioc_g_frequency, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @vv_data, i32 0, i32 7, i32 101), align 4
  store ptr @vidioc_s_frequency, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @vv_data, i32 0, i32 7, i32 102), align 4
  store ptr @vidioc_enumaudio, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @vv_data, i32 0, i32 7, i32 79), align 4
  store ptr @vidioc_g_audio, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @vv_data, i32 0, i32 7, i32 80), align 4
  store ptr @vidioc_s_audio, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @vv_data, i32 0, i32 7, i32 81), align 4
  store ptr @vidioc_g_register, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @vv_data, i32 0, i32 7, i32 107), align 4
  store ptr @vidioc_s_register, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @vv_data, i32 0, i32 7, i32 108), align 4
  %call23 = tail call i32 @saa7146_register_device(ptr noundef %2, ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end32, label %do.end28

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2) #13
  %call31 = tail call i32 @saa7146_vv_release(ptr noundef %dev) #10
  br label %cleanup

if.end32:                                         ; preds = %if.end22
  %revision = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 6
  %3 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end32.do.end46_crit_edge, label %if.then33

if.end32.do.end46_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end46

if.then33:                                        ; preds = %if.end32
  %vbi_dev = getelementptr inbounds %struct.mxb, ptr %2, i32 0, i32 1
  %call34 = tail call i32 @saa7146_register_device(ptr noundef %vbi_dev, ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then33.do.end46_crit_edge, label %do.end39

if.then33.do.end46_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end46

do.end39:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2) #13
  br label %do.end46

do.end46:                                         ; preds = %do.end39, %if.then33.do.end46_crit_edge, %if.end32.do.end46_crit_edge
  %5 = load i32, ptr @mxb_num, align 4
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %5) #13
  %6 = load i32, ptr @mxb_num, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr @mxb_num, align 4
  tail call fastcc void @mxb_init_done(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %do.end46, %do.end28, %if.then20, %do.end14
  %retval.0 = phi i32 [ %call9, %do.end14 ], [ -1, %if.then20 ], [ -1, %do.end28 ], [ 0, %do.end46 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxb_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxb_detach.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxb_detach, %if.then5)) #10
          to label %do.end8 [label %if.then5], !srcloc !203

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxb_detach.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.73, ptr noundef %dev) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  tail call fastcc void @tea6420_route(ptr noundef %1, i32 noundef 6)
  %call9 = tail call i32 @saa7146_unregister_device(ptr noundef %1, ptr noundef %dev) #10
  %revision = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 6
  %3 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %do.end8.if.end12_crit_edge, label %if.then10

do.end8.if.end12_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then10:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  %vbi_dev = getelementptr inbounds %struct.mxb, ptr %1, i32 0, i32 1
  %call11 = tail call i32 @saa7146_unregister_device(ptr noundef %vbi_dev, ptr noundef %dev) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %do.end8.if.end12_crit_edge
  %call13 = tail call i32 @saa7146_vv_release(ptr noundef %dev) #10
  %5 = load i32, ptr @mxb_num, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr @mxb_num, align 4
  %i2c_adapter = getelementptr inbounds %struct.mxb, ptr %1, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %i2c_adapter) #10
  tail call void @kfree(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_vv_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxb_probe(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 2
  %call = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @mxb_ctrl_ops, i32 noundef 9963785, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #10
  %error = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 2, i32 9
  %0 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4152) #14
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.body, label %if.end16

do.body:                                          ; preds = %if.end
  %3 = load i32, ptr @debug, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %do.body6

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxb_probe.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxb_probe, %if.then11)) #10
          to label %cleanup [label %if.then11], !srcloc !203

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxb_probe.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %i2c_adapter = getelementptr inbounds %struct.mxb, ptr %call7.i.i, i32 0, i32 2
  %name = getelementptr inbounds %struct.mxb, ptr %call7.i.i, i32 0, i32 2, i32 12
  %4 = load i32, ptr @mxb_num, align 4
  %call17 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 48, ptr noundef nonnull @.str.28, i32 noundef %4)
  %call19 = tail call i32 @saa7146_i2c_adapter_prepare(ptr noundef %dev, ptr noundef %i2c_adapter, i32 noundef 1024) #10
  %call21 = tail call i32 @i2c_add_adapter(ptr noundef %i2c_adapter) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %do.body24, label %if.end47

do.body24:                                        ; preds = %if.end16
  %5 = load i32, ptr @debug, align 4
  %and25 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body24.do.end46_crit_edge, label %do.body28

do.body24.do.end46_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end46

do.body28:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxb_probe.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxb_probe, %if.then40)) #10
          to label %do.end46 [label %if.then40], !srcloc !203

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxb_probe.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.25) #10
  br label %do.end46

do.end46:                                         ; preds = %if.then40, %do.body28, %do.body24.do.end46_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end47:                                         ; preds = %if.end16
  %v4l2_dev = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 1
  %call49 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev, ptr noundef %i2c_adapter, ptr noundef nonnull @.str.31, i8 noundef zeroext 36, ptr noundef null) #10
  %saa7111a = getelementptr inbounds %struct.mxb, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %saa7111a to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call49, ptr %saa7111a, align 8
  %call52 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev, ptr noundef %i2c_adapter, ptr noundef nonnull @.str.32, i8 noundef zeroext 76, ptr noundef null) #10
  %tea6420_1 = getelementptr inbounds %struct.mxb, ptr %call7.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %tea6420_1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call52, ptr %tea6420_1, align 8
  %call55 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev, ptr noundef %i2c_adapter, ptr noundef nonnull @.str.32, i8 noundef zeroext 77, ptr noundef null) #10
  %tea6420_2 = getelementptr inbounds %struct.mxb, ptr %call7.i.i, i32 0, i32 8
  %8 = ptrtoint ptr %tea6420_2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call55, ptr %tea6420_2, align 4
  %call58 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev, ptr noundef %i2c_adapter, ptr noundef nonnull @.str.33, i8 noundef zeroext 67, ptr noundef null) #10
  %tea6415c = getelementptr inbounds %struct.mxb, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %tea6415c to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call58, ptr %tea6415c, align 8
  %call61 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev, ptr noundef %i2c_adapter, ptr noundef nonnull @.str.34, i8 noundef zeroext 66, ptr noundef null) #10
  %tda9840 = getelementptr inbounds %struct.mxb, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %tda9840 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call61, ptr %tda9840, align 4
  %call64 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev, ptr noundef %i2c_adapter, ptr noundef nonnull @.str.35, i8 noundef zeroext 96, ptr noundef null) #10
  %tuner = getelementptr inbounds %struct.mxb, ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %tuner to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call64, ptr %tuner, align 4
  %12 = ptrtoint ptr %tea6420_1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tea6420_1, align 8
  %tobool66.not = icmp eq ptr %13, null
  br i1 %tobool66.not, label %if.end47.do.end84_crit_edge, label %lor.lhs.false

if.end47.do.end84_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end84

lor.lhs.false:                                    ; preds = %if.end47
  %14 = ptrtoint ptr %tea6420_2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tea6420_2, align 4
  %tobool68.not = icmp eq ptr %15, null
  br i1 %tobool68.not, label %lor.lhs.false.do.end84_crit_edge, label %lor.lhs.false69

lor.lhs.false.do.end84_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end84

lor.lhs.false69:                                  ; preds = %lor.lhs.false
  %16 = ptrtoint ptr %tea6415c to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tea6415c, align 8
  %tobool71.not = icmp eq ptr %17, null
  br i1 %tobool71.not, label %lor.lhs.false69.do.end84_crit_edge, label %lor.lhs.false72

lor.lhs.false69.do.end84_crit_edge:               ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end84

lor.lhs.false72:                                  ; preds = %lor.lhs.false69
  %18 = ptrtoint ptr %tda9840 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tda9840, align 4
  %tobool74.not = icmp eq ptr %19, null
  br i1 %tobool74.not, label %lor.lhs.false72.do.end84_crit_edge, label %lor.lhs.false75

lor.lhs.false72.do.end84_crit_edge:               ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end84

lor.lhs.false75:                                  ; preds = %lor.lhs.false72
  %20 = ptrtoint ptr %saa7111a to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %saa7111a, align 8
  %tobool77.not = icmp eq ptr %21, null
  %tobool80.not = icmp eq ptr %call64, null
  %or.cond = select i1 %tobool77.not, i1 true, i1 %tobool80.not
  br i1 %or.cond, label %lor.lhs.false75.do.end84_crit_edge, label %if.end88

lor.lhs.false75.do.end84_crit_edge:               ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end84

do.end84:                                         ; preds = %lor.lhs.false75.do.end84_crit_edge, %lor.lhs.false72.do.end84_crit_edge, %lor.lhs.false69.do.end84_crit_edge, %lor.lhs.false.do.end84_crit_edge, %if.end47.do.end84_crit_edge
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #13
  tail call void @i2c_del_adapter(ptr noundef %i2c_adapter) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end88:                                         ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #12
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 12
  %22 = ptrtoint ptr %ext_priv to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %ext_priv, align 4
  %call89 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_handler) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end88, %do.end84, %do.end46, %if.then11, %do.body6, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %do.end46 ], [ 0, %if.end88 ], [ -19, %do.end84 ], [ %1, %entry.cleanup_crit_edge ], [ -12, %if.then11 ], [ -12, %do.body.cleanup_crit_edge ], [ -12, %do.body6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_vv_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.body1

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_enum_input.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_enum_input, %if.then5)) #10
          to label %do.end7 [label %if.then5], !srcloc !203

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_enum_input.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %2) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then5, %do.body1, %entry.do.end7_crit_edge
  %3 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp = icmp ugt i32 %4, 3
  br i1 %cmp, label %do.end7.return_crit_edge, label %if.end10

do.end7.return_crit_edge:                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end10:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [4 x %struct.v4l2_input], ptr @mxb_inputs, i32 0, i32 %4
  %5 = call ptr @memcpy(ptr %i, ptr %arrayidx, i32 80)
  br label %return

return:                                           ; preds = %if.end10, %do.end7.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -22, %do.end7.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext_priv, align 4
  %cur_input = getelementptr inbounds %struct.mxb, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %cur_input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_input, align 4
  %6 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %i, align 4
  %7 = load i32, ptr @debug, align 4
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body2

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_g_input.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_g_input, %if.then6)) #10
          to label %do.end9 [label %if.then6], !srcloc !203

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_g_input.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40, i32 noundef %9) #10
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body2, %entry.do.end9_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, i32 noundef %input) #2 align 64 {
entry:
  %t.i = alloca %struct.v4l2_tuner, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext_priv, align 4
  %4 = load i32, ptr @debug, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body2

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_s_input.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_s_input, %if.then6)) #10
          to label %do.end9 [label %if.then6], !srcloc !203

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_s_input.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43, i32 noundef %input) #10
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body2, %entry.do.end9_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %input)
  %cmp = icmp ugt i32 %input, 3
  br i1 %cmp, label %do.end9.cleanup_crit_edge, label %if.end11

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %do.end9
  %cur_input = getelementptr inbounds %struct.mxb, ptr %3, i32 0, i32 10
  %5 = ptrtoint ptr %cur_input to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %input, ptr %cur_input, align 4
  tail call void @saa7146_set_hps_source_and_sync(ptr noundef %1, i32 noundef 0, i32 noundef 0) #10
  %6 = zext i32 %input to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %input, label %if.end11.if.end109_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb72
    i32 2, label %sw.bb73
    i32 1, label %sw.bb74
  ]

if.end11.if.end109_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

sw.bb:                                            ; preds = %if.end11
  %tea6415c = getelementptr inbounds %struct.mxb, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %tea6415c to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tea6415c, align 8
  %tobool13.not = icmp eq ptr %8, null
  br i1 %tobool13.not, label %sw.bb.cleanup_crit_edge, label %if.else

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %video, align 4
  %tobool15.not = icmp eq ptr %12, null
  br i1 %tobool15.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %tobool18.not = icmp eq ptr %14, null
  br i1 %tobool18.not, label %land.lhs.true.cleanup_crit_edge, label %if.else20

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else20:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool21.not = icmp eq ptr %15, null
  br i1 %tobool21.not, label %if.else20.if.else28_crit_edge, label %land.lhs.true22

if.else20.if.else28_crit_edge:                    ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else28

land.lhs.true22:                                  ; preds = %if.else20
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool24.not = icmp eq ptr %17, null
  br i1 %tobool24.not, label %land.lhs.true22.if.else28_crit_edge, label %land.lhs.true22.if.end35_crit_edge

land.lhs.true22.if.end35_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

land.lhs.true22.if.else28_crit_edge:              ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else28

if.else28:                                        ; preds = %land.lhs.true22.if.else28_crit_edge, %if.else20.if.else28_crit_edge
  br label %if.end35

if.end35:                                         ; preds = %if.else28, %land.lhs.true22.if.end35_crit_edge
  %.sink = phi ptr [ %14, %if.else28 ], [ %17, %land.lhs.true22.if.end35_crit_edge ]
  %call32 = tail call i32 %.sink(ptr noundef nonnull %8, i32 noundef 3, i32 noundef 17, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool37.not = icmp eq i32 %call32, 0
  br i1 %tobool37.not, label %if.then38, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then38:                                        ; preds = %if.end35
  %18 = ptrtoint ptr %tea6415c to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tea6415c, align 8
  %tobool42.not = icmp eq ptr %19, null
  br i1 %tobool42.not, label %if.then38.cleanup_crit_edge, label %if.else44

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else44:                                        ; preds = %if.then38
  %ops45 = getelementptr inbounds %struct.v4l2_subdev, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %ops45 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops45, align 4
  %video46 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %video46 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %video46, align 4
  %tobool47.not = icmp eq ptr %23, null
  br i1 %tobool47.not, label %if.else44.cleanup_crit_edge, label %land.lhs.true48

if.else44.cleanup_crit_edge:                      ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true48:                                  ; preds = %if.else44
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %tobool52.not = icmp eq ptr %25, null
  br i1 %tobool52.not, label %land.lhs.true48.cleanup_crit_edge, label %if.else54

land.lhs.true48.cleanup_crit_edge:                ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else54:                                        ; preds = %land.lhs.true48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool55.not = icmp eq ptr %26, null
  br i1 %tobool55.not, label %if.else54.if.else62_crit_edge, label %land.lhs.true56

if.else54.if.else62_crit_edge:                    ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else62

land.lhs.true56:                                  ; preds = %if.else54
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %tobool58.not = icmp eq ptr %28, null
  br i1 %tobool58.not, label %land.lhs.true56.if.else62_crit_edge, label %if.then59

land.lhs.true56.if.else62_crit_edge:              ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else62

if.then59:                                        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #12
  %call61 = tail call i32 %28(ptr noundef nonnull %19, i32 noundef 3, i32 noundef 13, i32 noundef 0) #10
  br label %sw.epilog

if.else62:                                        ; preds = %land.lhs.true56.if.else62_crit_edge, %if.else54.if.else62_crit_edge
  %call66 = tail call i32 %25(ptr noundef nonnull %19, i32 noundef 3, i32 noundef 13, i32 noundef 0) #10
  br label %sw.epilog

sw.bb72:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

sw.bb73:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

sw.bb74:                                          ; preds = %if.end11
  %tea6415c76 = getelementptr inbounds %struct.mxb, ptr %3, i32 0, i32 5
  %29 = ptrtoint ptr %tea6415c76 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tea6415c76, align 8
  %tobool78.not = icmp eq ptr %30, null
  br i1 %tobool78.not, label %sw.bb74.cleanup_crit_edge, label %if.else80

sw.bb74.cleanup_crit_edge:                        ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else80:                                        ; preds = %sw.bb74
  %ops81 = getelementptr inbounds %struct.v4l2_subdev, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %ops81 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops81, align 4
  %video82 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %video82 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %video82, align 4
  %tobool83.not = icmp eq ptr %34, null
  br i1 %tobool83.not, label %if.else80.cleanup_crit_edge, label %land.lhs.true84

if.else80.cleanup_crit_edge:                      ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true84:                                  ; preds = %if.else80
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %tobool88.not = icmp eq ptr %36, null
  br i1 %tobool88.not, label %land.lhs.true84.cleanup_crit_edge, label %if.else90

land.lhs.true84.cleanup_crit_edge:                ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else90:                                        ; preds = %land.lhs.true84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool91.not = icmp eq ptr %37, null
  br i1 %tobool91.not, label %if.else90.if.else98_crit_edge, label %land.lhs.true92

if.else90.if.else98_crit_edge:                    ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else98

land.lhs.true92:                                  ; preds = %if.else90
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %tobool94.not = icmp eq ptr %39, null
  br i1 %tobool94.not, label %land.lhs.true92.if.else98_crit_edge, label %if.then95

land.lhs.true92.if.else98_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else98

if.then95:                                        ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #12
  %call97 = tail call i32 %39(ptr noundef nonnull %30, i32 noundef 1, i32 noundef 17, i32 noundef 0) #10
  br label %sw.epilog

if.else98:                                        ; preds = %land.lhs.true92.if.else98_crit_edge, %if.else90.if.else98_crit_edge
  %call102 = tail call i32 %36(ptr noundef nonnull %30, i32 noundef 1, i32 noundef 17, i32 noundef 0) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else98, %if.then95, %if.else62, %if.then59
  %err.0 = phi i32 [ %call61, %if.then59 ], [ %call66, %if.else62 ], [ %call97, %if.then95 ], [ %call102, %if.else98 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool107.not = icmp eq i32 %err.0, 0
  br i1 %tobool107.not, label %sw.epilog.if.end109_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog.if.end109_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

if.end109:                                        ; preds = %sw.epilog.if.end109_crit_edge, %sw.bb73, %sw.bb72, %if.end11.if.end109_crit_edge
  %i.0228 = phi i32 [ 0, %sw.epilog.if.end109_crit_edge ], [ 7, %sw.bb72 ], [ 1, %sw.bb73 ], [ 0, %if.end11.if.end109_crit_edge ]
  %saa7111a = getelementptr inbounds %struct.mxb, ptr %3, i32 0, i32 3
  %40 = ptrtoint ptr %saa7111a to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %saa7111a, align 8
  %tobool112.not = icmp eq ptr %41, null
  br i1 %tobool112.not, label %if.end109.do.end145_crit_edge, label %if.else114

if.end109.do.end145_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end145

if.else114:                                       ; preds = %if.end109
  %ops115 = getelementptr inbounds %struct.v4l2_subdev, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %ops115 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops115, align 4
  %video116 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %video116 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %video116, align 4
  %tobool117.not = icmp eq ptr %45, null
  br i1 %tobool117.not, label %if.else114.do.end145_crit_edge, label %land.lhs.true118

if.else114.do.end145_crit_edge:                   ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end145

land.lhs.true118:                                 ; preds = %if.else114
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %tobool122.not = icmp eq ptr %47, null
  br i1 %tobool122.not, label %land.lhs.true118.do.end145_crit_edge, label %if.else124

land.lhs.true118.do.end145_crit_edge:             ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end145

if.else124:                                       ; preds = %land.lhs.true118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool125.not = icmp eq ptr %48, null
  br i1 %tobool125.not, label %if.else124.if.else132_crit_edge, label %land.lhs.true126

if.else124.if.else132_crit_edge:                  ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else132

land.lhs.true126:                                 ; preds = %if.else124
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %tobool128.not = icmp eq ptr %50, null
  br i1 %tobool128.not, label %land.lhs.true126.if.else132_crit_edge, label %land.lhs.true126.if.end139_crit_edge

land.lhs.true126.if.end139_crit_edge:             ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end139

land.lhs.true126.if.else132_crit_edge:            ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else132

if.else132:                                       ; preds = %land.lhs.true126.if.else132_crit_edge, %if.else124.if.else132_crit_edge
  br label %if.end139

if.end139:                                        ; preds = %if.else132, %land.lhs.true126.if.end139_crit_edge
  %.sink231 = phi ptr [ %47, %if.else132 ], [ %50, %land.lhs.true126.if.end139_crit_edge ]
  %call136 = tail call i32 %.sink231(ptr noundef nonnull %41, i32 noundef %i.0228, i32 noundef 128, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool141.not = icmp eq i32 %call136, 0
  br i1 %tobool141.not, label %if.end139.if.end148_crit_edge, label %if.end139.do.end145_crit_edge

if.end139.do.end145_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end145

if.end139.if.end148_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end148

do.end145:                                        ; preds = %if.end139.do.end145_crit_edge, %land.lhs.true118.do.end145_crit_edge, %if.else114.do.end145_crit_edge, %if.end109.do.end145_crit_edge
  %call147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #13
  br label %if.end148

if.end148:                                        ; preds = %do.end145, %if.end139.if.end148_crit_edge
  %arrayidx149 = getelementptr [4 x i32], ptr @video_audio_connect, i32 0, i32 %input
  %51 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx149, align 4
  %cur_audinput = getelementptr inbounds %struct.mxb, ptr %3, i32 0, i32 11
  %53 = ptrtoint ptr %cur_audinput to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %cur_audinput, align 8
  %cur_mute = getelementptr inbounds %struct.mxb, ptr %3, i32 0, i32 12
  %54 = ptrtoint ptr %cur_mute to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cur_mute, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp150 = icmp eq i32 %55, 0
  br i1 %cmp150, label %if.then151, label %if.end148.if.end153_crit_edge

if.end148.if.end153_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end153

if.then151:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @tea6420_route(ptr noundef %3, i32 noundef %52)
  %56 = ptrtoint ptr %cur_audinput to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr = load i32, ptr %cur_audinput, align 8
  br label %if.end153

if.end153:                                        ; preds = %if.then151, %if.end148.if.end153_crit_edge
  %57 = phi i32 [ %.pr, %if.then151 ], [ %52, %if.end148.if.end153_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp155 = icmp eq i32 %57, 0
  br i1 %cmp155, label %if.then156, label %if.end153.cleanup_crit_edge

if.end153.cleanup_crit_edge:                      ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then156:                                       ; preds = %if.end153
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %t.i) #10
  %58 = call ptr @memset(ptr %t.i, i32 0, i32 84)
  %audmode.i = getelementptr inbounds %struct.v4l2_tuner, ptr %t.i, i32 0, i32 7
  %cur_mode.i = getelementptr inbounds %struct.mxb, ptr %3, i32 0, i32 9
  %59 = ptrtoint ptr %cur_mode.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cur_mode.i, align 8
  %61 = ptrtoint ptr %audmode.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %audmode.i, align 4
  %tda9840.i = getelementptr inbounds %struct.mxb, ptr %3, i32 0, i32 4
  %62 = ptrtoint ptr %tda9840.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tda9840.i, align 4
  %tobool.not.i = icmp eq ptr %63, null
  br i1 %tobool.not.i, label %if.then156.mxb_update_audmode.exit_crit_edge, label %if.else.i

if.then156.mxb_update_audmode.exit_crit_edge:     ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxb_update_audmode.exit

if.else.i:                                        ; preds = %if.then156
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops.i, align 4
  %tuner.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %tuner.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tuner.i, align 4
  %tobool1.not.i = icmp eq ptr %67, null
  br i1 %tobool1.not.i, label %if.else.i.mxb_update_audmode.exit_crit_edge, label %land.lhs.true.i

if.else.i.mxb_update_audmode.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxb_update_audmode.exit

land.lhs.true.i:                                  ; preds = %if.else.i
  %s_tuner.i = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %67, i32 0, i32 6
  %68 = ptrtoint ptr %s_tuner.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %s_tuner.i, align 4
  %tobool4.not.i = icmp eq ptr %69, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.mxb_update_audmode.exit_crit_edge, label %if.else6.i

land.lhs.true.i.mxb_update_audmode.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxb_update_audmode.exit

if.else6.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool7.not.i = icmp eq ptr %70, null
  br i1 %tobool7.not.i, label %if.else6.i.if.else13.i_crit_edge, label %land.lhs.true8.i

if.else6.i.if.else13.i_crit_edge:                 ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else13.i

land.lhs.true8.i:                                 ; preds = %if.else6.i
  %s_tuner9.i = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %70, i32 0, i32 6
  %71 = ptrtoint ptr %s_tuner9.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %s_tuner9.i, align 4
  %tobool10.not.i = icmp eq ptr %72, null
  br i1 %tobool10.not.i, label %land.lhs.true8.i.if.else13.i_crit_edge, label %land.lhs.true8.i.if.end19.sink.split.i_crit_edge

land.lhs.true8.i.if.end19.sink.split.i_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.sink.split.i

land.lhs.true8.i.if.else13.i_crit_edge:           ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else13.i

if.else13.i:                                      ; preds = %land.lhs.true8.i.if.else13.i_crit_edge, %if.else6.i.if.else13.i_crit_edge
  br label %if.end19.sink.split.i

if.end19.sink.split.i:                            ; preds = %if.else13.i, %land.lhs.true8.i.if.end19.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %69, %if.else13.i ], [ %72, %land.lhs.true8.i.if.end19.sink.split.i_crit_edge ]
  %call17.i = call i32 %.sink.i(ptr noundef nonnull %63, ptr noundef nonnull %t.i) #10
  br label %mxb_update_audmode.exit

mxb_update_audmode.exit:                          ; preds = %if.end19.sink.split.i, %land.lhs.true.i.mxb_update_audmode.exit_crit_edge, %if.else.i.mxb_update_audmode.exit_crit_edge, %if.then156.mxb_update_audmode.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %t.i) #10
  br label %cleanup

cleanup:                                          ; preds = %mxb_update_audmode.exit, %if.end153.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %land.lhs.true84.cleanup_crit_edge, %if.else80.cleanup_crit_edge, %sw.bb74.cleanup_crit_edge, %land.lhs.true48.cleanup_crit_edge, %if.else44.cleanup_crit_edge, %if.then38.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end9.cleanup_crit_edge ], [ %err.0, %sw.epilog.cleanup_crit_edge ], [ 0, %mxb_update_audmode.exit ], [ 0, %if.end153.cleanup_crit_edge ], [ -515, %if.else80.cleanup_crit_edge ], [ -515, %land.lhs.true84.cleanup_crit_edge ], [ -19, %sw.bb74.cleanup_crit_edge ], [ -515, %if.else44.cleanup_crit_edge ], [ -515, %land.lhs.true48.cleanup_crit_edge ], [ -19, %if.then38.cleanup_crit_edge ], [ %call32, %if.end35.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querystd(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %norm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %subdevs = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn33 = load ptr, ptr %subdevs, align 4
  %cmp.not35 = icmp eq ptr %.pn33, %subdevs
  br i1 %cmp.not35, label %entry.for.end.thread_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn37 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn33, %entry.for.body_crit_edge ]
  %__err.036 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %__sd.038 = getelementptr i8, ptr %.pn37, i32 -80
  %ops = getelementptr i8, ptr %.pn37, i32 24
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %video, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %querystd = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %querystd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %querystd, align 4
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %8(ptr noundef %__sd.038, ptr noundef %norm) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %__err.1 = phi i32 [ %call, %if.then ], [ %__err.036, %land.lhs.true.if.end_crit_edge ], [ %__err.036, %for.body.if.end_crit_edge ]
  %9 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %__err.1, label %if.end.for.end.thread_crit_edge [
    i32 0, label %if.end.for.inc_crit_edge
    i32 -515, label %if.end.for.inc_crit_edge46
  ]

if.end.for.inc_crit_edge46:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.for.end.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %if.end.for.inc_crit_edge46
  %10 = ptrtoint ptr %.pn37 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn37, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__err.1)
  %cmp22 = icmp eq i32 %__err.1, -515
  %spec.select = select i1 %cmp22, i32 0, i32 %__err.1
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end, %if.end.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  %11 = phi i32 [ 0, %entry.for.end.thread_crit_edge ], [ %spec.select, %for.end ], [ %__err.1, %if.end.for.end.thread_crit_edge ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_tuner(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext_priv, align 4
  %4 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %6 = load i32, ptr @debug, align 4
  br i1 %tobool.not, label %do.body14, label %do.body

do.body:                                          ; preds = %entry
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %do.body4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_g_tuner.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_g_tuner, %if.then8)) #10
          to label %cleanup [label %if.then8], !srcloc !203

if.then8:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %t, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_g_tuner.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %8) #10
  br label %cleanup

do.body14:                                        ; preds = %entry
  %and15 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.body14.do.end37_crit_edge, label %do.body18

do.body14.do.end37_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

do.body18:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_g_tuner.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_g_tuner, %if.then30)) #10
          to label %do.end37 [label %if.then30], !srcloc !203

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %t, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_g_tuner.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.47, i32 noundef %10) #10
  br label %do.end37

do.end37:                                         ; preds = %if.then30, %do.body18, %do.body14.do.end37_crit_edge
  %11 = call ptr @memset(ptr %t, i32 0, i32 84)
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 1
  %call38 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.52, i32 noundef 32) #10
  %type = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 2
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %type, align 4
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 3
  %13 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 114, ptr %capability, align 4
  %cur_mode = getelementptr inbounds %struct.mxb, ptr %3, i32 0, i32 9
  %14 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cur_mode, align 8
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 7
  %16 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %audmode, align 4
  %subdevs = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn92 = load ptr, ptr %subdevs, align 4
  %cmp.not94 = icmp eq ptr %.pn92, %subdevs
  br i1 %cmp.not94, label %do.end37.cleanup_crit_edge, label %do.end37.for.body_crit_edge

do.end37.for.body_crit_edge:                      ; preds = %do.end37
  br label %for.body

do.end37.cleanup_crit_edge:                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end37.for.body_crit_edge
  %.pn96 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn92, %do.end37.for.body_crit_edge ]
  %__err.095 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %do.end37.for.body_crit_edge ]
  %__sd.097 = getelementptr i8, ptr %.pn96, i32 -80
  %ops = getelementptr i8, ptr %.pn96, i32 24
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tuner, align 4
  %tobool45.not = icmp eq ptr %21, null
  br i1 %tobool45.not, label %for.body.if.end54_crit_edge, label %land.lhs.true

for.body.if.end54_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

land.lhs.true:                                    ; preds = %for.body
  %g_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %g_tuner to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %g_tuner, align 4
  %tobool48.not = icmp eq ptr %23, null
  br i1 %tobool48.not, label %land.lhs.true.if.end54_crit_edge, label %if.then49

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then49:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call53 = tail call i32 %23(ptr noundef %__sd.097, ptr noundef %t) #10
  br label %if.end54

if.end54:                                         ; preds = %if.then49, %land.lhs.true.if.end54_crit_edge, %for.body.if.end54_crit_edge
  %__err.1 = phi i32 [ %call53, %if.then49 ], [ %__err.095, %land.lhs.true.if.end54_crit_edge ], [ %__err.095, %for.body.if.end54_crit_edge ]
  %24 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %__err.1, label %if.end54.cleanup_crit_edge [
    i32 0, label %if.end54.for.inc_crit_edge
    i32 -515, label %if.end54.for.inc_crit_edge105
  ]

if.end54.for.inc_crit_edge105:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end54.for.inc_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %if.end54.for.inc_crit_edge, %if.end54.for.inc_crit_edge105
  %25 = ptrtoint ptr %.pn96 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn = load ptr, ptr %.pn96, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__err.1)
  %cmp66 = icmp eq i32 %__err.1, -515
  %spec.select = select i1 %cmp66, i32 0, i32 %__err.1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end54.cleanup_crit_edge, %do.end37.cleanup_crit_edge, %if.then8, %do.body4, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then8 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.body4 ], [ 0, %do.end37.cleanup_crit_edge ], [ %spec.select, %for.end ], [ %__err.1, %if.end54.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_tuner(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end13, label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %do.body4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_s_tuner.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_s_tuner, %if.then8)) #10
          to label %cleanup [label %if.then8], !srcloc !203

if.then8:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %t, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_s_tuner.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.53, i32 noundef %4) #10
  br label %cleanup

if.end13:                                         ; preds = %entry
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %5 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1, align 4
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ext_priv, align 4
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 7
  %9 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %audmode, align 4
  %cur_mode = getelementptr inbounds %struct.mxb, ptr %8, i32 0, i32 9
  %11 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %cur_mode, align 8
  %subdevs = getelementptr inbounds %struct.saa7146_dev, ptr %6, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn58 = load ptr, ptr %subdevs, align 4
  %cmp.not60 = icmp eq ptr %.pn58, %subdevs
  br i1 %cmp.not60, label %if.end13.cleanup_crit_edge, label %if.end13.for.body_crit_edge

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  br label %for.body

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end13.for.body_crit_edge
  %.pn62 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn58, %if.end13.for.body_crit_edge ]
  %__err.061 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %if.end13.for.body_crit_edge ]
  %__sd.063 = getelementptr i8, ptr %.pn62, i32 -80
  %ops = getelementptr i8, ptr %.pn62, i32 24
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tuner, align 4
  %tobool20.not = icmp eq ptr %16, null
  br i1 %tobool20.not, label %for.body.if.end29_crit_edge, label %land.lhs.true

for.body.if.end29_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.lhs.true:                                    ; preds = %for.body
  %s_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %s_tuner to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_tuner, align 4
  %tobool23.not = icmp eq ptr %18, null
  br i1 %tobool23.not, label %land.lhs.true.if.end29_crit_edge, label %if.then24

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call28 = tail call i32 %18(ptr noundef %__sd.063, ptr noundef %t) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %land.lhs.true.if.end29_crit_edge, %for.body.if.end29_crit_edge
  %__err.1 = phi i32 [ %call28, %if.then24 ], [ %__err.061, %land.lhs.true.if.end29_crit_edge ], [ %__err.061, %for.body.if.end29_crit_edge ]
  %19 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %__err.1, label %if.end29.cleanup_crit_edge [
    i32 0, label %if.end29.for.inc_crit_edge
    i32 -515, label %if.end29.for.inc_crit_edge71
  ]

if.end29.for.inc_crit_edge71:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end29.for.inc_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %if.end29.for.inc_crit_edge, %if.end29.for.inc_crit_edge71
  %20 = ptrtoint ptr %.pn62 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn = load ptr, ptr %.pn62, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__err.1)
  %cmp41 = icmp eq i32 %__err.1, -515
  %spec.select = select i1 %cmp41, i32 0, i32 %__err.1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end29.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then8, %do.body4, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then8 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.body4 ], [ 0, %if.end13.cleanup_crit_edge ], [ %spec.select, %for.end ], [ %__err.1, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_frequency(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ext_priv, align 4
  %cur_freq = getelementptr inbounds %struct.mxb, ptr %5, i32 0, i32 13
  %6 = call ptr @memcpy(ptr %f, ptr %cur_freq, i32 44)
  %7 = load i32, ptr @debug, align 4
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.body4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_g_frequency.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_g_frequency, %if.then8)) #10
          to label %cleanup [label %if.then8], !srcloc !203

if.then8:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %frequency = getelementptr inbounds %struct.mxb, ptr %5, i32 0, i32 13, i32 2
  %8 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frequency, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_g_frequency.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.56, i32 noundef %9) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %do.body4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then8 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %do.body4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_frequency(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %f) #2 align 64 {
entry:
  %t.i = alloca %struct.v4l2_tuner, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext_priv, align 4
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vv_data, align 4
  %6 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.not = icmp eq i32 %9, 2
  br i1 %cmp.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end
  %10 = load i32, ptr @debug, align 4
  %and = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body.do.end14_crit_edge, label %do.body6

do.body.do.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_s_frequency.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_s_frequency, %if.then10)) #10
          to label %do.end14 [label %if.then10], !srcloc !203

if.then10:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  %frequency = getelementptr inbounds %struct.mxb, ptr %3, i32 0, i32 13, i32 2
  %11 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %frequency, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_s_frequency.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.59, i32 noundef %12) #10
  br label %do.end14

do.end14:                                         ; preds = %if.then10, %do.body6, %do.body.do.end14_crit_edge
  %tuner15 = getelementptr inbounds %struct.mxb, ptr %3, i32 0, i32 6
  %13 = ptrtoint ptr %tuner15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tuner15, align 4
  %tobool16.not = icmp eq ptr %14, null
  br i1 %tobool16.not, label %if.end39.thread, label %if.else

if.end39.thread:                                  ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  %cur_freq41117 = getelementptr inbounds %struct.mxb, ptr %3, i32 0, i32 13
  %15 = call ptr @memcpy(ptr %cur_freq41117, ptr %f, i32 44)
  br label %if.end73

if.else:                                          ; preds = %do.end14
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %14, i32 0, i32 6
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %tuner18 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %tuner18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tuner18, align 4
  %tobool19.not = icmp eq ptr %19, null
  br i1 %tobool19.not, label %if.else.if.end39_crit_edge, label %land.lhs.true

if.else.if.end39_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

land.lhs.true:                                    ; preds = %if.else
  %s_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %s_frequency to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_frequency, align 4
  %tobool22.not = icmp eq ptr %21, null
  br i1 %tobool22.not, label %land.lhs.true.if.end39_crit_edge, label %if.else24

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.else24:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool25.not = icmp eq ptr %22, null
  br i1 %tobool25.not, label %if.else24.if.else32_crit_edge, label %land.lhs.true26

if.else24.if.else32_crit_edge:                    ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else32

land.lhs.true26:                                  ; preds = %if.else24
  %s_frequency27 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %s_frequency27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_frequency27, align 4
  %tobool28.not = icmp eq ptr %24, null
  br i1 %tobool28.not, label %land.lhs.true26.if.else32_crit_edge, label %land.lhs.true26.if.end39.sink.split_crit_edge

land.lhs.true26.if.end39.sink.split_crit_edge:    ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.sink.split

land.lhs.true26.if.else32_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else32

if.else32:                                        ; preds = %land.lhs.true26.if.else32_crit_edge, %if.else24.if.else32_crit_edge
  br label %if.end39.sink.split

if.end39.sink.split:                              ; preds = %if.else32, %land.lhs.true26.if.end39.sink.split_crit_edge
  %.sink = phi ptr [ %21, %if.else32 ], [ %24, %land.lhs.true26.if.end39.sink.split_crit_edge ]
  %call36 = tail call i32 %.sink(ptr noundef nonnull %14, ptr noundef %f) #10
  br label %if.end39

if.end39:                                         ; preds = %if.end39.sink.split, %land.lhs.true.if.end39_crit_edge, %if.else.if.end39_crit_edge
  %25 = ptrtoint ptr %tuner15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load ptr, ptr %tuner15, align 4
  %cur_freq41 = getelementptr inbounds %struct.mxb, ptr %3, i32 0, i32 13
  %26 = call ptr @memcpy(ptr %cur_freq41, ptr %f, i32 44)
  %tobool45.not = icmp eq ptr %.pr, null
  br i1 %tobool45.not, label %if.end39.if.end73_crit_edge, label %if.else47

if.end39.if.end73_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.else47:                                        ; preds = %if.end39
  %ops48 = getelementptr inbounds %struct.v4l2_subdev, ptr %.pr, i32 0, i32 6
  %27 = ptrtoint ptr %ops48 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops48, align 4
  %tuner49 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %tuner49 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tuner49, align 4
  %tobool50.not = icmp eq ptr %30, null
  br i1 %tobool50.not, label %if.else47.if.end73_crit_edge, label %land.lhs.true51

if.else47.if.end73_crit_edge:                     ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

land.lhs.true51:                                  ; preds = %if.else47
  %g_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %g_frequency to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %g_frequency, align 4
  %tobool54.not = icmp eq ptr %32, null
  br i1 %tobool54.not, label %land.lhs.true51.if.end73_crit_edge, label %if.else56

land.lhs.true51.if.end73_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.else56:                                        ; preds = %land.lhs.true51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool57.not = icmp eq ptr %33, null
  br i1 %tobool57.not, label %if.else56.if.else65_crit_edge, label %land.lhs.true58

if.else56.if.else65_crit_edge:                    ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else65

land.lhs.true58:                                  ; preds = %if.else56
  %g_frequency59 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %g_frequency59 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %g_frequency59, align 4
  %tobool60.not = icmp eq ptr %35, null
  br i1 %tobool60.not, label %land.lhs.true58.if.else65_crit_edge, label %if.then61

land.lhs.true58.if.else65_crit_edge:              ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else65

if.then61:                                        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #12
  %call64 = tail call i32 %35(ptr noundef nonnull %.pr, ptr noundef %cur_freq41) #10
  br label %if.end73

if.else65:                                        ; preds = %land.lhs.true58.if.else65_crit_edge, %if.else56.if.else65_crit_edge
  %call70 = tail call i32 %32(ptr noundef nonnull %.pr, ptr noundef %cur_freq41) #10
  br label %if.end73

if.end73:                                         ; preds = %if.else65, %if.then61, %land.lhs.true51.if.end73_crit_edge, %if.else47.if.end73_crit_edge, %if.end39.if.end73_crit_edge, %if.end39.thread
  %cur_audinput = getelementptr inbounds %struct.mxb, ptr %3, i32 0, i32 11
  %36 = ptrtoint ptr %cur_audinput to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cur_audinput, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp75 = icmp eq i32 %37, 0
  br i1 %cmp75, label %if.then76, label %if.end73.if.end77_crit_edge

if.end73.if.end77_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

if.then76:                                        ; preds = %if.end73
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %t.i) #10
  %38 = call ptr @memset(ptr %t.i, i32 0, i32 84)
  %audmode.i = getelementptr inbounds %struct.v4l2_tuner, ptr %t.i, i32 0, i32 7
  %cur_mode.i = getelementptr inbounds %struct.mxb, ptr %3, i32 0, i32 9
  %39 = ptrtoint ptr %cur_mode.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cur_mode.i, align 8
  %41 = ptrtoint ptr %audmode.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %audmode.i, align 4
  %tda9840.i = getelementptr inbounds %struct.mxb, ptr %3, i32 0, i32 4
  %42 = ptrtoint ptr %tda9840.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tda9840.i, align 4
  %tobool.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i, label %if.then76.mxb_update_audmode.exit_crit_edge, label %if.else.i

if.then76.mxb_update_audmode.exit_crit_edge:      ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxb_update_audmode.exit

if.else.i:                                        ; preds = %if.then76
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i, align 4
  %tuner.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %tuner.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tuner.i, align 4
  %tobool1.not.i = icmp eq ptr %47, null
  br i1 %tobool1.not.i, label %if.else.i.mxb_update_audmode.exit_crit_edge, label %land.lhs.true.i

if.else.i.mxb_update_audmode.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxb_update_audmode.exit

land.lhs.true.i:                                  ; preds = %if.else.i
  %s_tuner.i = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %s_tuner.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s_tuner.i, align 4
  %tobool4.not.i = icmp eq ptr %49, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.mxb_update_audmode.exit_crit_edge, label %if.else6.i

land.lhs.true.i.mxb_update_audmode.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxb_update_audmode.exit

if.else6.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool7.not.i = icmp eq ptr %50, null
  br i1 %tobool7.not.i, label %if.else6.i.if.else13.i_crit_edge, label %land.lhs.true8.i

if.else6.i.if.else13.i_crit_edge:                 ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else13.i

land.lhs.true8.i:                                 ; preds = %if.else6.i
  %s_tuner9.i = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %s_tuner9.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_tuner9.i, align 4
  %tobool10.not.i = icmp eq ptr %52, null
  br i1 %tobool10.not.i, label %land.lhs.true8.i.if.else13.i_crit_edge, label %land.lhs.true8.i.if.end19.sink.split.i_crit_edge

land.lhs.true8.i.if.end19.sink.split.i_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.sink.split.i

land.lhs.true8.i.if.else13.i_crit_edge:           ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else13.i

if.else13.i:                                      ; preds = %land.lhs.true8.i.if.else13.i_crit_edge, %if.else6.i.if.else13.i_crit_edge
  br label %if.end19.sink.split.i

if.end19.sink.split.i:                            ; preds = %if.else13.i, %land.lhs.true8.i.if.end19.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %49, %if.else13.i ], [ %52, %land.lhs.true8.i.if.end19.sink.split.i_crit_edge ]
  %call17.i = call i32 %.sink.i(ptr noundef nonnull %43, ptr noundef nonnull %t.i) #10
  br label %mxb_update_audmode.exit

mxb_update_audmode.exit:                          ; preds = %if.end19.sink.split.i, %land.lhs.true.i.mxb_update_audmode.exit_crit_edge, %if.else.i.mxb_update_audmode.exit_crit_edge, %if.then76.mxb_update_audmode.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %t.i) #10
  br label %if.end77

if.end77:                                         ; preds = %mxb_update_audmode.exit, %if.end73.if.end77_crit_edge
  %cur_input = getelementptr inbounds %struct.mxb, ptr %3, i32 0, i32 10
  %53 = ptrtoint ptr %cur_input to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cur_input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool78.not = icmp eq i32 %54, 0
  br i1 %tobool78.not, label %if.end80, label %if.end77.cleanup_crit_edge

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end80:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  %slock = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %slock) #10
  %vbi_fieldcount = getelementptr inbounds %struct.saa7146_vv, ptr %5, i32 0, i32 5
  %55 = ptrtoint ptr %vbi_fieldcount to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %vbi_fieldcount, align 4
  call void @_raw_spin_unlock(ptr noundef %slock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.end77.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end80 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end77.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_enumaudio(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %a) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp ugt i32 %1, 5
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [6 x %struct.v4l2_audio], ptr @mxb_audios, i32 0, i32 %1
  %2 = call ptr @memcpy(ptr %a, ptr %arrayidx, i32 52)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_audio(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef writeonly %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext_priv, align 4
  %4 = load i32, ptr @debug, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body2

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_g_audio.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_g_audio, %if.then6)) #10
          to label %do.end9 [label %if.then6], !srcloc !203

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_g_audio.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.62) #10
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body2, %entry.do.end9_crit_edge
  %cur_audinput = getelementptr inbounds %struct.mxb, ptr %3, i32 0, i32 11
  %5 = ptrtoint ptr %cur_audinput to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cur_audinput, align 8
  %arrayidx = getelementptr [6 x %struct.v4l2_audio], ptr @mxb_audios, i32 0, i32 %6
  %7 = call ptr @memcpy(ptr %a, ptr %arrayidx, i32 52)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_audio(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef readonly %a) #2 align 64 {
entry:
  %t.i = alloca %struct.v4l2_tuner, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext_priv, align 4
  %4 = load i32, ptr @debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body2

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_s_audio.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_s_audio, %if.then6)) #10
          to label %do.end9 [label %if.then6], !srcloc !203

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %a, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_s_audio.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.65, i32 noundef %6) #10
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body2, %entry.do.end9_crit_edge
  %7 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %8)
  %cmp = icmp ugt i32 %8, 31
  br i1 %cmp, label %do.end9.cleanup_crit_edge, label %lor.lhs.false

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end9
  %cur_input = getelementptr inbounds %struct.mxb, ptr %3, i32 0, i32 10
  %9 = ptrtoint ptr %cur_input to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cur_input, align 4
  %audioset = getelementptr [4 x %struct.v4l2_input], ptr @mxb_inputs, i32 0, i32 %10, i32 3
  %11 = ptrtoint ptr %audioset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %audioset, align 8
  %shl = shl nuw i32 1, %8
  %and12 = and i32 %12, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end15

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  %cur_audinput = getelementptr inbounds %struct.mxb, ptr %3, i32 0, i32 11
  %13 = ptrtoint ptr %cur_audinput to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cur_audinput, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %8)
  %cmp17.not = icmp eq i32 %14, %8
  br i1 %cmp17.not, label %if.end15.cleanup_crit_edge, label %if.then18

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then18:                                        ; preds = %if.end15
  %15 = ptrtoint ptr %cur_audinput to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %8, ptr %cur_audinput, align 8
  %16 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %a, align 4
  tail call fastcc void @tea6420_route(ptr noundef %3, i32 noundef %17)
  %18 = ptrtoint ptr %cur_audinput to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cur_audinput, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp23 = icmp eq i32 %19, 0
  br i1 %cmp23, label %if.then24, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then24:                                        ; preds = %if.then18
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %t.i) #10
  %20 = call ptr @memset(ptr %t.i, i32 0, i32 84)
  %audmode.i = getelementptr inbounds %struct.v4l2_tuner, ptr %t.i, i32 0, i32 7
  %cur_mode.i = getelementptr inbounds %struct.mxb, ptr %3, i32 0, i32 9
  %21 = ptrtoint ptr %cur_mode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cur_mode.i, align 8
  %23 = ptrtoint ptr %audmode.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %audmode.i, align 4
  %tda9840.i = getelementptr inbounds %struct.mxb, ptr %3, i32 0, i32 4
  %24 = ptrtoint ptr %tda9840.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tda9840.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.then24.mxb_update_audmode.exit_crit_edge, label %if.else.i

if.then24.mxb_update_audmode.exit_crit_edge:      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxb_update_audmode.exit

if.else.i:                                        ; preds = %if.then24
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i, align 4
  %tuner.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %tuner.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tuner.i, align 4
  %tobool1.not.i = icmp eq ptr %29, null
  br i1 %tobool1.not.i, label %if.else.i.mxb_update_audmode.exit_crit_edge, label %land.lhs.true.i

if.else.i.mxb_update_audmode.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxb_update_audmode.exit

land.lhs.true.i:                                  ; preds = %if.else.i
  %s_tuner.i = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %s_tuner.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_tuner.i, align 4
  %tobool4.not.i = icmp eq ptr %31, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.mxb_update_audmode.exit_crit_edge, label %if.else6.i

land.lhs.true.i.mxb_update_audmode.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxb_update_audmode.exit

if.else6.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool7.not.i = icmp eq ptr %32, null
  br i1 %tobool7.not.i, label %if.else6.i.if.else13.i_crit_edge, label %land.lhs.true8.i

if.else6.i.if.else13.i_crit_edge:                 ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else13.i

land.lhs.true8.i:                                 ; preds = %if.else6.i
  %s_tuner9.i = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %s_tuner9.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_tuner9.i, align 4
  %tobool10.not.i = icmp eq ptr %34, null
  br i1 %tobool10.not.i, label %land.lhs.true8.i.if.else13.i_crit_edge, label %land.lhs.true8.i.if.end19.sink.split.i_crit_edge

land.lhs.true8.i.if.end19.sink.split.i_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.sink.split.i

land.lhs.true8.i.if.else13.i_crit_edge:           ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else13.i

if.else13.i:                                      ; preds = %land.lhs.true8.i.if.else13.i_crit_edge, %if.else6.i.if.else13.i_crit_edge
  br label %if.end19.sink.split.i

if.end19.sink.split.i:                            ; preds = %if.else13.i, %land.lhs.true8.i.if.end19.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %31, %if.else13.i ], [ %34, %land.lhs.true8.i.if.end19.sink.split.i_crit_edge ]
  %call17.i = call i32 %.sink.i(ptr noundef nonnull %25, ptr noundef nonnull %t.i) #10
  br label %mxb_update_audmode.exit

mxb_update_audmode.exit:                          ; preds = %if.end19.sink.split.i, %land.lhs.true.i.mxb_update_audmode.exit_crit_edge, %if.else.i.mxb_update_audmode.exit_crit_edge, %if.then24.mxb_update_audmode.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %t.i) #10
  br label %cleanup

cleanup:                                          ; preds = %mxb_update_audmode.exit, %if.then18.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %do.end9.cleanup_crit_edge ], [ 0, %if.then18.cleanup_crit_edge ], [ 0, %mxb_update_audmode.exit ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_register(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %reg2 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %2 = ptrtoint ptr %reg2 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %reg2, align 1
  %pci = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %end = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 47, i32 0, i32 1
  %6 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %resource = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 47
  %8 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %resource, align 8
  %sub = add i32 %7, -3
  %phi.bo = sub i32 %sub, %9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %phi.bo, %cond.false ], [ -4, %entry.cond.end_crit_edge ]
  %conv = zext i32 %cond to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %conv)
  %cmp11 = icmp ugt i64 %3, %conv
  br i1 %cmp11, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %mem = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mem, align 4
  %idx.ext = trunc i64 %3 to i32
  %add.ptr = getelementptr i8, ptr %11, i32 %idx.ext
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !204
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !205
  %conv15 = zext i32 %13 to i64
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %14 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %conv15, ptr %val, align 1
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %15 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 4, ptr %size, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_register(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %reg2 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %2 = ptrtoint ptr %reg2 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %reg2, align 1
  %pci = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %end = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 47, i32 0, i32 1
  %6 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %resource = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 47
  %8 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %resource, align 8
  %sub = add i32 %7, -3
  %phi.bo = sub i32 %sub, %9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %phi.bo, %cond.false ], [ -4, %entry.cond.end_crit_edge ]
  %conv = zext i32 %cond to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %conv)
  %cmp11 = icmp ugt i64 %3, %conv
  br i1 %cmp11, label %cond.end.cleanup_crit_edge, label %do.body

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !206
  tail call void @arm_heavy_mb() #10
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %10 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %val, align 1
  %conv13 = trunc i64 %11 to i32
  %12 = tail call i32 @llvm.bswap.i32(i32 %conv13)
  %mem = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mem, align 4
  %15 = ptrtoint ptr %reg2 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %reg2, align 1
  %idx.ext = trunc i64 %16 to i32
  %add.ptr = getelementptr i8, ptr %14, i32 %idx.ext
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #10, !srcloc !207
  br label %cleanup

cleanup:                                          ; preds = %do.body, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -22, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_register_device(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxb_init_done(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %t.i = alloca %struct.v4l2_tuner, align 4
  %msg = alloca %struct.i2c_msg, align 4
  %tun_setup = alloca %struct.tuner_setup, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext_priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #10
  %2 = call ptr @memset(ptr %msg, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tun_setup) #10
  %3 = call ptr @memset(ptr %tun_setup, i32 255, i32 20)
  tail call fastcc void @tea6420_route(ptr noundef %1, i32 noundef 6)
  %saa7111a = getelementptr inbounds %struct.mxb, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %saa7111a to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %saa7111a, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end49_crit_edge, label %if.else

entry.if.end49_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %video, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %if.else.if.end19_crit_edge, label %land.lhs.true

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true:                                    ; preds = %if.else
  %s_std = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %s_std to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_std, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %land.lhs.true.if.end19_crit_edge, label %if.else6

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.else6:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool7.not = icmp eq ptr %12, null
  br i1 %tobool7.not, label %if.else6.if.else13_crit_edge, label %land.lhs.true8

if.else6.if.else13_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else13

land.lhs.true8:                                   ; preds = %if.else6
  %s_std9 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %s_std9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_std9, align 4
  %tobool10.not = icmp eq ptr %14, null
  br i1 %tobool10.not, label %land.lhs.true8.if.else13_crit_edge, label %land.lhs.true8.if.end19.sink.split_crit_edge

land.lhs.true8.if.end19.sink.split_crit_edge:     ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.sink.split

land.lhs.true8.if.else13_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else13

if.else13:                                        ; preds = %land.lhs.true8.if.else13_crit_edge, %if.else6.if.else13_crit_edge
  br label %if.end19.sink.split

if.end19.sink.split:                              ; preds = %if.else13, %land.lhs.true8.if.end19.sink.split_crit_edge
  %.sink = phi ptr [ %11, %if.else13 ], [ %14, %land.lhs.true8.if.end19.sink.split_crit_edge ]
  %call17 = tail call i32 %.sink(ptr noundef nonnull %5, i64 noundef 7) #10
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %land.lhs.true.if.end19_crit_edge, %if.else.if.end19_crit_edge
  %15 = ptrtoint ptr %saa7111a to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load ptr, ptr %saa7111a, align 8
  %tobool23.not = icmp eq ptr %.pr, null
  br i1 %tobool23.not, label %if.end19.if.end49_crit_edge, label %if.else25

if.end19.if.end49_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.else25:                                        ; preds = %if.end19
  %ops26 = getelementptr inbounds %struct.v4l2_subdev, ptr %.pr, i32 0, i32 6
  %16 = ptrtoint ptr %ops26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops26, align 4
  %video27 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %video27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %video27, align 4
  %tobool28.not = icmp eq ptr %19, null
  br i1 %tobool28.not, label %if.else25.if.end49_crit_edge, label %land.lhs.true29

if.else25.if.end49_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

land.lhs.true29:                                  ; preds = %if.else25
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %tobool32.not = icmp eq ptr %21, null
  br i1 %tobool32.not, label %land.lhs.true29.if.end49_crit_edge, label %if.else34

land.lhs.true29.if.end49_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.else34:                                        ; preds = %land.lhs.true29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool35.not = icmp eq ptr %22, null
  br i1 %tobool35.not, label %if.else34.if.else42_crit_edge, label %land.lhs.true36

if.else34.if.else42_crit_edge:                    ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else42

land.lhs.true36:                                  ; preds = %if.else34
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %tobool38.not = icmp eq ptr %24, null
  br i1 %tobool38.not, label %land.lhs.true36.if.else42_crit_edge, label %land.lhs.true36.if.end49.sink.split_crit_edge

land.lhs.true36.if.end49.sink.split_crit_edge:    ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.sink.split

land.lhs.true36.if.else42_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else42

if.else42:                                        ; preds = %land.lhs.true36.if.else42_crit_edge, %if.else34.if.else42_crit_edge
  br label %if.end49.sink.split

if.end49.sink.split:                              ; preds = %if.else42, %land.lhs.true36.if.end49.sink.split_crit_edge
  %.sink9 = phi ptr [ %21, %if.else42 ], [ %24, %land.lhs.true36.if.end49.sink.split_crit_edge ]
  %call46 = tail call i32 %.sink9(ptr noundef nonnull %.pr, i32 noundef 0, i32 noundef 128, i32 noundef 0) #10
  br label %if.end49

if.end49:                                         ; preds = %if.end49.sink.split, %land.lhs.true29.if.end49_crit_edge, %if.else25.if.end49_crit_edge, %if.end19.if.end49_crit_edge, %entry.if.end49_crit_edge
  %mode_mask = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup, i32 0, i32 2
  %25 = ptrtoint ptr %mode_mask to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %mode_mask, align 4
  %26 = ptrtoint ptr %tun_setup to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 255, ptr %tun_setup, align 4
  %type = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup, i32 0, i32 1
  %27 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 5, ptr %type, align 4
  %tuner = getelementptr inbounds %struct.mxb, ptr %1, i32 0, i32 6
  %28 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tuner, align 4
  %tobool53.not = icmp eq ptr %29, null
  br i1 %tobool53.not, label %if.end49.if.end79_crit_edge, label %if.else55

if.end49.if.end79_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.else55:                                        ; preds = %if.end49
  %ops56 = getelementptr inbounds %struct.v4l2_subdev, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %ops56 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops56, align 4
  %tuner57 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %tuner57 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tuner57, align 4
  %tobool58.not = icmp eq ptr %33, null
  br i1 %tobool58.not, label %if.else55.if.end79_crit_edge, label %land.lhs.true59

if.else55.if.end79_crit_edge:                     ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

land.lhs.true59:                                  ; preds = %if.else55
  %s_type_addr = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %s_type_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_type_addr, align 4
  %tobool62.not = icmp eq ptr %35, null
  br i1 %tobool62.not, label %land.lhs.true59.if.end79_crit_edge, label %if.else64

land.lhs.true59.if.end79_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.else64:                                        ; preds = %land.lhs.true59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool65.not = icmp eq ptr %36, null
  br i1 %tobool65.not, label %if.else64.if.else72_crit_edge, label %land.lhs.true66

if.else64.if.else72_crit_edge:                    ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else72

land.lhs.true66:                                  ; preds = %if.else64
  %s_type_addr67 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %36, i32 0, i32 9
  %37 = ptrtoint ptr %s_type_addr67 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_type_addr67, align 4
  %tobool68.not = icmp eq ptr %38, null
  br i1 %tobool68.not, label %land.lhs.true66.if.else72_crit_edge, label %land.lhs.true66.if.end79.sink.split_crit_edge

land.lhs.true66.if.end79.sink.split_crit_edge:    ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79.sink.split

land.lhs.true66.if.else72_crit_edge:              ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else72

if.else72:                                        ; preds = %land.lhs.true66.if.else72_crit_edge, %if.else64.if.else72_crit_edge
  br label %if.end79.sink.split

if.end79.sink.split:                              ; preds = %if.else72, %land.lhs.true66.if.end79.sink.split_crit_edge
  %.sink10 = phi ptr [ %35, %if.else72 ], [ %38, %land.lhs.true66.if.end79.sink.split_crit_edge ]
  %call76 = call i32 %.sink10(ptr noundef nonnull %29, ptr noundef nonnull %tun_setup) #10
  br label %if.end79

if.end79:                                         ; preds = %if.end79.sink.split, %land.lhs.true59.if.end79_crit_edge, %if.else55.if.end79_crit_edge, %if.end49.if.end79_crit_edge
  %cur_freq = getelementptr inbounds %struct.mxb, ptr %1, i32 0, i32 13
  %39 = ptrtoint ptr %cur_freq to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %cur_freq, align 8
  %type83 = getelementptr inbounds %struct.mxb, ptr %1, i32 0, i32 13, i32 1
  %40 = ptrtoint ptr %type83 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %type83, align 4
  %41 = load i32, ptr @freq, align 4
  %frequency = getelementptr inbounds %struct.mxb, ptr %1, i32 0, i32 13, i32 2
  %42 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %frequency, align 8
  %43 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tuner, align 4
  %tobool88.not = icmp eq ptr %44, null
  br i1 %tobool88.not, label %if.end79.if.end116_crit_edge, label %if.else90

if.end79.if.end116_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

if.else90:                                        ; preds = %if.end79
  %ops91 = getelementptr inbounds %struct.v4l2_subdev, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %ops91 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops91, align 4
  %tuner92 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %tuner92 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tuner92, align 4
  %tobool93.not = icmp eq ptr %48, null
  br i1 %tobool93.not, label %if.else90.if.end116_crit_edge, label %land.lhs.true94

if.else90.if.end116_crit_edge:                    ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

land.lhs.true94:                                  ; preds = %if.else90
  %s_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %s_frequency to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_frequency, align 4
  %tobool97.not = icmp eq ptr %50, null
  br i1 %tobool97.not, label %land.lhs.true94.if.end116_crit_edge, label %if.else99

land.lhs.true94.if.end116_crit_edge:              ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

if.else99:                                        ; preds = %land.lhs.true94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool100.not = icmp eq ptr %51, null
  br i1 %tobool100.not, label %if.else99.if.else108_crit_edge, label %land.lhs.true101

if.else99.if.else108_crit_edge:                   ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else108

land.lhs.true101:                                 ; preds = %if.else99
  %s_frequency102 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %s_frequency102 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_frequency102, align 4
  %tobool103.not = icmp eq ptr %53, null
  br i1 %tobool103.not, label %land.lhs.true101.if.else108_crit_edge, label %land.lhs.true101.if.end116.sink.split_crit_edge

land.lhs.true101.if.end116.sink.split_crit_edge:  ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116.sink.split

land.lhs.true101.if.else108_crit_edge:            ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else108

if.else108:                                       ; preds = %land.lhs.true101.if.else108_crit_edge, %if.else99.if.else108_crit_edge
  br label %if.end116.sink.split

if.end116.sink.split:                             ; preds = %if.else108, %land.lhs.true101.if.end116.sink.split_crit_edge
  %.sink11 = phi ptr [ %50, %if.else108 ], [ %53, %land.lhs.true101.if.end116.sink.split_crit_edge ]
  %call113 = call i32 %.sink11(ptr noundef nonnull %44, ptr noundef %cur_freq) #10
  br label %if.end116

if.end116:                                        ; preds = %if.end116.sink.split, %land.lhs.true94.if.end116_crit_edge, %if.else90.if.end116_crit_edge, %if.end79.if.end116_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  call void @arm_heavy_mb() #10
  %mem = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 5
  %54 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %55, i32 224
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1346387968) #10, !srcloc !207
  %56 = ptrtoint ptr %saa7111a to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %saa7111a, align 8
  %tobool121.not = icmp eq ptr %57, null
  br i1 %tobool121.not, label %if.end116.if.end178_crit_edge, label %if.else123

if.end116.if.end178_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end178

if.else123:                                       ; preds = %if.end116
  %ops124 = getelementptr inbounds %struct.v4l2_subdev, ptr %57, i32 0, i32 6
  %58 = ptrtoint ptr %ops124 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops124, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %tobool125.not = icmp eq ptr %61, null
  br i1 %tobool125.not, label %if.else123.if.end146_crit_edge, label %land.lhs.true126

if.else123.if.end146_crit_edge:                   ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146

land.lhs.true126:                                 ; preds = %if.else123
  %s_gpio = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %s_gpio to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %s_gpio, align 4
  %tobool129.not = icmp eq ptr %63, null
  br i1 %tobool129.not, label %land.lhs.true126.if.end146_crit_edge, label %if.else131

land.lhs.true126.if.end146_crit_edge:             ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146

if.else131:                                       ; preds = %land.lhs.true126
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %64 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool132.not = icmp eq ptr %64, null
  br i1 %tobool132.not, label %if.else131.if.else139_crit_edge, label %land.lhs.true133

if.else131.if.else139_crit_edge:                  ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else139

land.lhs.true133:                                 ; preds = %if.else131
  %s_gpio134 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %s_gpio134 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %s_gpio134, align 4
  %tobool135.not = icmp eq ptr %66, null
  br i1 %tobool135.not, label %land.lhs.true133.if.else139_crit_edge, label %land.lhs.true133.if.end146.sink.split_crit_edge

land.lhs.true133.if.end146.sink.split_crit_edge:  ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146.sink.split

land.lhs.true133.if.else139_crit_edge:            ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else139

if.else139:                                       ; preds = %land.lhs.true133.if.else139_crit_edge, %if.else131.if.else139_crit_edge
  br label %if.end146.sink.split

if.end146.sink.split:                             ; preds = %if.else139, %land.lhs.true133.if.end146.sink.split_crit_edge
  %.sink12 = phi ptr [ %63, %if.else139 ], [ %66, %land.lhs.true133.if.end146.sink.split_crit_edge ]
  %call143 = call i32 %.sink12(ptr noundef nonnull %57, i32 noundef 1) #10
  br label %if.end146

if.end146:                                        ; preds = %if.end146.sink.split, %land.lhs.true126.if.end146_crit_edge, %if.else123.if.end146_crit_edge
  %67 = ptrtoint ptr %saa7111a to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pr2 = load ptr, ptr %saa7111a, align 8
  %tobool151.not = icmp eq ptr %.pr2, null
  br i1 %tobool151.not, label %if.end146.if.end178_crit_edge, label %if.else153

if.end146.if.end178_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end178

if.else153:                                       ; preds = %if.end146
  %ops154 = getelementptr inbounds %struct.v4l2_subdev, ptr %.pr2, i32 0, i32 6
  %68 = ptrtoint ptr %ops154 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ops154, align 4
  %video155 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %video155 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %video155, align 4
  %tobool156.not = icmp eq ptr %71, null
  br i1 %tobool156.not, label %if.else153.if.end178_crit_edge, label %land.lhs.true157

if.else153.if.end178_crit_edge:                   ; preds = %if.else153
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end178

land.lhs.true157:                                 ; preds = %if.else153
  %s_std160 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %s_std160 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %s_std160, align 4
  %tobool161.not = icmp eq ptr %73, null
  br i1 %tobool161.not, label %land.lhs.true157.if.end178_crit_edge, label %if.else163

land.lhs.true157.if.end178_crit_edge:             ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end178

if.else163:                                       ; preds = %land.lhs.true157
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool164.not = icmp eq ptr %74, null
  br i1 %tobool164.not, label %if.else163.if.else171_crit_edge, label %land.lhs.true165

if.else163.if.else171_crit_edge:                  ; preds = %if.else163
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else171

land.lhs.true165:                                 ; preds = %if.else163
  %s_std166 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %s_std166 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %s_std166, align 4
  %tobool167.not = icmp eq ptr %76, null
  br i1 %tobool167.not, label %land.lhs.true165.if.else171_crit_edge, label %land.lhs.true165.if.end178.sink.split_crit_edge

land.lhs.true165.if.end178.sink.split_crit_edge:  ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end178.sink.split

land.lhs.true165.if.else171_crit_edge:            ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else171

if.else171:                                       ; preds = %land.lhs.true165.if.else171_crit_edge, %if.else163.if.else171_crit_edge
  br label %if.end178.sink.split

if.end178.sink.split:                             ; preds = %if.else171, %land.lhs.true165.if.end178.sink.split_crit_edge
  %.sink13 = phi ptr [ %73, %if.else171 ], [ %76, %land.lhs.true165.if.end178.sink.split_crit_edge ]
  %call175 = call i32 %.sink13(ptr noundef nonnull %.pr2, i64 noundef 7) #10
  br label %if.end178

if.end178:                                        ; preds = %if.end178.sink.split, %land.lhs.true157.if.end178_crit_edge, %if.else153.if.end178_crit_edge, %if.end146.if.end178_crit_edge, %if.end116.if.end178_crit_edge
  %77 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tuner, align 4
  %tobool183.not = icmp eq ptr %78, null
  br i1 %tobool183.not, label %if.end178.if.end210_crit_edge, label %if.else185

if.end178.if.end210_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end210

if.else185:                                       ; preds = %if.end178
  %ops186 = getelementptr inbounds %struct.v4l2_subdev, ptr %78, i32 0, i32 6
  %79 = ptrtoint ptr %ops186 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ops186, align 4
  %video187 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %video187 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %video187, align 4
  %tobool188.not = icmp eq ptr %82, null
  br i1 %tobool188.not, label %if.else185.if.end210_crit_edge, label %land.lhs.true189

if.else185.if.end210_crit_edge:                   ; preds = %if.else185
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end210

land.lhs.true189:                                 ; preds = %if.else185
  %s_std192 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %s_std192 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %s_std192, align 4
  %tobool193.not = icmp eq ptr %84, null
  br i1 %tobool193.not, label %land.lhs.true189.if.end210_crit_edge, label %if.else195

land.lhs.true189.if.end210_crit_edge:             ; preds = %land.lhs.true189
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end210

if.else195:                                       ; preds = %land.lhs.true189
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool196.not = icmp eq ptr %85, null
  br i1 %tobool196.not, label %if.else195.if.else203_crit_edge, label %land.lhs.true197

if.else195.if.else203_crit_edge:                  ; preds = %if.else195
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else203

land.lhs.true197:                                 ; preds = %if.else195
  %s_std198 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %s_std198 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %s_std198, align 4
  %tobool199.not = icmp eq ptr %87, null
  br i1 %tobool199.not, label %land.lhs.true197.if.else203_crit_edge, label %land.lhs.true197.if.end210.sink.split_crit_edge

land.lhs.true197.if.end210.sink.split_crit_edge:  ; preds = %land.lhs.true197
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end210.sink.split

land.lhs.true197.if.else203_crit_edge:            ; preds = %land.lhs.true197
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else203

if.else203:                                       ; preds = %land.lhs.true197.if.else203_crit_edge, %if.else195.if.else203_crit_edge
  br label %if.end210.sink.split

if.end210.sink.split:                             ; preds = %if.else203, %land.lhs.true197.if.end210.sink.split_crit_edge
  %.sink14 = phi ptr [ %84, %if.else203 ], [ %87, %land.lhs.true197.if.end210.sink.split_crit_edge ]
  %call207 = call i32 %.sink14(ptr noundef nonnull %78, i64 noundef 7) #10
  br label %if.end210

if.end210:                                        ; preds = %if.end210.sink.split, %land.lhs.true189.if.end210_crit_edge, %if.else185.if.end210_crit_edge, %if.end178.if.end210_crit_edge
  %tea6415c = getelementptr inbounds %struct.mxb, ptr %1, i32 0, i32 5
  %88 = ptrtoint ptr %tea6415c to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %tea6415c, align 8
  %tobool214.not = icmp eq ptr %89, null
  br i1 %tobool214.not, label %if.end210.if.end273_crit_edge, label %if.else216

if.end210.if.end273_crit_edge:                    ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end273

if.else216:                                       ; preds = %if.end210
  %ops217 = getelementptr inbounds %struct.v4l2_subdev, ptr %89, i32 0, i32 6
  %90 = ptrtoint ptr %ops217 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ops217, align 4
  %video218 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %91, i32 0, i32 3
  %92 = ptrtoint ptr %video218 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %video218, align 4
  %tobool219.not = icmp eq ptr %93, null
  br i1 %tobool219.not, label %if.else216.if.end241_crit_edge, label %land.lhs.true220

if.else216.if.end241_crit_edge:                   ; preds = %if.else216
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end241

land.lhs.true220:                                 ; preds = %if.else216
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  %tobool224.not = icmp eq ptr %95, null
  br i1 %tobool224.not, label %land.lhs.true220.if.end241_crit_edge, label %if.else226

land.lhs.true220.if.end241_crit_edge:             ; preds = %land.lhs.true220
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end241

if.else226:                                       ; preds = %land.lhs.true220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool227.not = icmp eq ptr %96, null
  br i1 %tobool227.not, label %if.else226.if.else234_crit_edge, label %land.lhs.true228

if.else226.if.else234_crit_edge:                  ; preds = %if.else226
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else234

land.lhs.true228:                                 ; preds = %if.else226
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  %tobool230.not = icmp eq ptr %98, null
  br i1 %tobool230.not, label %land.lhs.true228.if.else234_crit_edge, label %land.lhs.true228.if.end241.sink.split_crit_edge

land.lhs.true228.if.end241.sink.split_crit_edge:  ; preds = %land.lhs.true228
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end241.sink.split

land.lhs.true228.if.else234_crit_edge:            ; preds = %land.lhs.true228
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else234

if.else234:                                       ; preds = %land.lhs.true228.if.else234_crit_edge, %if.else226.if.else234_crit_edge
  br label %if.end241.sink.split

if.end241.sink.split:                             ; preds = %if.else234, %land.lhs.true228.if.end241.sink.split_crit_edge
  %.sink15 = phi ptr [ %95, %if.else234 ], [ %98, %land.lhs.true228.if.end241.sink.split_crit_edge ]
  %call238 = call i32 %.sink15(ptr noundef nonnull %89, i32 noundef 3, i32 noundef 17, i32 noundef 0) #10
  br label %if.end241

if.end241:                                        ; preds = %if.end241.sink.split, %land.lhs.true220.if.end241_crit_edge, %if.else216.if.end241_crit_edge
  %99 = ptrtoint ptr %tea6415c to i32
  call void @__asan_load4_noabort(i32 %99)
  %.pr4 = load ptr, ptr %tea6415c, align 8
  %tobool246.not = icmp eq ptr %.pr4, null
  br i1 %tobool246.not, label %if.end241.if.end273_crit_edge, label %if.else248

if.end241.if.end273_crit_edge:                    ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end273

if.else248:                                       ; preds = %if.end241
  %ops249 = getelementptr inbounds %struct.v4l2_subdev, ptr %.pr4, i32 0, i32 6
  %100 = ptrtoint ptr %ops249 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ops249, align 4
  %video250 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %video250 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %video250, align 4
  %tobool251.not = icmp eq ptr %103, null
  br i1 %tobool251.not, label %if.else248.if.end273_crit_edge, label %land.lhs.true252

if.else248.if.end273_crit_edge:                   ; preds = %if.else248
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end273

land.lhs.true252:                                 ; preds = %if.else248
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %tobool256.not = icmp eq ptr %105, null
  br i1 %tobool256.not, label %land.lhs.true252.if.end273_crit_edge, label %if.else258

land.lhs.true252.if.end273_crit_edge:             ; preds = %land.lhs.true252
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end273

if.else258:                                       ; preds = %land.lhs.true252
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool259.not = icmp eq ptr %106, null
  br i1 %tobool259.not, label %if.else258.if.else266_crit_edge, label %land.lhs.true260

if.else258.if.else266_crit_edge:                  ; preds = %if.else258
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else266

land.lhs.true260:                                 ; preds = %if.else258
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %tobool262.not = icmp eq ptr %108, null
  br i1 %tobool262.not, label %land.lhs.true260.if.else266_crit_edge, label %land.lhs.true260.if.end273.sink.split_crit_edge

land.lhs.true260.if.end273.sink.split_crit_edge:  ; preds = %land.lhs.true260
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end273.sink.split

land.lhs.true260.if.else266_crit_edge:            ; preds = %land.lhs.true260
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else266

if.else266:                                       ; preds = %land.lhs.true260.if.else266_crit_edge, %if.else258.if.else266_crit_edge
  br label %if.end273.sink.split

if.end273.sink.split:                             ; preds = %if.else266, %land.lhs.true260.if.end273.sink.split_crit_edge
  %.sink16 = phi ptr [ %105, %if.else266 ], [ %108, %land.lhs.true260.if.end273.sink.split_crit_edge ]
  %call270 = call i32 %.sink16(ptr noundef nonnull %.pr4, i32 noundef 3, i32 noundef 13, i32 noundef 0) #10
  br label %if.end273

if.end273:                                        ; preds = %if.end273.sink.split, %land.lhs.true252.if.end273_crit_edge, %if.else248.if.end273_crit_edge, %if.end241.if.end273_crit_edge, %if.end210.if.end273_crit_edge
  %cur_input = getelementptr inbounds %struct.mxb, ptr %1, i32 0, i32 10
  %109 = ptrtoint ptr %cur_input to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %cur_input, align 4
  %cur_audinput = getelementptr inbounds %struct.mxb, ptr %1, i32 0, i32 11
  %110 = ptrtoint ptr %cur_audinput to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %cur_audinput, align 8
  %cur_mute = getelementptr inbounds %struct.mxb, ptr %1, i32 0, i32 12
  %111 = ptrtoint ptr %cur_mute to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1, ptr %cur_mute, align 4
  %cur_mode = getelementptr inbounds %struct.mxb, ptr %1, i32 0, i32 9
  %112 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 1, ptr %cur_mode, align 8
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %t.i) #10
  %113 = call ptr @memset(ptr %t.i, i32 0, i32 84)
  %audmode.i = getelementptr inbounds %struct.v4l2_tuner, ptr %t.i, i32 0, i32 7
  %114 = ptrtoint ptr %audmode.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 1, ptr %audmode.i, align 4
  %tda9840.i = getelementptr inbounds %struct.mxb, ptr %1, i32 0, i32 4
  %115 = ptrtoint ptr %tda9840.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %tda9840.i, align 4
  %tobool.not.i = icmp eq ptr %116, null
  br i1 %tobool.not.i, label %if.end273.mxb_update_audmode.exit_crit_edge, label %if.else.i

if.end273.mxb_update_audmode.exit_crit_edge:      ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxb_update_audmode.exit

if.else.i:                                        ; preds = %if.end273
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %116, i32 0, i32 6
  %117 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ops.i, align 4
  %tuner.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %tuner.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %tuner.i, align 4
  %tobool1.not.i = icmp eq ptr %120, null
  br i1 %tobool1.not.i, label %if.else.i.mxb_update_audmode.exit_crit_edge, label %land.lhs.true.i

if.else.i.mxb_update_audmode.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxb_update_audmode.exit

land.lhs.true.i:                                  ; preds = %if.else.i
  %s_tuner.i = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %120, i32 0, i32 6
  %121 = ptrtoint ptr %s_tuner.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %s_tuner.i, align 4
  %tobool4.not.i = icmp eq ptr %122, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.mxb_update_audmode.exit_crit_edge, label %if.else6.i

land.lhs.true.i.mxb_update_audmode.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxb_update_audmode.exit

if.else6.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %123 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool7.not.i = icmp eq ptr %123, null
  br i1 %tobool7.not.i, label %if.else6.i.if.else13.i_crit_edge, label %land.lhs.true8.i

if.else6.i.if.else13.i_crit_edge:                 ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else13.i

land.lhs.true8.i:                                 ; preds = %if.else6.i
  %s_tuner9.i = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %123, i32 0, i32 6
  %124 = ptrtoint ptr %s_tuner9.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %s_tuner9.i, align 4
  %tobool10.not.i = icmp eq ptr %125, null
  br i1 %tobool10.not.i, label %land.lhs.true8.i.if.else13.i_crit_edge, label %land.lhs.true8.i.if.end19.sink.split.i_crit_edge

land.lhs.true8.i.if.end19.sink.split.i_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.sink.split.i

land.lhs.true8.i.if.else13.i_crit_edge:           ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else13.i

if.else13.i:                                      ; preds = %land.lhs.true8.i.if.else13.i_crit_edge, %if.else6.i.if.else13.i_crit_edge
  br label %if.end19.sink.split.i

if.end19.sink.split.i:                            ; preds = %if.else13.i, %land.lhs.true8.i.if.end19.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %122, %if.else13.i ], [ %125, %land.lhs.true8.i.if.end19.sink.split.i_crit_edge ]
  %call17.i = call i32 %.sink.i(ptr noundef nonnull %116, ptr noundef nonnull %t.i) #10
  br label %mxb_update_audmode.exit

mxb_update_audmode.exit:                          ; preds = %if.end19.sink.split.i, %land.lhs.true.i.mxb_update_audmode.exit_crit_edge, %if.else.i.mxb_update_audmode.exit_crit_edge, %if.end273.mxb_update_audmode.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %t.i) #10
  %126 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 27, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %127 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 0, ptr %flags, align 2
  %128 = load i32, ptr @mxb_saa7740_init, align 4
  %conv = trunc i32 %128 to i16
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %129 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %conv, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %130 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr getelementptr inbounds (<{ { i32, <{ i8, [8 x i8] }> }, %struct.anon.120, %struct.anon.120, %struct.anon.120, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120 }>, ptr @mxb_saa7740_init, i32 0, i32 0, i32 1, i32 0), ptr %buf, align 4
  %i2c_adapter = getelementptr inbounds %struct.mxb, ptr %1, i32 0, i32 2
  %call277 = call i32 @i2c_transfer(ptr noundef %i2c_adapter, ptr noundef nonnull %msg, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call277)
  %cmp = icmp eq i32 %call277, 1
  br i1 %cmp, label %if.then279, label %mxb_update_audmode.exit.err321_crit_edge

mxb_update_audmode.exit.err321_crit_edge:         ; preds = %mxb_update_audmode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err321

if.then279:                                       ; preds = %mxb_update_audmode.exit
  %131 = load i32, ptr getelementptr inbounds (%struct.saa7146_extension, ptr @extension, i32 0, i32 1), align 4
  %and = and i32 %131, -2
  store i32 %and, ptr getelementptr inbounds (%struct.saa7146_extension, ptr @extension, i32 0, i32 1), align 4
  %132 = load i32, ptr getelementptr inbounds (<{ { i32, <{ i8, [8 x i8] }> }, %struct.anon.120, %struct.anon.120, %struct.anon.120, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, { i32, <{ i8, [8 x i8] }> }, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120, %struct.anon.120 }>, ptr @mxb_saa7740_init, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %132)
  %cmp2817 = icmp eq i32 %132, -1
  br i1 %cmp2817, label %if.then279.do.end317_crit_edge, label %if.then279.if.end284_crit_edge

if.then279.if.end284_crit_edge:                   ; preds = %if.then279
  br label %if.end284

if.then279.do.end317_crit_edge:                   ; preds = %if.then279
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end317

for.cond:                                         ; preds = %if.end284
  %inc = add i32 %i.08, 1
  %arrayidx280 = getelementptr [77 x %struct.anon.120], ptr @mxb_saa7740_init, i32 0, i32 %inc
  %133 = ptrtoint ptr %arrayidx280 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx280, align 4
  %cmp281 = icmp eq i32 %134, -1
  br i1 %cmp281, label %for.cond.do.end317_crit_edge, label %for.cond.if.end284_crit_edge

for.cond.if.end284_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end284

for.cond.do.end317_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end317

if.end284:                                        ; preds = %for.cond.if.end284_crit_edge, %if.then279.if.end284_crit_edge
  %135 = phi i32 [ %134, %for.cond.if.end284_crit_edge ], [ %132, %if.then279.if.end284_crit_edge ]
  %i.08 = phi i32 [ %inc, %for.cond.if.end284_crit_edge ], [ 1, %if.then279.if.end284_crit_edge ]
  %conv287 = trunc i32 %135 to i16
  %136 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %conv287, ptr %len, align 4
  %data = getelementptr [77 x %struct.anon.120], ptr @mxb_saa7740_init, i32 0, i32 %i.08, i32 1
  %137 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %data, ptr %buf, align 4
  %call293 = call i32 @i2c_transfer(ptr noundef %i2c_adapter, ptr noundef nonnull %msg, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call293)
  %cmp294.not = icmp eq i32 %call293, 1
  br i1 %cmp294.not, label %for.cond, label %do.body297

do.body297:                                       ; preds = %if.end284
  %138 = load i32, ptr @debug, align 4
  %and298 = and i32 %138, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and298)
  %tobool299.not = icmp eq i32 %and298, 0
  br i1 %tobool299.not, label %do.body297.err321_crit_edge, label %do.body301

do.body297.err321_crit_edge:                      ; preds = %do.body297
  call void @__sanitizer_cov_trace_pc() #12
  br label %err321

do.body301:                                       ; preds = %do.body297
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxb_init_done.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxb_init_done, %if.then307)) #10
          to label %err321 [label %if.then307], !srcloc !203

if.then307:                                       ; preds = %do.body301
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxb_init_done.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.68) #10
  br label %err321

do.end317:                                        ; preds = %for.cond.do.end317_crit_edge, %if.then279.do.end317_crit_edge
  %call319 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #13
  br label %err321

err321:                                           ; preds = %do.end317, %if.then307, %do.body301, %do.body297.err321_crit_edge, %mxb_update_audmode.exit.err321_crit_edge
  call void @saa7146_set_hps_source_and_sync(ptr noundef %dev, i32 noundef 0, i32 noundef 0) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !209
  call void @arm_heavy_mb() #10
  %139 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %mem, align 4
  %add.ptr330 = getelementptr i8, ptr %140, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr330, i32 0) #10, !srcloc !207
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !210
  call void @arm_heavy_mb() #10
  %141 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %mem, align 4
  %add.ptr335 = getelementptr i8, ptr %142, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr335, i32 131074) #10, !srcloc !207
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !211
  call void @arm_heavy_mb() #10
  %143 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %mem, align 4
  %add.ptr340 = getelementptr i8, ptr %144, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr340, i32 393222) #10, !srcloc !207
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tun_setup) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @std_callback(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %standard) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext_priv, align 4
  %id = getelementptr inbounds %struct.saa7146_standard, ptr %standard, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %3)
  %cmp = icmp eq i64 %3, 16
  br i1 %cmp, label %if.then, label %if.else101

if.then:                                          ; preds = %entry
  %4 = load i32, ptr @debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.do.body10_crit_edge, label %do.body2

if.then.do.body10_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10

do.body2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @std_callback.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@std_callback, %if.then6)) #10
          to label %do.body10 [label %if.then6], !srcloc !203

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @std_callback.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20) #10
  br label %do.body10

do.body10:                                        ; preds = %if.then6, %do.body2, %if.then.do.body10_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !212
  tail call void @arm_heavy_mb() #10
  %mem = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 5
  %5 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1346387968) #10, !srcloc !207
  %saa7111a = getelementptr inbounds %struct.mxb, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %saa7111a to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %saa7111a, align 8
  %tobool13.not = icmp eq ptr %8, null
  br i1 %tobool13.not, label %do.body10.if.end65_crit_edge, label %if.else

do.body10.if.end65_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.else:                                          ; preds = %do.body10
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool15.not = icmp eq ptr %12, null
  br i1 %tobool15.not, label %if.else.if.end35_crit_edge, label %land.lhs.true

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

land.lhs.true:                                    ; preds = %if.else
  %s_gpio = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %s_gpio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_gpio, align 4
  %tobool18.not = icmp eq ptr %14, null
  br i1 %tobool18.not, label %land.lhs.true.if.end35_crit_edge, label %if.else20

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.else20:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %15 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool21.not = icmp eq ptr %15, null
  br i1 %tobool21.not, label %if.else20.if.else28_crit_edge, label %land.lhs.true22

if.else20.if.else28_crit_edge:                    ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else28

land.lhs.true22:                                  ; preds = %if.else20
  %s_gpio23 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %s_gpio23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_gpio23, align 4
  %tobool24.not = icmp eq ptr %17, null
  br i1 %tobool24.not, label %land.lhs.true22.if.else28_crit_edge, label %land.lhs.true22.if.end35.sink.split_crit_edge

land.lhs.true22.if.end35.sink.split_crit_edge:    ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.sink.split

land.lhs.true22.if.else28_crit_edge:              ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else28

if.else28:                                        ; preds = %land.lhs.true22.if.else28_crit_edge, %if.else20.if.else28_crit_edge
  br label %if.end35.sink.split

if.end35.sink.split:                              ; preds = %if.else28, %land.lhs.true22.if.end35.sink.split_crit_edge
  %.sink = phi ptr [ %14, %if.else28 ], [ %17, %land.lhs.true22.if.end35.sink.split_crit_edge ]
  %call32 = tail call i32 %.sink(ptr noundef nonnull %8, i32 noundef 0) #10
  br label %if.end35

if.end35:                                         ; preds = %if.end35.sink.split, %land.lhs.true.if.end35_crit_edge, %if.else.if.end35_crit_edge
  %18 = ptrtoint ptr %saa7111a to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load ptr, ptr %saa7111a, align 8
  %tobool40.not = icmp eq ptr %.pr, null
  br i1 %tobool40.not, label %if.end35.if.end65_crit_edge, label %if.else42

if.end35.if.end65_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.else42:                                        ; preds = %if.end35
  %ops43 = getelementptr inbounds %struct.v4l2_subdev, ptr %.pr, i32 0, i32 6
  %19 = ptrtoint ptr %ops43 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops43, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %video, align 4
  %tobool44.not = icmp eq ptr %22, null
  br i1 %tobool44.not, label %if.else42.if.end65_crit_edge, label %land.lhs.true45

if.else42.if.end65_crit_edge:                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

land.lhs.true45:                                  ; preds = %if.else42
  %s_std = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %s_std to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_std, align 4
  %tobool48.not = icmp eq ptr %24, null
  br i1 %tobool48.not, label %land.lhs.true45.if.end65_crit_edge, label %if.else50

land.lhs.true45.if.end65_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.else50:                                        ; preds = %land.lhs.true45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool51.not = icmp eq ptr %25, null
  br i1 %tobool51.not, label %if.else50.if.else58_crit_edge, label %land.lhs.true52

if.else50.if.else58_crit_edge:                    ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else58

land.lhs.true52:                                  ; preds = %if.else50
  %s_std53 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %s_std53 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_std53, align 4
  %tobool54.not = icmp eq ptr %27, null
  br i1 %tobool54.not, label %land.lhs.true52.if.else58_crit_edge, label %land.lhs.true52.if.end65.sink.split_crit_edge

land.lhs.true52.if.end65.sink.split_crit_edge:    ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65.sink.split

land.lhs.true52.if.else58_crit_edge:              ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else58

if.else58:                                        ; preds = %land.lhs.true52.if.else58_crit_edge, %if.else50.if.else58_crit_edge
  br label %if.end65.sink.split

if.end65.sink.split:                              ; preds = %if.else58, %land.lhs.true52.if.end65.sink.split_crit_edge
  %.sink316 = phi ptr [ %24, %if.else58 ], [ %27, %land.lhs.true52.if.end65.sink.split_crit_edge ]
  %call62 = tail call i32 %.sink316(ptr noundef nonnull %.pr, i64 noundef 16) #10
  br label %if.end65

if.end65:                                         ; preds = %if.end65.sink.split, %land.lhs.true45.if.end65_crit_edge, %if.else42.if.end65_crit_edge, %if.end35.if.end65_crit_edge, %do.body10.if.end65_crit_edge
  %cur_input = getelementptr inbounds %struct.mxb, ptr %1, i32 0, i32 10
  %28 = ptrtoint ptr %cur_input to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cur_input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp67 = icmp eq i32 %29, 0
  br i1 %cmp67, label %if.then68, label %if.end65.if.end236_crit_edge

if.end65.if.end236_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end236

if.then68:                                        ; preds = %if.end65
  %tuner = getelementptr inbounds %struct.mxb, ptr %1, i32 0, i32 6
  %30 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tuner, align 4
  %tobool71.not = icmp eq ptr %31, null
  br i1 %tobool71.not, label %if.then68.if.end236_crit_edge, label %if.else73

if.then68.if.end236_crit_edge:                    ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end236

if.else73:                                        ; preds = %if.then68
  %ops74 = getelementptr inbounds %struct.v4l2_subdev, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %ops74 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops74, align 4
  %video75 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %video75 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %video75, align 4
  %tobool76.not = icmp eq ptr %35, null
  br i1 %tobool76.not, label %if.else73.if.end236_crit_edge, label %land.lhs.true77

if.else73.if.end236_crit_edge:                    ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end236

land.lhs.true77:                                  ; preds = %if.else73
  %s_std80 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %s_std80 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_std80, align 4
  %tobool81.not = icmp eq ptr %37, null
  br i1 %tobool81.not, label %land.lhs.true77.if.end236_crit_edge, label %if.else83

land.lhs.true77.if.end236_crit_edge:              ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end236

if.else83:                                        ; preds = %land.lhs.true77
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool84.not = icmp eq ptr %38, null
  br i1 %tobool84.not, label %if.else83.if.else91_crit_edge, label %land.lhs.true85

if.else83.if.else91_crit_edge:                    ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else91

land.lhs.true85:                                  ; preds = %if.else83
  %s_std86 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %s_std86 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_std86, align 4
  %tobool87.not = icmp eq ptr %40, null
  br i1 %tobool87.not, label %land.lhs.true85.if.else91_crit_edge, label %if.then88

land.lhs.true85.if.else91_crit_edge:              ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else91

if.then88:                                        ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #12
  %call90 = tail call i32 %40(ptr noundef nonnull %31, i64 noundef 16) #10
  br label %if.end236

if.else91:                                        ; preds = %land.lhs.true85.if.else91_crit_edge, %if.else83.if.else91_crit_edge
  %call95 = tail call i32 %37(ptr noundef nonnull %31, i64 noundef 16) #10
  br label %if.end236

if.else101:                                       ; preds = %entry
  %cur_input103 = getelementptr inbounds %struct.mxb, ptr %1, i32 0, i32 10
  %41 = ptrtoint ptr %cur_input103 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cur_input103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool104.not = icmp eq i32 %42, 0
  %spec.select = select i1 %tobool104.not, i64 7, i64 %3
  %43 = load i32, ptr @debug, align 4
  %and109 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.else101.do.body131_crit_edge, label %do.body112

if.else101.do.body131_crit_edge:                  ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body131

do.body112:                                       ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @std_callback.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@std_callback, %if.then124)) #10
          to label %do.body131 [label %if.then124], !srcloc !203

if.then124:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @std_callback.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.20) #10
  br label %do.body131

do.body131:                                       ; preds = %if.then124, %do.body112, %if.else101.do.body131_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  tail call void @arm_heavy_mb() #10
  %mem134 = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 5
  %44 = ptrtoint ptr %mem134 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mem134, align 4
  %add.ptr135 = getelementptr i8, ptr %45, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr135, i32 1346387968) #10, !srcloc !207
  %saa7111a137 = getelementptr inbounds %struct.mxb, ptr %1, i32 0, i32 3
  %46 = ptrtoint ptr %saa7111a137 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %saa7111a137, align 8
  %tobool139.not = icmp eq ptr %47, null
  br i1 %tobool139.not, label %do.body131.if.end198_crit_edge, label %if.else141

do.body131.if.end198_crit_edge:                   ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end198

if.else141:                                       ; preds = %do.body131
  %ops142 = getelementptr inbounds %struct.v4l2_subdev, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %ops142 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops142, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %tobool144.not = icmp eq ptr %51, null
  br i1 %tobool144.not, label %if.else141.if.end166_crit_edge, label %land.lhs.true145

if.else141.if.end166_crit_edge:                   ; preds = %if.else141
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end166

land.lhs.true145:                                 ; preds = %if.else141
  %s_gpio148 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %s_gpio148 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_gpio148, align 4
  %tobool149.not = icmp eq ptr %53, null
  br i1 %tobool149.not, label %land.lhs.true145.if.end166_crit_edge, label %if.else151

land.lhs.true145.if.end166_crit_edge:             ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end166

if.else151:                                       ; preds = %land.lhs.true145
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %54 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool152.not = icmp eq ptr %54, null
  br i1 %tobool152.not, label %if.else151.if.else159_crit_edge, label %land.lhs.true153

if.else151.if.else159_crit_edge:                  ; preds = %if.else151
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else159

land.lhs.true153:                                 ; preds = %if.else151
  %s_gpio154 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %s_gpio154 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %s_gpio154, align 4
  %tobool155.not = icmp eq ptr %56, null
  br i1 %tobool155.not, label %land.lhs.true153.if.else159_crit_edge, label %land.lhs.true153.if.end166.sink.split_crit_edge

land.lhs.true153.if.end166.sink.split_crit_edge:  ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end166.sink.split

land.lhs.true153.if.else159_crit_edge:            ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else159

if.else159:                                       ; preds = %land.lhs.true153.if.else159_crit_edge, %if.else151.if.else159_crit_edge
  br label %if.end166.sink.split

if.end166.sink.split:                             ; preds = %if.else159, %land.lhs.true153.if.end166.sink.split_crit_edge
  %.sink317 = phi ptr [ %53, %if.else159 ], [ %56, %land.lhs.true153.if.end166.sink.split_crit_edge ]
  %call163 = tail call i32 %.sink317(ptr noundef nonnull %47, i32 noundef 1) #10
  br label %if.end166

if.end166:                                        ; preds = %if.end166.sink.split, %land.lhs.true145.if.end166_crit_edge, %if.else141.if.end166_crit_edge
  %57 = ptrtoint ptr %saa7111a137 to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pr314 = load ptr, ptr %saa7111a137, align 8
  %tobool171.not = icmp eq ptr %.pr314, null
  br i1 %tobool171.not, label %if.end166.if.end198_crit_edge, label %if.else173

if.end166.if.end198_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end198

if.else173:                                       ; preds = %if.end166
  %ops174 = getelementptr inbounds %struct.v4l2_subdev, ptr %.pr314, i32 0, i32 6
  %58 = ptrtoint ptr %ops174 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops174, align 4
  %video175 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %video175 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %video175, align 4
  %tobool176.not = icmp eq ptr %61, null
  br i1 %tobool176.not, label %if.else173.if.end198_crit_edge, label %land.lhs.true177

if.else173.if.end198_crit_edge:                   ; preds = %if.else173
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end198

land.lhs.true177:                                 ; preds = %if.else173
  %s_std180 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %s_std180 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %s_std180, align 4
  %tobool181.not = icmp eq ptr %63, null
  br i1 %tobool181.not, label %land.lhs.true177.if.end198_crit_edge, label %if.else183

land.lhs.true177.if.end198_crit_edge:             ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end198

if.else183:                                       ; preds = %land.lhs.true177
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool184.not = icmp eq ptr %64, null
  br i1 %tobool184.not, label %if.else183.if.else191_crit_edge, label %land.lhs.true185

if.else183.if.else191_crit_edge:                  ; preds = %if.else183
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else191

land.lhs.true185:                                 ; preds = %if.else183
  %s_std186 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %s_std186 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %s_std186, align 4
  %tobool187.not = icmp eq ptr %66, null
  br i1 %tobool187.not, label %land.lhs.true185.if.else191_crit_edge, label %land.lhs.true185.if.end198.sink.split_crit_edge

land.lhs.true185.if.end198.sink.split_crit_edge:  ; preds = %land.lhs.true185
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end198.sink.split

land.lhs.true185.if.else191_crit_edge:            ; preds = %land.lhs.true185
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else191

if.else191:                                       ; preds = %land.lhs.true185.if.else191_crit_edge, %if.else183.if.else191_crit_edge
  br label %if.end198.sink.split

if.end198.sink.split:                             ; preds = %if.else191, %land.lhs.true185.if.end198.sink.split_crit_edge
  %.sink318 = phi ptr [ %63, %if.else191 ], [ %66, %land.lhs.true185.if.end198.sink.split_crit_edge ]
  %call195 = tail call i32 %.sink318(ptr noundef nonnull %.pr314, i64 noundef %spec.select) #10
  br label %if.end198

if.end198:                                        ; preds = %if.end198.sink.split, %land.lhs.true177.if.end198_crit_edge, %if.else173.if.end198_crit_edge, %if.end166.if.end198_crit_edge, %do.body131.if.end198_crit_edge
  %67 = ptrtoint ptr %cur_input103 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cur_input103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp201 = icmp eq i32 %68, 0
  br i1 %cmp201, label %if.then202, label %if.end198.if.end236_crit_edge

if.end198.if.end236_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end236

if.then202:                                       ; preds = %if.end198
  %tuner204 = getelementptr inbounds %struct.mxb, ptr %1, i32 0, i32 6
  %69 = ptrtoint ptr %tuner204 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tuner204, align 4
  %tobool206.not = icmp eq ptr %70, null
  br i1 %tobool206.not, label %if.then202.if.end236_crit_edge, label %if.else208

if.then202.if.end236_crit_edge:                   ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end236

if.else208:                                       ; preds = %if.then202
  %ops209 = getelementptr inbounds %struct.v4l2_subdev, ptr %70, i32 0, i32 6
  %71 = ptrtoint ptr %ops209 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ops209, align 4
  %video210 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %video210 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %video210, align 4
  %tobool211.not = icmp eq ptr %74, null
  br i1 %tobool211.not, label %if.else208.if.end236_crit_edge, label %land.lhs.true212

if.else208.if.end236_crit_edge:                   ; preds = %if.else208
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end236

land.lhs.true212:                                 ; preds = %if.else208
  %s_std215 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %s_std215 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %s_std215, align 4
  %tobool216.not = icmp eq ptr %76, null
  br i1 %tobool216.not, label %land.lhs.true212.if.end236_crit_edge, label %if.else218

land.lhs.true212.if.end236_crit_edge:             ; preds = %land.lhs.true212
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end236

if.else218:                                       ; preds = %land.lhs.true212
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool219.not = icmp eq ptr %77, null
  br i1 %tobool219.not, label %if.else218.if.else226_crit_edge, label %land.lhs.true220

if.else218.if.else226_crit_edge:                  ; preds = %if.else218
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else226

land.lhs.true220:                                 ; preds = %if.else218
  %s_std221 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %s_std221 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %s_std221, align 4
  %tobool222.not = icmp eq ptr %79, null
  br i1 %tobool222.not, label %land.lhs.true220.if.else226_crit_edge, label %if.then223

land.lhs.true220.if.else226_crit_edge:            ; preds = %land.lhs.true220
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else226

if.then223:                                       ; preds = %land.lhs.true220
  call void @__sanitizer_cov_trace_pc() #12
  %call225 = tail call i32 %79(ptr noundef nonnull %70, i64 noundef %spec.select) #10
  br label %if.end236

if.else226:                                       ; preds = %land.lhs.true220.if.else226_crit_edge, %if.else218.if.else226_crit_edge
  %call230 = tail call i32 %76(ptr noundef nonnull %70, i64 noundef %spec.select) #10
  br label %if.end236

if.end236:                                        ; preds = %if.else226, %if.then223, %land.lhs.true212.if.end236_crit_edge, %if.else208.if.end236_crit_edge, %if.then202.if.end236_crit_edge, %if.end198.if.end236_crit_edge, %if.else91, %if.then88, %land.lhs.true77.if.end236_crit_edge, %if.else73.if.end236_crit_edge, %if.then68.if.end236_crit_edge, %if.end65.if.end236_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_i2c_adapter_prepare(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_new_subdev(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxb_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %ext_priv = getelementptr i8, ptr %1, i32 416
  %2 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext_priv, align 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963785, i32 %5)
  %cond3 = icmp eq i32 %5, 9963785
  br i1 %cond3, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %cur_mute = getelementptr inbounds %struct.mxb, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %cur_mute to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %cur_mute, align 4
  %9 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %cond.false, label %sw.bb.cond.end_crit_edge

sw.bb.cond.end_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %cur_input = getelementptr inbounds %struct.mxb, ptr %3, i32 0, i32 10
  %10 = ptrtoint ptr %cur_input to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur_input, align 4
  %arrayidx = getelementptr [4 x i32], ptr @video_audio_connect, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %sw.bb.cond.end_crit_edge
  %cond = phi i32 [ %13, %cond.false ], [ 6, %sw.bb.cond.end_crit_edge ]
  tail call fastcc void @tea6420_route(ptr noundef %3, i32 noundef %cond)
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tea6420_route(ptr nocapture noundef readonly %mxb, i32 noundef %idx) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tea6420_1 = getelementptr inbounds %struct.mxb, ptr %mxb, i32 0, i32 7
  %0 = ptrtoint ptr %tea6420_1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tea6420_1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %if.else

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %audio = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %audio, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.else.if.end28_crit_edge, label %land.lhs.true

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

land.lhs.true:                                    ; preds = %if.else
  %s_routing = getelementptr inbounds %struct.v4l2_subdev_audio_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %s_routing to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_routing, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %land.lhs.true.if.end28_crit_edge, label %if.else6

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.else6:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 2) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 2), align 4
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %if.else6.if.else16_crit_edge, label %land.lhs.true8

if.else6.if.else16_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else16

land.lhs.true8:                                   ; preds = %if.else6
  %s_routing9 = getelementptr inbounds %struct.v4l2_subdev_audio_ops, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %s_routing9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_routing9, align 4
  %tobool10.not = icmp eq ptr %10, null
  br i1 %tobool10.not, label %land.lhs.true8.if.else16_crit_edge, label %land.lhs.true8.if.end28.sink.split_crit_edge

land.lhs.true8.if.end28.sink.split_crit_edge:     ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.sink.split

land.lhs.true8.if.else16_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else16

if.else16:                                        ; preds = %land.lhs.true8.if.else16_crit_edge, %if.else6.if.else16_crit_edge
  br label %if.end28.sink.split

if.end28.sink.split:                              ; preds = %if.else16, %land.lhs.true8.if.end28.sink.split_crit_edge
  %.sink214 = phi ptr [ %7, %if.else16 ], [ %10, %land.lhs.true8.if.end28.sink.split_crit_edge ]
  %arrayidx = getelementptr [7 x [2 x %struct.mxb_routing]], ptr @TEA6420_cd, i32 0, i32 %idx
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %output25 = getelementptr inbounds %struct.mxb_routing, ptr %arrayidx, i32 0, i32 1
  %13 = ptrtoint ptr %output25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %output25, align 4
  %call26 = tail call i32 %.sink214(ptr noundef nonnull %1, i32 noundef %12, i32 noundef %14, i32 noundef 0) #10
  br label %if.end28

if.end28:                                         ; preds = %if.end28.sink.split, %land.lhs.true.if.end28_crit_edge, %if.else.if.end28_crit_edge, %entry.if.end28_crit_edge
  %tea6420_2 = getelementptr inbounds %struct.mxb, ptr %mxb, i32 0, i32 8
  %15 = ptrtoint ptr %tea6420_2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tea6420_2, align 4
  %tobool31.not = icmp eq ptr %16, null
  br i1 %tobool31.not, label %if.end28.if.end70_crit_edge, label %if.else33

if.end28.if.end70_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.else33:                                        ; preds = %if.end28
  %ops34 = getelementptr inbounds %struct.v4l2_subdev, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %ops34 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops34, align 4
  %audio35 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %audio35 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %audio35, align 4
  %tobool36.not = icmp eq ptr %20, null
  br i1 %tobool36.not, label %if.else33.if.end70_crit_edge, label %land.lhs.true37

if.else33.if.end70_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

land.lhs.true37:                                  ; preds = %if.else33
  %s_routing40 = getelementptr inbounds %struct.v4l2_subdev_audio_ops, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %s_routing40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_routing40, align 4
  %tobool41.not = icmp eq ptr %22, null
  br i1 %tobool41.not, label %land.lhs.true37.if.end70_crit_edge, label %if.else43

land.lhs.true37.if.end70_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.else43:                                        ; preds = %land.lhs.true37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 2) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 2), align 4
  %tobool44.not = icmp eq ptr %23, null
  br i1 %tobool44.not, label %if.else43.if.else57_crit_edge, label %land.lhs.true45

if.else43.if.else57_crit_edge:                    ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else57

land.lhs.true45:                                  ; preds = %if.else43
  %s_routing46 = getelementptr inbounds %struct.v4l2_subdev_audio_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %s_routing46 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_routing46, align 4
  %tobool47.not = icmp eq ptr %25, null
  br i1 %tobool47.not, label %land.lhs.true45.if.else57_crit_edge, label %land.lhs.true45.if.end70.sink.split_crit_edge

land.lhs.true45.if.end70.sink.split_crit_edge:    ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70.sink.split

land.lhs.true45.if.else57_crit_edge:              ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else57

if.else57:                                        ; preds = %land.lhs.true45.if.else57_crit_edge, %if.else43.if.else57_crit_edge
  br label %if.end70.sink.split

if.end70.sink.split:                              ; preds = %if.else57, %land.lhs.true45.if.end70.sink.split_crit_edge
  %.sink217 = phi ptr [ %22, %if.else57 ], [ %25, %land.lhs.true45.if.end70.sink.split_crit_edge ]
  %arrayidx62 = getelementptr [7 x [2 x %struct.mxb_routing]], ptr @TEA6420_cd, i32 0, i32 %idx, i32 1
  %26 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx62, align 4
  %output66 = getelementptr [7 x [2 x %struct.mxb_routing]], ptr @TEA6420_cd, i32 0, i32 %idx, i32 1, i32 1
  %28 = ptrtoint ptr %output66 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %output66, align 4
  %call67 = tail call i32 %.sink217(ptr noundef nonnull %16, i32 noundef %27, i32 noundef %29, i32 noundef 0) #10
  br label %if.end70

if.end70:                                         ; preds = %if.end70.sink.split, %land.lhs.true37.if.end70_crit_edge, %if.else33.if.end70_crit_edge, %if.end28.if.end70_crit_edge
  %30 = ptrtoint ptr %tea6420_1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tea6420_1, align 8
  %tobool75.not = icmp eq ptr %31, null
  br i1 %tobool75.not, label %if.end70.if.end114_crit_edge, label %if.else77

if.end70.if.end114_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

if.else77:                                        ; preds = %if.end70
  %ops78 = getelementptr inbounds %struct.v4l2_subdev, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %ops78 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops78, align 4
  %audio79 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %audio79 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %audio79, align 4
  %tobool80.not = icmp eq ptr %35, null
  br i1 %tobool80.not, label %if.else77.if.end114_crit_edge, label %land.lhs.true81

if.else77.if.end114_crit_edge:                    ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

land.lhs.true81:                                  ; preds = %if.else77
  %s_routing84 = getelementptr inbounds %struct.v4l2_subdev_audio_ops, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %s_routing84 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_routing84, align 4
  %tobool85.not = icmp eq ptr %37, null
  br i1 %tobool85.not, label %land.lhs.true81.if.end114_crit_edge, label %if.else87

land.lhs.true81.if.end114_crit_edge:              ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

if.else87:                                        ; preds = %land.lhs.true81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 2) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 2), align 4
  %tobool88.not = icmp eq ptr %38, null
  br i1 %tobool88.not, label %if.else87.if.else101_crit_edge, label %land.lhs.true89

if.else87.if.else101_crit_edge:                   ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else101

land.lhs.true89:                                  ; preds = %if.else87
  %s_routing90 = getelementptr inbounds %struct.v4l2_subdev_audio_ops, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %s_routing90 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_routing90, align 4
  %tobool91.not = icmp eq ptr %40, null
  br i1 %tobool91.not, label %land.lhs.true89.if.else101_crit_edge, label %land.lhs.true89.if.end114.sink.split_crit_edge

land.lhs.true89.if.end114.sink.split_crit_edge:   ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114.sink.split

land.lhs.true89.if.else101_crit_edge:             ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else101

if.else101:                                       ; preds = %land.lhs.true89.if.else101_crit_edge, %if.else87.if.else101_crit_edge
  br label %if.end114.sink.split

if.end114.sink.split:                             ; preds = %if.else101, %land.lhs.true89.if.end114.sink.split_crit_edge
  %.sink219 = phi ptr [ %37, %if.else101 ], [ %40, %land.lhs.true89.if.end114.sink.split_crit_edge ]
  %arrayidx94 = getelementptr [7 x [2 x %struct.mxb_routing]], ptr @TEA6420_line, i32 0, i32 %idx
  %41 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx94, align 4
  %output110 = getelementptr inbounds %struct.mxb_routing, ptr %arrayidx94, i32 0, i32 1
  %43 = ptrtoint ptr %output110 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %output110, align 4
  %call111 = tail call i32 %.sink219(ptr noundef nonnull %31, i32 noundef %42, i32 noundef %44, i32 noundef 0) #10
  br label %if.end114

if.end114:                                        ; preds = %if.end114.sink.split, %land.lhs.true81.if.end114_crit_edge, %if.else77.if.end114_crit_edge, %if.end70.if.end114_crit_edge
  %45 = ptrtoint ptr %tea6420_2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tea6420_2, align 4
  %tobool119.not = icmp eq ptr %46, null
  br i1 %tobool119.not, label %if.end114.if.end158_crit_edge, label %if.else121

if.end114.if.end158_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end158

if.else121:                                       ; preds = %if.end114
  %ops122 = getelementptr inbounds %struct.v4l2_subdev, ptr %46, i32 0, i32 6
  %47 = ptrtoint ptr %ops122 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops122, align 4
  %audio123 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %audio123 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %audio123, align 4
  %tobool124.not = icmp eq ptr %50, null
  br i1 %tobool124.not, label %if.else121.if.end158_crit_edge, label %land.lhs.true125

if.else121.if.end158_crit_edge:                   ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end158

land.lhs.true125:                                 ; preds = %if.else121
  %s_routing128 = getelementptr inbounds %struct.v4l2_subdev_audio_ops, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %s_routing128 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_routing128, align 4
  %tobool129.not = icmp eq ptr %52, null
  br i1 %tobool129.not, label %land.lhs.true125.if.end158_crit_edge, label %if.else131

land.lhs.true125.if.end158_crit_edge:             ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end158

if.else131:                                       ; preds = %land.lhs.true125
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 2) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 2), align 4
  %tobool132.not = icmp eq ptr %53, null
  br i1 %tobool132.not, label %if.else131.if.else145_crit_edge, label %land.lhs.true133

if.else131.if.else145_crit_edge:                  ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else145

land.lhs.true133:                                 ; preds = %if.else131
  %s_routing134 = getelementptr inbounds %struct.v4l2_subdev_audio_ops, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %s_routing134 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_routing134, align 4
  %tobool135.not = icmp eq ptr %55, null
  br i1 %tobool135.not, label %land.lhs.true133.if.else145_crit_edge, label %land.lhs.true133.if.end158.sink.split_crit_edge

land.lhs.true133.if.end158.sink.split_crit_edge:  ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end158.sink.split

land.lhs.true133.if.else145_crit_edge:            ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else145

if.else145:                                       ; preds = %land.lhs.true133.if.else145_crit_edge, %if.else131.if.else145_crit_edge
  br label %if.end158.sink.split

if.end158.sink.split:                             ; preds = %if.else145, %land.lhs.true133.if.end158.sink.split_crit_edge
  %.sink222 = phi ptr [ %52, %if.else145 ], [ %55, %land.lhs.true133.if.end158.sink.split_crit_edge ]
  %arrayidx150 = getelementptr [7 x [2 x %struct.mxb_routing]], ptr @TEA6420_line, i32 0, i32 %idx, i32 1
  %56 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx150, align 4
  %output154 = getelementptr [7 x [2 x %struct.mxb_routing]], ptr @TEA6420_line, i32 0, i32 %idx, i32 1, i32 1
  %58 = ptrtoint ptr %output154 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %output154, align 4
  %call155 = tail call i32 %.sink222(ptr noundef nonnull %46, i32 noundef %57, i32 noundef %59, i32 noundef 0) #10
  br label %if.end158

if.end158:                                        ; preds = %if.end158.sink.split, %land.lhs.true125.if.end158_crit_edge, %if.else121.if.end158_crit_edge, %if.end114.if.end158_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7146_set_hps_source_and_sync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_unregister_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_register_extension(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !21, !23, !24, !26, !27, !29, !31, !33, !35, !37, !38, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !62, !64, !66, !68, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !88, !89, !90, !92, !94, !96, !98, !100, !102, !103, !104, !106, !108, !110, !112, !114, !115, !116, !117, !119, !121, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !137, !138, !139, !140, !142, !143, !144, !146, !148, !149, !150, !151, !153, !154, !155, !156, !158, !159, !160, !161, !163, !165, !166, !167, !168, !170, !171, !172, !173, !175, !177, !178, !179, !180, !182, !183, !184, !186, !188, !189, !191, !192, !193}
!llvm.module.flags = !{!194, !195, !196, !197, !198, !199, !200, !201}
!llvm.ident = !{!202}

!0 = !{ptr @__param_freq, !1, !"__param_freq", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 44, i32 1}
!2 = !{ptr @__UNIQUE_ID_freqtype296, !1, !"__UNIQUE_ID_freqtype296", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_freq297, !4, !"__UNIQUE_ID_freq297", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 45, i32 1}
!5 = !{ptr @__param_debug, !6, !"__param_debug", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 48, i32 1}
!7 = !{ptr @__UNIQUE_ID_debugtype298, !6, !"__UNIQUE_ID_debugtype298", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_debug299, !9, !"__UNIQUE_ID_debug299", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 49, i32 1}
!10 = !{ptr @__initcall__kmod_mxb__318_868_mxb_init_module6, !11, !"__initcall__kmod_mxb__318_868_mxb_init_module6", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 868, i32 1}
!12 = !{ptr @__exitcall_mxb_cleanup_module, !13, !"__exitcall_mxb_cleanup_module", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 869, i32 1}
!14 = !{ptr @__UNIQUE_ID_description319, !15, !"__UNIQUE_ID_description319", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 871, i32 1}
!16 = !{ptr @__UNIQUE_ID_author320, !17, !"__UNIQUE_ID_author320", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 872, i32 1}
!18 = !{ptr @__UNIQUE_ID_file321, !19, !"__UNIQUE_ID_file321", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 873, i32 1}
!20 = !{ptr @__UNIQUE_ID_license322, !19, !"__UNIQUE_ID_license322", i1 false, i1 false}
!21 = !{ptr @debug, !22, !"debug", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 47, i32 12}
!23 = !{ptr @__param_str_freq, !1, !"__param_str_freq", i1 false, i1 false}
!24 = !{ptr @freq, !25, !"freq", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 43, i32 12}
!26 = !{ptr @__param_str_debug, !6, !"__param_str_debug", i1 false, i1 false}
!27 = !{ptr @extension, !28, !"extension", i1 false, i1 false}
!28 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 839, i32 33}
!29 = !{ptr @pci_tbl, !30, !"pci_tbl", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 817, i32 35}
!31 = !{ptr @.str, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 813, i32 14}
!33 = !{ptr @mxb, !34, !"mxb", i1 false, i1 false}
!34 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 812, i32 42}
!35 = !{ptr @.str.1, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 687, i32 2}
!37 = !{ptr @.str.2, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.3, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @mxb_attach.__UNIQUE_ID_ddebug313, !36, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!41 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.6, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 691, i32 3}
!44 = !{ptr @mxb_attach._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @mxb_attach._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.8, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 717, i32 3}
!48 = !{ptr @mxb_attach._entry.7, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @mxb_attach._entry_ptr.9, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.11, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 725, i32 4}
!52 = !{ptr @mxb_attach._entry.10, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @mxb_attach._entry_ptr.12, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 729, i32 2}
!56 = !{ptr @mxb_attach._entry.13, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @mxb_attach._entry_ptr.15, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @vv_data, !59, !"vv_data", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 831, i32 30}
!60 = !{ptr @.str.16, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 790, i32 11}
!62 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 795, i32 11}
!64 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 800, i32 11}
!66 = !{ptr @.str.19, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 805, i32 11}
!68 = !{ptr @standard, !69, !"standard", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 788, i32 32}
!70 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 765, i32 3}
!72 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @std_callback.__UNIQUE_ID_ddebug315, !71, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!74 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 777, i32 3}
!77 = !{ptr @std_callback.__UNIQUE_ID_ddebug316, !76, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!78 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 230, i32 3}
!81 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @mxb_probe.__UNIQUE_ID_ddebug300, !80, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!83 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 235, i32 65}
!86 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 239, i32 3}
!88 = !{ptr @mxb_probe.__UNIQUE_ID_ddebug301, !87, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!89 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.31, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 245, i32 4}
!92 = !{ptr @.str.32, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 247, i32 4}
!94 = !{ptr @.str.33, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 251, i32 4}
!96 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 253, i32 4}
!98 = !{ptr @.str.35, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 255, i32 4}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 260, i32 3}
!102 = !{ptr @mxb_probe._entry, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @mxb_probe._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @mxb_ctrl_ops, !105, !"mxb_ctrl_ops", i1 false, i1 false}
!105 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 215, i32 35}
!106 = !{ptr @TEA6420_cd, !107, !"TEA6420_cd", i1 false, i1 false}
!107 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 119, i32 27}
!108 = !{ptr @TEA6420_line, !109, !"TEA6420_line", i1 false, i1 false}
!109 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 131, i32 27}
!110 = !{ptr @video_audio_connect, !111, !"video_audio_connect", i1 false, i1 false}
!111 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 79, i32 12}
!112 = !{ptr @.str.37, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 450, i32 2}
!114 = !{ptr @.str.38, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @vidioc_enum_input.__UNIQUE_ID_ddebug303, !113, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!116 = !{ptr @.str.39, !113, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @mxb_inputs, !118, !"mxb_inputs", i1 false, i1 false}
!118 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 54, i32 26}
!119 = !{ptr @.str.40, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 463, i32 2}
!121 = !{ptr @.str.41, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @vidioc_g_input.__UNIQUE_ID_ddebug304, !120, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!123 = !{ptr @.str.42, !120, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.43, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 474, i32 2}
!126 = !{ptr @.str.44, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @vidioc_s_input.__UNIQUE_ID_ddebug305, !125, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!128 = !{ptr @.str.45, !125, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.46, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 517, i32 3}
!131 = !{ptr @vidioc_s_input._entry, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @vidioc_s_input._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!133 = distinct !{null, !134, !"input_port_selection", i1 false, i1 false}
!134 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 70, i32 3}
!135 = !{ptr @.str.47, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 535, i32 3}
!137 = !{ptr @.str.48, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @vidioc_g_tuner.__UNIQUE_ID_ddebug306, !136, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!139 = !{ptr @.str.49, !136, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.50, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 540, i32 2}
!142 = !{ptr @vidioc_g_tuner.__UNIQUE_ID_ddebug307, !141, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!143 = !{ptr @.str.51, !141, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.52, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 543, i32 19}
!146 = !{ptr @.str.53, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 557, i32 3}
!148 = !{ptr @.str.54, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @vidioc_s_tuner.__UNIQUE_ID_ddebug308, !147, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!150 = !{ptr @.str.55, !147, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.56, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 582, i32 2}
!153 = !{ptr @.str.57, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @vidioc_g_frequency.__UNIQUE_ID_ddebug309, !152, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!155 = !{ptr @.str.58, !152, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.59, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 598, i32 2}
!158 = !{ptr @.str.60, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @vidioc_s_frequency.__UNIQUE_ID_ddebug310, !157, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!160 = !{ptr @.str.61, !157, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @mxb_audios, !162, !"mxb_audios", i1 false, i1 false}
!162 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 89, i32 26}
!163 = !{ptr @.str.62, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 632, i32 2}
!165 = !{ptr @.str.63, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @vidioc_g_audio.__UNIQUE_ID_ddebug311, !164, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!167 = !{ptr @.str.64, !164, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.65, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 642, i32 2}
!170 = !{ptr @.str.66, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @vidioc_s_audio.__UNIQUE_ID_ddebug312, !169, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!172 = !{ptr @.str.67, !169, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @mxb_num, !174, !"mxb_num", i1 false, i1 false}
!174 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 38, i32 12}
!175 = !{ptr @.str.68, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 412, i32 5}
!177 = !{ptr @.str.69, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @mxb_init_done.__UNIQUE_ID_ddebug302, !176, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!179 = !{ptr @.str.70, !176, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.71, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 416, i32 3}
!182 = !{ptr @mxb_init_done._entry, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @mxb_init_done._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @mxb_saa7740_init, !185, !"mxb_saa7740_init", i1 false, i1 false}
!185 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 281, i32 3}
!186 = !{ptr @.str.73, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 740, i32 2}
!188 = !{ptr @mxb_detach.__UNIQUE_ID_ddebug314, !187, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!189 = !{ptr @.str.74, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/pci/saa7146/mxb.c", i32 856, i32 3}
!191 = !{ptr @.str.75, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @mxb_init_module.__UNIQUE_ID_ddebug317, !190, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!193 = !{ptr @.str.76, !190, !"<string literal>", i1 false, i1 false}
!194 = !{i32 1, !"wchar_size", i32 2}
!195 = !{i32 1, !"min_enum_size", i32 4}
!196 = !{i32 8, !"branch-target-enforcement", i32 0}
!197 = !{i32 8, !"sign-return-address", i32 0}
!198 = !{i32 8, !"sign-return-address-all", i32 0}
!199 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!200 = !{i32 7, !"uwtable", i32 1}
!201 = !{i32 7, !"frame-pointer", i32 2}
!202 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!203 = !{i64 2148834761, i64 2148834766, i64 2148834779, i64 2148834823, i64 2148834857, i64 2148834878}
!204 = !{i64 7174989}
!205 = !{i64 2156724376}
!206 = !{i64 2156724979}
!207 = !{i64 7174571}
!208 = !{i64 2156668056}
!209 = !{i64 2156676082}
!210 = !{i64 2156676579}
!211 = !{i64 2156677209}
!212 = !{i64 2156740604}
!213 = !{i64 2156745854}
