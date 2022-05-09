; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx88/cx88-blackbird.c_pt.bc'
source_filename = "../drivers/media/pci/cx88/cx88-blackbird.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.cx8802_driver = type { ptr, %struct.list_head, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.127 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.124], %struct.media_entity_enum, i32 }
%struct.anon.124 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cx88_core = type { %struct.list_head, %struct.refcount_struct, i32, [32 x i8], i32, i32, i32, ptr, ptr, [3 x i32], i32, %struct.i2c_adapter, %struct.i2c_algo_bit_data, %struct.i2c_client, i32, i32, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, %struct.v4l2_ctrl_handler, ptr, ptr, i32, %struct.cx88_board, i32, ptr, ptr, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.IR_i2c_init_data, %struct.wm8775_platform_data, %struct.mutex, i32, ptr, ptr, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx88_board = type { ptr, i32, i32, i8, i8, i32, [8 x %struct.cx88_input], %struct.cx88_input, i32, i32, i32, i32 }
%struct.cx88_input = type { i32, i32, i32, i32, i32, i8 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.wm8775_platform_data = type { i8 }
%struct.cx8802_dev = type { ptr, %struct.spinlock, ptr, i8, i8, %struct.cx88_dmaqueue, %struct.vb2_queue, i32, i32, %struct.cx8802_suspend_state, %struct.list_head, %struct.video_device, i32, %struct.cx2341x_handler, %struct.vb2_dvb_frontends, ptr, i8, %struct.list_head, %struct.work_struct }
%struct.cx88_dmaqueue = type { %struct.list_head, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.cx8802_suspend_state = type { i32 }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.164, %struct.anon.165, %struct.anon.166, %struct.anon.167, %struct.anon.168, %struct.anon.169, %struct.anon.170, %struct.anon.171 }
%struct.anon.164 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.165 = type { ptr, ptr }
%struct.anon.166 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.167 = type { ptr, ptr }
%struct.anon.168 = type { ptr, ptr, ptr }
%struct.anon.169 = type { ptr, ptr }
%struct.anon.170 = type { ptr, ptr }
%struct.anon.171 = type { ptr, ptr, ptr, ptr }
%struct.vb2_dvb_frontends = type { %struct.list_head, %struct.mutex, %struct.dvb_adapter, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.163, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.163 = type { ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.__va_list = type { ptr }
%struct.cx88_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32, %struct.cx88_riscmem }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.135, i32 }
%union.anon.135 = type { i32 }
%struct.cx88_riscmem = type { i32, ptr, ptr, i32 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.136 }
%union.anon.136 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.138, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.138 = type { i8 }
%struct.cx8800_dev = type { ptr, %struct.spinlock, i32, %struct.video_device, %struct.video_device, %struct.video_device, ptr, i8, i8, ptr, %struct.cx88_dmaqueue, %struct.vb2_queue, %struct.cx88_dmaqueue, %struct.vb2_queue, %struct.cx8800_suspend_state }
%struct.cx8800_suspend_state = type { i32 }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }

@__UNIQUE_ID_description385 = internal constant [79 x i8] c"cx88_blackbird.description=driver for cx2388x/cx23416 based mpeg encoder cards\00", section ".modinfo", align 1
@__UNIQUE_ID_author386 = internal constant [94 x i8] c"cx88_blackbird.author=Jelle Foks <jelle@foks.us>, Gerd Knorr <kraxel@bytesex.org> [SuSE Labs]\00", section ".modinfo", align 1
@__UNIQUE_ID_file387 = internal constant [58 x i8] c"cx88_blackbird.file=drivers/media/pci/cx88/cx88-blackbird\00", section ".modinfo", align 1
@__UNIQUE_ID_license388 = internal constant [30 x i8] c"cx88_blackbird.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_version389 = internal constant [29 x i8] c"cx88_blackbird.version=1.0.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx88_blackbird\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.0.0\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_debug = internal constant [21 x i8] c"cx88_blackbird.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype390 = internal constant [34 x i8] c"cx88_blackbird.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug391 = internal constant [60 x i8] c"cx88_blackbird.parm=debug:enable debug messages [blackbird]\00", section ".modinfo", align 1
@cx8802_blackbird_driver = internal global { %struct.cx8802_driver, [44 x i8] } { %struct.cx8802_driver { ptr null, %struct.list_head zeroinitializer, i32 2, i32 1, ptr null, ptr null, ptr @cx8802_blackbird_probe, ptr @cx8802_blackbird_remove, ptr @cx8802_blackbird_advise_acquire, ptr @cx8802_blackbird_advise_release, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_cx88_blackbird__392_1253_blackbird_init6 = internal global ptr @blackbird_init, section ".initcall6.init", align 4
@__exitcall_blackbird_fini = internal global ptr @blackbird_fini, section ".exitcall.exit", align 4
@cx8802_blackbird_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017cx88_blackbird: %s: blackbird:%s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cx8802_blackbird_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/pci/cx88/cx88-blackbird.c\00", [56 x i8] zeroinitializer }, align 32
@cx8802_blackbird_probe._entry_ptr = internal global ptr @cx8802_blackbird_probe._entry, section ".printk_index", align 4
@cx8802_blackbird_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 1166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\017cx88_blackbird: %s: blackbird: ->being probed by Card=%d Name=%s, PCI %02x:%02x\0A\00", [45 x i8] zeroinitializer }, align 32
@cx8802_blackbird_probe._entry_ptr.8 = internal global ptr @cx8802_blackbird_probe._entry.6, section ".printk_index", align 4
@cx8802_blackbird_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 1183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\016cx88_blackbird: cx23416 based mpeg encoder (blackbird reference design)\0A\00", [53 x i8] zeroinitializer }, align 32
@cx8802_blackbird_probe._entry_ptr.11 = internal global ptr @cx8802_blackbird_probe._entry.9, section ".printk_index", align 4
@blackbird_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @buffer_prepare, ptr @buffer_finish, ptr null, ptr @start_streaming, ptr @stop_streaming, ptr @buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_sg_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@blackbird_mbox_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.5, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017cx88_blackbird: %s: blackbird:%s: 0x%X\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"blackbird_mbox_func\00", [44 x i8] zeroinitializer }, align 32
@blackbird_mbox_func._entry_ptr = internal global ptr @blackbird_mbox_func._entry, section ".printk_index", align 4
@blackbird_mbox_func._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.5, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\017cx88_blackbird: %s: blackbird:Firmware and/or mailbox pointer not initialized or corrupted\0A\00", [34 x i8] zeroinitializer }, align 32
@blackbird_mbox_func._entry_ptr.16 = internal global ptr @blackbird_mbox_func._entry.14, section ".printk_index", align 4
@blackbird_mbox_func._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.5, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\017cx88_blackbird: %s: blackbird:ERROR: Mailbox appears to be in use (%x)\0A\00", [54 x i8] zeroinitializer }, align 32
@blackbird_mbox_func._entry_ptr.19 = internal global ptr @blackbird_mbox_func._entry.17, section ".printk_index", align 4
@blackbird_mbox_func._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.5, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017cx88_blackbird: %s: blackbird:API Input %d = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@blackbird_mbox_func._entry_ptr.22 = internal global ptr @blackbird_mbox_func._entry.20, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@blackbird_mbox_func._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.13, ptr @.str.5, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017cx88_blackbird: %s: blackbird:ERROR: API Mailbox timeout %x\0A\00", [33 x i8] zeroinitializer }, align 32
@blackbird_mbox_func._entry_ptr.25 = internal global ptr @blackbird_mbox_func._entry.23, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@blackbird_mbox_func._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.13, ptr @.str.5, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017cx88_blackbird: %s: blackbird:API Output %d = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@blackbird_mbox_func._entry_ptr.28 = internal global ptr @blackbird_mbox_func._entry.26, section ".printk_index", align 4
@blackbird_mbox_func._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.13, ptr @.str.5, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017cx88_blackbird: %s: blackbird:API result = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@blackbird_mbox_func._entry_ptr.31 = internal global ptr @blackbird_mbox_func._entry.29, section ".printk_index", align 4
@blackbird_initialize_codec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.5, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017cx88_blackbird: %s: blackbird:Initialize codec\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"blackbird_initialize_codec\00", [37 x i8] zeroinitializer }, align 32
@blackbird_initialize_codec._entry_ptr = internal global ptr @blackbird_initialize_codec._entry, section ".printk_index", align 4
@blackbird_initialize_codec._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.5, i32 575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017cx88_blackbird: %s: blackbird:ERROR: Firmware ping failed!\0A\00", [34 x i8] zeroinitializer }, align 32
@blackbird_initialize_codec._entry_ptr.36 = internal global ptr @blackbird_initialize_codec._entry.34, section ".printk_index", align 4
@blackbird_initialize_codec._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.5, i32 583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\017cx88_blackbird: %s: blackbird:ERROR: Firmware get encoder version failed!\0A\00", [51 x i8] zeroinitializer }, align 32
@blackbird_initialize_codec._entry_ptr.39 = internal global ptr @blackbird_initialize_codec._entry.37, section ".printk_index", align 4
@blackbird_initialize_codec._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.33, ptr @.str.5, i32 586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017cx88_blackbird: %s: blackbird:Firmware version is 0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@blackbird_initialize_codec._entry_ptr.42 = internal global ptr @blackbird_initialize_codec._entry.40, section ".printk_index", align 4
@blackbird_load_firmware.magic = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\A7\0D\00\00f\BBU\AA", [24 x i8] zeroinitializer }, align 32
@blackbird_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.5, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017cx88_blackbird: %s: blackbird:Error with register_write\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"blackbird_load_firmware\00", [40 x i8] zeroinitializer }, align 32
@blackbird_load_firmware._entry_ptr = internal global ptr @blackbird_load_firmware._entry, section ".printk_index", align 4
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"v4l-cx2341x-enc.fw\00", [45 x i8] zeroinitializer }, align 32
@blackbird_load_firmware._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.44, ptr @.str.5, i32 467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013cx88_blackbird: Hotplug firmware request failed (%s).\0A\00", [39 x i8] zeroinitializer }, align 32
@blackbird_load_firmware._entry_ptr.48 = internal global ptr @blackbird_load_firmware._entry.46, section ".printk_index", align 4
@blackbird_load_firmware._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.44, ptr @.str.5, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"\013cx88_blackbird: Please fix your hotplug setup, the board will not work without firmware loaded!\0A\00", [61 x i8] zeroinitializer }, align 32
@blackbird_load_firmware._entry_ptr.51 = internal global ptr @blackbird_load_firmware._entry.49, section ".printk_index", align 4
@blackbird_load_firmware._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.44, ptr @.str.5, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013cx88_blackbird: Firmware size mismatch (have %zd, expected %d)\0A\00", [62 x i8] zeroinitializer }, align 32
@blackbird_load_firmware._entry_ptr.54 = internal global ptr @blackbird_load_firmware._entry.52, section ".printk_index", align 4
@blackbird_load_firmware._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.44, ptr @.str.5, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013cx88_blackbird: Firmware magic mismatch, wrong file?\0A\00", [40 x i8] zeroinitializer }, align 32
@blackbird_load_firmware._entry_ptr.57 = internal global ptr @blackbird_load_firmware._entry.55, section ".printk_index", align 4
@blackbird_load_firmware._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.44, ptr @.str.5, i32 486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017cx88_blackbird: %s: blackbird:Loading firmware ...\0A\00", [42 x i8] zeroinitializer }, align 32
@blackbird_load_firmware._entry_ptr.60 = internal global ptr @blackbird_load_firmware._entry.58, section ".printk_index", align 4
@blackbird_load_firmware._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.44, ptr @.str.5, i32 502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013cx88_blackbird: Firmware load might have failed (checksum mismatch).\0A\00", [56 x i8] zeroinitializer }, align 32
@blackbird_load_firmware._entry_ptr.63 = internal global ptr @blackbird_load_firmware._entry.61, section ".printk_index", align 4
@blackbird_load_firmware._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.44, ptr @.str.5, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017cx88_blackbird: %s: blackbird:Firmware upload successful.\0A\00", [35 x i8] zeroinitializer }, align 32
@blackbird_load_firmware._entry_ptr.66 = internal global ptr @blackbird_load_firmware._entry.64, section ".printk_index", align 4
@blackbird_load_firmware._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.5, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@blackbird_load_firmware._entry_ptr.68 = internal global ptr @blackbird_load_firmware._entry.67, section ".printk_index", align 4
@__const.blackbird_find_mailbox.signature = private unnamed_addr constant [4 x i32] [i32 305419896, i32 878082066, i32 1450709556, i32 2014458966], align 4
@blackbird_find_mailbox._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.5, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017cx88_blackbird: %s: blackbird:Mailbox signature found\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"blackbird_find_mailbox\00", [41 x i8] zeroinitializer }, align 32
@blackbird_find_mailbox._entry_ptr = internal global ptr @blackbird_find_mailbox._entry, section ".printk_index", align 4
@blackbird_find_mailbox._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.5, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\017cx88_blackbird: %s: blackbird:Mailbox signature values not found!\0A\00", [59 x i8] zeroinitializer }, align 32
@blackbird_find_mailbox._entry_ptr.73 = internal global ptr @blackbird_find_mailbox._entry.71, section ".printk_index", align 4
@start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.5, i32 714, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\017cx88_blackbird: %s: blackbird:%s: blackbird driver is not loaded\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"start_streaming\00", [16 x i8] zeroinitializer }, align 32
@start_streaming._entry_ptr = internal global ptr @start_streaming._entry, section ".printk_index", align 4
@start_streaming._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.5, i32 722, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\017cx88_blackbird: %s: blackbird:%s: Unable to acquire hardware, %d\0A\00", [60 x i8] zeroinitializer }, align 32
@start_streaming._entry_ptr.78 = internal global ptr @start_streaming._entry.76, section ".printk_index", align 4
@blackbird_start_codec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.5, i32 619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017cx88_blackbird: %s: blackbird:AUD_STATUS:%dL: 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"blackbird_start_codec\00", [42 x i8] zeroinitializer }, align 32
@blackbird_start_codec._entry_ptr = internal global ptr @blackbird_start_codec._entry, section ".printk_index", align 4
@cx8802_mpeg_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @mpeg_fops, i32 0, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"cx8802\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 8355831, ptr null, ptr @mpeg_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpeg\00", [27 x i8] zeroinitializer }, align 32
@blackbird_register_video._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.5, i32 1144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016cx88_blackbird: can't register mpeg device\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"blackbird_register_video\00", [39 x i8] zeroinitializer }, align 32
@blackbird_register_video._entry_ptr = internal global ptr @blackbird_register_video._entry, section ".printk_index", align 4
@blackbird_register_video._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.5, i32 1148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016cx88_blackbird: registered device %s [mpeg]\0A\00", [49 x i8] zeroinitializer }, align 32
@blackbird_register_video._entry_ptr.86 = internal global ptr @blackbird_register_video._entry.84, section ".printk_index", align 4
@mpeg_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@mpeg_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr @vidioc_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr null, ptr @vb2_ioctl_dqbuf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr @vidioc_g_std, ptr @vidioc_s_std, ptr null, ptr @vidioc_enum_input, ptr @vidioc_g_input, ptr @vidioc_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_tuner, ptr @vidioc_s_tuner, ptr @vidioc_g_frequency, ptr @vidioc_s_frequency, ptr null, ptr null, ptr @vidioc_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCI:%s\00", [25 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Television\00", [21 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s/2\00", [27 x i8] zeroinitializer }, align 32
@blackbird_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.5, i32 1244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016cx88_blackbird: cx2388x blackbird driver version %s loaded\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"blackbird_init\00", [17 x i8] zeroinitializer }, align 32
@blackbird_init._entry_ptr = internal global ptr @blackbird_init._entry, section ".printk_index", align 4
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 32, i32 1 }
@___asan_gen_.101 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 34, i32 21 }
@___asan_gen_.104 = private unnamed_addr constant [24 x i8] c"cx8802_blackbird_driver\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1232, i32 29 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1161, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1162, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1183, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [15 x i8] c"blackbird_qops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 779, i32 29 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 326, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 334, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 341, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 354, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 369, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 378, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 382, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 556, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 575, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 582, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 586, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant [6 x i8] c"magic\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 440, i32 29 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 460, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 462, i32 39 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 466, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 468, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 473, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 480, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 486, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 502, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 505, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 517, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 430, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 434, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 714, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 721, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 619, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant [21 x i8] c"cx8802_mpeg_template\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1067, i32 34 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1134, i32 33 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1144, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1147, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant [10 x i8] c"mpeg_fops\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1031, i32 42 }
@___asan_gen_.329 = private unnamed_addr constant [15 x i8] c"mpeg_ioctl_ops\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1041, i32 36 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 799, i32 25 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 988, i32 19 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 920, i32 31 }
@___asan_gen_.341 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.347 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.348 = private constant [43 x i8] c"../drivers/media/pci/cx88/cx88-blackbird.c\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1243, i32 2 }
@llvm.compiler.used = appending global [129 x ptr] [ptr @__UNIQUE_ID_author386, ptr @__UNIQUE_ID_debug391, ptr @__UNIQUE_ID_debugtype390, ptr @__UNIQUE_ID_description385, ptr @__UNIQUE_ID_file387, ptr @__UNIQUE_ID_license388, ptr @__UNIQUE_ID_version389, ptr @__exitcall_blackbird_fini, ptr @__initcall__kmod_cx88_blackbird__392_1253_blackbird_init6, ptr @__modver_attr, ptr @__param_debug, ptr @blackbird_find_mailbox._entry, ptr @blackbird_find_mailbox._entry.71, ptr @blackbird_find_mailbox._entry_ptr, ptr @blackbird_find_mailbox._entry_ptr.73, ptr @blackbird_fini, ptr @blackbird_init._entry, ptr @blackbird_init._entry_ptr, ptr @blackbird_initialize_codec._entry, ptr @blackbird_initialize_codec._entry.34, ptr @blackbird_initialize_codec._entry.37, ptr @blackbird_initialize_codec._entry.40, ptr @blackbird_initialize_codec._entry_ptr, ptr @blackbird_initialize_codec._entry_ptr.36, ptr @blackbird_initialize_codec._entry_ptr.39, ptr @blackbird_initialize_codec._entry_ptr.42, ptr @blackbird_load_firmware._entry, ptr @blackbird_load_firmware._entry.46, ptr @blackbird_load_firmware._entry.49, ptr @blackbird_load_firmware._entry.52, ptr @blackbird_load_firmware._entry.55, ptr @blackbird_load_firmware._entry.58, ptr @blackbird_load_firmware._entry.61, ptr @blackbird_load_firmware._entry.64, ptr @blackbird_load_firmware._entry.67, ptr @blackbird_load_firmware._entry_ptr, ptr @blackbird_load_firmware._entry_ptr.48, ptr @blackbird_load_firmware._entry_ptr.51, ptr @blackbird_load_firmware._entry_ptr.54, ptr @blackbird_load_firmware._entry_ptr.57, ptr @blackbird_load_firmware._entry_ptr.60, ptr @blackbird_load_firmware._entry_ptr.63, ptr @blackbird_load_firmware._entry_ptr.66, ptr @blackbird_load_firmware._entry_ptr.68, ptr @blackbird_mbox_func._entry, ptr @blackbird_mbox_func._entry.14, ptr @blackbird_mbox_func._entry.17, ptr @blackbird_mbox_func._entry.20, ptr @blackbird_mbox_func._entry.23, ptr @blackbird_mbox_func._entry.26, ptr @blackbird_mbox_func._entry.29, ptr @blackbird_mbox_func._entry_ptr, ptr @blackbird_mbox_func._entry_ptr.16, ptr @blackbird_mbox_func._entry_ptr.19, ptr @blackbird_mbox_func._entry_ptr.22, ptr @blackbird_mbox_func._entry_ptr.25, ptr @blackbird_mbox_func._entry_ptr.28, ptr @blackbird_mbox_func._entry_ptr.31, ptr @blackbird_register_video._entry, ptr @blackbird_register_video._entry.84, ptr @blackbird_register_video._entry_ptr, ptr @blackbird_register_video._entry_ptr.86, ptr @blackbird_start_codec._entry, ptr @blackbird_start_codec._entry_ptr, ptr @cx8802_blackbird_probe._entry, ptr @cx8802_blackbird_probe._entry.6, ptr @cx8802_blackbird_probe._entry.9, ptr @cx8802_blackbird_probe._entry_ptr, ptr @cx8802_blackbird_probe._entry_ptr.11, ptr @cx8802_blackbird_probe._entry_ptr.8, ptr @start_streaming._entry, ptr @start_streaming._entry.76, ptr @start_streaming._entry_ptr, ptr @start_streaming._entry_ptr.78, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @debug, ptr @cx8802_blackbird_driver, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @blackbird_qops, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @blackbird_load_firmware.magic, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @cx8802_mpeg_template, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @mpeg_fops, ptr @mpeg_ioctl_ops, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8802_blackbird_driver to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8802_blackbird_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8802_blackbird_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8802_blackbird_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blackbird_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blackbird_mbox_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blackbird_mbox_func._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blackbird_mbox_func._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blackbird_mbox_func._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blackbird_mbox_func._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blackbird_mbox_func._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blackbird_mbox_func._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blackbird_initialize_codec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blackbird_initialize_codec._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blackbird_initialize_codec._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blackbird_initialize_codec._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blackbird_load_firmware.magic to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blackbird_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blackbird_load_firmware._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blackbird_load_firmware._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blackbird_load_firmware._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blackbird_load_firmware._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blackbird_load_firmware._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blackbird_load_firmware._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blackbird_load_firmware._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blackbird_load_firmware._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blackbird_find_mailbox._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blackbird_find_mailbox._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_streaming._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blackbird_start_codec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8802_mpeg_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blackbird_register_video._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blackbird_register_video._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpeg_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpeg_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blackbird_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @blackbird_fini() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @cx8802_unregister_driver(ptr noundef nonnull @cx8802_blackbird_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx8802_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @blackbird_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.2) #15
  %call1 = tail call i32 @cx8802_register_driver(ptr noundef nonnull @cx8802_blackbird_driver) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx8802_blackbird_probe(ptr nocapture noundef readonly %drv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv, align 4
  %dvbdev = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 45
  %2 = ptrtoint ptr %dvbdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvbdev, align 4
  %4 = load i32, ptr @debug, align 4
  %5 = add i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %5)
  %cmp = icmp ult i32 %5, -2
  br i1 %cmp, label %do.end, label %entry.do.body5_crit_edge

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.4) #15
  br label %do.body5

do.body5:                                         ; preds = %do.end, %entry.do.body5_crit_edge
  %6 = load i32, ptr @debug, align 4
  %7 = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %7)
  %cmp7 = icmp ult i32 %7, -2
  br i1 %cmp7, label %do.end11, label %do.body5.do.end16_crit_edge

do.body5.do.end16_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end16

do.end11:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #14
  %boardnr = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %boardnr, align 4
  %name = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 3
  %pci_bus = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %pci_bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pci_bus, align 4
  %pci_slot = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %pci_slot to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pci_slot, align 8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, i32 noundef %9, ptr noundef %name, i32 noundef %11, i32 noundef %13) #15
  br label %do.end16

do.end16:                                         ; preds = %do.end11, %do.body5.do.end16_crit_edge
  %mpeg = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 23, i32 8
  %14 = ptrtoint ptr %mpeg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mpeg, align 4
  %and = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end16.cleanup_crit_edge, label %if.end18

do.end16.cleanup_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end18:                                         ; preds = %do.end16
  %cxhdl = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 13
  %port = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 13, i32 1
  %16 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %port, align 4
  %width = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 29
  %17 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %width, align 8
  %conv = trunc i32 %18 to i16
  %width20 = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 13, i32 2
  %19 = ptrtoint ptr %width20 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv, ptr %width20, align 4
  %height = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 30
  %20 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height, align 4
  %conv21 = trunc i32 %21 to i16
  %height23 = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 13, i32 3
  %22 = ptrtoint ptr %height23 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv21, ptr %height23, align 2
  %func = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 13, i32 8
  %23 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @blackbird_mbox_func, ptr %func, align 4
  %priv = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 13, i32 7
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %3, ptr %priv, align 4
  %call27 = tail call i32 @cx2341x_handler_init(ptr noundef %cxhdl, i32 noundef 36) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end30:                                         ; preds = %if.end18
  %hdl = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 13, i32 6
  %video_hdl = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 17
  %call32 = tail call i32 @v4l2_ctrl_add_handler(ptr noundef %hdl, ptr noundef %video_hdl, ptr noundef null, i1 noundef zeroext false) #12
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #15
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !189
  tail call void @arm_heavy_mb() #12
  %lmmio.i = getelementptr inbounds %struct.cx88_core, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %28, i32 929819
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #12, !srcloc !190
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 21474800) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !191
  tail call void @arm_heavy_mb() #12
  %30 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lmmio.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %31, i32 929819
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #12, !srcloc !190
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 21474800) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !192
  tail call void @arm_heavy_mb() #12
  %33 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lmmio.i, align 4
  %add.ptr8.i = getelementptr i32, ptr %34, i32 917525
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 1145324612) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !193
  tail call void @arm_heavy_mb() #12
  %35 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lmmio.i, align 4
  %add.ptr12.i = getelementptr i32, ptr %36, i32 917526
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 0) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !194
  tail call void @arm_heavy_mb() #12
  %37 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lmmio.i, align 4
  %add.ptr16.i = getelementptr i32, ptr %38, i32 917527
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 251658240) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !195
  tail call void @arm_heavy_mb() #12
  %39 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lmmio.i, align 4
  %add.ptr20.i = getelementptr i32, ptr %40, i32 917528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 0) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !196
  tail call void @arm_heavy_mb() #12
  %41 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lmmio.i, align 4
  %add.ptr24.i = getelementptr i32, ptr %42, i32 917529
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 -2004335548) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !197
  tail call void @arm_heavy_mb() #12
  %43 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %lmmio.i, align 4
  %add.ptr28.i = getelementptr i32, ptr %44, i32 917530
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 0) #12, !srcloc !190
  %call39 = tail call fastcc i32 @blackbird_initialize_codec(ptr noundef %3)
  %tvnorm = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 28
  %45 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %tvnorm, align 8
  %call40 = tail call i32 @cx88_set_tvnorm(ptr noundef %1, i64 noundef %46) #12
  %call41 = tail call i32 @cx88_video_mux(ptr noundef %1, i32 noundef 0) #12
  %47 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %48)
  %cmp44 = icmp eq i32 %48, 576
  %conv45 = zext i1 %cmp44 to i32
  tail call void @cx2341x_handler_set_50hz(ptr noundef %cxhdl, i32 noundef %conv45) #12
  %call47 = tail call i32 @cx2341x_handler_setup(ptr noundef %cxhdl) #12
  %vb2_mpegq = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 6
  %49 = ptrtoint ptr %vb2_mpegq to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %vb2_mpegq, align 4
  %io_modes = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 6, i32 1
  %50 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 23, ptr %io_modes, align 4
  %gfp_flags = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 6, i32 14
  %51 = ptrtoint ptr %gfp_flags to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 4, ptr %gfp_flags, align 4
  %min_buffers_needed = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 6, i32 15
  %52 = ptrtoint ptr %min_buffers_needed to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2, ptr %min_buffers_needed, align 4
  %drv_priv = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 6, i32 10
  %53 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %3, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 6, i32 12
  %54 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 768, ptr %buf_struct_size, align 4
  %ops = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 6, i32 7
  %55 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @blackbird_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 6, i32 8
  %56 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @vb2_dma_sg_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 6, i32 13
  %57 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 8192, ptr %timestamp_flags, align 4
  %lock = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 43
  %lock48 = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 6, i32 5
  %58 = ptrtoint ptr %lock48 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %lock, ptr %lock48, align 4
  %pci = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 2
  %59 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pci, align 8
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  %dev50 = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 6, i32 2
  %61 = ptrtoint ptr %dev50 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %dev49, ptr %dev50, align 4
  %call51 = tail call i32 @vb2_queue_init(ptr noundef %vb2_mpegq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.end30.cleanup_crit_edge, label %if.end55

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end55:                                         ; preds = %if.end30
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %3, align 8
  %64 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pci, align 8
  %mpeg_dev.i = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 11
  tail call void @cx88_vdev_init(ptr noundef %63, ptr noundef %65, ptr noundef %mpeg_dev.i, ptr noundef nonnull @cx8802_mpeg_template, ptr noundef nonnull @.str.81) #12
  %ctrl_handler.i = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 11, i32 9
  %66 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %hdl, ptr %ctrl_handler.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 11, i32 5, i32 8
  %67 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %3, ptr %driver_data.i.i.i, align 4
  %queue.i = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 11, i32 10
  %68 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %vb2_mpegq, ptr %queue.i, align 8
  %device_caps.i = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 11, i32 4
  %69 = ptrtoint ptr %device_caps.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 83886081, ptr %device_caps.i, align 8
  %70 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %3, align 8
  %tuner_type.i = getelementptr inbounds %struct.cx88_core, ptr %71, i32 0, i32 23, i32 1
  %72 = ptrtoint ptr %tuner_type.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tuner_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %73)
  %cmp.not.i = icmp eq i32 %73, -1
  %spec.store.select.i = select i1 %cmp.not.i, i32 83886081, i32 83951617
  %74 = ptrtoint ptr %device_caps.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %spec.store.select.i, ptr %device_caps.i, align 8
  %fops.i.i = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 11, i32 3
  %75 = ptrtoint ptr %fops.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %fops.i.i, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %call.i.i = tail call i32 @__video_register_device(ptr noundef %mpeg_dev.i, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %78) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp9.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp9.i, label %do.end.i, label %do.end15.i

do.end.i:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82) #15
  br label %cleanup

do.end15.i:                                       ; preds = %if.end55
  %init_name.i.i.i = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 11, i32 5, i32 3
  %79 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %80, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end15.i.video_device_node_name.exit.i_crit_edge

do.end15.i.video_device_node_name.exit.i_crit_edge: ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %video_device_node_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 11, i32 5
  %81 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i.i, align 4
  br label %video_device_node_name.exit.i

video_device_node_name.exit.i:                    ; preds = %if.end.i.i.i, %do.end15.i.video_device_node_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %82, %if.end.i.i.i ], [ %80, %do.end15.i.video_device_node_name.exit.i_crit_edge ]
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %retval.0.i.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %video_device_node_name.exit.i, %do.end.i, %if.end30.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %do.end16.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %if.end18.cleanup_crit_edge ], [ %call51, %if.end30.cleanup_crit_edge ], [ -19, %do.end16.cleanup_crit_edge ], [ 0, %do.end.i ], [ 0, %video_device_node_name.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx8802_blackbird_remove(ptr nocapture noundef readonly %drv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv, align 4
  %dvbdev = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 45
  %2 = ptrtoint ptr %dvbdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvbdev, align 4
  %mpeg_dev.i = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 11
  tail call void @video_unregister_device(ptr noundef %mpeg_dev.i) #12
  %hdl = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 13, i32 6
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx8802_blackbird_advise_acquire(ptr nocapture noundef readonly %drv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv, align 4
  %boardnr = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %boardnr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %3)
  %cond = icmp eq i32 %3, 56
  br i1 %cond, label %do.body, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !198
  tail call void @arm_heavy_mb() #12
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %5, i32 868356
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !200
  %7 = or i32 %6, -2147483648
  %8 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lmmio, align 4
  %add.ptr4 = getelementptr i32, ptr %9, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %7) #12, !srcloc !190
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !201
  tail call void @arm_heavy_mb() #12
  %11 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lmmio, align 4
  %add.ptr11 = getelementptr i32, ptr %12, i32 868356
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #12, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !202
  %14 = and i32 %13, 2147483647
  %15 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lmmio, align 4
  %add.ptr18 = getelementptr i32, ptr %16, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %14) #12, !srcloc !190
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 10737400) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !203
  tail call void @arm_heavy_mb() #12
  %18 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lmmio, align 4
  %add.ptr25 = getelementptr i32, ptr %19, i32 868356
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #12, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %21 = or i32 %20, -2147483648
  %22 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lmmio, align 4
  %add.ptr32 = getelementptr i32, ptr %23, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %21) #12, !srcloc !190
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  %25 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lmmio, align 4
  %add.ptr39 = getelementptr i32, ptr %26, i32 868356
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #12, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !206
  %28 = or i32 %27, 67108864
  %29 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lmmio, align 4
  %add.ptr46 = getelementptr i32, ptr %30, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %28) #12, !srcloc !190
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ 0, %do.body ], [ -19, %entry.sw.epilog_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cx8802_blackbird_advise_release(ptr nocapture noundef readonly %drv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv, align 4
  %boardnr = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %boardnr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %3)
  %cond = icmp eq i32 %3, 56
  %spec.store.select = select i1 %cond, i32 0, i32 -19
  ret i32 %spec.store.select
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blackbird_mbox_func(ptr nocapture noundef readonly %priv, i32 noundef %command, i32 noundef %in, i32 noundef %out, ptr nocapture noundef %data) #2 align 64 {
entry:
  %value = alloca i32, align 4
  %flag = alloca i32, align 4
  %retval1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #12
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !207
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flag) #12
  %1 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %flag, align 4, !annotation !207
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval1) #12
  %2 = ptrtoint ptr %retval1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %retval1, align 4, !annotation !207
  %3 = load i32, ptr @debug, align 4
  %4 = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %4)
  %cmp = icmp ult i32 %4, -2
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13, i32 noundef %command) #15
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  %mailbox = getelementptr inbounds %struct.cx8802_dev, ptr %priv, i32 0, i32 12
  %7 = ptrtoint ptr %mailbox to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mailbox, align 8
  %sub = add i32 %8, -4
  call fastcc void @memory_read(ptr noundef %6, i32 noundef %sub, ptr noundef nonnull %value)
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 305419896, i32 %10)
  %cmp6.not = icmp eq i32 %10, 305419896
  br i1 %cmp6.not, label %if.end20, label %do.body8

do.body8:                                         ; preds = %do.end4
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp10.not = icmp eq i32 %11, -1
  br i1 %cmp10.not, label %do.body8.cleanup_crit_edge, label %do.end14

do.body8.cleanup_crit_edge:                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end14:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13) #15
  br label %cleanup

if.end20:                                         ; preds = %do.end4
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 8
  %14 = ptrtoint ptr %mailbox to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mailbox, align 8
  call fastcc void @memory_read(ptr noundef %13, i32 noundef %15, ptr noundef nonnull %flag)
  %16 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %if.end37, label %do.body25

do.body25:                                        ; preds = %if.end20
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp27.not = icmp eq i32 %18, -1
  br i1 %cmp27.not, label %do.body25.cleanup_crit_edge, label %do.end31

do.body25.cleanup_crit_edge:                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end31:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.13, i32 noundef %17) #15
  br label %cleanup

if.end37:                                         ; preds = %if.end20
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 8
  %21 = ptrtoint ptr %mailbox to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mailbox, align 8
  tail call fastcc void @memory_write(ptr noundef %20, i32 noundef %22, i32 noundef 1)
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 8
  %25 = ptrtoint ptr %mailbox to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mailbox, align 8
  %add43 = add i32 %26, 1
  tail call fastcc void @memory_write(ptr noundef %24, i32 noundef %add43, i32 noundef %command)
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 8
  %29 = ptrtoint ptr %mailbox to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mailbox, align 8
  %add47 = add i32 %30, 3
  tail call fastcc void @memory_write(ptr noundef %28, i32 noundef %add47, i32 noundef 500)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in)
  %cmp49199 = icmp sgt i32 %in, 0
  br i1 %cmp49199, label %if.end37.for.body_crit_edge, label %if.end37.for.body70.preheader_crit_edge

if.end37.for.body70.preheader_crit_edge:          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body70.preheader

if.end37.for.body_crit_edge:                      ; preds = %if.end37
  br label %for.body

for.cond68.preheader:                             ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %in)
  %cmp69202 = icmp ult i32 %in, 16
  br i1 %cmp69202, label %for.cond68.preheader.for.body70.preheader_crit_edge, label %for.cond68.preheader.for.end78_crit_edge

for.cond68.preheader.for.end78_crit_edge:         ; preds = %for.cond68.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end78

for.cond68.preheader.for.body70.preheader_crit_edge: ; preds = %for.cond68.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body70.preheader

for.body70.preheader:                             ; preds = %for.cond68.preheader.for.body70.preheader_crit_edge, %if.end37.for.body70.preheader_crit_edge
  %i.1203.ph = phi i32 [ 0, %if.end37.for.body70.preheader_crit_edge ], [ %in, %for.cond68.preheader.for.body70.preheader_crit_edge ]
  br label %for.body70

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end37.for.body_crit_edge
  %i.0200 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end37.for.body_crit_edge ]
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 8
  %33 = ptrtoint ptr %mailbox to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mailbox, align 8
  %add52 = add nuw i32 %i.0200, 4
  %add53 = add i32 %add52, %34
  %arrayidx = getelementptr i32, ptr %data, i32 %i.0200
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx, align 4
  tail call fastcc void @memory_write(ptr noundef %32, i32 noundef %add53, i32 noundef %36)
  %37 = load i32, ptr @debug, align 4
  %38 = add i32 %37, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %38)
  %cmp57 = icmp ult i32 %38, -2
  br i1 %cmp57, label %do.end61, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

do.end61:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx, align 4
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.13, i32 noundef %i.0200, i32 noundef %40) #15
  br label %for.inc

for.inc:                                          ; preds = %do.end61, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0200, 1
  %exitcond.not = icmp eq i32 %inc, %in
  br i1 %exitcond.not, label %for.cond68.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body70:                                       ; preds = %for.body70.for.body70_crit_edge, %for.body70.preheader
  %i.1203 = phi i32 [ %inc77, %for.body70.for.body70_crit_edge ], [ %i.1203.ph, %for.body70.preheader ]
  %41 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv, align 8
  %43 = ptrtoint ptr %mailbox to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mailbox, align 8
  %add73 = add nuw i32 %i.1203, 4
  %add74 = add i32 %add73, %44
  tail call fastcc void @memory_write(ptr noundef %42, i32 noundef %add74, i32 noundef 0)
  %inc77 = add nuw i32 %i.1203, 1
  %exitcond209.not = icmp eq i32 %inc77, 16
  br i1 %exitcond209.not, label %for.body70.for.end78_crit_edge, label %for.body70.for.body70_crit_edge

for.body70.for.body70_crit_edge:                  ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body70

for.body70.for.end78_crit_edge:                   ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end78

for.end78:                                        ; preds = %for.body70.for.end78_crit_edge, %for.cond68.preheader.for.end78_crit_edge
  %45 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3, ptr %flag, align 4
  %46 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv, align 8
  %48 = ptrtoint ptr %mailbox to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mailbox, align 8
  tail call fastcc void @memory_write(ptr noundef %47, i32 noundef %49, i32 noundef 3)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %add84 = add i32 %50, 100
  %51 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %priv, align 8
  %53 = ptrtoint ptr %mailbox to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mailbox, align 8
  call fastcc void @memory_read(ptr noundef %52, i32 noundef %54, ptr noundef nonnull %flag)
  %55 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flag, align 4
  %and204 = and i32 %56, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and204)
  %cmp89.not205 = icmp eq i32 %and204, 0
  br i1 %cmp89.not205, label %for.end78.if.end91_crit_edge, label %for.end78.for.cond109.preheader_crit_edge

for.end78.for.cond109.preheader_crit_edge:        ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond109.preheader

for.end78.if.end91_crit_edge:                     ; preds = %for.end78
  br label %if.end91

for.cond109.preheader:                            ; preds = %if.end107.for.cond109.preheader_crit_edge, %for.end78.for.cond109.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %out)
  %cmp110206 = icmp sgt i32 %out, 0
  br i1 %cmp110206, label %for.cond109.preheader.for.body111_crit_edge, label %for.cond109.preheader.for.end132_crit_edge

for.cond109.preheader.for.end132_crit_edge:       ; preds = %for.cond109.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end132

for.cond109.preheader.for.body111_crit_edge:      ; preds = %for.cond109.preheader
  br label %for.body111

if.end91:                                         ; preds = %if.end107.if.end91_crit_edge, %for.end78.if.end91_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %57 = load volatile i32, ptr @jiffies, align 128
  %sub92 = sub i32 %add84, %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub92)
  %cmp93 = icmp slt i32 %sub92, 0
  br i1 %cmp93, label %do.body95, label %if.end107

do.body95:                                        ; preds = %if.end91
  %58 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %cmp97.not = icmp eq i32 %58, -1
  br i1 %cmp97.not, label %do.body95.cleanup_crit_edge, label %do.end101

do.body95.cleanup_crit_edge:                      ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end101:                                        ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #14
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.13, i32 noundef %command) #15
  br label %cleanup

if.end107:                                        ; preds = %if.end91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 2147480) #12
  %60 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %priv, align 8
  %62 = ptrtoint ptr %mailbox to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mailbox, align 8
  call fastcc void @memory_read(ptr noundef %61, i32 noundef %63, ptr noundef nonnull %flag)
  %64 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flag, align 4
  %and = and i32 %65, 4
  %cmp89.not = icmp eq i32 %and, 0
  br i1 %cmp89.not, label %if.end107.if.end91_crit_edge, label %if.end107.for.cond109.preheader_crit_edge

if.end107.for.cond109.preheader_crit_edge:        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond109.preheader

if.end107.if.end91_crit_edge:                     ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

for.body111:                                      ; preds = %for.inc130.for.body111_crit_edge, %for.cond109.preheader.for.body111_crit_edge
  %i.2207 = phi i32 [ %inc131, %for.inc130.for.body111_crit_edge ], [ 0, %for.cond109.preheader.for.body111_crit_edge ]
  %66 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %priv, align 8
  %68 = ptrtoint ptr %mailbox to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %mailbox, align 8
  %add114 = add nuw i32 %i.2207, 4
  %add115 = add i32 %add114, %69
  %add.ptr = getelementptr i32, ptr %data, i32 %i.2207
  tail call fastcc void @memory_read(ptr noundef %67, i32 noundef %add115, ptr noundef %add.ptr)
  %70 = load i32, ptr @debug, align 4
  %71 = add i32 %70, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %71)
  %cmp119 = icmp ult i32 %71, -2
  br i1 %cmp119, label %do.end123, label %for.body111.for.inc130_crit_edge

for.body111.for.inc130_crit_edge:                 ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc130

do.end123:                                        ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr, align 4
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.13, i32 noundef %i.2207, i32 noundef %73) #15
  br label %for.inc130

for.inc130:                                       ; preds = %do.end123, %for.body111.for.inc130_crit_edge
  %inc131 = add nuw nsw i32 %i.2207, 1
  %exitcond210.not = icmp eq i32 %inc131, %out
  br i1 %exitcond210.not, label %for.inc130.for.end132_crit_edge, label %for.inc130.for.body111_crit_edge

for.inc130.for.body111_crit_edge:                 ; preds = %for.inc130
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body111

for.inc130.for.end132_crit_edge:                  ; preds = %for.inc130
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end132

for.end132:                                       ; preds = %for.inc130.for.end132_crit_edge, %for.cond109.preheader.for.end132_crit_edge
  %74 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %priv, align 8
  %76 = ptrtoint ptr %mailbox to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %mailbox, align 8
  %add135 = add i32 %77, 2
  call fastcc void @memory_read(ptr noundef %75, i32 noundef %add135, ptr noundef nonnull %retval1)
  %78 = load i32, ptr @debug, align 4
  %79 = add i32 %78, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %79)
  %cmp139 = icmp ult i32 %79, -2
  br i1 %cmp139, label %do.end143, label %for.end132.do.end148_crit_edge

for.end132.do.end148_crit_edge:                   ; preds = %for.end132
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end148

do.end143:                                        ; preds = %for.end132
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %retval1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %retval1, align 4
  %call145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.13, i32 noundef %81) #15
  br label %do.end148

do.end148:                                        ; preds = %do.end143, %for.end132.do.end148_crit_edge
  %82 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %priv, align 8
  %84 = ptrtoint ptr %mailbox to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %mailbox, align 8
  tail call fastcc void @memory_write(ptr noundef %83, i32 noundef %85, i32 noundef 0)
  %86 = ptrtoint ptr %retval1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %retval1, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end148, %do.end101, %do.body95.cleanup_crit_edge, %do.end31, %do.body25.cleanup_crit_edge, %do.end14, %do.body8.cleanup_crit_edge
  %retval.0 = phi i32 [ %87, %do.end148 ], [ -5, %do.end14 ], [ -5, %do.body8.cleanup_crit_edge ], [ -5, %do.end31 ], [ -5, %do.body25.cleanup_crit_edge ], [ -5, %do.end101 ], [ -5, %do.body95.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval1) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flag) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx2341x_handler_init(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_add_handler(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @blackbird_initialize_codec(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %value.i130 = alloca i32, align 4
  %firmware.i = alloca ptr, align 4
  %value.i = alloca i32, align 4
  %version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %version) #12
  %2 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %version, align 4, !annotation !207
  %3 = load i32, ptr @debug, align 4
  %4 = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %4)
  %cmp = icmp ult i32 %4, -2
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #15
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %call6 = tail call i32 (ptr, i32, i32, i32, ...) @blackbird_api_cmd(ptr noundef %dev, i32 noundef 128, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.body9, label %do.end5.do.body70_crit_edge

do.end5.do.body70_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body70

do.body9:                                         ; preds = %do.end5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %6, i32 880663
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !209
  tail call void @arm_heavy_mb() #12
  %7 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio, align 4
  %add.ptr16 = getelementptr i32, ptr %8, i32 880663
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 16777216) #12, !srcloc !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %firmware.i) #12
  %9 = ptrtoint ptr %firmware.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %firmware.i, align 4, !annotation !207
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #12
  %10 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %value.i, align 4
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %call.i = tail call fastcc i32 @register_write(ptr noundef %12, i32 noundef 36952, i32 noundef -19) #12
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %call3.i = tail call fastcc i32 @register_write(ptr noundef %14, i32 noundef 36948, i32 noundef -1) #12
  %or.i = or i32 %call3.i, %call.i
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  %call5.i = tail call fastcc i32 @register_write(ptr noundef %16, i32 noundef 2040, i32 noundef -2147482048) #12
  %or6.i = or i32 %or.i, %call5.i
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %call8.i = tail call fastcc i32 @register_write(ptr noundef %18, i32 noundef 2044, i32 noundef 26) #12
  %or9.i = or i32 %or6.i, %call8.i
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #12
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %call11.i = tail call fastcc i32 @register_write(ptr noundef %20, i32 noundef 41060, i32 noundef 0) #12
  %or12.i = or i32 %or9.i, %call11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or12.i)
  %cmp.i = icmp slt i32 %or12.i, 0
  br i1 %cmp.i, label %do.body.i, label %do.body9.if.end19.i_crit_edge

do.body9.if.end19.i_crit_edge:                    ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

do.body.i:                                        ; preds = %do.body9
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp13.not.i = icmp eq i32 %21, -1
  br i1 %cmp13.not.i, label %do.body.i.if.end19.i_crit_edge, label %do.end.i

do.body.i.if.end19.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44) #15
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.end.i, %do.body.i.if.end19.i_crit_edge, %do.body9.if.end19.i_crit_edge
  %pci.i = getelementptr inbounds %struct.cx8802_dev, ptr %dev, i32 0, i32 2
  %22 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci.i, align 8
  %dev20.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %call21.i = call i32 @request_firmware(ptr noundef nonnull %firmware.i, ptr noundef nonnull @.str.45, ptr noundef %dev20.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.not.i = icmp eq i32 %call21.i, 0
  br i1 %cmp22.not.i, label %if.end34.i, label %do.end26.i

do.end26.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45) #15
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #15
  br label %blackbird_load_firmware.exit.thread

if.end34.i:                                       ; preds = %if.end19.i
  %24 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %firmware.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 376836, i32 %27)
  %cmp35.not.i = icmp eq i32 %27, 376836
  br i1 %cmp35.not.i, label %if.end43.i, label %do.end39.i

do.end39.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  %call42.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %27, i32 noundef 376836) #15
  %28 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %firmware.i, align 4
  call void @release_firmware(ptr noundef %29) #12
  br label %blackbird_load_firmware.exit.thread

if.end43.i:                                       ; preds = %if.end34.i
  %data.i = getelementptr inbounds %struct.firmware, ptr %25, i32 0, i32 1
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i, align 4
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(8) %31, ptr noundef nonnull dereferenceable(8) @blackbird_load_firmware.magic, i32 8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp45.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp45.not.i, label %do.body53.i, label %do.end49.i

do.end49.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  %call51.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #15
  %32 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %firmware.i, align 4
  call void @release_firmware(ptr noundef %33) #12
  br label %blackbird_load_firmware.exit.thread

do.body53.i:                                      ; preds = %if.end43.i
  %34 = load i32, ptr @debug, align 4
  %35 = add i32 %34, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %35)
  %cmp55.i = icmp ult i32 %35, -2
  br i1 %cmp55.i, label %do.end59.i, label %do.body53.i.do.end64.i_crit_edge

do.body53.i.do.end64.i_crit_edge:                 ; preds = %do.body53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end64.i

do.end59.i:                                       ; preds = %do.body53.i
  call void @__sanitizer_cov_trace_pc() #14
  %call61.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.44) #15
  br label %do.end64.i

do.end64.i:                                       ; preds = %do.end59.i, %do.body53.i.do.end64.i_crit_edge
  %36 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %firmware.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %cmp67168.not.i = icmp ult i32 %39, 4
  br i1 %cmp67168.not.i, label %for.end79.thread.i, label %for.body.preheader.i

for.end79.thread.i:                               ; preds = %do.end64.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @release_firmware(ptr noundef %37) #12
  br label %do.body87.i

for.body.preheader.i:                             ; preds = %do.end64.i
  %data65.i = getelementptr inbounds %struct.firmware, ptr %37, i32 0, i32 1
  %40 = ptrtoint ptr %data65.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data65.i, align 4
  br label %for.body.i

for.cond71.preheader.i:                           ; preds = %for.body.i
  %42 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %45, ptr %value.i, align 4
  br label %for.body73.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.0171.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %checksum.0170.i = phi i32 [ %add68.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %dataptr.0169.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %41, %for.body.preheader.i ]
  %43 = ptrtoint ptr %dataptr.0169.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dataptr.0169.i, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %44) #12
  %neg.i = xor i32 %45, -1
  %add68.i = add i32 %checksum.0170.i, %neg.i
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 8
  call fastcc void @memory_write(ptr noundef %47, i32 noundef %i.0171.i, i32 noundef %45) #12
  %incdec.ptr.i = getelementptr i32, ptr %dataptr.0169.i, i32 1
  %inc.i = add nuw nsw i32 %i.0171.i, 1
  %48 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %firmware.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %shr.i = lshr i32 %51, 2
  %cmp67.i = icmp ult i32 %inc.i, %shr.i
  br i1 %cmp67.i, label %for.body.i.for.body.i_crit_edge, label %for.cond71.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body73.i:                                     ; preds = %for.body73.i.for.body73.i_crit_edge, %for.cond71.preheader.i
  %i.1177.i = phi i32 [ %i.1.i, %for.body73.i.for.body73.i_crit_edge ], [ %i.0171.i, %for.cond71.preheader.i ]
  %checksum.1176.i = phi i32 [ %sub.i, %for.body73.i.for.body73.i_crit_edge ], [ %add68.i, %for.cond71.preheader.i ]
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 8
  call fastcc void @memory_read(ptr noundef %53, i32 noundef %i.1177.i, ptr noundef nonnull %value.i) #12
  %54 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %value.i, align 4
  %neg76.neg.i = add i32 %checksum.1176.i, 1
  %sub.i = add i32 %neg76.neg.i, %55
  %i.1.i = add nsw i32 %i.1177.i, -1
  %cmp72.not.i = icmp eq i32 %i.1177.i, 0
  br i1 %cmp72.not.i, label %for.end79.i, label %for.body73.i.for.body73.i_crit_edge

for.body73.i.for.body73.i_crit_edge:              ; preds = %for.body73.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body73.i

for.end79.i:                                      ; preds = %for.body73.i
  %56 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %firmware.i, align 4
  call void @release_firmware(ptr noundef %57) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %for.end79.i.do.body87.i_crit_edge, label %do.end83.i

for.end79.i.do.body87.i_crit_edge:                ; preds = %for.end79.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body87.i

do.end83.i:                                       ; preds = %for.end79.i
  call void @__sanitizer_cov_trace_pc() #14
  %call85.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #15
  br label %blackbird_load_firmware.exit.thread

do.body87.i:                                      ; preds = %for.end79.i.do.body87.i_crit_edge, %for.end79.thread.i
  %58 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %cmp89.not.i = icmp eq i32 %58, -1
  br i1 %cmp89.not.i, label %do.body87.i.do.end98.i_crit_edge, label %do.end93.i

do.body87.i.do.end98.i_crit_edge:                 ; preds = %do.body87.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end98.i

do.end93.i:                                       ; preds = %do.body87.i
  call void @__sanitizer_cov_trace_pc() #14
  %call95.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.44) #15
  br label %do.end98.i

do.end98.i:                                       ; preds = %do.end93.i, %do.body87.i.do.end98.i_crit_edge
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 8
  %call100.i = call fastcc i32 @register_write(ptr noundef %60, i32 noundef 36948, i32 noundef -1) #12
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 8
  %call103.i = call fastcc i32 @register_read(ptr noundef %62, i32 noundef 36944, ptr noundef nonnull %value.i) #12
  %or104.i = or i32 %call103.i, %call100.i
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 8
  %65 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %value.i, align 4
  %and.i = and i32 %66, -2
  %call106.i = call fastcc i32 @register_write(ptr noundef %64, i32 noundef 36944, i32 noundef %and.i) #12
  %or107.i = or i32 %or104.i, %call106.i
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #12
  %67 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev, align 8
  %call109.i = call fastcc i32 @register_read(ptr noundef %68, i32 noundef 36952, ptr noundef nonnull %value.i) #12
  %or110.i = or i32 %or107.i, %call109.i
  %69 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev, align 8
  %71 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %value.i, align 4
  %and112.i = and i32 %72, -24
  %call113.i = call fastcc i32 @register_write(ptr noundef %70, i32 noundef 36952, i32 noundef %and112.i) #12
  %or114.i = or i32 %or110.i, %call113.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or114.i)
  %cmp115.i = icmp slt i32 %or114.i, 0
  br i1 %cmp115.i, label %do.body117.i, label %do.end98.i.if.end20_crit_edge

do.end98.i.if.end20_crit_edge:                    ; preds = %do.end98.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

do.body117.i:                                     ; preds = %do.end98.i
  %73 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %73)
  %cmp119.not.i = icmp eq i32 %73, -1
  br i1 %cmp119.not.i, label %do.body117.i.if.end20_crit_edge, label %do.end123.i

do.body117.i.if.end20_crit_edge:                  ; preds = %do.body117.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

do.end123.i:                                      ; preds = %do.body117.i
  call void @__sanitizer_cov_trace_pc() #14
  %call125.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44) #15
  br label %if.end20

blackbird_load_firmware.exit.thread:              ; preds = %do.end83.i, %do.end49.i, %do.end39.i, %do.end26.i
  %retval.0.i.ph = phi i32 [ -5, %do.end83.i ], [ -22, %do.end49.i ], [ -22, %do.end39.i ], [ -5, %do.end26.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %firmware.i) #12
  br label %cleanup

if.end20:                                         ; preds = %do.end123.i, %do.body117.i.if.end20_crit_edge, %do.end98.i.if.end20_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %firmware.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i130) #12
  %74 = ptrtoint ptr %value.i130 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -1, ptr %value.i130, align 4, !annotation !207
  br label %for.body.i132

for.body.i132:                                    ; preds = %for.inc.i.for.body.i132_crit_edge, %if.end20
  %signaturecnt.036.i = phi i32 [ 0, %if.end20 ], [ %signaturecnt.1.i, %for.inc.i.for.body.i132_crit_edge ]
  %i.035.i = phi i32 [ 0, %if.end20 ], [ %inc13.i, %for.inc.i.for.body.i132_crit_edge ]
  %75 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev, align 8
  call fastcc void @memory_read(ptr noundef %76, i32 noundef %i.035.i, ptr noundef nonnull %value.i130) #12
  %77 = ptrtoint ptr %value.i130 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %value.i130, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__const.blackbird_find_mailbox.signature, i32 0, i32 %signaturecnt.036.i
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %80)
  %cmp1.i = icmp eq i32 %78, %80
  %inc.i131 = add i32 %signaturecnt.036.i, 1
  %signaturecnt.1.i = select i1 %cmp1.i, i32 %inc.i131, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %signaturecnt.1.i)
  %cmp2.i = icmp eq i32 %signaturecnt.1.i, 4
  br i1 %cmp2.i, label %do.body.i133, label %for.inc.i

do.body.i133:                                     ; preds = %for.body.i132
  %81 = load i32, ptr @debug, align 4
  %82 = add i32 %81, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %82)
  %cmp4.i = icmp ult i32 %82, -2
  br i1 %cmp4.i, label %do.end.i134, label %do.body.i133.blackbird_find_mailbox.exit_crit_edge

do.body.i133.blackbird_find_mailbox.exit_crit_edge: ; preds = %do.body.i133
  call void @__sanitizer_cov_trace_pc() #14
  br label %blackbird_find_mailbox.exit

do.end.i134:                                      ; preds = %do.body.i133
  call void @__sanitizer_cov_trace_pc() #14
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #15
  br label %blackbird_find_mailbox.exit

for.inc.i:                                        ; preds = %for.body.i132
  %inc13.i = add nuw nsw i32 %i.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc13.i, 376836
  br i1 %exitcond.not.i, label %do.body14.i, label %for.inc.i.for.body.i132_crit_edge

for.inc.i.for.body.i132_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i132

do.body14.i:                                      ; preds = %for.inc.i
  %83 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %83)
  %cmp16.not.i = icmp eq i32 %83, -1
  br i1 %cmp16.not.i, label %do.body14.i.blackbird_find_mailbox.exit.thread_crit_edge, label %do.end20.i

do.body14.i.blackbird_find_mailbox.exit.thread_crit_edge: ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %blackbird_find_mailbox.exit.thread

do.end20.i:                                       ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #14
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.70) #15
  br label %blackbird_find_mailbox.exit.thread

blackbird_find_mailbox.exit.thread:               ; preds = %do.end20.i, %do.body14.i.blackbird_find_mailbox.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i130) #12
  br label %cleanup

blackbird_find_mailbox.exit:                      ; preds = %do.end.i134, %do.body.i133.blackbird_find_mailbox.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i130) #12
  %add11.i = add nuw nsw i32 %i.035.i, 1
  %mailbox = getelementptr inbounds %struct.cx8802_dev, ptr %dev, i32 0, i32 12
  %84 = ptrtoint ptr %mailbox to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %add11.i, ptr %mailbox, align 8
  %call25 = call i32 (ptr, i32, i32, i32, ...) @blackbird_api_cmd(ptr noundef %dev, i32 noundef 128, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %do.body28, label %if.end40

do.body28:                                        ; preds = %blackbird_find_mailbox.exit
  %85 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %85)
  %cmp30.not = icmp eq i32 %85, -1
  br i1 %cmp30.not, label %do.body28.cleanup_crit_edge, label %do.end34

do.body28.cleanup_crit_edge:                      ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end34:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #14
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33) #15
  br label %cleanup

if.end40:                                         ; preds = %blackbird_find_mailbox.exit
  %call41 = call i32 (ptr, i32, i32, i32, ...) @blackbird_api_cmd(ptr noundef %dev, i32 noundef 196, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %version)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  %86 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %86)
  %cmp46.not = icmp eq i32 %86, -1
  br i1 %cmp42, label %do.body44, label %do.body57

do.body44:                                        ; preds = %if.end40
  br i1 %cmp46.not, label %do.body44.cleanup_crit_edge, label %do.end50

do.body44.cleanup_crit_edge:                      ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end50:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #14
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.33) #15
  br label %cleanup

do.body57:                                        ; preds = %if.end40
  br i1 %cmp46.not, label %do.body57.do.body70_crit_edge, label %do.end63

do.body57.do.body70_crit_edge:                    ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body70

do.end63:                                         ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #14
  %87 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %version, align 4
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.33, i32 noundef %88) #15
  br label %do.body70

do.body70:                                        ; preds = %do.end63, %do.body57.do.body70_crit_edge, %do.end5.do.body70_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !210
  call void @arm_heavy_mb() #12
  %lmmio73 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 7
  %89 = ptrtoint ptr %lmmio73 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %lmmio73, align 4
  %add.ptr74 = getelementptr i32, ptr %90, i32 880657
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 -2013265920) #12, !srcloc !190
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  call void @arm_heavy_mb() #12
  %91 = ptrtoint ptr %lmmio73 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %lmmio73, align 4
  %add.ptr79 = getelementptr i32, ptr %92, i32 802881
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr79) #12, !srcloc !199
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !212
  %94 = and i32 %93, -65537
  %95 = ptrtoint ptr %lmmio73 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %lmmio73, align 4
  %add.ptr84 = getelementptr i32, ptr %96, i32 802881
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 %94) #12, !srcloc !190
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !213
  call void @arm_heavy_mb() #12
  %97 = ptrtoint ptr %lmmio73 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %lmmio73, align 4
  %add.ptr89 = getelementptr i32, ptr %98, i32 802922
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 4851712) #12, !srcloc !190
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !214
  call void @arm_heavy_mb() #12
  %99 = ptrtoint ptr %lmmio73 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %lmmio73, align 4
  %add.ptr96 = getelementptr i32, ptr %100, i32 802905
  %101 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr96) #12, !srcloc !199
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !215
  %102 = and i32 %101, -134217729
  %103 = ptrtoint ptr %lmmio73 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %lmmio73, align 4
  %add.ptr103 = getelementptr i32, ptr %104, i32 802905
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103, i32 %102) #12, !srcloc !190
  %105 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev, align 8
  %height.i = getelementptr inbounds %struct.cx88_core, ptr %106, i32 0, i32 30
  %107 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %height.i, align 4
  %width.i = getelementptr inbounds %struct.cx88_core, ptr %106, i32 0, i32 29
  %109 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %width.i, align 8
  %call.i136 = call i32 (ptr, i32, i32, i32, ...) @blackbird_api_cmd(ptr noundef %dev, i32 noundef 145, i32 noundef 2, i32 noundef 0, i32 noundef %108, i32 noundef %110) #12
  %111 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %width.i, align 8
  %conv.i = trunc i32 %112 to i16
  %cxhdl.i = getelementptr inbounds %struct.cx8802_dev, ptr %dev, i32 0, i32 13
  %width3.i = getelementptr inbounds %struct.cx8802_dev, ptr %dev, i32 0, i32 13, i32 2
  %113 = ptrtoint ptr %width3.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %conv.i, ptr %width3.i, align 4
  %114 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %height.i, align 4
  %conv5.i = trunc i32 %115 to i16
  %height7.i = getelementptr inbounds %struct.cx8802_dev, ptr %dev, i32 0, i32 13, i32 3
  %116 = ptrtoint ptr %height7.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %conv5.i, ptr %height7.i, align 2
  %117 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev, align 8
  %tvnorm.i = getelementptr inbounds %struct.cx88_core, ptr %118, i32 0, i32 28
  %119 = ptrtoint ptr %tvnorm.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %tvnorm.i, align 8
  %121 = trunc i64 %120 to i32
  %conv10.i = and i32 %121, 16713471
  call void @cx2341x_handler_set_50hz(ptr noundef %cxhdl.i, i32 noundef %conv10.i) #12
  %call12.i = call i32 @cx2341x_handler_setup(ptr noundef %cxhdl.i) #12
  %call104 = call i32 (ptr, i32, i32, i32, ...) @blackbird_api_cmd(ptr noundef %dev, i32 noundef 214, i32 noundef 2, i32 noundef 0, i32 noundef 240, i32 noundef 240)
  %call105 = call i32 (ptr, i32, i32, i32, ...) @blackbird_api_cmd(ptr noundef %dev, i32 noundef 215, i32 noundef 12, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %do.body70, %do.end50, %do.body44.cleanup_crit_edge, %do.end34, %do.body28.cleanup_crit_edge, %blackbird_find_mailbox.exit.thread, %blackbird_load_firmware.exit.thread
  %retval.0 = phi i32 [ 0, %do.body70 ], [ -1, %do.end34 ], [ -1, %do.body28.cleanup_crit_edge ], [ -1, %do.end50 ], [ -1, %do.body44.cleanup_crit_edge ], [ %retval.0.i.ph, %blackbird_load_firmware.exit.thread ], [ -1, %blackbird_find_mailbox.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %version) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx88_set_tvnorm(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx88_video_mux(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx2341x_handler_set_50hz(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx2341x_handler_setup(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @memory_read(ptr nocapture noundef readonly %core, i32 noundef %address, ptr nocapture noundef writeonly %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !216
  tail call void @arm_heavy_mb() #12
  %shr = lshr i32 %address, 16
  %0 = trunc i32 %shr to i8
  %conv = and i8 %0, 63
  %bmmio = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 8
  %1 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bmmio, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 3735556
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #12, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !218
  tail call void @arm_heavy_mb() #12
  %shr5 = lshr i32 %address, 8
  %conv6 = trunc i32 %shr5 to i8
  %3 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bmmio, align 8
  %add.ptr8 = getelementptr i8, ptr %4, i32 3735557
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8, i8 %conv6) #12, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !219
  tail call void @arm_heavy_mb() #12
  %conv12 = trunc i32 %address to i8
  %5 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bmmio, align 8
  %add.ptr14 = getelementptr i8, ptr %6, i32 3735558
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14, i8 %conv12) #12, !srcloc !217
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %7 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio, align 4
  %add.ptr15 = getelementptr i32, ptr %8, i32 933889
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #12, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %10, 1
  %11 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lmmio, align 4
  %add.ptr1.i = getelementptr i32, ptr %12, i32 868356
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #12, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !221
  %14 = and i32 %13, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not2.i = icmp eq i32 %14, 0
  br i1 %cmp.not2.i, label %entry.if.end.i_crit_edge, label %entry.wait_ready_gpio0_bit1.exit_crit_edge

entry.wait_ready_gpio0_bit1.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %wait_ready_gpio0_bit1.exit

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

if.end.i:                                         ; preds = %if.end5.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.end.i.wait_ready_gpio0_bit1.exit_crit_edge, label %if.end5.i

if.end.i.wait_ready_gpio0_bit1.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wait_ready_gpio0_bit1.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #12
  %17 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lmmio, align 4
  %add.ptr.i = getelementptr i32, ptr %18, i32 868356
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !221
  %20 = and i32 %19, 33554432
  %cmp.not.i = icmp eq i32 %20, 0
  br i1 %cmp.not.i, label %if.end5.i.if.end.i_crit_edge, label %if.end5.i.wait_ready_gpio0_bit1.exit_crit_edge

if.end5.i.wait_ready_gpio0_bit1.exit_crit_edge:   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wait_ready_gpio0_bit1.exit

if.end5.i.if.end.i_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

wait_ready_gpio0_bit1.exit:                       ; preds = %if.end5.i.wait_ready_gpio0_bit1.exit_crit_edge, %if.end.i.wait_ready_gpio0_bit1.exit_crit_edge, %entry.wait_ready_gpio0_bit1.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !222
  tail call void @arm_heavy_mb() #12
  %21 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bmmio, align 8
  %add.ptr22 = getelementptr i8, ptr %22, i32 3735555
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr22, i8 0) #12, !srcloc !217
  %23 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lmmio, align 4
  %add.ptr26 = getelementptr i32, ptr %24, i32 933888
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #12, !srcloc !199
  %26 = and i32 %25, -16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !224
  tail call void @arm_heavy_mb() #12
  %27 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bmmio, align 8
  %add.ptr36 = getelementptr i8, ptr %28, i32 3735554
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr36, i8 0) #12, !srcloc !217
  %29 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lmmio, align 4
  %add.ptr40 = getelementptr i32, ptr %30, i32 933888
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #12, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !225
  %32 = lshr i32 %31, 8
  %shl46 = and i32 %32, 16711680
  %or = or i32 %shl46, %26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !226
  tail call void @arm_heavy_mb() #12
  %33 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bmmio, align 8
  %add.ptr51 = getelementptr i8, ptr %34, i32 3735553
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr51, i8 0) #12, !srcloc !217
  %35 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lmmio, align 4
  %add.ptr55 = getelementptr i32, ptr %36, i32 933888
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #12, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %38 = lshr i32 %37, 16
  %shl61 = and i32 %38, 65280
  %or62 = or i32 %or, %shl61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %39 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bmmio, align 8
  %add.ptr67 = getelementptr i8, ptr %40, i32 3735552
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr67, i8 0) #12, !srcloc !217
  %41 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lmmio, align 4
  %add.ptr71 = getelementptr i32, ptr %42, i32 933888
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr71) #12, !srcloc !199
  %44 = lshr i32 %43, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !229
  %or77 = or i32 %or62, %44
  %45 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or77, ptr %value, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @memory_write(ptr nocapture noundef readonly %core, i32 noundef %address, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !230
  tail call void @arm_heavy_mb() #12
  %conv = trunc i32 %value to i8
  %bmmio = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 8
  %0 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bmmio, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 3735552
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #12, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !231
  tail call void @arm_heavy_mb() #12
  %shr = lshr i32 %value, 8
  %conv3 = trunc i32 %shr to i8
  %2 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bmmio, align 8
  %add.ptr5 = getelementptr i8, ptr %3, i32 3735553
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5, i8 %conv3) #12, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !232
  tail call void @arm_heavy_mb() #12
  %shr8 = lshr i32 %value, 16
  %conv9 = trunc i32 %shr8 to i8
  %4 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bmmio, align 8
  %add.ptr11 = getelementptr i8, ptr %5, i32 3735554
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11, i8 %conv9) #12, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !233
  tail call void @arm_heavy_mb() #12
  %shr14 = lshr i32 %value, 24
  %conv15 = trunc i32 %shr14 to i8
  %6 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bmmio, align 8
  %add.ptr17 = getelementptr i8, ptr %7, i32 3735555
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17, i8 %conv15) #12, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !234
  tail call void @arm_heavy_mb() #12
  %shr20 = lshr i32 %address, 16
  %8 = trunc i32 %shr20 to i8
  %conv21 = or i8 %8, 64
  %9 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bmmio, align 8
  %add.ptr23 = getelementptr i8, ptr %10, i32 3735556
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr23, i8 %conv21) #12, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !235
  tail call void @arm_heavy_mb() #12
  %shr26 = lshr i32 %address, 8
  %conv27 = trunc i32 %shr26 to i8
  %11 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bmmio, align 8
  %add.ptr29 = getelementptr i8, ptr %12, i32 3735557
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr29, i8 %conv27) #12, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !236
  tail call void @arm_heavy_mb() #12
  %conv32 = trunc i32 %address to i8
  %13 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bmmio, align 8
  %add.ptr34 = getelementptr i8, ptr %14, i32 3735558
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr34, i8 %conv32) #12, !srcloc !217
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %15 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lmmio, align 4
  %add.ptr35 = getelementptr i32, ptr %16, i32 933888
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #12, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !237
  %18 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lmmio, align 4
  %add.ptr40 = getelementptr i32, ptr %19, i32 933889
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #12, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !238
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %21, 1
  %22 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lmmio, align 4
  %add.ptr1.i = getelementptr i32, ptr %23, i32 868356
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #12, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !221
  %25 = and i32 %24, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.not2.i = icmp eq i32 %25, 0
  br i1 %cmp.not2.i, label %entry.if.end.i_crit_edge, label %entry.wait_ready_gpio0_bit1.exit_crit_edge

entry.wait_ready_gpio0_bit1.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %wait_ready_gpio0_bit1.exit

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

if.end.i:                                         ; preds = %if.end5.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.end.i.wait_ready_gpio0_bit1.exit_crit_edge, label %if.end5.i

if.end.i.wait_ready_gpio0_bit1.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wait_ready_gpio0_bit1.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #12
  %28 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lmmio, align 4
  %add.ptr.i = getelementptr i32, ptr %29, i32 868356
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !221
  %31 = and i32 %30, 33554432
  %cmp.not.i = icmp eq i32 %31, 0
  br i1 %cmp.not.i, label %if.end5.i.if.end.i_crit_edge, label %if.end5.i.wait_ready_gpio0_bit1.exit_crit_edge

if.end5.i.wait_ready_gpio0_bit1.exit_crit_edge:   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wait_ready_gpio0_bit1.exit

if.end5.i.if.end.i_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

wait_ready_gpio0_bit1.exit:                       ; preds = %if.end5.i.wait_ready_gpio0_bit1.exit_crit_edge, %if.end.i.wait_ready_gpio0_bit1.exit_crit_edge, %entry.wait_ready_gpio0_bit1.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blackbird_api_cmd(ptr nocapture noundef readonly %dev, i32 noundef %command, i32 noundef %inputcnt, i32 noundef %outputcnt, ...) unnamed_addr #2 align 64 {
entry:
  %data = alloca [16 x i32], align 4
  %vargs = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data) #12
  %0 = call ptr @memset(ptr %data, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vargs) #12
  %1 = ptrtoint ptr %vargs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %vargs, align 4, !annotation !207
  call void @llvm.va_start(ptr nonnull %vargs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inputcnt)
  %cmp17.not = icmp eq i32 %inputcnt, 0
  br i1 %cmp17.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.018 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %vargs to i32
  call void @__asan_load4_noabort(i32 %2)
  %argp.cur = load ptr, ptr %vargs, align 4
  %argp.next = getelementptr inbounds i8, ptr %argp.cur, i32 4
  store ptr %argp.next, ptr %vargs, align 4
  %3 = ptrtoint ptr %argp.cur to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %argp.cur, align 4
  %arrayidx = getelementptr [16 x i32], ptr %data, i32 0, i32 %i.018
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, %inputcnt
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %call = call i32 @blackbird_mbox_func(ptr noundef %dev, i32 noundef %command, i32 noundef %inputcnt, i32 noundef %outputcnt, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %outputcnt)
  %cmp219.not = icmp eq i32 %outputcnt, 0
  br i1 %cmp219.not, label %for.end.for.end9_crit_edge, label %for.body3.lr.ph

for.end.for.end9_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end9

for.body3.lr.ph:                                  ; preds = %for.end
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 4
  %cmp2.not = icmp eq i32 %outputcnt, 1
  br label %for.body3

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.body3.lr.ph
  %8 = ptrtoint ptr %vargs to i32
  call void @__asan_load4_noabort(i32 %8)
  %argp.cur4 = load ptr, ptr %vargs, align 4
  %argp.next5 = getelementptr inbounds i8, ptr %argp.cur4, i32 4
  store ptr %argp.next5, ptr %vargs, align 4
  %9 = ptrtoint ptr %argp.cur4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %argp.cur4, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %7, ptr %10, align 4
  br i1 %cmp2.not, label %for.body3.for.end9_crit_edge, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body3

for.body3.for.end9_crit_edge:                     ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end9

for.end9:                                         ; preds = %for.body3.for.end9_crit_edge, %for.end.for.end9_crit_edge
  call void @llvm.va_end(ptr nonnull %vargs)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vargs) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data) #12
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @register_write(ptr nocapture noundef readonly %core, i32 noundef %address, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !239
  tail call void @arm_heavy_mb() #12
  %conv = trunc i32 %value to i8
  %bmmio = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 8
  %0 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bmmio, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 3735560
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #12, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !240
  tail call void @arm_heavy_mb() #12
  %shr = lshr i32 %value, 8
  %conv3 = trunc i32 %shr to i8
  %2 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bmmio, align 8
  %add.ptr5 = getelementptr i8, ptr %3, i32 3735561
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5, i8 %conv3) #12, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !241
  tail call void @arm_heavy_mb() #12
  %shr8 = lshr i32 %value, 16
  %conv9 = trunc i32 %shr8 to i8
  %4 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bmmio, align 8
  %add.ptr11 = getelementptr i8, ptr %5, i32 3735562
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11, i8 %conv9) #12, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !242
  tail call void @arm_heavy_mb() #12
  %shr14 = lshr i32 %value, 24
  %conv15 = trunc i32 %shr14 to i8
  %6 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bmmio, align 8
  %add.ptr17 = getelementptr i8, ptr %7, i32 3735563
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17, i8 %conv15) #12, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !243
  tail call void @arm_heavy_mb() #12
  %conv20 = trunc i32 %address to i8
  %8 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bmmio, align 8
  %add.ptr22 = getelementptr i8, ptr %9, i32 3735564
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr22, i8 %conv20) #12, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !244
  tail call void @arm_heavy_mb() #12
  %shr25 = lshr i32 %address, 8
  %conv26 = trunc i32 %shr25 to i8
  %10 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bmmio, align 8
  %add.ptr28 = getelementptr i8, ptr %11, i32 3735565
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28, i8 %conv26) #12, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !245
  tail call void @arm_heavy_mb() #12
  %12 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bmmio, align 8
  %add.ptr32 = getelementptr i8, ptr %13, i32 3735566
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr32, i8 1) #12, !srcloc !217
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %14 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lmmio, align 4
  %add.ptr33 = getelementptr i32, ptr %15, i32 933890
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #12, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !246
  %17 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lmmio, align 4
  %add.ptr38 = getelementptr i32, ptr %18, i32 933891
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #12, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %20, 1
  %21 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lmmio, align 4
  %add.ptr1.i = getelementptr i32, ptr %22, i32 868356
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #12, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !221
  %24 = and i32 %23, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not2.i = icmp eq i32 %24, 0
  br i1 %cmp.not2.i, label %entry.if.end.i_crit_edge, label %entry.wait_ready_gpio0_bit1.exit_crit_edge

entry.wait_ready_gpio0_bit1.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %wait_ready_gpio0_bit1.exit

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

if.end.i:                                         ; preds = %if.end5.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.end.i.wait_ready_gpio0_bit1.exit_crit_edge, label %if.end5.i

if.end.i.wait_ready_gpio0_bit1.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wait_ready_gpio0_bit1.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748) #12
  %27 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lmmio, align 4
  %add.ptr.i = getelementptr i32, ptr %28, i32 868356
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !221
  %30 = and i32 %29, 33554432
  %cmp.not.i = icmp eq i32 %30, 0
  br i1 %cmp.not.i, label %if.end5.i.if.end.i_crit_edge, label %if.end5.i.wait_ready_gpio0_bit1.exit_crit_edge

if.end5.i.wait_ready_gpio0_bit1.exit_crit_edge:   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wait_ready_gpio0_bit1.exit

if.end5.i.if.end.i_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

wait_ready_gpio0_bit1.exit:                       ; preds = %if.end5.i.wait_ready_gpio0_bit1.exit_crit_edge, %if.end.i.wait_ready_gpio0_bit1.exit_crit_edge, %entry.wait_ready_gpio0_bit1.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.wait_ready_gpio0_bit1.exit_crit_edge ], [ 0, %if.end5.i.wait_ready_gpio0_bit1.exit_crit_edge ], [ -1, %if.end.i.wait_ready_gpio0_bit1.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @register_read(ptr nocapture noundef readonly %core, i32 noundef %address, ptr nocapture noundef writeonly %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !248
  tail call void @arm_heavy_mb() #12
  %conv = trunc i32 %address to i8
  %bmmio = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 8
  %0 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bmmio, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 3735564
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #12, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !249
  tail call void @arm_heavy_mb() #12
  %2 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bmmio, align 8
  %add.ptr7 = getelementptr i8, ptr %3, i32 3735565
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7, i8 -112) #12, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !250
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bmmio, align 8
  %add.ptr12 = getelementptr i8, ptr %5, i32 3735566
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12, i8 0) #12, !srcloc !217
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %6 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lmmio, align 4
  %add.ptr13 = getelementptr i32, ptr %7, i32 933891
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #12, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !251
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %9, 1
  %10 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lmmio, align 4
  %add.ptr1.i = getelementptr i32, ptr %11, i32 868356
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #12, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !221
  %13 = and i32 %12, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not2.i = icmp eq i32 %13, 0
  br i1 %cmp.not2.i, label %entry.if.end.i_crit_edge, label %entry.wait_ready_gpio0_bit1.exit_crit_edge

entry.wait_ready_gpio0_bit1.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %wait_ready_gpio0_bit1.exit

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

if.end.i:                                         ; preds = %if.end5.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.end.i.wait_ready_gpio0_bit1.exit_crit_edge, label %if.end5.i

if.end.i.wait_ready_gpio0_bit1.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wait_ready_gpio0_bit1.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #12
  %16 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lmmio, align 4
  %add.ptr.i = getelementptr i32, ptr %17, i32 868356
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !221
  %19 = and i32 %18, 33554432
  %cmp.not.i = icmp eq i32 %19, 0
  br i1 %cmp.not.i, label %if.end5.i.if.end.i_crit_edge, label %if.end5.i.wait_ready_gpio0_bit1.exit_crit_edge

if.end5.i.wait_ready_gpio0_bit1.exit_crit_edge:   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wait_ready_gpio0_bit1.exit

if.end5.i.if.end.i_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

wait_ready_gpio0_bit1.exit:                       ; preds = %if.end5.i.wait_ready_gpio0_bit1.exit_crit_edge, %if.end.i.wait_ready_gpio0_bit1.exit_crit_edge, %entry.wait_ready_gpio0_bit1.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.wait_ready_gpio0_bit1.exit_crit_edge ], [ 0, %if.end5.i.wait_ready_gpio0_bit1.exit_crit_edge ], [ -1, %if.end.i.wait_ready_gpio0_bit1.exit_crit_edge ]
  %20 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lmmio, align 4
  %add.ptr19 = getelementptr i32, ptr %21, i32 933890
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #12, !srcloc !199
  %23 = lshr i32 %22, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !252
  %24 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lmmio, align 4
  %add.ptr28 = getelementptr i32, ptr %25, i32 933890
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #12, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !253
  %27 = lshr i32 %26, 16
  %shl = and i32 %27, 65280
  %or = or i32 %shl, %23
  %28 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lmmio, align 4
  %add.ptr37 = getelementptr i32, ptr %29, i32 933890
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #12, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !254
  %31 = lshr i32 %30, 8
  %shl43 = and i32 %31, 16711680
  %or44 = or i32 %or, %shl43
  %32 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lmmio, align 4
  %add.ptr48 = getelementptr i32, ptr %33, i32 933890
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #12, !srcloc !199
  %35 = and i32 %34, -16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  %or55 = or i32 %or44, %35
  %36 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or55, ptr %value, align 4
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @queue_setup(ptr nocapture noundef readonly %q, ptr nocapture noundef readnone %num_buffers, ptr nocapture noundef writeonly %num_planes, ptr nocapture noundef writeonly %sizes, ptr nocapture noundef readnone %alloc_devs) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %2 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %num_planes, align 4
  %ts_packet_size = getelementptr inbounds %struct.cx8802_dev, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %ts_packet_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 752, ptr %ts_packet_size, align 4
  %ts_packet_count = getelementptr inbounds %struct.cx8802_dev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %ts_packet_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 32, ptr %ts_packet_count, align 8
  %5 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 24064, ptr %sizes, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_prepare(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  %call = tail call i32 @cx8802_buf_prepare(ptr noundef %1, ptr noundef %3, ptr noundef %vb) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_finish(ptr nocapture noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %risc4 = getelementptr inbounds %struct.cx88_buffer, ptr %vb, i32 0, i32 3
  %cpu = getelementptr inbounds %struct.cx88_buffer, ptr %vb, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpu, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_priv, align 4
  %pci = getelementptr inbounds %struct.cx8802_dev, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %8 = ptrtoint ptr %risc4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %risc4, align 4
  %dma = getelementptr inbounds %struct.cx88_buffer, ptr %vb, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev5, i32 noundef %9, ptr noundef nonnull %1, i32 noundef %11, i32 noundef 0) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = call ptr @memset(ptr %risc4, i32 0, i32 16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %mpegq = getelementptr inbounds %struct.cx8802_dev, ptr %1, i32 0, i32 5
  %call = tail call ptr @cx8802_get_driver(ptr noundef %1, i32 noundef 2) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  %2 = load i32, ptr @debug, align 4
  %3 = add i32 %2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %3)
  %cmp = icmp ult i32 %3, -2
  br i1 %cmp, label %do.end, label %do.body.do.body35_crit_edge

do.body.do.body35_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.75) #15
  br label %do.body35

if.end6:                                          ; preds = %entry
  %request_acquire = getelementptr inbounds %struct.cx8802_driver, ptr %call, i32 0, i32 10
  %4 = ptrtoint ptr %request_acquire to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %request_acquire, align 4
  %call7 = tail call i32 %5(ptr noundef nonnull %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %if.end22, label %do.body10

do.body10:                                        ; preds = %if.end6
  %6 = load i32, ptr @debug, align 4
  %7 = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %7)
  %cmp12 = icmp ult i32 %7, -2
  br i1 %cmp12, label %do.end16, label %do.body10.do.body35_crit_edge

do.body10.do.body35_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

do.end16:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.75, i32 noundef %call7) #15
  br label %do.body35

if.end22:                                         ; preds = %if.end6
  %call23 = tail call fastcc i32 @blackbird_initialize_codec(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %request_release = getelementptr inbounds %struct.cx8802_driver, ptr %call, i32 0, i32 11
  %8 = ptrtoint ptr %request_release to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %request_release, align 4
  %call26 = tail call i32 %9(ptr noundef nonnull %call) #12
  br label %do.body35

if.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @blackbird_start_codec(ptr noundef %1)
  %10 = ptrtoint ptr %mpegq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mpegq, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 -736
  %call32 = tail call i32 @cx8802_start_dma(ptr noundef %1, ptr noundef %mpegq, ptr noundef %add.ptr) #12
  br label %cleanup

do.body35:                                        ; preds = %if.then25, %do.end16, %do.body10.do.body35_crit_edge, %do.end, %do.body.do.body35_crit_edge
  %err.0 = phi i32 [ %call7, %do.end16 ], [ %call7, %do.body10.do.body35_crit_edge ], [ -22, %if.then25 ], [ -19, %do.end ], [ -19, %do.body.do.body35_crit_edge ]
  %slock = getelementptr inbounds %struct.cx8802_dev, ptr %1, i32 0, i32 1
  %call39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #12
  %12 = ptrtoint ptr %mpegq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %mpegq, align 4
  %cmp.i.not76 = icmp eq ptr %13, %mpegq
  br i1 %cmp.i.not76, label %do.body35.while.end_crit_edge, label %do.body35.while.body_crit_edge

do.body35.while.body_crit_edge:                   ; preds = %do.body35
  br label %while.body

do.body35.while.end_crit_edge:                    ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %do.body35.while.body_crit_edge
  %14 = phi ptr [ %24, %list_del.exit.while.body_crit_edge ], [ %13, %do.body35.while.body_crit_edge ]
  %add.ptr52 = getelementptr i8, ptr %14, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %14) #12
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr52, i32 noundef 3) #12
  %23 = ptrtoint ptr %mpegq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %mpegq, align 4
  %cmp.i.not = icmp eq ptr %24, %mpegq
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %do.body35.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call39) #12
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end27
  %retval.0 = phi i32 [ %err.0, %while.end ], [ 0, %if.end27 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stop_streaming(ptr nocapture noundef readonly %q) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %mpegq = getelementptr inbounds %struct.cx8802_dev, ptr %1, i32 0, i32 5
  tail call void @cx8802_cancel_buffers(ptr noundef %1) #12
  %call.i = tail call i32 (ptr, i32, i32, i32, ...) @blackbird_api_cmd(ptr noundef %1, i32 noundef 130, i32 noundef 3, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %cxhdl.i = getelementptr inbounds %struct.cx8802_dev, ptr %1, i32 0, i32 13
  tail call void @cx2341x_handler_set_busy(ptr noundef %cxhdl.i, i32 noundef 0) #12
  %call1 = tail call ptr @cx8802_get_driver(ptr noundef %1, i32 noundef 2) #12
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.then23.critedge, !prof !256

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 764, i32 noundef 9, ptr noundef null) #12
  br label %do.body27

if.then23.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %request_release = getelementptr inbounds %struct.cx8802_driver, ptr %call1, i32 0, i32 11
  %2 = ptrtoint ptr %request_release to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %request_release, align 4
  %call24 = tail call i32 %3(ptr noundef nonnull %call1) #12
  br label %do.body27

do.body27:                                        ; preds = %if.then23.critedge, %do.end
  %slock = getelementptr inbounds %struct.cx8802_dev, ptr %1, i32 0, i32 1
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #12
  %4 = ptrtoint ptr %mpegq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %mpegq, align 4
  %cmp.i.not53 = icmp eq ptr %5, %mpegq
  br i1 %cmp.i.not53, label %do.body27.while.end_crit_edge, label %do.body27.while.body_crit_edge

do.body27.while.body_crit_edge:                   ; preds = %do.body27
  br label %while.body

do.body27.while.end_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %do.body27.while.body_crit_edge
  %6 = phi ptr [ %16, %list_del.exit.while.body_crit_edge ], [ %5, %do.body27.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %6, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #12
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr, i32 noundef 6) #12
  %15 = ptrtoint ptr %mpegq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %mpegq, align 4
  %cmp.i.not = icmp eq ptr %16, %mpegq
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %do.body27.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call30) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  tail call void @cx8802_buf_queue(ptr noundef %3, ptr noundef %vb) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx8802_buf_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cx8802_get_driver(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @blackbird_start_codec(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %do.end10.for.body_crit_edge, %entry
  %i.04 = phi i32 [ 0, %entry ], [ %inc, %do.end10.for.body_crit_edge ]
  %lastchange.03 = phi i32 [ -1, %entry ], [ %spec.select1, %do.end10.for.body_crit_edge ]
  %lastval.02 = phi i32 [ 0, %entry ], [ %and, %do.end10.for.body_crit_edge ]
  %2 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %3, i32 819556
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !199
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !257
  %6 = load i32, ptr @debug, align 4
  %7 = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %7)
  %cmp5 = icmp ult i32 %7, -2
  br i1 %cmp5, label %do.end, label %for.body.do.end10_crit_edge

for.body.do.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, i32 noundef %i.04, i32 noundef %5) #15
  br label %do.end10

do.end10:                                         ; preds = %do.end, %for.body.do.end10_crit_edge
  %and = and i32 %5, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %lastval.02)
  %cmp11.not = icmp eq i32 %and, %lastval.02
  %spec.select1 = select i1 %cmp11.not, i32 %lastchange.03, i32 %i.04
  tail call void @msleep(i32 noundef 100) #12
  %inc = add nuw nsw i32 %i.04, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.04)
  %cmp = icmp ult i32 %i.04, 9
  %add = add i32 %spec.select1, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %add)
  %cmp2 = icmp slt i32 %inc, %add
  %or.cond = select i1 %cmp, i1 %cmp2, i1 false
  br i1 %or.cond, label %do.end10.for.body_crit_edge, label %do.body15

do.end10.for.body_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.body15:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !258
  tail call void @arm_heavy_mb() #12
  %8 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lmmio, align 4
  %add.ptr21 = getelementptr i32, ptr %9, i32 819557
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #12, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !259
  %11 = and i32 %10, -1073741825
  %12 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lmmio, align 4
  %add.ptr27 = getelementptr i32, ptr %13, i32 819557
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %11) #12, !srcloc !190
  %call28 = tail call i32 (ptr, i32, i32, i32, ...) @blackbird_api_cmd(ptr noundef %dev, i32 noundef 211, i32 noundef 0, i32 noundef 0)
  %call29 = tail call i32 (ptr, i32, i32, i32, ...) @blackbird_api_cmd(ptr noundef %dev, i32 noundef 205, i32 noundef 0, i32 noundef 0)
  %cxhdl = getelementptr inbounds %struct.cx8802_dev, ptr %dev, i32 0, i32 13
  tail call void @cx2341x_handler_set_busy(ptr noundef %cxhdl, i32 noundef 1) #12
  %call30 = tail call i32 (ptr, i32, i32, i32, ...) @blackbird_api_cmd(ptr noundef %dev, i32 noundef 129, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx8802_start_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx2341x_handler_set_busy(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx8802_cancel_buffers(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx8802_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx88_vdev_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call2 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.1, i32 noundef 16) #12
  %pci = getelementptr inbounds %struct.cx8802_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %bus_info, ptr noundef nonnull @.str.87, ptr noundef %retval.0.i.i)
  %call6 = tail call i32 @cx88_querycap(ptr noundef %file, ptr noundef %3, ptr noundef %cap) #12
  ret i32 %call6
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1195724877, ptr %pixelformat, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1195724877, ptr %pixelformat, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %5 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %bytesperline, align 4
  %ts_packet_size = getelementptr inbounds %struct.cx8802_dev, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %ts_packet_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ts_packet_size, align 4
  %ts_packet_count = getelementptr inbounds %struct.cx8802_dev, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %ts_packet_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ts_packet_count, align 8
  %mul = mul i32 %9, %7
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %10 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %11 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %colorspace, align 4
  %width = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 29
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width, align 8
  %14 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 30
  %15 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height, align 4
  %height8 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %height8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %height8, align 4
  %field = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 31
  %18 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %field, align 8
  %field10 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %field10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %field10, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %num_buffers.i = getelementptr inbounds %struct.cx8802_dev, ptr %1, i32 0, i32 6, i32 21
  %4 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %v4ldev = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 46
  %6 = ptrtoint ptr %v4ldev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %v4ldev, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %num_buffers.i45 = getelementptr inbounds %struct.cx8800_dev, ptr %7, i32 0, i32 11, i32 21
  %8 = ptrtoint ptr %num_buffers.i45 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_buffers.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i46.not = icmp eq i32 %9, 0
  br i1 %cmp.i46.not, label %lor.lhs.false, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %num_buffers.i47 = getelementptr inbounds %struct.cx8800_dev, ptr %7, i32 0, i32 13, i32 21
  %10 = ptrtoint ptr %num_buffers.i47 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_buffers.i47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i48.not = icmp eq i32 %11, 0
  br i1 %cmp.i48.not, label %lor.lhs.false.if.end8_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.if.end8_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.end8:                                          ; preds = %lor.lhs.false.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %call.i.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i.i, i32 0, i32 5, i32 8
  %12 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1195724877, ptr %pixelformat.i, align 4
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %17 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %bytesperline.i, align 4
  %ts_packet_size.i = getelementptr inbounds %struct.cx8802_dev, ptr %13, i32 0, i32 7
  %18 = ptrtoint ptr %ts_packet_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ts_packet_size.i, align 4
  %ts_packet_count.i = getelementptr inbounds %struct.cx8802_dev, ptr %13, i32 0, i32 8
  %20 = ptrtoint ptr %ts_packet_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ts_packet_count.i, align 8
  %mul.i = mul i32 %21, %19
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %22 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul.i, ptr %sizeimage.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %23 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %colorspace.i, align 4
  %tvnorm.i = getelementptr inbounds %struct.cx88_core, ptr %15, i32 0, i32 28
  %24 = ptrtoint ptr %tvnorm.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %tvnorm.i, align 8
  %and.i.i = and i64 %25, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 576, i32 480
  %field9.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %26 = ptrtoint ptr %field9.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %field9.i, align 4
  %.off.i = add i32 %27, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 5
  br i1 %switch.i, label %sw.epilog.i, label %sw.default.i

sw.default.i:                                     ; preds = %if.end8
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %28 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %height.i, align 4
  %div39.i = lshr exact i32 %cond.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %div39.i)
  %cmp.i49 = icmp ugt i32 %29, %div39.i
  br i1 %cmp.i49, label %sw.default.i.vidioc_try_fmt_vid_cap.exit_crit_edge, label %sw.default.i.if.then.i_crit_edge

sw.default.i.if.then.i_crit_edge:                 ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

sw.default.i.vidioc_try_fmt_vid_cap.exit_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vidioc_try_fmt_vid_cap.exit

sw.epilog.i:                                      ; preds = %if.end8
  %30 = and i32 %27, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %switch46.i = icmp eq i32 %30, 2
  br i1 %switch46.i, label %sw.epilog.if.then_crit_edge.i, label %sw.epilog.i.vidioc_try_fmt_vid_cap.exit_crit_edge

sw.epilog.i.vidioc_try_fmt_vid_cap.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vidioc_try_fmt_vid_cap.exit

sw.epilog.if.then_crit_edge.i:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  %.pre.i = lshr exact i32 %cond.i.i, 1
  br label %if.then.i

if.then.i:                                        ; preds = %sw.epilog.if.then_crit_edge.i, %sw.default.i.if.then.i_crit_edge
  %div1538.pre-phi.i = phi i32 [ %.pre.i, %sw.epilog.if.then_crit_edge.i ], [ %div39.i, %sw.default.i.if.then.i_crit_edge ]
  %field.044.i = phi i32 [ %27, %sw.epilog.if.then_crit_edge.i ], [ 3, %sw.default.i.if.then.i_crit_edge ]
  br label %vidioc_try_fmt_vid_cap.exit

vidioc_try_fmt_vid_cap.exit:                      ; preds = %if.then.i, %sw.epilog.i.vidioc_try_fmt_vid_cap.exit_crit_edge, %sw.default.i.vidioc_try_fmt_vid_cap.exit_crit_edge
  %field.041.i = phi i32 [ %field.044.i, %if.then.i ], [ %27, %sw.epilog.i.vidioc_try_fmt_vid_cap.exit_crit_edge ], [ 4, %sw.default.i.vidioc_try_fmt_vid_cap.exit_crit_edge ]
  %maxh.0.i = phi i32 [ %div1538.pre-phi.i, %if.then.i ], [ %cond.i.i, %sw.epilog.i.vidioc_try_fmt_vid_cap.exit_crit_edge ], [ %cond.i.i, %sw.default.i.vidioc_try_fmt_vid_cap.exit_crit_edge ]
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %height18.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  tail call void @v4l_bound_align_image(ptr noundef %fmt.i, i32 noundef 48, i32 noundef 720, i32 noundef 2, ptr noundef %height18.i, i32 noundef 32, i32 noundef %maxh.0.i, i32 noundef 0, i32 noundef 0) #12
  %31 = ptrtoint ptr %field9.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %field.041.i, ptr %field9.i, align 4
  %32 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fmt.i, align 4
  %width10 = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 29
  %34 = ptrtoint ptr %width10 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %width10, align 8
  %35 = ptrtoint ptr %height18.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height18.i, align 4
  %height12 = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 30
  %37 = ptrtoint ptr %height12 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %height12, align 4
  %38 = load i32, ptr %field9.i, align 4
  %field14 = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 31
  %39 = ptrtoint ptr %field14 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %field14, align 8
  %40 = load i32, ptr %fmt.i, align 4
  %41 = load i32, ptr %height18.i, align 4
  %42 = load i32, ptr %field9.i, align 4
  %call21 = tail call i32 @cx88_set_scale(ptr noundef %3, i32 noundef %40, i32 noundef %41, i32 noundef %42) #12
  %43 = ptrtoint ptr %height18.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %height18.i, align 4
  %45 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fmt.i, align 4
  %call26 = tail call i32 (ptr, i32, i32, i32, ...) @blackbird_api_cmd(ptr noundef %1, i32 noundef 145, i32 noundef 2, i32 noundef 0, i32 noundef %44, i32 noundef %46)
  br label %cleanup

cleanup:                                          ; preds = %vidioc_try_fmt_vid_cap.exit, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %vidioc_try_fmt_vid_cap.exit ], [ -16, %entry.cleanup_crit_edge ], [ -16, %lor.lhs.false.cleanup_crit_edge ], [ -16, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1195724877, ptr %pixelformat, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %5 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %bytesperline, align 4
  %ts_packet_size = getelementptr inbounds %struct.cx8802_dev, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %ts_packet_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ts_packet_size, align 4
  %ts_packet_count = getelementptr inbounds %struct.cx8802_dev, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %ts_packet_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ts_packet_count, align 8
  %mul = mul i32 %9, %7
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %10 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %11 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %colorspace, align 4
  %tvnorm = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 28
  %12 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tvnorm, align 8
  %and.i = and i64 %13, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 576, i32 480
  %field9 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %14 = ptrtoint ptr %field9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %field9, align 4
  %.off = add i32 %15, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.off)
  %switch = icmp ult i32 %.off, 5
  br i1 %switch, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %entry
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height, align 4
  %div39 = lshr exact i32 %cond.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %div39)
  %cmp = icmp ugt i32 %17, %div39
  br i1 %cmp, label %sw.default.if.end_crit_edge, label %sw.default.if.then_crit_edge

sw.default.if.then_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

sw.default.if.end_crit_edge:                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.epilog:                                        ; preds = %entry
  %18 = and i32 %15, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %switch46 = icmp eq i32 %18, 2
  br i1 %switch46, label %sw.epilog.if.then_crit_edge, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.epilog.if.then_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %.pre = lshr exact i32 %cond.i, 1
  br label %if.then

if.then:                                          ; preds = %sw.epilog.if.then_crit_edge, %sw.default.if.then_crit_edge
  %div1538.pre-phi = phi i32 [ %.pre, %sw.epilog.if.then_crit_edge ], [ %div39, %sw.default.if.then_crit_edge ]
  %field.044 = phi i32 [ %15, %sw.epilog.if.then_crit_edge ], [ 3, %sw.default.if.then_crit_edge ]
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge, %sw.default.if.end_crit_edge
  %field.041 = phi i32 [ %field.044, %if.then ], [ %15, %sw.epilog.if.end_crit_edge ], [ 4, %sw.default.if.end_crit_edge ]
  %maxh.0 = phi i32 [ %div1538.pre-phi, %if.then ], [ %cond.i, %sw.epilog.if.end_crit_edge ], [ %cond.i, %sw.default.if.end_crit_edge ]
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %height18 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  tail call void @v4l_bound_align_image(ptr noundef %fmt, i32 noundef 48, i32 noundef 720, i32 noundef 2, ptr noundef %height18, i32 noundef 32, i32 noundef %maxh.0, i32 noundef 0, i32 noundef 0) #12
  %19 = ptrtoint ptr %field9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %field.041, ptr %field9, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_std(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %tvnorm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %tvnorm2 = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %tvnorm2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %tvnorm2, align 8
  %6 = ptrtoint ptr %tvnorm to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %tvnorm, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_std(ptr noundef %file, ptr nocapture noundef readnone %priv, i64 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call2 = tail call i32 @cx88_set_tvnorm(ptr noundef %3, i64 noundef %id) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call2 = tail call i32 @cx88_enum_input(ptr noundef %3, ptr noundef %i) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %input = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 35
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %input, align 8
  %6 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_input(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i)
  %cmp = icmp ugt i32 %i, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.cx88_core, ptr %3, i32 0, i32 23, i32 6, i32 %i
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @cx88_newstation(ptr noundef %3) #12
  %call4 = tail call i32 @cx88_video_mux(ptr noundef %3, i32 noundef %i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %tuner_type = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 23, i32 1
  %4 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tuner_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !256

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3.not = icmp eq i32 %7, 0
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 1
  %call6 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.88, i32 noundef 32) #12
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 3
  %8 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %capability, align 4
  %rangehigh = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 5
  %9 = ptrtoint ptr %rangehigh to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %rangehigh, align 4
  %i2c_rc = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 15
  %10 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  br i1 %tobool7.not, label %if.then8, label %if.end5.do.end44_crit_edge

if.end5.do.end44_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end44

if.then8:                                         ; preds = %if.end5
  %gate_ctrl = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 26
  %12 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gate_ctrl, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %if.then8.do.body13_crit_edge, label %if.then10

if.then8.do.body13_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body13

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %13(ptr noundef %3, i32 noundef 1) #12
  br label %do.body13

do.body13:                                        ; preds = %if.then10, %if.then8.do.body13_crit_edge
  %subdevs = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 16, i32 2
  %14 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn77 = load ptr, ptr %subdevs, align 4
  %cmp17.not79 = icmp eq ptr %.pn77, %subdevs
  br i1 %cmp17.not79, label %do.body13.do.end_crit_edge, label %do.body13.for.body_crit_edge

do.body13.for.body_crit_edge:                     ; preds = %do.body13
  br label %for.body

do.body13.do.end_crit_edge:                       ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body13.for.body_crit_edge
  %.pn80 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn77, %do.body13.for.body_crit_edge ]
  %__sd.081 = getelementptr i8, ptr %.pn80, i32 -80
  %ops = getelementptr i8, ptr %.pn80, i32 24
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tuner, align 4
  %tobool20.not = icmp eq ptr %18, null
  br i1 %tobool20.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %g_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %g_tuner to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %g_tuner, align 4
  %tobool23.not = icmp eq ptr %20, null
  br i1 %tobool23.not, label %land.lhs.true.for.inc_crit_edge, label %if.then24

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call28 = tail call i32 %20(ptr noundef %__sd.081, ptr noundef %t) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then24, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %21 = ptrtoint ptr %.pn80 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load ptr, ptr %.pn80, align 4
  %cmp17.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp17.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %do.body13.do.end_crit_edge
  %22 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gate_ctrl, align 4
  %tobool38.not = icmp eq ptr %23, null
  br i1 %tobool38.not, label %do.end.do.end44_crit_edge, label %if.then39

do.end.do.end44_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end44

if.then39:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %23(ptr noundef %3, i32 noundef 0) #12
  br label %do.end44

do.end44:                                         ; preds = %if.then39, %do.end.do.end44_crit_edge, %if.end5.do.end44_crit_edge
  tail call void @cx88_get_stereo(ptr noundef %3, ptr noundef %t) #12
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 7
  %24 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lmmio, align 4
  %add.ptr45 = getelementptr i32, ptr %25, i32 802880
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #12, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !260
  %27 = and i32 %26, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool49.not = icmp eq i32 %27, 0
  %cond = select i1 %tobool49.not, i32 0, i32 65535
  %signal = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 8
  %28 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %cond, ptr %signal, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end44 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %tuner_type = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 23, i32 1
  %4 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tuner_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2.not = icmp eq i32 %7, 0
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 7
  %8 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %audmode, align 4
  tail call void @cx88_set_stereo(ptr noundef %3, i32 noundef %9, i32 noundef 1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %tuner_type = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 23, i32 1
  %4 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tuner_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !256

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3.not = icmp eq i32 %7, 0
  br i1 %cmp3.not, label %if.end11, label %if.end.cleanup_crit_edge, !prof !261

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %freq = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 44
  %8 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %freq, align 8
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %10 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %frequency, align 4
  %i2c_rc = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 15
  %11 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.not = icmp eq i32 %12, 0
  br i1 %tobool12.not, label %if.then13, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then13:                                        ; preds = %if.end11
  %gate_ctrl = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 26
  %13 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gate_ctrl, align 4
  %tobool14.not = icmp eq ptr %14, null
  br i1 %tobool14.not, label %if.then13.do.body18_crit_edge, label %if.then15

if.then13.do.body18_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body18

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %14(ptr noundef %3, i32 noundef 1) #12
  br label %do.body18

do.body18:                                        ; preds = %if.then15, %if.then13.do.body18_crit_edge
  %subdevs = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 16, i32 2
  %15 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn72 = load ptr, ptr %subdevs, align 4
  %cmp22.not74 = icmp eq ptr %.pn72, %subdevs
  br i1 %cmp22.not74, label %do.body18.do.end_crit_edge, label %do.body18.for.body_crit_edge

do.body18.for.body_crit_edge:                     ; preds = %do.body18
  br label %for.body

do.body18.do.end_crit_edge:                       ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body18.for.body_crit_edge
  %.pn75 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn72, %do.body18.for.body_crit_edge ]
  %__sd.076 = getelementptr i8, ptr %.pn75, i32 -80
  %ops = getelementptr i8, ptr %.pn75, i32 24
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %tuner25 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %tuner25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tuner25, align 4
  %tobool26.not = icmp eq ptr %19, null
  br i1 %tobool26.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %g_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %g_frequency to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %g_frequency, align 4
  %tobool29.not = icmp eq ptr %21, null
  br i1 %tobool29.not, label %land.lhs.true.for.inc_crit_edge, label %if.then30

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call34 = tail call i32 %21(ptr noundef %__sd.076, ptr noundef %f) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then30, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %22 = ptrtoint ptr %.pn75 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn = load ptr, ptr %.pn75, align 4
  %cmp22.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp22.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %do.body18.do.end_crit_edge
  %23 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gate_ctrl, align 4
  %tobool44.not = icmp eq ptr %24, null
  br i1 %tobool44.not, label %do.end.cleanup_crit_edge, label %if.then45

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then45:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %24(ptr noundef %3, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %do.end.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.then45 ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %tuner_type = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 23, i32 1
  %4 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tuner_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !256

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3.not = icmp eq i32 %7, 0
  br i1 %cmp3.not, label %if.end11, label %if.end.cleanup_crit_edge, !prof !261

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %start_streaming_called.i = getelementptr inbounds %struct.cx8802_dev, ptr %1, i32 0, i32 6, i32 28
  %8 = ptrtoint ptr %start_streaming_called.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %start_streaming_called.i, align 4
  %9 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.i.not = icmp eq i16 %9, 0
  br i1 %tobool.i.not, label %if.end23.critedge, label %if.then14

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %call.i43 = tail call i32 (ptr, i32, i32, i32, ...) @blackbird_api_cmd(ptr noundef %1, i32 noundef 130, i32 noundef 3, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %cxhdl.i = getelementptr inbounds %struct.cx8802_dev, ptr %1, i32 0, i32 13
  tail call void @cx2341x_handler_set_busy(ptr noundef %cxhdl.i, i32 noundef 0) #12
  %call17.c = tail call i32 @cx88_set_freq(ptr noundef %3, ptr noundef %f) #12
  %call18.c = tail call fastcc i32 @blackbird_initialize_codec(ptr noundef %1)
  %width.c = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 29
  %10 = ptrtoint ptr %width.c to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width.c, align 8
  %height.c = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 30
  %12 = ptrtoint ptr %height.c to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height.c, align 4
  %field.c = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 31
  %14 = ptrtoint ptr %field.c to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %field.c, align 8
  %call19.c = tail call i32 @cx88_set_scale(ptr noundef %3, i32 noundef %11, i32 noundef %13, i32 noundef %15) #12
  tail call fastcc void @blackbird_start_codec(ptr noundef %1)
  br label %cleanup

if.end23.critedge:                                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %call17.c37 = tail call i32 @cx88_set_freq(ptr noundef %3, ptr noundef %f) #12
  %call18.c38 = tail call fastcc i32 @blackbird_initialize_codec(ptr noundef %1)
  %width.c39 = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 29
  %16 = ptrtoint ptr %width.c39 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %width.c39, align 8
  %height.c40 = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 30
  %18 = ptrtoint ptr %height.c40 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height.c40, align 4
  %field.c41 = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 31
  %20 = ptrtoint ptr %field.c41 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %field.c41, align 8
  %call19.c42 = tail call i32 @cx88_set_scale(ptr noundef %3, i32 noundef %17, i32 noundef %19, i32 noundef %21) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end23.critedge, %if.then14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end23.critedge ], [ 0, %if.then14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_log_status(ptr noundef %file, ptr nocapture noundef readnone %priv) #2 align 64 {
entry:
  %name = alloca [34 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %name) #12
  %4 = call ptr @memset(ptr %name, i32 255, i32 34)
  %name2 = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 3
  %call4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 34, ptr noundef nonnull @.str.89, ptr noundef %name2)
  %i2c_rc = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 15
  %5 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end37_crit_edge

entry.do.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end37

if.then:                                          ; preds = %entry
  %gate_ctrl = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 26
  %7 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gate_ctrl, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %if.then.do.body8_crit_edge, label %if.then6

if.then.do.body8_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body8

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %8(ptr noundef %3, i32 noundef 1) #12
  br label %do.body8

do.body8:                                         ; preds = %if.then6, %if.then.do.body8_crit_edge
  %subdevs = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 16, i32 2
  %9 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn57 = load ptr, ptr %subdevs, align 4
  %cmp.not59 = icmp eq ptr %.pn57, %subdevs
  br i1 %cmp.not59, label %do.body8.do.end_crit_edge, label %do.body8.for.body_crit_edge

do.body8.for.body_crit_edge:                      ; preds = %do.body8
  br label %for.body

do.body8.do.end_crit_edge:                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body8.for.body_crit_edge
  %.pn60 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn57, %do.body8.for.body_crit_edge ]
  %__sd.061 = getelementptr i8, ptr %.pn60, i32 -80
  %ops = getelementptr i8, ptr %.pn60, i32 24
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool13.not = icmp eq ptr %13, null
  br i1 %tobool13.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool16.not = icmp eq ptr %15, null
  br i1 %tobool16.not, label %land.lhs.true.for.inc_crit_edge, label %if.then17

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call21 = tail call i32 %15(ptr noundef %__sd.061) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %.pn60 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn60, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %do.body8.do.end_crit_edge
  %17 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gate_ctrl, align 4
  %tobool31.not = icmp eq ptr %18, null
  br i1 %tobool31.not, label %do.end.do.end37_crit_edge, label %if.then32

do.end.do.end37_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end37

if.then32:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %18(ptr noundef %3, i32 noundef 0) #12
  br label %do.end37

do.end37:                                         ; preds = %if.then32, %do.end.do.end37_crit_edge, %entry.do.end37_crit_edge
  %hdl = getelementptr inbounds %struct.cx8802_dev, ptr %1, i32 0, i32 13, i32 6
  call void @v4l2_ctrl_handler_log_status(ptr noundef %hdl, ptr noundef nonnull %name) #12
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %name) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx88_querycap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx88_set_scale(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx88_enum_input(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx88_newstation(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx88_get_stereo(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx88_set_stereo(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx88_set_freq(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_log_status(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx8802_register_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !22, !24, !25, !27, !29, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !91, !92, !93, !94, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !140, !141, !142, !143, !145, !146, !147, !149, !150, !151, !152, !154, !156, !157, !158, !159, !161, !162, !163, !165, !167, !169, !171, !173, !175, !177, !178, !179}
!llvm.module.flags = !{!180, !181, !182, !183, !184, !185, !186, !187}
!llvm.ident = !{!188}

!0 = !{ptr @__UNIQUE_ID_description385, !1, !"__UNIQUE_ID_description385", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 29, i32 1}
!2 = !{ptr @__UNIQUE_ID_author386, !3, !"__UNIQUE_ID_author386", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 30, i32 1}
!4 = !{ptr @__UNIQUE_ID_file387, !5, !"__UNIQUE_ID_file387", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 31, i32 1}
!6 = !{ptr @__UNIQUE_ID_license388, !5, !"__UNIQUE_ID_license388", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version389, !8, !"__UNIQUE_ID_version389", i1 false, i1 false}
!8 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 32, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__param_debug, !14, !"__param_debug", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 35, i32 1}
!15 = !{ptr @__UNIQUE_ID_debugtype390, !14, !"__UNIQUE_ID_debugtype390", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_debug391, !17, !"__UNIQUE_ID_debug391", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 36, i32 1}
!18 = !{ptr @__initcall__kmod_cx88_blackbird__392_1253_blackbird_init6, !19, !"__initcall__kmod_cx88_blackbird__392_1253_blackbird_init6", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 1253, i32 1}
!20 = !{ptr @__exitcall_blackbird_fini, !21, !"__exitcall_blackbird_fini", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 1254, i32 1}
!22 = !{ptr @debug, !23, !"debug", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 34, i32 21}
!24 = !{ptr @__param_str_debug, !14, !"__param_str_debug", i1 false, i1 false}
!25 = !{ptr @cx8802_blackbird_driver, !26, !"cx8802_blackbird_driver", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 1232, i32 29}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 1161, i32 2}
!29 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @cx8802_blackbird_probe._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @cx8802_blackbird_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 1162, i32 2}
!35 = !{ptr @cx8802_blackbird_probe._entry.6, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @cx8802_blackbird_probe._entry_ptr.8, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 1183, i32 2}
!39 = !{ptr @cx8802_blackbird_probe._entry.9, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @cx8802_blackbird_probe._entry_ptr.11, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 326, i32 2}
!43 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @blackbird_mbox_func._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @blackbird_mbox_func._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 334, i32 3}
!48 = !{ptr @blackbird_mbox_func._entry.14, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @blackbird_mbox_func._entry_ptr.16, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 341, i32 3}
!52 = !{ptr @blackbird_mbox_func._entry.17, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @blackbird_mbox_func._entry_ptr.19, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 354, i32 3}
!56 = !{ptr @blackbird_mbox_func._entry.20, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @blackbird_mbox_func._entry_ptr.22, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 369, i32 4}
!60 = !{ptr @blackbird_mbox_func._entry.23, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @blackbird_mbox_func._entry_ptr.25, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 378, i32 3}
!64 = !{ptr @blackbird_mbox_func._entry.26, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @blackbird_mbox_func._entry_ptr.28, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 382, i32 2}
!68 = !{ptr @blackbird_mbox_func._entry.29, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @blackbird_mbox_func._entry_ptr.31, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 556, i32 2}
!72 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @blackbird_initialize_codec._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @blackbird_initialize_codec._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 575, i32 4}
!77 = !{ptr @blackbird_initialize_codec._entry.34, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @blackbird_initialize_codec._entry_ptr.36, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 582, i32 4}
!81 = !{ptr @blackbird_initialize_codec._entry.37, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @blackbird_initialize_codec._entry_ptr.39, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 586, i32 3}
!85 = !{ptr @blackbird_initialize_codec._entry.40, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @blackbird_initialize_codec._entry_ptr.42, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @blackbird_load_firmware.magic, !88, !"magic", i1 false, i1 false}
!88 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 440, i32 29}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 460, i32 3}
!91 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @blackbird_load_firmware._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @blackbird_load_firmware._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 462, i32 39}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 466, i32 3}
!98 = !{ptr @blackbird_load_firmware._entry.46, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @blackbird_load_firmware._entry_ptr.48, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 468, i32 3}
!102 = !{ptr @blackbird_load_firmware._entry.49, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @blackbird_load_firmware._entry_ptr.51, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 473, i32 3}
!106 = !{ptr @blackbird_load_firmware._entry.52, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @blackbird_load_firmware._entry_ptr.54, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 480, i32 3}
!110 = !{ptr @blackbird_load_firmware._entry.55, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @blackbird_load_firmware._entry_ptr.57, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 486, i32 2}
!114 = !{ptr @blackbird_load_firmware._entry.58, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @blackbird_load_firmware._entry_ptr.60, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.62, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 502, i32 3}
!118 = !{ptr @blackbird_load_firmware._entry.61, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @blackbird_load_firmware._entry_ptr.63, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.65, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 505, i32 2}
!122 = !{ptr @blackbird_load_firmware._entry.64, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @blackbird_load_firmware._entry_ptr.66, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @blackbird_load_firmware._entry.67, !125, !"_entry", i1 false, i1 false}
!125 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 517, i32 3}
!126 = !{ptr @blackbird_load_firmware._entry_ptr.68, !125, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.69, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 430, i32 4}
!129 = !{ptr @.str.70, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @blackbird_find_mailbox._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @blackbird_find_mailbox._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.72, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 434, i32 2}
!134 = !{ptr @blackbird_find_mailbox._entry.71, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @blackbird_find_mailbox._entry_ptr.73, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @blackbird_qops, !137, !"blackbird_qops", i1 false, i1 false}
!137 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 779, i32 29}
!138 = !{ptr @.str.74, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 714, i32 3}
!140 = !{ptr @.str.75, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @start_streaming._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @start_streaming._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.77, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 721, i32 3}
!145 = !{ptr @start_streaming._entry.76, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @start_streaming._entry_ptr.78, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.79, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 619, i32 3}
!149 = !{ptr @.str.80, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @blackbird_start_codec._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @blackbird_start_codec._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.81, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 1134, i32 33}
!154 = !{ptr @.str.82, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 1144, i32 3}
!156 = !{ptr @.str.83, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @blackbird_register_video._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @blackbird_register_video._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.85, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 1147, i32 2}
!161 = !{ptr @blackbird_register_video._entry.84, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @blackbird_register_video._entry_ptr.86, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @cx8802_mpeg_template, !164, !"cx8802_mpeg_template", i1 false, i1 false}
!164 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 1067, i32 34}
!165 = !{ptr @mpeg_fops, !166, !"mpeg_fops", i1 false, i1 false}
!166 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 1031, i32 42}
!167 = !{ptr @mpeg_ioctl_ops, !168, !"mpeg_ioctl_ops", i1 false, i1 false}
!168 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 1041, i32 36}
!169 = !{ptr @.str.87, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 799, i32 25}
!171 = !{ptr @.str.88, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 988, i32 19}
!173 = !{ptr @.str.89, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 920, i32 31}
!175 = !{ptr @.str.90, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/pci/cx88/cx88-blackbird.c", i32 1243, i32 2}
!177 = !{ptr @.str.91, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @blackbird_init._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @blackbird_init._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{i32 1, !"wchar_size", i32 2}
!181 = !{i32 1, !"min_enum_size", i32 4}
!182 = !{i32 8, !"branch-target-enforcement", i32 0}
!183 = !{i32 8, !"sign-return-address", i32 0}
!184 = !{i32 8, !"sign-return-address-all", i32 0}
!185 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!186 = !{i32 7, !"uwtable", i32 1}
!187 = !{i32 7, !"frame-pointer", i32 2}
!188 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!189 = !{i64 2158686401}
!190 = !{i64 5034891}
!191 = !{i64 2158687442}
!192 = !{i64 2158688503}
!193 = !{i64 2158689026}
!194 = !{i64 2158689521}
!195 = !{i64 2158690017}
!196 = !{i64 2158690530}
!197 = !{i64 2158691053}
!198 = !{i64 2158803573}
!199 = !{i64 5035309}
!200 = !{i64 2158804692}
!201 = !{i64 2158806667}
!202 = !{i64 2158807760}
!203 = !{i64 2158809751}
!204 = !{i64 2158810870}
!205 = !{i64 2158812886}
!206 = !{i64 2158814005}
!207 = !{!"auto-init"}
!208 = !{i64 2158750996}
!209 = !{i64 2158751489}
!210 = !{i64 2158758038}
!211 = !{i64 2158759559}
!212 = !{i64 2158760632}
!213 = !{i64 2158760998}
!214 = !{i64 2158762533}
!215 = !{i64 2158763610}
!216 = !{i64 2158697245}
!217 = !{i64 5034694}
!218 = !{i64 2158697681}
!219 = !{i64 2158698094}
!220 = !{i64 2158698780}
!221 = !{i64 2158691852}
!222 = !{i64 2158699062}
!223 = !{i64 2158699728}
!224 = !{i64 2158700010}
!225 = !{i64 2158700676}
!226 = !{i64 2158700958}
!227 = !{i64 2158701624}
!228 = !{i64 2158701906}
!229 = !{i64 2158702572}
!230 = !{i64 2158693052}
!231 = !{i64 2158693466}
!232 = !{i64 2158693889}
!233 = !{i64 2158694313}
!234 = !{i64 2158694755}
!235 = !{i64 2158695190}
!236 = !{i64 2158695603}
!237 = !{i64 2158696289}
!238 = !{i64 2158696891}
!239 = !{i64 2158702890}
!240 = !{i64 2158703304}
!241 = !{i64 2158703727}
!242 = !{i64 2158704151}
!243 = !{i64 2158704563}
!244 = !{i64 2158704983}
!245 = !{i64 2158705356}
!246 = !{i64 2158706022}
!247 = !{i64 2158706624}
!248 = !{i64 2158706946}
!249 = !{i64 2158707366}
!250 = !{i64 2158707739}
!251 = !{i64 2158708405}
!252 = !{i64 2158709007}
!253 = !{i64 2158709609}
!254 = !{i64 2158710211}
!255 = !{i64 2158710813}
!256 = !{!"branch_weights", i32 1, i32 2000}
!257 = !{i64 2158764282}
!258 = !{i64 2158767541}
!259 = !{i64 2158768626}
!260 = !{i64 2158800615}
!261 = !{!"branch_weights", i32 2000, i32 1}
