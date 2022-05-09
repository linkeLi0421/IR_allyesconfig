; ModuleID = '/llk/IR_all_yes/drivers/media/usb/tm6000/tm6000-video.c_pt.bc'
source_filename = "../drivers/media/usb/tm6000/tm6000-video.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tm6000_debug\22, \22a\22\09"
module asm "\09.weak\09__crc_tm6000_debug\09\09\09\09"
module asm "\09.long\09__crc_tm6000_debug\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tm6000_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22tm6000_debug\22\09\09\09\09\09"
module asm "__kstrtabns_tm6000_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tm6000_fmt = type { i32, i32 }
%struct.videobuf_queue_ops = type { ptr, ptr, ptr, ptr }
%struct.tm6000_core = type { [30 x i8], i32, i32, i32, [256 x i8], i32, i64, i32, i32, i32, %struct.tm6000_capabilities, %struct.work_struct, i32, i32, %struct.tm6000_gpio, ptr, i8, i32, i32, %struct.i2c_adapter, %struct.i2c_client, %struct.list_head, i32, ptr, i8, %struct.video_device, %struct.video_device, %struct.tm6000_dmaqueue, %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, i32, [3 x %struct.tm6000_input], %struct.tm6000_input, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.work_struct, %struct.atomic_t, ptr, %struct.mutex, %struct.mutex, ptr, %struct.tm6000_endpoint, %struct.tm6000_endpoint, %struct.tm6000_endpoint, %struct.tm6000_endpoint, %struct.tm6000_endpoint, %struct.tm6000_endpoint, i32, %struct.usb_isoc_ctl, %struct.spinlock, ptr, ptr, i32, i32 }
%struct.tm6000_capabilities = type { i8, [3 x i8] }
%struct.tm6000_gpio = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.tm6000_dmaqueue = type { %struct.list_head, %struct.list_head, ptr, %struct.wait_queue_head, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.tm6000_input = type { i32, i32, i32, i32, i32 }
%struct.tm6000_endpoint = type { ptr, i8, i8, i32 }
%struct.usb_isoc_ctl = type { i32, i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.87, %union.anon.88, i32, ptr, i32, %struct.anon.89, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.87 = type { i64 }
%union.anon.88 = type { ptr }
%struct.anon.89 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.tm6000_fh = type { %struct.v4l2_fh, ptr, i32, ptr, i32, i32, %struct.videobuf_queue, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.videobuf_queue = type { %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, i32, i32, i32, i32, [32 x ptr], ptr, ptr, i8, %struct.list_head, i32, ptr, ptr }
%struct.poll_table_struct = type { ptr, i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.videobuf_buffer = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.wait_queue_head, i32, i64, i32, i32, i32, i32, ptr, i32, ptr }
%struct.tm6000_buffer = type { %struct.videobuf_buffer, ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.95 }
%union.anon.95 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.97, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.97 = type { i8 }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }

@tm6000_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_tm6000_debug = external dso_local constant [0 x i8], align 1
@__kstrtabns_tm6000_debug = external dso_local constant [0 x i8], align 1
@__ksymtab_tm6000_debug = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tm6000_debug to i32), ptr @__kstrtab_tm6000_debug, ptr @__kstrtabns_tm6000_debug }, section "___ksymtab_gpl+tm6000_debug", align 4
@tm6000_v4l2_register._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"tm6000_video:1604:(&dev->ctrl_handler)->_lock\00", [50 x i8] zeroinitializer }, align 32
@tm6000_v4l2_register._key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"tm6000_video:1605:(&dev->radio_ctrl_handler)->_lock\00", [44 x i8] zeroinitializer }, align 32
@tm6000_radio_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @tm6000_radio_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@tm6000_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @tm6000_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@tm6000_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @tm6000_fops, i32 0, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"tm6000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 16728063, ptr @video_device_release_empty, ptr @video_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"video\00", [26 x i8] zeroinitializer }, align 32
@video_nr = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@tm6000_v4l2_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s: can't register video device\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tm6000_v4l2_register\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/usb/tm6000/tm6000-video.c\00", [56 x i8] zeroinitializer }, align 32
@tm6000_v4l2_register._entry_ptr = internal global ptr @tm6000_v4l2_register._entry, section ".printk_index", align 4
@tm6000_v4l2_register._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 1649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s: registered device %s\0A\00", [36 x i8] zeroinitializer }, align 32
@tm6000_v4l2_register._entry_ptr.9 = internal global ptr @tm6000_v4l2_register._entry.7, section ".printk_index", align 4
@tm6000_radio_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @radio_fops, i32 0, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"tm6000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr null, ptr @radio_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"radio\00", [26 x i8] zeroinitializer }, align 32
@tm6000_v4l2_register._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str.6, i32 1660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s: can't register radio device\0A\00", [61 x i8] zeroinitializer }, align 32
@tm6000_v4l2_register._entry_ptr.13 = internal global ptr @tm6000_v4l2_register._entry.11, section ".printk_index", align 4
@tm6000_v4l2_register._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 1665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tm6000_v4l2_register._entry_ptr.15 = internal global ptr @tm6000_v4l2_register._entry.14, section ".printk_index", align 4
@tm6000_v4l2_register._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.6, i32 1668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016Trident TVMaster TM5600/TM6000/TM6010 USB2 board (Load status: %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@tm6000_v4l2_register._entry_ptr.18 = internal global ptr @tm6000_v4l2_register._entry.16, section ".printk_index", align 4
@__param_str_video_nr = internal constant [16 x i8] c"tm6000.video_nr\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_video_nr = internal constant %struct.kernel_param { ptr @__param_str_video_nr, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @video_nr } }, section "__param", align 4
@__UNIQUE_ID_video_nrtype305 = internal constant [29 x i8] c"tm6000.parmtype=video_nr:int\00", section ".modinfo", align 1
@__UNIQUE_ID_video_nr306 = internal constant [56 x i8] c"tm6000.parm=video_nr:Allow changing video device number\00", section ".modinfo", align 1
@__param_str_debug = internal constant [13 x i8] c"tm6000.debug\00", align 1
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @tm6000_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype307 = internal constant [26 x i8] c"tm6000.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug308 = internal constant [39 x i8] c"tm6000.parm=debug:activates debug info\00", section ".modinfo", align 1
@__param_str_vid_limit = internal constant [17 x i8] c"tm6000.vid_limit\00", align 1
@vid_limit = internal global { i32, [28 x i8] } { i32 16, [28 x i8] zeroinitializer }, align 32
@__param_vid_limit = internal constant %struct.kernel_param { ptr @__param_str_vid_limit, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @vid_limit } }, section "__param", align 4
@__UNIQUE_ID_vid_limittype309 = internal constant [30 x i8] c"tm6000.parmtype=vid_limit:int\00", section ".modinfo", align 1
@__UNIQUE_ID_vid_limit310 = internal constant [56 x i8] c"tm6000.parm=vid_limit:capture memory limit in megabytes\00", section ".modinfo", align 1
@__param_str_keep_urb = internal constant [16 x i8] c"tm6000.keep_urb\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@keep_urb = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_keep_urb = internal constant %struct.kernel_param { ptr @__param_str_keep_urb, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @keep_urb } }, section "__param", align 4
@__UNIQUE_ID_keep_urbtype311 = internal constant [30 x i8] c"tm6000.parmtype=keep_urb:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_keep_urb312 = internal constant [91 x i8] c"tm6000.parm=keep_urb:Keep urb buffers allocated even when the device is closed by the user\00", section ".modinfo", align 1
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@tm6000_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @tm6000_read, ptr null, ptr @tm6000_poll, ptr @video_ioctl2, ptr null, ptr @tm6000_mmap, ptr @tm6000_open, ptr @tm6000_release }, [60 x i8] zeroinitializer }, align 32
@video_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr @vidioc_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_reqbufs, ptr @vidioc_querybuf, ptr @vidioc_qbuf, ptr null, ptr @vidioc_dqbuf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_streamon, ptr @vidioc_streamoff, ptr @vidioc_g_std, ptr @vidioc_s_std, ptr null, ptr @vidioc_enum_input, ptr @vidioc_g_input, ptr @vidioc_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_tuner, ptr @vidioc_s_tuner, ptr @vidioc_g_frequency, ptr @vidioc_s_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@res_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.6, i32 831, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016(%lu) %s %s :res: get\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"res_get\00", [24 x i8] zeroinitializer }, align 32
@res_get._entry_ptr = internal global ptr @res_get._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__tm6000_open._entry = internal constant %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.6, i32 1298, ptr null, ptr null }, align 1
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016(%lu) %s %s :tm6000: open called (dev=%s)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"__tm6000_open\00", [18 x i8] zeroinitializer }, align 32
@__tm6000_open._entry_ptr = internal global ptr @__tm6000_open._entry, section ".printk_index", align 4
@__tm6000_open._entry.24 = internal constant %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.6, i32 1319, ptr null, ptr null }, align 1
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016(%lu) %s %s :open dev=%s type=%s users=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@__tm6000_open._entry_ptr.26 = internal global ptr @__tm6000_open._entry.24, section ".printk_index", align 4
@v4l2_type_names = external dso_local local_unnamed_addr global [0 x ptr], align 4
@format = internal global { [3 x %struct.tm6000_fmt], [40 x i8] } { [3 x %struct.tm6000_fmt] [%struct.tm6000_fmt { i32 1448695129, i32 16 }, %struct.tm6000_fmt { i32 1498831189, i32 16 }, %struct.tm6000_fmt { i32 808865108, i32 16 }], [40 x i8] zeroinitializer }, align 32
@__tm6000_open._entry.27 = internal constant %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.6, i32 1344, ptr null, ptr null }, align 1
@.str.28 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016(%lu) %s %s :Open: fh=%p, dev=%p, dev->vidq=%p\0A\00", [46 x i8] zeroinitializer }, align 32
@__tm6000_open._entry_ptr.29 = internal global ptr @__tm6000_open._entry.27, section ".printk_index", align 4
@__tm6000_open._entry.30 = internal constant %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.6, i32 1346, ptr null, ptr null }, align 1
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016(%lu) %s %s :Open: list_empty queued=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@__tm6000_open._entry_ptr.32 = internal global ptr @__tm6000_open._entry.30, section ".printk_index", align 4
@__tm6000_open._entry.33 = internal constant %struct.pi_entry { ptr @.str.34, ptr @.str.23, ptr @.str.6, i32 1348, ptr null, ptr null }, align 1
@.str.34 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016(%lu) %s %s :Open: list_empty active=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@__tm6000_open._entry_ptr.35 = internal global ptr @__tm6000_open._entry.33, section ".printk_index", align 4
@tm6000_video_qops = internal constant { %struct.videobuf_queue_ops, [16 x i8] } { %struct.videobuf_queue_ops { ptr @buffer_setup, ptr @buffer_prepare, ptr @buffer_queue, ptr @buffer_release }, [16 x i8] zeroinitializer }, align 32
@__tm6000_open._entry.36 = internal constant %struct.pi_entry { ptr @.str.37, ptr @.str.23, ptr @.str.6, i32 1367, ptr null, ptr null }, align 1
@.str.37 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016(%lu) %s %s :video_open: setting radio device\0A\00", [47 x i8] zeroinitializer }, align 32
@__tm6000_open._entry_ptr.38 = internal global ptr @__tm6000_open._entry.36, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tm6000_prepare_isoc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.6, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\016(%lu) %s %s :Allocating %d x %d packets (%d bytes) of %d bytes each to handle %u size\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tm6000_prepare_isoc\00", [44 x i8] zeroinitializer }, align 32
@tm6000_prepare_isoc._entry_ptr = internal global ptr @tm6000_prepare_isoc._entry, section ".printk_index", align 4
@tm6000_prepare_isoc._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.6, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013tm6000 %s :cannot allocate memory for urb buffers\0A\00", [43 x i8] zeroinitializer }, align 32
@tm6000_prepare_isoc._entry_ptr.43 = internal global ptr @tm6000_prepare_isoc._entry.41, section ".printk_index", align 4
@tm6000_alloc_urb_buffers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.6, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013tm6000 %s :unable to allocate %i bytes for transfer buffer %i\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tm6000_alloc_urb_buffers\00", [39 x i8] zeroinitializer }, align 32
@tm6000_alloc_urb_buffers._entry_ptr = internal global ptr @tm6000_alloc_urb_buffers._entry, section ".printk_index", align 4
@tm6000_irq_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.6, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013tm6000 %s :urb completion error %d.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tm6000_irq_callback\00", [44 x i8] zeroinitializer }, align 32
@tm6000_irq_callback._entry_ptr = internal global ptr @tm6000_irq_callback._entry, section ".printk_index", align 4
@tm6000_irq_callback._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.6, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013tm6000 %s :urb resubmit failed (error=%i)\0A\00", [51 x i8] zeroinitializer }, align 32
@tm6000_irq_callback._entry_ptr.51 = internal global ptr @tm6000_irq_callback._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unlinked synchronously\00", [41 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unlinked asynchronously\00", [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Buffer error (overrun)\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Stalled (device not responding)\00", [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Babble (bad cable?)\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Bit-stuff error (bad cable?)\00", [35 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CRC/Timeout (could be anything)\00", [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Device does not respond\00", [40 x i8] zeroinitializer }, align 32
@print_err_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.6, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016(%lu) %s %s :URB status %d [%s].\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"print_err_status\00", [47 x i8] zeroinitializer }, align 32
@print_err_status._entry_ptr = internal global ptr @print_err_status._entry, section ".printk_index", align 4
@print_err_status._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.6, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016(%lu) %s %s :URB packet %d, status %d [%s].\0A\00", [49 x i8] zeroinitializer }, align 32
@print_err_status._entry_ptr.65 = internal global ptr @print_err_status._entry.63, section ".printk_index", align 4
@copy_multiplexed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.6, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016(%lu) %s %s :new buffer filled\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"copy_multiplexed\00", [47 x i8] zeroinitializer }, align 32
@copy_multiplexed._entry_ptr = internal global ptr @copy_multiplexed._entry, section ".printk_index", align 4
@get_next_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.6, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016(%lu) %s %s :No active queue to serve\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_next_buf\00", [19 x i8] zeroinitializer }, align 32
@get_next_buf._entry_ptr = internal global ptr @get_next_buf._entry, section ".printk_index", align 4
@buffer_filled._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.6, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016(%lu) %s %s :[%p/%d] wakeup\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"buffer_filled\00", [18 x i8] zeroinitializer }, align 32
@buffer_filled._entry_ptr = internal global ptr @buffer_filled._entry, section ".printk_index", align 4
@copy_streams._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.72, ptr @.str.6, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"copy_streams\00", [19 x i8] zeroinitializer }, align 32
@copy_streams._entry_ptr = internal global ptr @copy_streams._entry, section ".printk_index", align 4
@copy_streams._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.6, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016(%lu) %s %s :field %d, PTS %x\00", [32 x i8] zeroinitializer }, align 32
@copy_streams._entry_ptr.75 = internal global ptr @copy_streams._entry.73, section ".printk_index", align 4
@tm6000_start_thread.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dma_q->wq\00", [21 x i8] zeroinitializer }, align 32
@tm6000_start_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.6, i32 658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013tm6000 %s :submit of urb %i failed (error=%i)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tm6000_start_thread\00", [44 x i8] zeroinitializer }, align 32
@tm6000_start_thread._entry_ptr = internal global ptr @tm6000_start_thread._entry, section ".printk_index", align 4
@tm6000_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.6, i32 1464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016(%lu) %s %s :tm6000: close called (dev=%s, users=%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tm6000_release\00", [17 x i8] zeroinitializer }, align 32
@tm6000_release._entry_ptr = internal global ptr @tm6000_release._entry, section ".printk_index", align 4
@res_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.6, i32 842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016(%lu) %s %s :res: put\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"res_free\00", [23 x i8] zeroinitializer }, align 32
@res_free._entry_ptr = internal global ptr @res_free._entry, section ".printk_index", align 4
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tm6000\00", [25 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Trident TM5600/6000/6010\00", [39 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@vidioc_try_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.6, i32 915, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016(%lu) %s %s :Fourcc format (0x%08x) invalid.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vidioc_try_fmt_vid_cap\00", [41 x i8] zeroinitializer }, align 32
@vidioc_try_fmt_vid_cap._entry_ptr = internal global ptr @vidioc_try_fmt_vid_cap._entry, section ".printk_index", align 4
@iname = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr null, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91], [44 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Television\00", [21 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Composite 1\00", [20 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Composite 2\00", [20 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"S-Video\00", [24 x i8] zeroinitializer }, align 32
@vidioc_s_tuner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.6, i32 1209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016(%lu) %s %s :audio mode: %x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vidioc_s_tuner\00", [17 x i8] zeroinitializer }, align 32
@vidioc_s_tuner._entry_ptr = internal global ptr @vidioc_s_tuner._entry, section ".printk_index", align 4
@radio_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_ctrl_poll, ptr @video_ioctl2, ptr null, ptr null, ptr @tm6000_open, ptr @tm6000_release }, [60 x i8] zeroinitializer }, align 32
@radio_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @radio_g_tuner, ptr @radio_s_tuner, ptr @vidioc_g_frequency, ptr @vidioc_s_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Radio\00", [26 x i8] zeroinitializer }, align 32
@switch.table.tm6000_s_ctrl = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 9, i16 8, i16 10, i16 11], [24 x i8] zeroinitializer }, align 32
@switch.table.tm6000_open = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 0, i32 1], [20 x i8] zeroinitializer }, align 32
@switch.table.tm6000_open.95 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 4, i32 1], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 9963781, i64 9963785]
@__sancov_gen_cov_switch_values.96 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967186, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.97 = internal global [10 x i64] [i64 8, i64 32, i64 4294967192, i64 4294967212, i64 4294967221, i64 4294967225, i64 4294967233, i64 4294967234, i64 4294967264, i64 4294967294]
@__sancov_gen_cov_switch_values.98 = internal global [10 x i64] [i64 8, i64 32, i64 4294967192, i64 4294967212, i64 4294967221, i64 4294967225, i64 4294967233, i64 4294967234, i64 4294967264, i64 4294967294]
@__sancov_gen_cov_switch_values.99 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.100 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.102 = private unnamed_addr constant [13 x i8] c"tm6000_debug\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 50, i32 5 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1604, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1605, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [22 x i8] c"tm6000_radio_ctrl_ops\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1166, i32 35 }
@___asan_gen_.120 = private unnamed_addr constant [16 x i8] c"tm6000_ctrl_ops\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1143, i32 35 }
@___asan_gen_.123 = private unnamed_addr constant [16 x i8] c"tm6000_template\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1548, i32 28 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1628, i32 46 }
@___asan_gen_.129 = private unnamed_addr constant [9 x i8] c"video_nr\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 45, i32 12 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1643, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1648, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [22 x i8] c"tm6000_radio_template\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1574, i32 28 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1653, i32 11 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1659, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1664, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1668, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant [10 x i8] c"vid_limit\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 44, i32 21 }
@___asan_gen_.174 = private unnamed_addr constant [9 x i8] c"keep_urb\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 47, i32 13 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1595, i32 41 }
@___asan_gen_.180 = private unnamed_addr constant [12 x i8] c"tm6000_fops\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1513, i32 42 }
@___asan_gen_.183 = private unnamed_addr constant [16 x i8] c"video_ioctl_ops\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1523, i32 36 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 831, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1297, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1317, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 53, i32 26 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1343, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1345, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1347, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant [18 x i8] c"tm6000_video_qops\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 787, i32 40 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1367, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 599, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 605, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 479, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 433, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 449, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 328, i32 17 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 332, i32 12 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 335, i32 12 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 338, i32 12 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 341, i32 12 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 344, i32 12 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 347, i32 12 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 350, i32 12 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 353, i32 12 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 357, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 360, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 310, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 86, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 103, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 197, i32 7 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 255, i32 5 }
@___asan_gen_.342 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 651, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 657, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1463, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 842, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 854, i32 23 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 855, i32 21 }
@___asan_gen_.382 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 912, i32 31 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 914, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant [6 x i8] c"iname\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1056, i32 20 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1057, i32 22 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1058, i32 30 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1059, i32 30 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1060, i32 26 }
@___asan_gen_.408 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1209, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant [11 x i8] c"radio_fops\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1556, i32 42 }
@___asan_gen_.420 = private unnamed_addr constant [16 x i8] c"radio_ioctl_ops\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1564, i32 36 }
@___asan_gen_.423 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.424 = private constant [43 x i8] c"../drivers/media/usb/tm6000/tm6000-video.c\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1261, i32 19 }
@___asan_gen_.426 = private unnamed_addr constant [27 x i8] c"switch.table.tm6000_s_ctrl\00", align 1
@___asan_gen_.427 = private unnamed_addr constant [25 x i8] c"switch.table.tm6000_open\00", align 1
@___asan_gen_.428 = private unnamed_addr constant [28 x i8] c"switch.table.tm6000_open.95\00", align 1
@llvm.compiler.used = appending global [159 x ptr] [ptr @__UNIQUE_ID_debug308, ptr @__UNIQUE_ID_debugtype307, ptr @__UNIQUE_ID_keep_urb312, ptr @__UNIQUE_ID_keep_urbtype311, ptr @__UNIQUE_ID_vid_limit310, ptr @__UNIQUE_ID_vid_limittype309, ptr @__UNIQUE_ID_video_nr306, ptr @__UNIQUE_ID_video_nrtype305, ptr @__ksymtab_tm6000_debug, ptr @__param_debug, ptr @__param_keep_urb, ptr @__param_vid_limit, ptr @__param_video_nr, ptr @__tm6000_open._entry, ptr @__tm6000_open._entry.24, ptr @__tm6000_open._entry.27, ptr @__tm6000_open._entry.30, ptr @__tm6000_open._entry.33, ptr @__tm6000_open._entry.36, ptr @__tm6000_open._entry_ptr, ptr @__tm6000_open._entry_ptr.26, ptr @__tm6000_open._entry_ptr.29, ptr @__tm6000_open._entry_ptr.32, ptr @__tm6000_open._entry_ptr.35, ptr @__tm6000_open._entry_ptr.38, ptr @buffer_filled._entry, ptr @buffer_filled._entry_ptr, ptr @copy_multiplexed._entry, ptr @copy_multiplexed._entry_ptr, ptr @copy_streams._entry, ptr @copy_streams._entry.73, ptr @copy_streams._entry_ptr, ptr @copy_streams._entry_ptr.75, ptr @get_next_buf._entry, ptr @get_next_buf._entry_ptr, ptr @print_err_status._entry, ptr @print_err_status._entry.63, ptr @print_err_status._entry_ptr, ptr @print_err_status._entry_ptr.65, ptr @res_free._entry, ptr @res_free._entry_ptr, ptr @res_get._entry, ptr @res_get._entry_ptr, ptr @tm6000_alloc_urb_buffers._entry, ptr @tm6000_alloc_urb_buffers._entry_ptr, ptr @tm6000_irq_callback._entry, ptr @tm6000_irq_callback._entry.49, ptr @tm6000_irq_callback._entry_ptr, ptr @tm6000_irq_callback._entry_ptr.51, ptr @tm6000_prepare_isoc._entry, ptr @tm6000_prepare_isoc._entry.41, ptr @tm6000_prepare_isoc._entry_ptr, ptr @tm6000_prepare_isoc._entry_ptr.43, ptr @tm6000_release._entry, ptr @tm6000_release._entry_ptr, ptr @tm6000_start_thread._entry, ptr @tm6000_start_thread._entry_ptr, ptr @tm6000_v4l2_register._entry, ptr @tm6000_v4l2_register._entry.11, ptr @tm6000_v4l2_register._entry.14, ptr @tm6000_v4l2_register._entry.16, ptr @tm6000_v4l2_register._entry.7, ptr @tm6000_v4l2_register._entry_ptr, ptr @tm6000_v4l2_register._entry_ptr.13, ptr @tm6000_v4l2_register._entry_ptr.15, ptr @tm6000_v4l2_register._entry_ptr.18, ptr @tm6000_v4l2_register._entry_ptr.9, ptr @vidioc_s_tuner._entry, ptr @vidioc_s_tuner._entry_ptr, ptr @vidioc_try_fmt_vid_cap._entry, ptr @vidioc_try_fmt_vid_cap._entry_ptr, ptr @tm6000_debug, ptr @tm6000_v4l2_register._key, ptr @.str, ptr @tm6000_v4l2_register._key.1, ptr @.str.2, ptr @tm6000_radio_ctrl_ops, ptr @tm6000_ctrl_ops, ptr @tm6000_template, ptr @.str.3, ptr @video_nr, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @tm6000_radio_template, ptr @.str.10, ptr @.str.12, ptr @.str.17, ptr @vid_limit, ptr @keep_urb, ptr @.str.19, ptr @tm6000_fops, ptr @video_ioctl_ops, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @format, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @tm6000_video_qops, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @tm6000_start_thread.__key, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @iname, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @radio_fops, ptr @radio_ioctl_ops, ptr @.str.94, ptr @switch.table.tm6000_s_ctrl, ptr @switch.table.tm6000_open, ptr @switch.table.tm6000_open.95], section "llvm.metadata"
@0 = internal global [111 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_v4l2_register._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_v4l2_register._key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_radio_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_nr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_v4l2_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_v4l2_register._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_radio_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_v4l2_register._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_v4l2_register._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_v4l2_register._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vid_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keep_urb to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @res_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_video_qops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_prepare_isoc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_prepare_isoc._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_alloc_urb_buffers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_irq_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_irq_callback._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_err_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_err_status._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_multiplexed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_next_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_filled._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_streams._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_streams._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_start_thread.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_start_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @res_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_try_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iname to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_tuner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tm6000_s_ctrl to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tm6000_open to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tm6000_open.95 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tm6000_v4l2_register(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 29
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 6, ptr noundef nonnull @tm6000_v4l2_register._key, ptr noundef nonnull @.str) #10
  %radio_ctrl_handler = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 30
  %call2 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %radio_ctrl_handler, i32 noundef 2, ptr noundef nonnull @tm6000_v4l2_register._key.1, ptr noundef nonnull @.str.2) #10
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %radio_ctrl_handler, ptr noundef nonnull @tm6000_radio_ctrl_ops, i32 noundef 9963785, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #10
  %call6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %radio_ctrl_handler, ptr noundef nonnull @tm6000_radio_ctrl_ops, i32 noundef 9963781, i64 noundef -15, i64 noundef 15, i64 noundef 1, i64 noundef 0) #10
  %call8 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @tm6000_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 54) #10
  %call10 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @tm6000_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 119) #10
  %call12 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @tm6000_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 112) #10
  %call14 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @tm6000_ctrl_ops, i32 noundef 9963779, i64 noundef -128, i64 noundef 127, i64 noundef 1, i64 noundef 0) #10
  %call17 = tail call i32 @v4l2_ctrl_add_handler(ptr noundef %ctrl_handler, ptr noundef %radio_ctrl_handler, ptr noundef null, i1 noundef zeroext false) #10
  %error = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 30, i32 9
  %0 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end28, label %entry.free_ctrl_crit_edge

entry.free_ctrl_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_ctrl

if.end28:                                         ; preds = %entry
  %error23 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 29, i32 9
  %2 = ptrtoint ptr %error23 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool29.not = icmp eq i32 %3, 0
  br i1 %tobool29.not, label %if.end31, label %if.end28.free_ctrl_crit_edge

if.end28.free_ctrl_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_ctrl

if.end31:                                         ; preds = %if.end28
  %vfd = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 25
  %4 = call ptr @memcpy(ptr %vfd, ptr @tm6000_template, i32 1352)
  %v4l2_dev.i = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 28
  %v4l2_dev1.i = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 25, i32 7
  %5 = ptrtoint ptr %v4l2_dev1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %v4l2_dev.i, ptr %v4l2_dev1.i, align 4
  %release.i = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 25, i32 23
  %6 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @video_device_release_empty, ptr %release.i, align 8
  %lock.i = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 45
  %lock2.i = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 25, i32 26
  %7 = ptrtoint ptr %lock2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %lock.i, ptr %lock2.i, align 8
  %name.i = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 25, i32 12
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 32, ptr noundef nonnull @.str.19, ptr noundef %dev, ptr noundef nonnull @.str.3) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 25, i32 5, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %driver_data.i.i.i, align 4
  %ctrl_handler34 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 25, i32 9
  %9 = ptrtoint ptr %ctrl_handler34 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ctrl_handler, ptr %ctrl_handler34, align 4
  %device_caps = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 25, i32 4
  %tuner_type = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 12
  %10 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tuner_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp.not = icmp eq i32 %11, 4
  %spec.store.select = select i1 %cmp.not, i32 83886081, i32 83951617
  %12 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.store.select, ptr %device_caps, align 8
  %vidq = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 27
  %13 = ptrtoint ptr %vidq to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %vidq, ptr %vidq, align 4
  %prev.i = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 27, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %vidq, ptr %prev.i, align 4
  %queued = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 27, i32 1
  %15 = ptrtoint ptr %queued to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %queued, ptr %queued, align 4
  %prev.i141 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 27, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i141 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %queued, ptr %prev.i141, align 4
  %17 = load i32, ptr @video_nr, align 4
  %fops.i = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 25, i32 3
  %18 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fops.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call.i142 = tail call i32 @__video_register_device(ptr noundef %vfd, i32 noundef 0, i32 noundef %17, i32 noundef 1, ptr noundef %21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %cmp43 = icmp slt i32 %call.i142, 0
  br i1 %cmp43, label %do.end, label %do.end50

do.end:                                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %dev) #13
  br label %free_ctrl

do.end50:                                         ; preds = %if.end31
  %init_name.i.i = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 25, i32 5, i32 3
  %22 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end50.video_device_node_name.exit_crit_edge

do.end50.video_device_node_name.exit_crit_edge:   ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 25, i32 5
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end50.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %25, %if.end.i.i ], [ %23, %do.end50.video_device_node_name.exit_crit_edge ]
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef %retval.0.i.i) #13
  %caps = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 10
  %26 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load = load i8, ptr %caps, align 4
  %27 = and i8 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool57.not = icmp eq i8 %27, 0
  br i1 %tobool57.not, label %video_device_node_name.exit.do.end88_crit_edge, label %if.then58

video_device_node_name.exit.do.end88_crit_edge:   ; preds = %video_device_node_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end88

if.then58:                                        ; preds = %video_device_node_name.exit
  %radio_dev = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 26
  %28 = call ptr @memcpy(ptr %radio_dev, ptr @tm6000_radio_template, i32 1352)
  %v4l2_dev1.i144 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 26, i32 7
  %29 = ptrtoint ptr %v4l2_dev1.i144 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %v4l2_dev.i, ptr %v4l2_dev1.i144, align 4
  %release.i145 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 26, i32 23
  %30 = ptrtoint ptr %release.i145 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @video_device_release_empty, ptr %release.i145, align 8
  %lock2.i147 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 26, i32 26
  %31 = ptrtoint ptr %lock2.i147 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %lock.i, ptr %lock2.i147, align 8
  %name.i148 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 26, i32 12
  %call.i149 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i148, i32 noundef 32, ptr noundef nonnull @.str.19, ptr noundef %dev, ptr noundef nonnull @.str.10) #10
  %driver_data.i.i.i150 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 26, i32 5, i32 8
  %32 = ptrtoint ptr %driver_data.i.i.i150 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %dev, ptr %driver_data.i.i.i150, align 4
  %ctrl_handler61 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 26, i32 9
  %33 = ptrtoint ptr %ctrl_handler61 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %radio_ctrl_handler, ptr %ctrl_handler61, align 4
  %device_caps63 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 26, i32 4
  %34 = ptrtoint ptr %device_caps63 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 327680, ptr %device_caps63, align 8
  %fops.i151 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 26, i32 3
  %35 = ptrtoint ptr %fops.i151 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fops.i151, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %call.i152 = tail call i32 @__video_register_device(ptr noundef %radio_dev, i32 noundef 2, i32 noundef -1, i32 noundef 1, ptr noundef %38) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %cmp66 = icmp slt i32 %call.i152, 0
  br i1 %cmp66, label %do.end70, label %do.end78

do.end70:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %dev) #13
  tail call void @video_unregister_device(ptr noundef %vfd) #10
  br label %free_ctrl

do.end78:                                         ; preds = %if.then58
  %init_name.i.i153 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 26, i32 5, i32 3
  %39 = ptrtoint ptr %init_name.i.i153 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i.i153, align 8
  %tobool.not.i.i154 = icmp eq ptr %40, null
  br i1 %tobool.not.i.i154, label %if.end.i.i156, label %do.end78.video_device_node_name.exit158_crit_edge

do.end78.video_device_node_name.exit158_crit_edge: ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %video_device_node_name.exit158

if.end.i.i156:                                    ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i155 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 26, i32 5
  %41 = ptrtoint ptr %dev.i155 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i155, align 4
  br label %video_device_node_name.exit158

video_device_node_name.exit158:                   ; preds = %if.end.i.i156, %do.end78.video_device_node_name.exit158_crit_edge
  %retval.0.i.i157 = phi ptr [ %42, %if.end.i.i156 ], [ %40, %do.end78.video_device_node_name.exit158_crit_edge ]
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef %retval.0.i.i157) #13
  br label %do.end88

do.end88:                                         ; preds = %video_device_node_name.exit158, %video_device_node_name.exit.do.end88_crit_edge
  %ret.2 = phi i32 [ %call.i152, %video_device_node_name.exit158 ], [ %call.i142, %video_device_node_name.exit.do.end88_crit_edge ]
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %ret.2) #13
  br label %cleanup

free_ctrl:                                        ; preds = %do.end70, %do.end, %if.end28.free_ctrl_crit_edge, %entry.free_ctrl_crit_edge
  %ret.3 = phi i32 [ %3, %if.end28.free_ctrl_crit_edge ], [ %call.i142, %do.end ], [ %call.i152, %do.end70 ], [ %1, %entry.free_ctrl_crit_edge ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #10
  tail call void @v4l2_ctrl_handler_free(ptr noundef %radio_ctrl_handler) #10
  br label %cleanup

cleanup:                                          ; preds = %free_ctrl, %do.end88
  %retval.0 = phi i32 [ %ret.3, %free_ctrl ], [ %ret.2, %do.end88 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_add_handler(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tm6000_v4l2_unregister(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vfd = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 25
  tail call void @video_unregister_device(ptr noundef %vfd) #10
  tail call fastcc void @tm6000_free_urb_buffers(ptr noundef %dev)
  %radio_dev = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 26
  tail call void @video_unregister_device(ptr noundef %radio_dev) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tm6000_free_urb_buffers(ptr nocapture noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %urb_buffer = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 57
  %0 = ptrtoint ptr %urb_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %urb_buffer, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %udev = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 47
  %urb_size = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 59
  %urb_dma = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 58
  %2 = ptrtoint ptr %urb_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb_buffer, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %for.cond.preheader.for.inc_crit_edge, label %if.then3

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then3:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 8
  %8 = ptrtoint ptr %urb_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %urb_size, align 8
  %10 = ptrtoint ptr %urb_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %urb_dma, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  tail call void @usb_free_coherent(ptr noundef %7, i32 noundef %9, ptr noundef nonnull %5, i32 noundef %13) #10
  %14 = ptrtoint ptr %urb_buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %urb_buffer, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %15, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %for.cond.preheader.for.inc_crit_edge
  %17 = ptrtoint ptr %urb_buffer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %urb_buffer, align 8
  %arrayidx.1 = getelementptr ptr, ptr %18, i32 1
  %19 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.1, align 4
  %tobool2.not.1 = icmp eq ptr %20, null
  br i1 %tobool2.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then3.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then3.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %udev, align 8
  %23 = ptrtoint ptr %urb_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %urb_size, align 8
  %25 = ptrtoint ptr %urb_dma to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %urb_dma, align 4
  %arrayidx6.1 = getelementptr i32, ptr %26, i32 1
  %27 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx6.1, align 4
  tail call void @usb_free_coherent(ptr noundef %22, i32 noundef %24, ptr noundef nonnull %20, i32 noundef %28) #10
  %29 = ptrtoint ptr %urb_buffer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %urb_buffer, align 8
  %arrayidx8.1 = getelementptr ptr, ptr %30, i32 1
  %31 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %arrayidx8.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then3.1, %for.inc.for.inc.1_crit_edge
  %32 = ptrtoint ptr %urb_buffer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %urb_buffer, align 8
  %arrayidx.2 = getelementptr ptr, ptr %33, i32 2
  %34 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.2, align 4
  %tobool2.not.2 = icmp eq ptr %35, null
  br i1 %tobool2.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then3.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then3.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %udev, align 8
  %38 = ptrtoint ptr %urb_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %urb_size, align 8
  %40 = ptrtoint ptr %urb_dma to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %urb_dma, align 4
  %arrayidx6.2 = getelementptr i32, ptr %41, i32 2
  %42 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx6.2, align 4
  tail call void @usb_free_coherent(ptr noundef %37, i32 noundef %39, ptr noundef nonnull %35, i32 noundef %43) #10
  %44 = ptrtoint ptr %urb_buffer to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %urb_buffer, align 8
  %arrayidx8.2 = getelementptr ptr, ptr %45, i32 2
  %46 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %arrayidx8.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then3.2, %for.inc.1.for.inc.2_crit_edge
  %47 = ptrtoint ptr %urb_buffer to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %urb_buffer, align 8
  %arrayidx.3 = getelementptr ptr, ptr %48, i32 3
  %49 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.3, align 4
  %tobool2.not.3 = icmp eq ptr %50, null
  br i1 %tobool2.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then3.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.then3.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %udev, align 8
  %53 = ptrtoint ptr %urb_size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %urb_size, align 8
  %55 = ptrtoint ptr %urb_dma to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %urb_dma, align 4
  %arrayidx6.3 = getelementptr i32, ptr %56, i32 3
  %57 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx6.3, align 4
  tail call void @usb_free_coherent(ptr noundef %52, i32 noundef %54, ptr noundef nonnull %50, i32 noundef %58) #10
  %59 = ptrtoint ptr %urb_buffer to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %urb_buffer, align 8
  %arrayidx8.3 = getelementptr ptr, ptr %60, i32 3
  %61 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %arrayidx8.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then3.3, %for.inc.2.for.inc.3_crit_edge
  %62 = ptrtoint ptr %urb_buffer to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %urb_buffer, align 8
  %arrayidx.4 = getelementptr ptr, ptr %63, i32 4
  %64 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.4, align 4
  %tobool2.not.4 = icmp eq ptr %65, null
  br i1 %tobool2.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then3.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.then3.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %udev, align 8
  %68 = ptrtoint ptr %urb_size to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %urb_size, align 8
  %70 = ptrtoint ptr %urb_dma to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %urb_dma, align 4
  %arrayidx6.4 = getelementptr i32, ptr %71, i32 4
  %72 = ptrtoint ptr %arrayidx6.4 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx6.4, align 4
  tail call void @usb_free_coherent(ptr noundef %67, i32 noundef %69, ptr noundef nonnull %65, i32 noundef %73) #10
  %74 = ptrtoint ptr %urb_buffer to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %urb_buffer, align 8
  %arrayidx8.4 = getelementptr ptr, ptr %75, i32 4
  %76 = ptrtoint ptr %arrayidx8.4 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %arrayidx8.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then3.4, %for.inc.3.for.inc.4_crit_edge
  %77 = ptrtoint ptr %urb_buffer to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %urb_buffer, align 8
  %arrayidx.5 = getelementptr ptr, ptr %78, i32 5
  %79 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.5, align 4
  %tobool2.not.5 = icmp eq ptr %80, null
  br i1 %tobool2.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then3.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.then3.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %udev, align 8
  %83 = ptrtoint ptr %urb_size to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %urb_size, align 8
  %85 = ptrtoint ptr %urb_dma to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %urb_dma, align 4
  %arrayidx6.5 = getelementptr i32, ptr %86, i32 5
  %87 = ptrtoint ptr %arrayidx6.5 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx6.5, align 4
  tail call void @usb_free_coherent(ptr noundef %82, i32 noundef %84, ptr noundef nonnull %80, i32 noundef %88) #10
  %89 = ptrtoint ptr %urb_buffer to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %urb_buffer, align 8
  %arrayidx8.5 = getelementptr ptr, ptr %90, i32 5
  %91 = ptrtoint ptr %arrayidx8.5 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %arrayidx8.5, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then3.5, %for.inc.4.for.inc.5_crit_edge
  %92 = ptrtoint ptr %urb_buffer to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %urb_buffer, align 8
  %arrayidx.6 = getelementptr ptr, ptr %93, i32 6
  %94 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.6, align 4
  %tobool2.not.6 = icmp eq ptr %95, null
  br i1 %tobool2.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then3.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

if.then3.6:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  %96 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %udev, align 8
  %98 = ptrtoint ptr %urb_size to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %urb_size, align 8
  %100 = ptrtoint ptr %urb_dma to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %urb_dma, align 4
  %arrayidx6.6 = getelementptr i32, ptr %101, i32 6
  %102 = ptrtoint ptr %arrayidx6.6 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx6.6, align 4
  tail call void @usb_free_coherent(ptr noundef %97, i32 noundef %99, ptr noundef nonnull %95, i32 noundef %103) #10
  %104 = ptrtoint ptr %urb_buffer to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %urb_buffer, align 8
  %arrayidx8.6 = getelementptr ptr, ptr %105, i32 6
  %106 = ptrtoint ptr %arrayidx8.6 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %arrayidx8.6, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then3.6, %for.inc.5.for.inc.6_crit_edge
  %107 = ptrtoint ptr %urb_buffer to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %urb_buffer, align 8
  %arrayidx.7 = getelementptr ptr, ptr %108, i32 7
  %109 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx.7, align 4
  %tobool2.not.7 = icmp eq ptr %110, null
  br i1 %tobool2.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then3.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.7

if.then3.7:                                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  %111 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %udev, align 8
  %113 = ptrtoint ptr %urb_size to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %urb_size, align 8
  %115 = ptrtoint ptr %urb_dma to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %urb_dma, align 4
  %arrayidx6.7 = getelementptr i32, ptr %116, i32 7
  %117 = ptrtoint ptr %arrayidx6.7 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx6.7, align 4
  tail call void @usb_free_coherent(ptr noundef %112, i32 noundef %114, ptr noundef nonnull %110, i32 noundef %118) #10
  %119 = ptrtoint ptr %urb_buffer to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %urb_buffer, align 8
  %arrayidx8.7 = getelementptr ptr, ptr %120, i32 7
  %121 = ptrtoint ptr %arrayidx8.7 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %arrayidx8.7, align 4
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then3.7, %for.inc.6.for.inc.7_crit_edge
  %122 = ptrtoint ptr %urb_buffer to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %urb_buffer, align 8
  tail call void @kfree(ptr noundef %123) #10
  %124 = ptrtoint ptr %urb_dma to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %urb_dma, align 4
  tail call void @kfree(ptr noundef %125) #10
  %126 = ptrtoint ptr %urb_buffer to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr null, ptr %urb_buffer, align 8
  %127 = ptrtoint ptr %urb_dma to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %urb_dma, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.inc.7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tm6000_v4l2_exit() local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm6000_radio_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -5888
  %val1 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %2 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val1, align 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 9963785, label %sw.bb
    i32 9963781, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = trunc i32 %3 to i8
  %conv2 = and i32 %3, 255
  %ctl_mute = getelementptr i8, ptr %1, i32 280
  %7 = ptrtoint ptr %ctl_mute to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv2, ptr %ctl_mute, align 8
  %call = tail call i32 @tm6000_tvaudio_set_mute(ptr noundef %add.ptr, i8 noundef zeroext %conv) #10
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv4 = and i32 %3, 255
  %ctl_volume = getelementptr i8, ptr %1, i32 284
  %8 = ptrtoint ptr %ctl_volume to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv4, ptr %ctl_volume, align 4
  tail call void @tm6000_set_volume(ptr noundef %add.ptr, i32 noundef %conv4) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb3 ], [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tm6000_tvaudio_set_mute(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tm6000_set_volume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm6000_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  %switch.tableidx = add i32 %1, -9963776
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 4
  br i1 %2, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %val1 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %3 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val1, align 4
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %5 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 -5704
  %switch.gep = getelementptr inbounds [4 x i16], ptr @switch.table.tm6000_s_ctrl, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %7)
  %switch.load = load i16, ptr %switch.gep, align 2
  %8 = trunc i32 %4 to i16
  %conv10 = and i16 %8, 255
  %call11 = tail call i32 @tm6000_set_reg(ptr noundef %add.ptr, i8 noundef zeroext 7, i16 noundef zeroext %switch.load, i16 noundef zeroext %conv10) #10
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tm6000_set_reg(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm6000_read(ptr nocapture noundef readonly %file, ptr noundef %data, i32 noundef %count, ptr noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev1 = getelementptr inbounds %struct.tm6000_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %type = getelementptr inbounds %struct.tm6000_fh, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %entry.cleanup10_crit_edge

entry.cleanup10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup10

if.then:                                          ; preds = %entry
  %resources.i = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 23
  %6 = ptrtoint ptr %resources.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resources.i, align 4
  %cmp.i = icmp eq ptr %7, %1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then
  %is_res_read1.i = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 24
  %8 = ptrtoint ptr %is_res_read1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_res_read1.i, align 8, !range !249
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp4.i = icmp eq i8 %9, 1
  br i1 %cmp4.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %tobool7.not.i = icmp eq ptr %7, null
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end.i.cleanup10_crit_edge

if.end.i.cleanup10_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup10

if.end9.i:                                        ; preds = %if.end.i
  %10 = ptrtoint ptr %resources.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %resources.i, align 4
  %is_res_read12.i = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 24
  %11 = ptrtoint ptr %is_res_read12.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %is_res_read12.i, align 8
  %12 = load i32, ptr @tm6000_debug, align 4
  %and.i = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool14.not.i, label %if.end9.i.if.end_crit_edge, label %do.end.i

if.end9.i.if.end_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end.i:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %13, ptr noundef %3, ptr noundef nonnull @.str.21) #13
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.end9.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge
  %lock = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 45
  %call4 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup10_crit_edge

if.end.cleanup10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup10

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %vb_vidq = getelementptr inbounds %struct.tm6000_fh, ptr %1, i32 0, i32 6
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %14 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %f_flags, align 4
  %and = and i32 %15, 2048
  %call7 = tail call i32 @videobuf_read_stream(ptr noundef %vb_vidq, ptr noundef %data, i32 noundef %count, ptr noundef %pos, i32 noundef 0, i32 noundef %and) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup10

cleanup10:                                        ; preds = %if.end6, %if.end.cleanup10_crit_edge, %if.end.i.cleanup10_crit_edge, %entry.cleanup10_crit_edge
  %retval.1 = phi i32 [ %call7, %if.end6 ], [ -512, %if.end.cleanup10_crit_edge ], [ 0, %entry.cleanup10_crit_edge ], [ -16, %if.end.i.cleanup10_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm6000_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev1 = getelementptr inbounds %struct.tm6000_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %lock = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 45
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %tobool.not.i.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i.i, label %entry.poll_requested_events.exit.i_crit_edge, label %cond.true.i.i

entry.poll_requested_events.exit.i_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_requested_events.exit.i

cond.true.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %_key.i.i = getelementptr inbounds %struct.poll_table_struct, ptr %wait, i32 0, i32 1
  %4 = ptrtoint ptr %_key.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %_key.i.i, align 4
  %phi.bo.i = and i32 %5, 2
  br label %poll_requested_events.exit.i

poll_requested_events.exit.i:                     ; preds = %cond.true.i.i, %entry.poll_requested_events.exit.i_crit_edge
  %cond.i.i = phi i32 [ %phi.bo.i, %cond.true.i.i ], [ 2, %entry.poll_requested_events.exit.i_crit_edge ]
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %call2.i = tail call i32 @v4l2_event_pending(ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %poll_requested_events.exit.i.if.end7.i_crit_edge

poll_requested_events.exit.i.if.end7.i_crit_edge: ; preds = %poll_requested_events.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.else.i:                                        ; preds = %poll_requested_events.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i)
  %tobool3.not.i = icmp eq i32 %cond.i.i, 0
  br i1 %tobool3.not.i, label %if.else.i.if.end7.i_crit_edge, label %if.then4.i

if.else.i.if.end7.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.else.i
  %wait6.i = getelementptr inbounds %struct.v4l2_fh, ptr %7, i32 0, i32 4
  br i1 %tobool.not.i.i, label %if.then4.i.if.end7.i_crit_edge, label %land.lhs.true.i.i

if.then4.i.if.end7.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

land.lhs.true.i.i:                                ; preds = %if.then4.i
  %8 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wait, align 4
  %tobool1.not.i.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.if.end7.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.end7.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %9(ptr noundef %file, ptr noundef nonnull %wait6.i, ptr noundef nonnull %wait) #10
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end7.i_crit_edge, %if.then4.i.if.end7.i_crit_edge, %if.else.i.if.end7.i_crit_edge, %poll_requested_events.exit.i.if.end7.i_crit_edge
  %res.0.i = phi i32 [ 0, %if.else.i.if.end7.i_crit_edge ], [ 2, %poll_requested_events.exit.i.if.end7.i_crit_edge ], [ 0, %if.then4.i.if.end7.i_crit_edge ], [ 0, %land.lhs.true.i.i.if.end7.i_crit_edge ], [ 0, %if.then.i.i ]
  %type.i = getelementptr inbounds %struct.tm6000_fh, ptr %7, i32 0, i32 7
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 1
  br i1 %cmp.not.i, label %if.end9.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %or.i = or i32 %res.0.i, 8
  br label %__tm6000_poll.exit

if.end9.i:                                        ; preds = %if.end7.i
  %dev.i = getelementptr inbounds %struct.tm6000_fh, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %resources.i.i = getelementptr inbounds %struct.tm6000_core, ptr %13, i32 0, i32 23
  %14 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %resources.i.i, align 4
  %cmp.i.i = icmp eq ptr %15, %7
  br i1 %cmp.i.i, label %if.then11.i, label %if.then16.i

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %or12.i = or i32 %res.0.i, 8
  br label %__tm6000_poll.exit

if.then16.i:                                      ; preds = %if.end9.i
  %stream.i = getelementptr inbounds %struct.tm6000_fh, ptr %7, i32 0, i32 6, i32 13
  %16 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %stream.i, align 4
  %cmp.i73.not.i = icmp eq ptr %17, %stream.i
  br i1 %cmp.i73.not.i, label %if.then19.i, label %if.end21.i

if.then19.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  %or20.i = or i32 %res.0.i, 8
  br label %__tm6000_poll.exit

if.end21.i:                                       ; preds = %if.then16.i
  %done.i = getelementptr i8, ptr %17, i32 16
  br i1 %tobool.not.i.i, label %if.end21.i.poll_wait.exit81.i_crit_edge, label %land.lhs.true.i78.i

if.end21.i.poll_wait.exit81.i_crit_edge:          ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_wait.exit81.i

land.lhs.true.i78.i:                              ; preds = %if.end21.i
  %18 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wait, align 4
  %tobool1.not.i75.i = icmp eq ptr %19, null
  %tobool3.not.i76.i = icmp eq ptr %done.i, null
  %or.cond.i77.i = or i1 %tobool3.not.i76.i, %tobool1.not.i75.i
  br i1 %or.cond.i77.i, label %land.lhs.true.i78.i.poll_wait.exit81.i_crit_edge, label %if.then.i79.i

land.lhs.true.i78.i.poll_wait.exit81.i_crit_edge: ; preds = %land.lhs.true.i78.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_wait.exit81.i

if.then.i79.i:                                    ; preds = %land.lhs.true.i78.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %19(ptr noundef %file, ptr noundef nonnull %done.i, ptr noundef nonnull %wait) #10
  br label %poll_wait.exit81.i

poll_wait.exit81.i:                               ; preds = %if.then.i79.i, %land.lhs.true.i78.i.poll_wait.exit81.i_crit_edge, %if.end21.i.poll_wait.exit81.i_crit_edge
  %state.i = getelementptr i8, ptr %17, i32 -4
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state.i, align 4
  %22 = and i32 %21, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %switch.i = icmp eq i32 %22, 4
  %or31.i = or i32 %res.0.i, 65
  %spec.select.i = select i1 %switch.i, i32 %or31.i, i32 %res.0.i
  br label %__tm6000_poll.exit

__tm6000_poll.exit:                               ; preds = %poll_wait.exit81.i, %if.then19.i, %if.then11.i, %if.then8.i
  %retval.0.i = phi i32 [ %or.i, %if.then8.i ], [ %or12.i, %if.then11.i ], [ %or20.i, %if.then19.i ], [ %spec.select.i, %poll_wait.exit81.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm6000_mmap(ptr nocapture noundef readonly %file, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev1 = getelementptr inbounds %struct.tm6000_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %lock = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 45
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %vb_vidq = getelementptr inbounds %struct.tm6000_fh, ptr %1, i32 0, i32 6
  %call2 = tail call i32 @videobuf_mmap_mapper(ptr noundef %vb_vidq, ptr noundef %vma) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -512, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm6000_open(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #10
  %lock = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 26
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 8
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #10
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %call.i.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %4 = load i32, ptr @tm6000_debug, align 4
  %and.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.end6.i_crit_edge, label %do.end.i

entry.do.end6.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6.i

do.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %init_name.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 3
  %6 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.video_device_node_name.exit.i_crit_edge

do.end.i.video_device_node_name.exit.i_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %video_device_node_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i, align 4
  br label %video_device_node_name.exit.i

video_device_node_name.exit.i:                    ; preds = %if.end.i.i.i, %do.end.i.video_device_node_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %9, %if.end.i.i.i ], [ %7, %do.end.i.video_device_node_name.exit.i_crit_edge ]
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %5, ptr noundef %3, ptr noundef nonnull @.str.23, ptr noundef %retval.0.i.i.i) #13
  br label %do.end6.i

do.end6.i:                                        ; preds = %video_device_node_name.exit.i, %entry.do.end6.i_crit_edge
  %vfl_type.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 13
  %10 = ptrtoint ptr %vfl_type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vfl_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %12 = icmp ult i32 %11, 3
  br i1 %12, label %switch.lookup, label %do.end6.i.__tm6000_open.exit_crit_edge

do.end6.i.__tm6000_open.exit_crit_edge:           ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__tm6000_open.exit

switch.lookup:                                    ; preds = %do.end6.i
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.tm6000_open, i32 0, i32 %11
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep13 = getelementptr inbounds [3 x i32], ptr @switch.table.tm6000_open.95, i32 0, i32 %11
  %14 = ptrtoint ptr %switch.gep13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load14 = load i32, ptr %switch.gep13, align 4
  %users.i = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 22
  %15 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %users.i, align 8
  %inc.i = add i32 %16, 1
  store i32 %inc.i, ptr %users.i, align 8
  %17 = load i32, ptr @tm6000_debug, align 4
  %and10.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %switch.lookup.do.end24.i_crit_edge, label %do.end15.i

switch.lookup.do.end24.i_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24.i

do.end15.i:                                       ; preds = %switch.lookup
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %init_name.i.i202.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 3
  %19 = ptrtoint ptr %init_name.i.i202.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i.i202.i, align 8
  %tobool.not.i.i203.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i203.i, label %if.end.i.i205.i, label %do.end15.i.video_device_node_name.exit207.i_crit_edge

do.end15.i.video_device_node_name.exit207.i_crit_edge: ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %video_device_node_name.exit207.i

if.end.i.i205.i:                                  ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i204.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5
  %21 = ptrtoint ptr %dev.i204.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i204.i, align 4
  br label %video_device_node_name.exit207.i

video_device_node_name.exit207.i:                 ; preds = %if.end.i.i205.i, %do.end15.i.video_device_node_name.exit207.i_crit_edge
  %retval.0.i.i206.i = phi ptr [ %22, %if.end.i.i205.i ], [ %20, %do.end15.i.video_device_node_name.exit207.i_crit_edge ]
  %arrayidx.i = getelementptr [0 x ptr], ptr @v4l2_type_names, i32 0, i32 %switch.load14
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %18, ptr noundef %3, ptr noundef nonnull @.str.23, ptr noundef %retval.0.i.i206.i, ptr noundef %24, i32 noundef %inc.i) #13
  br label %do.end24.i

do.end24.i:                                       ; preds = %video_device_node_name.exit207.i, %switch.lookup.do.end24.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 548) #14
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %if.then26.i, label %format_by_fourcc.exit.i

if.then26.i:                                      ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %users.i, align 8
  %dec.i = add i32 %27, -1
  store i32 %dec.i, ptr %users.i, align 8
  br label %__tm6000_open.exit

format_by_fourcc.exit.i:                          ; preds = %do.end24.i
  tail call void @v4l2_fh_init(ptr noundef nonnull %call7.i.i.i, ptr noundef %call.i) #10
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %28 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i.i, ptr %private_data.i, align 4
  %dev30.i = getelementptr inbounds %struct.tm6000_fh, ptr %call7.i.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %dev30.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %3, ptr %dev30.i, align 8
  %radio31.i = getelementptr inbounds %struct.tm6000_fh, ptr %call7.i.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %radio31.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %switch.load, ptr %radio31.i, align 4
  %conv.i = trunc i32 %switch.load to i8
  %radio32.i = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 16
  %31 = ptrtoint ptr %radio32.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv.i, ptr %radio32.i, align 4
  %type33.i = getelementptr inbounds %struct.tm6000_fh, ptr %call7.i.i.i, i32 0, i32 7
  %32 = ptrtoint ptr %type33.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %switch.load14, ptr %type33.i, align 8
  %33 = load i32, ptr @format, align 4
  %fourcc.i = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 35
  %34 = ptrtoint ptr %fourcc.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %fourcc.i, align 8
  %fmt.i = getelementptr inbounds %struct.tm6000_fh, ptr %call7.i.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @format, ptr %fmt.i, align 8
  tail call void @tm6000_get_std_res(ptr noundef %3) #10
  %width.i = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 7
  %36 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %width.i, align 8
  %width36.i = getelementptr inbounds %struct.tm6000_fh, ptr %call7.i.i.i, i32 0, i32 4
  %38 = ptrtoint ptr %width36.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %width36.i, align 4
  %height.i = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 8
  %39 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %height.i, align 4
  %height37.i = getelementptr inbounds %struct.tm6000_fh, ptr %call7.i.i.i, i32 0, i32 5
  %41 = ptrtoint ptr %height37.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %height37.i, align 8
  %42 = load i32, ptr @tm6000_debug, align 4
  %and39.i = and i32 %42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %format_by_fourcc.exit.i.do.body52.i_crit_edge, label %do.end44.i

format_by_fourcc.exit.i.do.body52.i_crit_edge:    ; preds = %format_by_fourcc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body52.i

do.end44.i:                                       ; preds = %format_by_fourcc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %vidq.i = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 27
  %call48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %43, ptr noundef %3, ptr noundef nonnull @.str.23, ptr noundef nonnull %call7.i.i.i, ptr noundef %3, ptr noundef %vidq.i) #13
  br label %do.body52.i

do.body52.i:                                      ; preds = %do.end44.i, %format_by_fourcc.exit.i.do.body52.i_crit_edge
  %44 = load i32, ptr @tm6000_debug, align 4
  %and53.i = and i32 %44, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  br i1 %tobool54.not.i, label %do.body52.i.do.body68.i_crit_edge, label %do.end58.i

do.body52.i.do.body68.i_crit_edge:                ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body68.i

do.end58.i:                                       ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %queued.i = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 27, i32 1
  %46 = ptrtoint ptr %queued.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %queued.i, align 4
  %cmp.i.i = icmp eq ptr %47, %queued.i
  %conv.i.i = zext i1 %cmp.i.i to i32
  %call64.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %45, ptr noundef %3, ptr noundef nonnull @.str.23, i32 noundef %conv.i.i) #13
  br label %do.body68.i

do.body68.i:                                      ; preds = %do.end58.i, %do.body52.i.do.body68.i_crit_edge
  %48 = load i32, ptr @tm6000_debug, align 4
  %and69.i = and i32 %48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %tobool70.not.i = icmp eq i32 %and69.i, 0
  br i1 %tobool70.not.i, label %do.body68.i.do.end83.i_crit_edge, label %do.end74.i

do.body68.i.do.end83.i_crit_edge:                 ; preds = %do.body68.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end83.i

do.end74.i:                                       ; preds = %do.body68.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %49 = load volatile i32, ptr @jiffies, align 128
  %vidq78.i = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 27
  %50 = ptrtoint ptr %vidq78.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %vidq78.i, align 4
  %cmp.i208.i = icmp eq ptr %51, %vidq78.i
  %conv.i209.i = zext i1 %cmp.i208.i to i32
  %call80.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %49, ptr noundef %3, ptr noundef nonnull @.str.23, i32 noundef %conv.i209.i) #13
  br label %do.end83.i

do.end83.i:                                       ; preds = %do.end74.i, %do.body68.i.do.end83.i_crit_edge
  %call84.i = tail call i32 @tm6000_init_analog_mode(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84.i)
  %cmp85.i = icmp slt i32 %call84.i, 0
  br i1 %cmp85.i, label %if.then87.i, label %if.end89.i

if.then87.i:                                      ; preds = %do.end83.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @v4l2_fh_exit(ptr noundef nonnull %call7.i.i.i) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %__tm6000_open.exit

if.end89.i:                                       ; preds = %do.end83.i
  %mode.i = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 36
  %52 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %mode.i, align 4
  %53 = ptrtoint ptr %radio31.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %radio31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool91.not.i = icmp eq i32 %54, 0
  br i1 %tobool91.not.i, label %if.then92.i, label %do.body94.i

if.then92.i:                                      ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #12
  %vb_vidq.i = getelementptr inbounds %struct.tm6000_fh, ptr %call7.i.i.i, i32 0, i32 6
  %slock.i = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 56
  %55 = ptrtoint ptr %type33.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %type33.i, align 8
  %lock.i = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 45
  tail call void @videobuf_queue_vmalloc_init(ptr noundef %vb_vidq.i, ptr noundef nonnull @tm6000_video_qops, ptr noundef null, ptr noundef %slock.i, i32 noundef %56, i32 noundef 4, i32 noundef 152, ptr noundef nonnull %call7.i.i.i, ptr noundef %lock.i) #10
  br label %if.end137.i

do.body94.i:                                      ; preds = %if.end89.i
  %57 = load i32, ptr @tm6000_debug, align 4
  %and95.i = and i32 %57, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95.i)
  %tobool96.not.i = icmp eq i32 %and95.i, 0
  br i1 %tobool96.not.i, label %do.body94.i.do.end107.i_crit_edge, label %do.end100.i

do.body94.i.do.end107.i_crit_edge:                ; preds = %do.body94.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end107.i

do.end100.i:                                      ; preds = %do.body94.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %58 = load volatile i32, ptr @jiffies, align 128
  %call104.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %58, ptr noundef %3, ptr noundef nonnull @.str.23) #13
  br label %do.end107.i

do.end107.i:                                      ; preds = %do.end100.i, %do.body94.i.do.end107.i_crit_edge
  %call108.i = tail call i32 @tm6000_set_audio_rinput(ptr noundef %3) #10
  %subdevs.i = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 28, i32 2
  %59 = ptrtoint ptr %subdevs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pn215.i = load ptr, ptr %subdevs.i, align 4
  %cmp114.not217.i = icmp eq ptr %.pn215.i, %subdevs.i
  br i1 %cmp114.not217.i, label %do.end107.i.do.end132.i_crit_edge, label %do.end107.i.for.body.i_crit_edge

do.end107.i.for.body.i_crit_edge:                 ; preds = %do.end107.i
  br label %for.body.i

do.end107.i.do.end132.i_crit_edge:                ; preds = %do.end107.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end132.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end107.i.for.body.i_crit_edge
  %.pn218.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn215.i, %do.end107.i.for.body.i_crit_edge ]
  %__sd.0219.i = getelementptr i8, ptr %.pn218.i, i32 -80
  %ops.i = getelementptr i8, ptr %.pn218.i, i32 24
  %60 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops.i, align 4
  %tuner.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %tuner.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tuner.i, align 4
  %tobool116.not.i = icmp eq ptr %63, null
  br i1 %tobool116.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %s_radio.i = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %s_radio.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %s_radio.i, align 4
  %tobool119.not.i = icmp eq ptr %65, null
  br i1 %tobool119.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then120.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then120.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call124.i = tail call i32 %65(ptr noundef %__sd.0219.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then120.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %66 = ptrtoint ptr %.pn218.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pn.i = load ptr, ptr %.pn218.i, align 4
  %cmp114.not.i = icmp eq ptr %.pn.i, %subdevs.i
  br i1 %cmp114.not.i, label %for.inc.i.do.end132.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.do.end132.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end132.i

do.end132.i:                                      ; preds = %for.inc.i.do.end132.i_crit_edge, %do.end107.i.do.end132.i_crit_edge
  %call135.i = tail call fastcc i32 @tm6000_prepare_isoc(ptr noundef %3) #10
  %frame.i.i = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 27, i32 4
  %67 = ptrtoint ptr %frame.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %frame.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %68 = load volatile i32, ptr @jiffies, align 128
  %ini_jiffies.i.i = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 27, i32 5
  %69 = ptrtoint ptr %ini_jiffies.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %ini_jiffies.i.i, align 4
  %wq.i.i = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 27, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %wq.i.i, ptr noundef nonnull @.str.76, ptr noundef nonnull @tm6000_start_thread.__key) #10
  %num_bufs.i.i = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 55, i32 1
  %70 = ptrtoint ptr %num_bufs.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_bufs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp24.i.i = icmp sgt i32 %71, 0
  br i1 %cmp24.i.i, label %for.body.lr.ph.i.i, label %do.end132.i.if.end137.i_crit_edge

do.end132.i.if.end137.i_crit_edge:                ; preds = %do.end132.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end137.i

for.body.lr.ph.i.i:                               ; preds = %do.end132.i
  %urb.i.i = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 55, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i212.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.025.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i212.i.for.body.i.i_crit_edge ]
  %72 = ptrtoint ptr %urb.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %urb.i.i, align 8
  %arrayidx.i.i = getelementptr ptr, ptr %73, i32 %i.025.i.i
  %74 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i210.i = tail call i32 @usb_submit_urb(ptr noundef %75, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i210.i)
  %tobool.not.i.i = icmp eq i32 %call.i210.i, 0
  br i1 %tobool.not.i.i, label %for.inc.i212.i, label %cleanup.i.i

cleanup.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef %i.025.i.i, i32 noundef %call.i210.i) #13
  tail call fastcc void @tm6000_uninit_isoc(ptr noundef %3) #10
  br label %if.end137.i

for.inc.i212.i:                                   ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.025.i.i, 1
  %76 = ptrtoint ptr %num_bufs.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_bufs.i.i, align 4
  %cmp.i211.i = icmp slt i32 %inc.i.i, %77
  br i1 %cmp.i211.i, label %for.inc.i212.i.for.body.i.i_crit_edge, label %for.inc.i212.i.if.end137.i_crit_edge

for.inc.i212.i.if.end137.i_crit_edge:             ; preds = %for.inc.i212.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end137.i

for.inc.i212.i.for.body.i.i_crit_edge:            ; preds = %for.inc.i212.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

if.end137.i:                                      ; preds = %for.inc.i212.i.if.end137.i_crit_edge, %cleanup.i.i, %do.end132.i.if.end137.i_crit_edge, %if.then92.i
  tail call void @v4l2_fh_add(ptr noundef nonnull %call7.i.i.i) #10
  br label %__tm6000_open.exit

__tm6000_open.exit:                               ; preds = %if.end137.i, %if.then87.i, %if.then26.i, %do.end6.i.__tm6000_open.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %if.then26.i ], [ %call84.i, %if.then87.i ], [ 0, %if.end137.i ], [ -22, %do.end6.i.__tm6000_open.exit_crit_edge ]
  %78 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %lock, align 8
  tail call void @mutex_unlock(ptr noundef %79) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm6000_release(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev1 = getelementptr inbounds %struct.tm6000_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %call = tail call ptr @video_devdata(ptr noundef %file) #10
  %4 = load i32, ptr @tm6000_debug, align 4
  %and = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %init_name.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.video_device_node_name.exit_crit_edge

do.end.video_device_node_name.exit_crit_edge:     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %do.end.video_device_node_name.exit_crit_edge ]
  %users = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 22
  %10 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %users, align 8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef %5, ptr noundef %3, ptr noundef nonnull @.str.80, ptr noundef %retval.0.i.i, i32 noundef %11) #13
  br label %do.end6

do.end6:                                          ; preds = %video_device_node_name.exit, %entry.do.end6_crit_edge
  %lock = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 45
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %users7 = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 22
  %12 = ptrtoint ptr %users7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %users7, align 8
  %dec = add i32 %13, -1
  store i32 %dec, ptr %users7, align 8
  %resources.i = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 23
  %14 = ptrtoint ptr %resources.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %resources.i, align 4
  %cmp.not.i = icmp eq ptr %15, %1
  br i1 %cmp.not.i, label %if.end.i, label %do.end6.res_free.exit_crit_edge

do.end6.res_free.exit_crit_edge:                  ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %res_free.exit

if.end.i:                                         ; preds = %do.end6
  %16 = ptrtoint ptr %resources.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %resources.i, align 4
  %17 = load i32, ptr @tm6000_debug, align 4
  %and.i = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.res_free.exitthread-pre-split_crit_edge, label %do.end.i

if.end.i.res_free.exitthread-pre-split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %res_free.exitthread-pre-split

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %18, ptr noundef %3, ptr noundef nonnull @.str.82) #13
  br label %res_free.exitthread-pre-split

res_free.exitthread-pre-split:                    ; preds = %do.end.i, %if.end.i.res_free.exitthread-pre-split_crit_edge
  %19 = ptrtoint ptr %users7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load i32, ptr %users7, align 8
  br label %res_free.exit

res_free.exit:                                    ; preds = %res_free.exitthread-pre-split, %do.end6.res_free.exit_crit_edge
  %20 = phi i32 [ %.pr, %res_free.exitthread-pre-split ], [ %dec, %do.end6.res_free.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool9.not = icmp eq i32 %20, 0
  br i1 %tobool9.not, label %if.then10, label %res_free.exit.if.end27_crit_edge

res_free.exit.if.end27_crit_edge:                 ; preds = %res_free.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then10:                                        ; preds = %res_free.exit
  tail call fastcc void @tm6000_uninit_isoc(ptr noundef %3)
  tail call void @tm6000_ir_int_stop(ptr noundef %3) #10
  %udev = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 47
  %21 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %udev, align 8
  %call11 = tail call i32 @usb_reset_configuration(ptr noundef %22) #10
  %int_in = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 52
  %23 = ptrtoint ptr %int_in to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %int_in, align 4
  %tobool12.not = icmp eq ptr %24, null
  %25 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %udev, align 8
  %bInterfaceNumber18 = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 50, i32 1
  %27 = ptrtoint ptr %bInterfaceNumber18 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bInterfaceNumber18, align 4
  %conv19 = zext i8 %28 to i32
  %. = select i1 %tobool12.not, i32 0, i32 2
  %call20 = tail call i32 @usb_set_interface(ptr noundef %26, i32 noundef %conv19, i32 noundef %.) #10
  %call22 = tail call i32 @tm6000_ir_int_start(ptr noundef %3) #10
  %radio = getelementptr inbounds %struct.tm6000_fh, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %radio to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %radio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool23.not = icmp eq i32 %30, 0
  br i1 %tobool23.not, label %if.then24, label %if.then10.if.end27_crit_edge

if.then10.if.end27_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then24:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %vb_vidq = getelementptr inbounds %struct.tm6000_fh, ptr %1, i32 0, i32 6
  %call25 = tail call i32 @videobuf_mmap_free(ptr noundef %vb_vidq) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.then10.if.end27_crit_edge, %res_free.exit.if.end27_crit_edge
  tail call void @v4l2_fh_del(ptr noundef %1) #10
  tail call void @v4l2_fh_exit(ptr noundef %1) #10
  tail call void @kfree(ptr noundef %1) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_read_stream(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_pending(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_mmap_mapper(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tm6000_get_std_res(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tm6000_init_analog_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @videobuf_queue_vmalloc_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tm6000_set_audio_rinput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tm6000_prepare_isoc(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vidq = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 27
  tail call fastcc void @tm6000_uninit_isoc(ptr noundef %dev)
  tail call void @tm6000_ir_int_stop(ptr noundef %dev) #10
  %udev = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 47
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 8
  %isoc_in = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 50
  %bInterfaceNumber = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 50, i32 1
  %2 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bInterfaceNumber, align 4
  %conv = zext i8 %3 to i32
  %bAlternateSetting = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 50, i32 2
  %4 = ptrtoint ptr %bAlternateSetting to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bAlternateSetting, align 1
  %conv2 = zext i8 %5 to i32
  %call = tail call i32 @usb_set_interface(ptr noundef %1, i32 noundef %conv, i32 noundef %conv2) #10
  %call3 = tail call i32 @tm6000_ir_int_start(ptr noundef %dev) #10
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 8
  %8 = ptrtoint ptr %isoc_in to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %isoc_in, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bEndpointAddress, align 2
  %12 = and i8 %11, 15
  %and = zext i8 %12 to i32
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %7, align 8
  %shl.i = shl i32 %14, 8
  %shl1.i = shl nuw nsw i32 %and, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or8 = or i32 %or.i, 128
  %15 = lshr i32 %or.i, 15
  %and.i = and i32 %15, 15
  %arrayidx57.i = getelementptr %struct.usb_device, ptr %7, i32 0, i32 21, i32 %and.i
  %16 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx57.i, align 4
  %tobool59.not.i = icmp eq ptr %17, null
  br i1 %tobool59.not.i, label %entry.usb_maxpacket.exit_crit_edge, label %if.end61.i

entry.usb_maxpacket.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_maxpacket.exit

if.end61.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %20 = and i16 %19, -249
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #10
  %phi.cast = zext i16 %21 to i32
  br label %usb_maxpacket.exit

usb_maxpacket.exit:                               ; preds = %if.end61.i, %entry.usb_maxpacket.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.cast, %if.end61.i ], [ 0, %entry.usb_maxpacket.exit_crit_edge ]
  %maxsize = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 50, i32 3
  %22 = ptrtoint ptr %maxsize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %maxsize, align 4
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 %retval.0.i)
  %isoc_ctl = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 55
  %25 = ptrtoint ptr %isoc_ctl to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %isoc_ctl, align 8
  %mul = mul nuw nsw i32 %24, 46
  %urb_size = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 59
  %26 = ptrtoint ptr %urb_size to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mul, ptr %urb_size, align 8
  %num_bufs18 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 55, i32 1
  %27 = ptrtoint ptr %num_bufs18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 8, ptr %num_bufs18, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3264, i32 noundef 32) #14
  %urb21 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 55, i32 2
  %29 = ptrtoint ptr %urb21 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i, ptr %urb21, align 8
  %tobool24.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool24.not, label %usb_maxpacket.exit.cleanup_crit_edge, label %if.end26

usb_maxpacket.exit.cleanup_crit_edge:             ; preds = %usb_maxpacket.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end26:                                         ; preds = %usb_maxpacket.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i176 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3264, i32 noundef 32) #14
  %transfer_buffer = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 55, i32 3
  %31 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i176, ptr %transfer_buffer, align 4
  %tobool31.not = icmp eq ptr %call7.i.i176, null
  br i1 %tobool31.not, label %if.then32, label %do.body

if.then32:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %urb21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %urb21, align 8
  tail call void @kfree(ptr noundef %33) #10
  br label %cleanup

do.body:                                          ; preds = %if.end26
  %34 = load i32, ptr @tm6000_debug, align 4
  %and36 = and i32 %34, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %do.body.do.end45_crit_edge, label %do.end

do.body.do.end45_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end45

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %36 = ptrtoint ptr %maxsize to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %maxsize, align 4
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %35, ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef 46, i32 noundef 8, i32 noundef %mul, i32 noundef %37, i32 noundef %24) #13
  br label %do.end45

do.end45:                                         ; preds = %do.end, %do.body.do.end45_crit_edge
  %urb_buffer.i = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 57
  %38 = ptrtoint ptr %urb_buffer.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %urb_buffer.i, align 8
  %tobool.not.i = icmp eq ptr %39, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end45.tm6000_alloc_urb_buffers.exit_crit_edge

do.end45.tm6000_alloc_urb_buffers.exit_crit_edge: ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %tm6000_alloc_urb_buffers.exit

if.end.i:                                         ; preds = %do.end45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3264, i32 noundef 32) #14
  %41 = ptrtoint ptr %urb_buffer.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i.i, ptr %urb_buffer.i, align 8
  %tobool3.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.do.end53_crit_edge, label %if.end5.i

if.end.i.do.end53_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end53

if.end5.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %42 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i49.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3264, i32 noundef 32) #14
  %urb_dma.i = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 58
  %43 = ptrtoint ptr %urb_dma.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i.i49.i, ptr %urb_dma.i, align 4
  %tobool8.not.i = icmp eq ptr %call7.i.i49.i, null
  br i1 %tobool8.not.i, label %if.end5.i.do.end53_crit_edge, label %for.cond.preheader.i

if.end5.i.do.end53_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end53

for.cond.preheader.i:                             ; preds = %if.end5.i
  %44 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %udev, align 8
  %46 = ptrtoint ptr %urb_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %urb_size, align 8
  %call12.i = tail call ptr @usb_alloc_coherent(ptr noundef %45, i32 noundef %47, i32 noundef 3264, ptr noundef nonnull %call7.i.i49.i) #10
  %48 = ptrtoint ptr %urb_buffer.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %urb_buffer.i, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call12.i, ptr %49, align 4
  %51 = load ptr, ptr %urb_buffer.i, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %tobool17.not.i = icmp eq ptr %53, null
  br i1 %tobool17.not.i, label %for.cond.preheader.i.do.end.i_crit_edge, label %if.end24.i

for.cond.preheader.i.do.end.i_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.end24.6.i.do.end.i_crit_edge, %if.end24.5.i.do.end.i_crit_edge, %if.end24.4.i.do.end.i_crit_edge, %if.end24.3.i.do.end.i_crit_edge, %if.end24.2.i.do.end.i_crit_edge, %if.end24.1.i.do.end.i_crit_edge, %if.end24.i.do.end.i_crit_edge, %for.cond.preheader.i.do.end.i_crit_edge
  %i.051.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.do.end.i_crit_edge ], [ 1, %if.end24.i.do.end.i_crit_edge ], [ 2, %if.end24.1.i.do.end.i_crit_edge ], [ 3, %if.end24.2.i.do.end.i_crit_edge ], [ 4, %if.end24.3.i.do.end.i_crit_edge ], [ 5, %if.end24.4.i.do.end.i_crit_edge ], [ 6, %if.end24.5.i.do.end.i_crit_edge ], [ 7, %if.end24.6.i.do.end.i_crit_edge ]
  %54 = ptrtoint ptr %urb_size to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %urb_size, align 8
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i32 noundef %55, i32 noundef %i.051.lcssa.i) #13
  br label %do.end53

if.end24.i:                                       ; preds = %for.cond.preheader.i
  %56 = ptrtoint ptr %urb_size to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %urb_size, align 8
  %58 = call ptr @memset(ptr %53, i32 0, i32 %57)
  %59 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %udev, align 8
  %61 = load i32, ptr %urb_size, align 8
  %62 = ptrtoint ptr %urb_dma.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %urb_dma.i, align 4
  %arrayidx.1.i = getelementptr i32, ptr %63, i32 1
  %call12.1.i = tail call ptr @usb_alloc_coherent(ptr noundef %60, i32 noundef %61, i32 noundef 3264, ptr noundef %arrayidx.1.i) #10
  %64 = ptrtoint ptr %urb_buffer.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %urb_buffer.i, align 8
  %arrayidx14.1.i = getelementptr ptr, ptr %65, i32 1
  %66 = ptrtoint ptr %arrayidx14.1.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call12.1.i, ptr %arrayidx14.1.i, align 4
  %67 = load ptr, ptr %urb_buffer.i, align 8
  %arrayidx16.1.i = getelementptr ptr, ptr %67, i32 1
  %68 = ptrtoint ptr %arrayidx16.1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx16.1.i, align 4
  %tobool17.not.1.i = icmp eq ptr %69, null
  br i1 %tobool17.not.1.i, label %if.end24.i.do.end.i_crit_edge, label %if.end24.1.i

if.end24.i.do.end.i_crit_edge:                    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end24.1.i:                                     ; preds = %if.end24.i
  %70 = ptrtoint ptr %urb_size to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %urb_size, align 8
  %72 = call ptr @memset(ptr %69, i32 0, i32 %71)
  %73 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %udev, align 8
  %75 = load i32, ptr %urb_size, align 8
  %76 = ptrtoint ptr %urb_dma.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %urb_dma.i, align 4
  %arrayidx.2.i = getelementptr i32, ptr %77, i32 2
  %call12.2.i = tail call ptr @usb_alloc_coherent(ptr noundef %74, i32 noundef %75, i32 noundef 3264, ptr noundef %arrayidx.2.i) #10
  %78 = ptrtoint ptr %urb_buffer.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %urb_buffer.i, align 8
  %arrayidx14.2.i = getelementptr ptr, ptr %79, i32 2
  %80 = ptrtoint ptr %arrayidx14.2.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call12.2.i, ptr %arrayidx14.2.i, align 4
  %81 = load ptr, ptr %urb_buffer.i, align 8
  %arrayidx16.2.i = getelementptr ptr, ptr %81, i32 2
  %82 = ptrtoint ptr %arrayidx16.2.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx16.2.i, align 4
  %tobool17.not.2.i = icmp eq ptr %83, null
  br i1 %tobool17.not.2.i, label %if.end24.1.i.do.end.i_crit_edge, label %if.end24.2.i

if.end24.1.i.do.end.i_crit_edge:                  ; preds = %if.end24.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end24.2.i:                                     ; preds = %if.end24.1.i
  %84 = ptrtoint ptr %urb_size to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %urb_size, align 8
  %86 = call ptr @memset(ptr %83, i32 0, i32 %85)
  %87 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %udev, align 8
  %89 = load i32, ptr %urb_size, align 8
  %90 = ptrtoint ptr %urb_dma.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %urb_dma.i, align 4
  %arrayidx.3.i = getelementptr i32, ptr %91, i32 3
  %call12.3.i = tail call ptr @usb_alloc_coherent(ptr noundef %88, i32 noundef %89, i32 noundef 3264, ptr noundef %arrayidx.3.i) #10
  %92 = ptrtoint ptr %urb_buffer.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %urb_buffer.i, align 8
  %arrayidx14.3.i = getelementptr ptr, ptr %93, i32 3
  %94 = ptrtoint ptr %arrayidx14.3.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call12.3.i, ptr %arrayidx14.3.i, align 4
  %95 = load ptr, ptr %urb_buffer.i, align 8
  %arrayidx16.3.i = getelementptr ptr, ptr %95, i32 3
  %96 = ptrtoint ptr %arrayidx16.3.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx16.3.i, align 4
  %tobool17.not.3.i = icmp eq ptr %97, null
  br i1 %tobool17.not.3.i, label %if.end24.2.i.do.end.i_crit_edge, label %if.end24.3.i

if.end24.2.i.do.end.i_crit_edge:                  ; preds = %if.end24.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end24.3.i:                                     ; preds = %if.end24.2.i
  %98 = ptrtoint ptr %urb_size to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %urb_size, align 8
  %100 = call ptr @memset(ptr %97, i32 0, i32 %99)
  %101 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %udev, align 8
  %103 = load i32, ptr %urb_size, align 8
  %104 = ptrtoint ptr %urb_dma.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %urb_dma.i, align 4
  %arrayidx.4.i = getelementptr i32, ptr %105, i32 4
  %call12.4.i = tail call ptr @usb_alloc_coherent(ptr noundef %102, i32 noundef %103, i32 noundef 3264, ptr noundef %arrayidx.4.i) #10
  %106 = ptrtoint ptr %urb_buffer.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %urb_buffer.i, align 8
  %arrayidx14.4.i = getelementptr ptr, ptr %107, i32 4
  %108 = ptrtoint ptr %arrayidx14.4.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %call12.4.i, ptr %arrayidx14.4.i, align 4
  %109 = load ptr, ptr %urb_buffer.i, align 8
  %arrayidx16.4.i = getelementptr ptr, ptr %109, i32 4
  %110 = ptrtoint ptr %arrayidx16.4.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx16.4.i, align 4
  %tobool17.not.4.i = icmp eq ptr %111, null
  br i1 %tobool17.not.4.i, label %if.end24.3.i.do.end.i_crit_edge, label %if.end24.4.i

if.end24.3.i.do.end.i_crit_edge:                  ; preds = %if.end24.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end24.4.i:                                     ; preds = %if.end24.3.i
  %112 = ptrtoint ptr %urb_size to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %urb_size, align 8
  %114 = call ptr @memset(ptr %111, i32 0, i32 %113)
  %115 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %udev, align 8
  %117 = load i32, ptr %urb_size, align 8
  %118 = ptrtoint ptr %urb_dma.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %urb_dma.i, align 4
  %arrayidx.5.i = getelementptr i32, ptr %119, i32 5
  %call12.5.i = tail call ptr @usb_alloc_coherent(ptr noundef %116, i32 noundef %117, i32 noundef 3264, ptr noundef %arrayidx.5.i) #10
  %120 = ptrtoint ptr %urb_buffer.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %urb_buffer.i, align 8
  %arrayidx14.5.i = getelementptr ptr, ptr %121, i32 5
  %122 = ptrtoint ptr %arrayidx14.5.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call12.5.i, ptr %arrayidx14.5.i, align 4
  %123 = load ptr, ptr %urb_buffer.i, align 8
  %arrayidx16.5.i = getelementptr ptr, ptr %123, i32 5
  %124 = ptrtoint ptr %arrayidx16.5.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx16.5.i, align 4
  %tobool17.not.5.i = icmp eq ptr %125, null
  br i1 %tobool17.not.5.i, label %if.end24.4.i.do.end.i_crit_edge, label %if.end24.5.i

if.end24.4.i.do.end.i_crit_edge:                  ; preds = %if.end24.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end24.5.i:                                     ; preds = %if.end24.4.i
  %126 = ptrtoint ptr %urb_size to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %urb_size, align 8
  %128 = call ptr @memset(ptr %125, i32 0, i32 %127)
  %129 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %udev, align 8
  %131 = load i32, ptr %urb_size, align 8
  %132 = ptrtoint ptr %urb_dma.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %urb_dma.i, align 4
  %arrayidx.6.i = getelementptr i32, ptr %133, i32 6
  %call12.6.i = tail call ptr @usb_alloc_coherent(ptr noundef %130, i32 noundef %131, i32 noundef 3264, ptr noundef %arrayidx.6.i) #10
  %134 = ptrtoint ptr %urb_buffer.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %urb_buffer.i, align 8
  %arrayidx14.6.i = getelementptr ptr, ptr %135, i32 6
  %136 = ptrtoint ptr %arrayidx14.6.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call12.6.i, ptr %arrayidx14.6.i, align 4
  %137 = load ptr, ptr %urb_buffer.i, align 8
  %arrayidx16.6.i = getelementptr ptr, ptr %137, i32 6
  %138 = ptrtoint ptr %arrayidx16.6.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx16.6.i, align 4
  %tobool17.not.6.i = icmp eq ptr %139, null
  br i1 %tobool17.not.6.i, label %if.end24.5.i.do.end.i_crit_edge, label %if.end24.6.i

if.end24.5.i.do.end.i_crit_edge:                  ; preds = %if.end24.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end24.6.i:                                     ; preds = %if.end24.5.i
  %140 = ptrtoint ptr %urb_size to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %urb_size, align 8
  %142 = call ptr @memset(ptr %139, i32 0, i32 %141)
  %143 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %udev, align 8
  %145 = load i32, ptr %urb_size, align 8
  %146 = ptrtoint ptr %urb_dma.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %urb_dma.i, align 4
  %arrayidx.7.i = getelementptr i32, ptr %147, i32 7
  %call12.7.i = tail call ptr @usb_alloc_coherent(ptr noundef %144, i32 noundef %145, i32 noundef 3264, ptr noundef %arrayidx.7.i) #10
  %148 = ptrtoint ptr %urb_buffer.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %urb_buffer.i, align 8
  %arrayidx14.7.i = getelementptr ptr, ptr %149, i32 7
  %150 = ptrtoint ptr %arrayidx14.7.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %call12.7.i, ptr %arrayidx14.7.i, align 4
  %151 = load ptr, ptr %urb_buffer.i, align 8
  %arrayidx16.7.i = getelementptr ptr, ptr %151, i32 7
  %152 = ptrtoint ptr %arrayidx16.7.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx16.7.i, align 4
  %tobool17.not.7.i = icmp eq ptr %153, null
  br i1 %tobool17.not.7.i, label %if.end24.6.i.do.end.i_crit_edge, label %if.end24.7.i

if.end24.6.i.do.end.i_crit_edge:                  ; preds = %if.end24.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end24.7.i:                                     ; preds = %if.end24.6.i
  call void @__sanitizer_cov_trace_pc() #12
  %154 = ptrtoint ptr %urb_size to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %urb_size, align 8
  %156 = call ptr @memset(ptr %153, i32 0, i32 %155)
  br label %tm6000_alloc_urb_buffers.exit

tm6000_alloc_urb_buffers.exit:                    ; preds = %if.end24.7.i, %do.end45.tm6000_alloc_urb_buffers.exit_crit_edge
  %157 = ptrtoint ptr %num_bufs18 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %num_bufs18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %cmp66181 = icmp sgt i32 %158, 0
  br i1 %cmp66181, label %for.body.lr.ph, label %tm6000_alloc_urb_buffers.exit.cleanup_crit_edge

tm6000_alloc_urb_buffers.exit.cleanup_crit_edge:  ; preds = %tm6000_alloc_urb_buffers.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %tm6000_alloc_urb_buffers.exit
  %urb_dma = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 58
  br label %for.body

do.end53:                                         ; preds = %do.end.i, %if.end5.i.do.end53_crit_edge, %if.end.i.do.end53_crit_edge
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40) #13
  tail call fastcc void @tm6000_free_urb_buffers(ptr noundef %dev)
  %159 = ptrtoint ptr %urb21 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %urb21, align 8
  tail call void @kfree(ptr noundef %160) #10
  %161 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %transfer_buffer, align 4
  tail call void @kfree(ptr noundef %162) #10
  br label %cleanup

for.body:                                         ; preds = %for.inc96.for.body_crit_edge, %for.body.lr.ph
  %i.0182 = phi i32 [ 0, %for.body.lr.ph ], [ %inc97, %for.inc96.for.body_crit_edge ]
  %call68 = tail call ptr @usb_alloc_urb(i32 noundef 46, i32 noundef 3264) #10
  %tobool69.not = icmp eq ptr %call68, null
  br i1 %tobool69.not, label %if.then70, label %if.end72

if.then70:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @tm6000_uninit_isoc(ptr noundef %dev)
  tail call fastcc void @tm6000_free_urb_buffers(ptr noundef %dev)
  br label %cleanup

if.end72:                                         ; preds = %for.body
  %163 = ptrtoint ptr %urb21 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %urb21, align 8
  %arrayidx = getelementptr ptr, ptr %164, i32 %i.0182
  %165 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %call68, ptr %arrayidx, align 4
  %166 = ptrtoint ptr %urb_dma to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %urb_dma, align 4
  %arrayidx75 = getelementptr i32, ptr %167, i32 %i.0182
  %168 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx75, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %call68, i32 0, i32 15
  %170 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %transfer_dma, align 4
  %171 = ptrtoint ptr %urb_buffer.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %urb_buffer.i, align 8
  %arrayidx76 = getelementptr ptr, ptr %172, i32 %i.0182
  %173 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %arrayidx76, align 4
  %175 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %transfer_buffer, align 4
  %arrayidx79 = getelementptr ptr, ptr %176, i32 %i.0182
  %177 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %174, ptr %arrayidx79, align 4
  %178 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %udev, align 8
  %180 = load ptr, ptr %transfer_buffer, align 4
  %arrayidx83 = getelementptr ptr, ptr %180, i32 %i.0182
  %181 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %arrayidx83, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call68, i32 0, i32 8
  %183 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %179, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call68, i32 0, i32 10
  %184 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %or8, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call68, i32 0, i32 14
  %185 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %182, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call68, i32 0, i32 19
  %186 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %mul, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call68, i32 0, i32 28
  %187 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr @tm6000_irq_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call68, i32 0, i32 27
  %188 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %vidq, ptr %context4.i, align 4
  %189 = ptrtoint ptr %isoc_in to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %isoc_in, align 4
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %190, i32 0, i32 5
  %191 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %bInterval, align 2
  %conv87 = zext i8 %192 to i32
  %interval = getelementptr inbounds %struct.urb, ptr %call68, i32 0, i32 25
  %193 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %conv87, ptr %interval, align 4
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %call68, i32 0, i32 24
  %194 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 46, ptr %number_of_packets, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call68, i32 0, i32 13
  %195 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 6, ptr %transfer_flags, align 4
  br label %for.body91

for.body91:                                       ; preds = %for.body91.for.body91_crit_edge, %if.end72
  %j.0180 = phi i32 [ 0, %if.end72 ], [ %inc, %for.body91.for.body91_crit_edge ]
  %mul92 = mul nuw nsw i32 %j.0180, %24
  %arrayidx93 = getelementptr %struct.urb, ptr %call68, i32 0, i32 29, i32 %j.0180
  %196 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %mul92, ptr %arrayidx93, align 4
  %length = getelementptr %struct.urb, ptr %call68, i32 0, i32 29, i32 %j.0180, i32 1
  %197 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %24, ptr %length, align 4
  %inc = add nuw nsw i32 %j.0180, 1
  %exitcond.not = icmp eq i32 %inc, 46
  br i1 %exitcond.not, label %for.inc96, label %for.body91.for.body91_crit_edge

for.body91.for.body91_crit_edge:                  ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body91

for.inc96:                                        ; preds = %for.body91
  %inc97 = add nuw nsw i32 %i.0182, 1
  %198 = ptrtoint ptr %num_bufs18 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %num_bufs18, align 4
  %cmp66 = icmp slt i32 %inc97, %199
  br i1 %cmp66, label %for.inc96.for.body_crit_edge, label %for.inc96.cleanup_crit_edge

for.inc96.cleanup_crit_edge:                      ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc96.for.body_crit_edge:                     ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.inc96.cleanup_crit_edge, %if.then70, %do.end53, %tm6000_alloc_urb_buffers.exit.cleanup_crit_edge, %if.then32, %usb_maxpacket.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end53 ], [ -12, %if.then70 ], [ -12, %if.then32 ], [ -12, %usb_maxpacket.exit.cleanup_crit_edge ], [ 0, %tm6000_alloc_urb_buffers.exit.cleanup_crit_edge ], [ 0, %for.inc96.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %count, ptr nocapture noundef %size) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.videobuf_queue, ptr %vq, i32 0, i32 16
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %fmt = getelementptr inbounds %struct.tm6000_fh, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fmt, align 4
  %depth = getelementptr inbounds %struct.tm6000_fmt, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %depth, align 4
  %width = getelementptr inbounds %struct.tm6000_fh, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width, align 4
  %mul = mul i32 %7, %5
  %height = getelementptr inbounds %struct.tm6000_fh, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %mul1 = mul i32 %mul, %9
  %shr = lshr i32 %mul1, 3
  %10 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr, ptr %size, align 4
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %entry.if.end4.sink.split_crit_edge, label %if.end

entry.if.end4.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.sink.split

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp2 = icmp ult i32 %12, 4
  br i1 %cmp2, label %if.end.if.end4.sink.split_crit_edge, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end.if.end4.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.sink.split

if.end4.sink.split:                               ; preds = %if.end.if.end4.sink.split_crit_edge, %entry.if.end4.sink.split_crit_edge
  %.sink = phi i32 [ 8, %entry.if.end4.sink.split_crit_edge ], [ 4, %if.end.if.end4.sink.split_crit_edge ]
  %13 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %count, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end4.sink.split, %if.end.if.end4_crit_edge
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count, align 4
  %mul518 = mul i32 %17, %15
  %18 = load i32, ptr @vid_limit, align 4
  %mul719 = shl i32 %18, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %mul518, i32 %mul719)
  %cmp820 = icmp ugt i32 %mul518, %mul719
  br i1 %cmp820, label %if.end4.while.body_crit_edge, label %if.end4.while.end_crit_edge

if.end4.while.end_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end4.while.body_crit_edge:                     ; preds = %if.end4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end4.while.body_crit_edge
  %19 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %17, %if.end4.while.body_crit_edge ]
  %dec = add i32 %19, -1
  %20 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %dec, ptr %count, align 4
  %21 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size, align 4
  %mul5 = mul i32 %dec, %22
  %23 = load i32, ptr @vid_limit, align 4
  %mul7 = shl i32 %23, 20
  %cmp8 = icmp ugt i32 %mul5, %mul7
  br i1 %cmp8, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end4.while.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_prepare(ptr noundef %vq, ptr noundef %vb, i32 noundef %field) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.videobuf_queue, ptr %vq, i32 0, i32 16
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %dev1 = getelementptr inbounds %struct.tm6000_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %fmt = getelementptr inbounds %struct.tm6000_fh, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fmt, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %do.body3, label %do.end8, !prof !250

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/usb/tm6000/tm6000-video.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 723, 0\0A.popsection", ""() #10, !srcloc !251
  unreachable

do.end8:                                          ; preds = %entry
  %depth = getelementptr inbounds %struct.tm6000_fmt, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %depth, align 4
  %width = getelementptr inbounds %struct.tm6000_fh, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width, align 4
  %mul = mul i32 %9, %7
  %height = getelementptr inbounds %struct.tm6000_fh, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %mul10 = mul i32 %mul, %11
  %shr = lshr i32 %mul10, 3
  %size = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 5
  %12 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shr, ptr %size, align 4
  %baddr = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 16
  %13 = ptrtoint ptr %baddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %baddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp13.not = icmp eq i32 %14, 0
  br i1 %cmp13.not, label %do.end8.if.end19_crit_edge, label %land.lhs.true

do.end8.if.end19_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true:                                    ; preds = %do.end8
  %bsize = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 14
  %15 = ptrtoint ptr %bsize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %shr)
  %cmp17 = icmp ult i32 %16, %shr
  br i1 %cmp17, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %land.lhs.true.if.end19_crit_edge, %do.end8.if.end19_crit_edge
  %fmt20 = getelementptr inbounds %struct.tm6000_buffer, ptr %vb, i32 0, i32 1
  %17 = ptrtoint ptr %fmt20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fmt20, align 8
  %19 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fmt, align 4
  %cmp22.not = icmp eq ptr %18, %20
  br i1 %cmp22.not, label %lor.lhs.false, label %if.end19.if.then36_crit_edge

if.end19.if.then36_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

lor.lhs.false:                                    ; preds = %if.end19
  %width24 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 2
  %21 = ptrtoint ptr %width24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %width24, align 8
  %23 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp26.not = icmp eq i32 %22, %24
  br i1 %cmp26.not, label %lor.lhs.false27, label %lor.lhs.false.if.then36_crit_edge

lor.lhs.false.if.then36_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

lor.lhs.false27:                                  ; preds = %lor.lhs.false
  %height29 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 3
  %25 = ptrtoint ptr %height29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height29, align 4
  %27 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp31.not = icmp eq i32 %26, %28
  br i1 %cmp31.not, label %lor.lhs.false32, label %lor.lhs.false27.if.then36_crit_edge

lor.lhs.false27.if.then36_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

lor.lhs.false32:                                  ; preds = %lor.lhs.false27
  %field34 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 6
  %29 = ptrtoint ptr %field34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %field34, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %field)
  %cmp35.not = icmp eq i32 %30, %field
  br i1 %cmp35.not, label %lor.lhs.false32.if.end48_crit_edge, label %lor.lhs.false32.if.then36_crit_edge

lor.lhs.false32.if.then36_crit_edge:              ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

lor.lhs.false32.if.end48_crit_edge:               ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then36:                                        ; preds = %lor.lhs.false32.if.then36_crit_edge, %lor.lhs.false27.if.then36_crit_edge, %lor.lhs.false.if.then36_crit_edge, %if.end19.if.then36_crit_edge
  %31 = ptrtoint ptr %fmt20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %20, ptr %fmt20, align 8
  %32 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %width, align 4
  %width41 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 2
  %34 = ptrtoint ptr %width41 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %width41, align 8
  %35 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height, align 4
  %height44 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 3
  %37 = ptrtoint ptr %height44 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %height44, align 4
  %field46 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 6
  %38 = ptrtoint ptr %field46 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %field, ptr %field46, align 8
  %state = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 7
  %39 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %state, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then36, %lor.lhs.false32.if.end48_crit_edge
  %state50 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 7
  %40 = ptrtoint ptr %state50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %state50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp51 = icmp eq i32 %41, 0
  br i1 %cmp51, label %if.then52, label %if.end48.if.end57_crit_edge

if.end48.if.end57_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then52:                                        ; preds = %if.end48
  %call = tail call i32 @videobuf_iolock(ptr noundef %vq, ptr noundef %vb, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp54.not = icmp eq i32 %call, 0
  br i1 %cmp54.not, label %if.then52.if.end57_crit_edge, label %if.then52.fail_crit_edge

if.then52.fail_crit_edge:                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.then52.if.end57_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.end57:                                         ; preds = %if.then52.if.end57_crit_edge, %if.end48.if.end57_crit_edge
  %num_bufs = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 55, i32 1
  %42 = ptrtoint ptr %num_bufs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_bufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool58.not = icmp eq i32 %43, 0
  br i1 %tobool58.not, label %if.then59, label %if.end57.cleanup.sink.split_crit_edge

if.end57.cleanup.sink.split_crit_edge:            ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then59:                                        ; preds = %if.end57
  %call60 = tail call fastcc i32 @tm6000_prepare_isoc(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.then59.fail_crit_edge, label %if.end63

if.then59.fail_crit_edge:                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end63:                                         ; preds = %if.then59
  %frame.i = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 27, i32 4
  %44 = ptrtoint ptr %frame.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %frame.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %ini_jiffies.i = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 27, i32 5
  %46 = ptrtoint ptr %ini_jiffies.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %ini_jiffies.i, align 4
  %wq.i = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 27, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %wq.i, ptr noundef nonnull @.str.76, ptr noundef nonnull @tm6000_start_thread.__key) #10
  %47 = ptrtoint ptr %num_bufs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_bufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp24.i = icmp sgt i32 %48, 0
  br i1 %cmp24.i, label %for.body.lr.ph.i, label %if.end63.cleanup.sink.split_crit_edge

if.end63.cleanup.sink.split_crit_edge:            ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

for.body.lr.ph.i:                                 ; preds = %if.end63
  %urb.i = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 55, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.025.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %49 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %urb.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %50, i32 %i.025.i
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %52, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %tm6000_start_thread.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %53 = ptrtoint ptr %num_bufs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_bufs, align 4
  %cmp.i = icmp slt i32 %inc.i, %54
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup.sink.split_crit_edge

for.inc.i.cleanup.sink.split_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

tm6000_start_thread.exit:                         ; preds = %for.body.i
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef %i.025.i, i32 noundef %call.i) #13
  tail call fastcc void @tm6000_uninit_isoc(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp65 = icmp slt i32 %call.i, 0
  br i1 %cmp65, label %tm6000_start_thread.exit.fail_crit_edge, label %tm6000_start_thread.exit.cleanup.sink.split_crit_edge

tm6000_start_thread.exit.cleanup.sink.split_crit_edge: ; preds = %tm6000_start_thread.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

tm6000_start_thread.exit.fail_crit_edge:          ; preds = %tm6000_start_thread.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

fail:                                             ; preds = %tm6000_start_thread.exit.fail_crit_edge, %if.then59.fail_crit_edge, %if.then52.fail_crit_edge
  %rc.0 = phi i32 [ %call, %if.then52.fail_crit_edge ], [ %call60, %if.then59.fail_crit_edge ], [ %call.i, %tm6000_start_thread.exit.fail_crit_edge ]
  %55 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %priv_data, align 4
  %dev1.i = getelementptr inbounds %struct.tm6000_fh, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev1.i, align 4
  %slock.i = getelementptr inbounds %struct.tm6000_core, ptr %58, i32 0, i32 56
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #10
  %buf6.i = getelementptr inbounds %struct.tm6000_core, ptr %58, i32 0, i32 55, i32 12
  %59 = ptrtoint ptr %buf6.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %buf6.i, align 8
  %cmp7.i = icmp eq ptr %60, %vb
  br i1 %cmp7.i, label %if.then.i, label %fail.free_buffer.exit_crit_edge

fail.free_buffer.exit_crit_edge:                  ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_buffer.exit

if.then.i:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %buf6.i, align 8
  br label %free_buffer.exit

free_buffer.exit:                                 ; preds = %if.then.i, %fail.free_buffer.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call3.i) #10
  tail call void @videobuf_vmalloc_free(ptr noundef %vb) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %free_buffer.exit, %tm6000_start_thread.exit.cleanup.sink.split_crit_edge, %for.inc.i.cleanup.sink.split_crit_edge, %if.end63.cleanup.sink.split_crit_edge, %if.end57.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 0, %free_buffer.exit ], [ 1, %if.end63.cleanup.sink.split_crit_edge ], [ 1, %tm6000_start_thread.exit.cleanup.sink.split_crit_edge ], [ 1, %if.end57.cleanup.sink.split_crit_edge ], [ 1, %for.inc.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %rc.0, %free_buffer.exit ], [ 0, %if.end63.cleanup.sink.split_crit_edge ], [ 0, %tm6000_start_thread.exit.cleanup.sink.split_crit_edge ], [ 0, %if.end57.cleanup.sink.split_crit_edge ], [ 0, %for.inc.i.cleanup.sink.split_crit_edge ]
  %62 = ptrtoint ptr %state50 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %.sink, ptr %state50, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_queue(ptr nocapture noundef readonly %vq, ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.videobuf_queue, ptr %vq, i32 0, i32 16
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %dev1 = getelementptr inbounds %struct.tm6000_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %vidq2 = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 27
  %state = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 7
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %state, align 4
  %queue = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 9
  %prev.i = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 27, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %6, ptr noundef %vidq2) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %queue, ptr %prev.i, align 4
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %vidq2, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %queue, ptr %6, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_release(ptr nocapture noundef readonly %vq, ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data.i = getelementptr inbounds %struct.videobuf_queue, ptr %vq, i32 0, i32 16
  %0 = ptrtoint ptr %priv_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data.i, align 4
  %dev1.i = getelementptr inbounds %struct.tm6000_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %slock.i = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 56
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #10
  %buf6.i = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 55, i32 12
  %4 = ptrtoint ptr %buf6.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf6.i, align 8
  %cmp7.i = icmp eq ptr %5, %vb
  br i1 %cmp7.i, label %if.then.i, label %entry.free_buffer.exit_crit_edge

entry.free_buffer.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_buffer.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %buf6.i, align 8
  br label %free_buffer.exit

free_buffer.exit:                                 ; preds = %if.then.i, %entry.free_buffer.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call3.i) #10
  tail call void @videobuf_vmalloc_free(ptr noundef %vb) #10
  %state.i = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 7
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %state.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_iolock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @videobuf_vmalloc_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tm6000_uninit_isoc(ptr nocapture noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 55, i32 12
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %buf, align 8
  %num_bufs = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 55, i32 1
  %1 = ptrtoint ptr %num_bufs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_bufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp40 = icmp sgt i32 %2, 0
  br i1 %cmp40, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %urb3 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 55, i32 2
  %transfer_buffer = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 55, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.041 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %3 = ptrtoint ptr %urb3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %urb3, align 8
  %arrayidx = getelementptr ptr, ptr %4, i32 %i.041
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_kill_urb(ptr noundef nonnull %6) #10
  %call = tail call i32 @usb_unlink_urb(ptr noundef nonnull %6) #10
  tail call void @usb_free_urb(ptr noundef nonnull %6) #10
  %7 = ptrtoint ptr %urb3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %urb3, align 8
  %arrayidx6 = getelementptr ptr, ptr %8, i32 %i.041
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %10 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %transfer_buffer, align 4
  %arrayidx8 = getelementptr ptr, ptr %11, i32 %i.041
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx8, align 4
  %inc = add nuw nsw i32 %i.041, 1
  %13 = ptrtoint ptr %num_bufs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_bufs, align 4
  %cmp = icmp slt i32 %inc, %14
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %15 = load i8, ptr @keep_urb, align 1, !range !249
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool9.not = icmp eq i8 %15, 0
  br i1 %tobool9.not, label %if.then10, label %for.end.if.end12_crit_edge

for.end.if.end12_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then10:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @tm6000_free_urb_buffers(ptr noundef %dev)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %for.end.if.end12_crit_edge
  %urb14 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 55, i32 2
  %16 = ptrtoint ptr %urb14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %urb14, align 8
  tail call void @kfree(ptr noundef %17) #10
  %transfer_buffer16 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 55, i32 3
  %18 = ptrtoint ptr %transfer_buffer16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %transfer_buffer16, align 4
  tail call void @kfree(ptr noundef %19) #10
  %20 = ptrtoint ptr %urb14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %urb14, align 8
  %21 = ptrtoint ptr %transfer_buffer16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %transfer_buffer16, align 4
  %22 = ptrtoint ptr %num_bufs to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %num_bufs, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tm6000_ir_int_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tm6000_ir_int_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tm6000_irq_callback(ptr noundef %urb) #0 align 64 {
entry:
  %header.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %3, label %do.end [
    i32 0, label %entry.do.body8_crit_edge
    i32 -110, label %entry.do.body8_crit_edge72
    i32 -104, label %entry.cleanup_crit_edge
    i32 -2, label %entry.cleanup_crit_edge73
    i32 -108, label %entry.cleanup_crit_edge74
  ]

entry.cleanup_crit_edge74:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge73:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.do.body8_crit_edge72:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef %3) #13
  br label %do.body8

do.body8:                                         ; preds = %do.end, %entry.do.body8_crit_edge, %entry.do.body8_crit_edge72
  %slock = getelementptr i8, ptr %1, i32 1060
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #10
  %5 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %context, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 -5496
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp slt i32 %8, 0
  br i1 %cmp.i, label %if.then.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %do.body8
  %number_of_packets.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %9 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %number_of_packets.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp366.i = icmp sgt i32 %10, 0
  br i1 %cmp366.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.tm6000_isoc_copy.exit_crit_edge

for.cond.preheader.i.tm6000_isoc_copy.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tm6000_isoc_copy.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %fourcc.i = getelementptr i8, ptr %6, i32 664
  br label %for.body.i

if.then.i:                                        ; preds = %do.body8
  %11 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %8, label %if.then.i.sw.epilog.i.i_crit_edge [
    i32 -2, label %sw.bb.i.i
    i32 -104, label %sw.bb1.i.i
    i32 -63, label %sw.bb2.i.i
    i32 -32, label %sw.bb3.i.i
    i32 -75, label %sw.bb4.i.i
    i32 -71, label %sw.bb5.i.i
    i32 -84, label %sw.bb6.i.i
    i32 -62, label %sw.bb7.i.i
  ]

if.then.i.sw.epilog.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

sw.bb1.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

sw.bb2.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

sw.bb3.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

sw.bb4.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

sw.bb5.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

sw.bb6.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

sw.bb7.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb.i.i, %if.then.i.sw.epilog.i.i_crit_edge
  %errmsg.0.i.i = phi ptr [ @.str.52, %if.then.i.sw.epilog.i.i_crit_edge ], [ @.str.60, %sw.bb7.i.i ], [ @.str.59, %sw.bb6.i.i ], [ @.str.58, %sw.bb5.i.i ], [ @.str.57, %sw.bb4.i.i ], [ @.str.56, %sw.bb3.i.i ], [ @.str.55, %sw.bb2.i.i ], [ @.str.54, %sw.bb1.i.i ], [ @.str.53, %sw.bb.i.i ]
  %12 = load i32, ptr @tm6000_debug, align 4
  %and.i.i = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %sw.epilog.i.i.tm6000_isoc_copy.exit_crit_edge, label %do.end.i.i

sw.epilog.i.i.tm6000_isoc_copy.exit_crit_edge:    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tm6000_isoc_copy.exit

do.end.i.i:                                       ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %13, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.62, i32 noundef %8, ptr noundef nonnull %errmsg.0.i.i) #13
  br label %tm6000_isoc_copy.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.067.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.067.i
  %status4.i = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.067.i, i32 3
  %14 = ptrtoint ptr %status4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp5.i = icmp slt i32 %15, 0
  br i1 %cmp5.i, label %if.then6.i, label %if.end7.i

if.then6.i:                                       ; preds = %for.body.i
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %15, label %if.then6.i.do.body12.i.i_crit_edge [
    i32 -2, label %sw.bb.i1.i
    i32 -104, label %sw.bb1.i2.i
    i32 -63, label %sw.bb2.i3.i
    i32 -32, label %sw.bb3.i4.i
    i32 -75, label %sw.bb4.i5.i
    i32 -71, label %sw.bb5.i6.i
    i32 -84, label %sw.bb6.i7.i
    i32 -62, label %sw.bb7.i8.i
  ]

if.then6.i.do.body12.i.i_crit_edge:               ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12.i.i

sw.bb.i1.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12.i.i

sw.bb1.i2.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12.i.i

sw.bb2.i3.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12.i.i

sw.bb3.i4.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12.i.i

sw.bb4.i5.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12.i.i

sw.bb5.i6.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12.i.i

sw.bb6.i7.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12.i.i

sw.bb7.i8.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12.i.i

do.body12.i.i:                                    ; preds = %sw.bb7.i8.i, %sw.bb6.i7.i, %sw.bb5.i6.i, %sw.bb4.i5.i, %sw.bb3.i4.i, %sw.bb2.i3.i, %sw.bb1.i2.i, %sw.bb.i1.i, %if.then6.i.do.body12.i.i_crit_edge
  %errmsg.0.i9.i = phi ptr [ @.str.52, %if.then6.i.do.body12.i.i_crit_edge ], [ @.str.60, %sw.bb7.i8.i ], [ @.str.59, %sw.bb6.i7.i ], [ @.str.58, %sw.bb5.i6.i ], [ @.str.57, %sw.bb4.i5.i ], [ @.str.56, %sw.bb3.i4.i ], [ @.str.55, %sw.bb2.i3.i ], [ @.str.54, %sw.bb1.i2.i ], [ @.str.53, %sw.bb.i1.i ]
  %17 = load i32, ptr @tm6000_debug, align 4
  %and.i10.i = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10.i)
  %tobool.not.i11.i = icmp eq i32 %and.i10.i, 0
  br i1 %tobool.not.i11.i, label %do.body12.i.i.for.inc.i_crit_edge, label %do.end18.i.i

do.body12.i.i.for.inc.i_crit_edge:                ; preds = %do.body12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

do.end18.i.i:                                     ; preds = %do.body12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %call22.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %18, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.62, i32 noundef %i.067.i, i32 noundef %15, ptr noundef nonnull %errmsg.0.i9.i) #13
  br label %for.inc.i

if.end7.i:                                        ; preds = %for.body.i
  %actual_length.i = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.067.i, i32 2
  %19 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %actual_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp10.i = icmp sgt i32 %20, 0
  br i1 %cmp10.i, label %if.then11.i, label %if.end7.i.for.inc.i_crit_edge

if.end7.i.for.inc.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then11.i:                                      ; preds = %if.end7.i
  %21 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %transfer_buffer.i, align 4
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %22, i32 %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.then18.i, label %if.then11.i.for.inc.i_crit_edge

if.then11.i.for.inc.i_crit_edge:                  ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then18.i:                                      ; preds = %if.then11.i
  %25 = ptrtoint ptr %fourcc.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fourcc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 808865108, i32 %26)
  %cmp19.i = icmp eq i32 %26, 808865108
  br i1 %cmp19.i, label %if.then20.i, label %if.else.i

if.then20.i:                                      ; preds = %if.then18.i
  %27 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %context, align 4
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 -5496
  %pos1.i.i = getelementptr i8, ptr %28, i32 1028
  %29 = ptrtoint ptr %pos1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pos1.i.i, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %28, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %32, %28
  br i1 %cmp.i.not.i.i.i, label %do.body.i.i.i, label %get_next_buf.exit.i.i

do.body.i.i.i:                                    ; preds = %if.then20.i
  %33 = load i32, ptr @tm6000_debug, align 4
  %and.i.i.i = and i32 %33, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %do.body.i.i.i.tm6000_isoc_copy.exit_crit_edge, label %do.end.i.i.i

do.body.i.i.i.tm6000_isoc_copy.exit_crit_edge:    ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tm6000_isoc_copy.exit

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %call5.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %34, ptr noundef %add.ptr.i.i, ptr noundef nonnull @.str.69) #13
  br label %tm6000_isoc_copy.exit

get_next_buf.exit.i.i:                            ; preds = %if.then20.i
  %add.ptr12.i.i.i = getelementptr i8, ptr %32, i32 -40
  %tobool.not.i16.i = icmp eq ptr %add.ptr12.i.i.i, null
  br i1 %tobool.not.i16.i, label %get_next_buf.exit.i.i.tm6000_isoc_copy.exit_crit_edge, label %if.end.i.i

get_next_buf.exit.i.i.tm6000_isoc_copy.exit_crit_edge: ; preds = %get_next_buf.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tm6000_isoc_copy.exit

if.end.i.i:                                       ; preds = %get_next_buf.exit.i.i
  %call.i17.i = tail call ptr @videobuf_to_vmalloc(ptr noundef nonnull %add.ptr12.i.i.i) #10
  %tobool2.not.i.i = icmp eq ptr %call.i17.i, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.tm6000_isoc_copy.exit_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  br label %while.body.i.i

if.end.i.i.tm6000_isoc_copy.exit_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tm6000_isoc_copy.exit

while.body.i.i:                                   ; preds = %if.end30.i.i.while.body.i.i_crit_edge, %if.end.i.i.while.body.i.i_crit_edge
  %ptr.addr.091.i.i = phi ptr [ %add.ptr8.i.i, %if.end30.i.i.while.body.i.i_crit_edge ], [ %add.ptr14.i, %if.end.i.i.while.body.i.i_crit_edge ]
  %outp.190.i.i = phi ptr [ %outp.2.i.i, %if.end30.i.i.while.body.i.i_crit_edge ], [ %call.i17.i, %if.end.i.i.while.body.i.i_crit_edge ]
  %pos.089.i.i = phi i32 [ %pos.1.i.i, %if.end30.i.i.while.body.i.i_crit_edge ], [ %30, %if.end.i.i.while.body.i.i_crit_edge ]
  %len.addr.088.i.i = phi i32 [ %sub9.i.i, %if.end30.i.i.while.body.i.i_crit_edge ], [ %20, %if.end.i.i.while.body.i.i_crit_edge ]
  %buf.086.i.i = phi ptr [ %buf.1.i.i, %if.end30.i.i.while.body.i.i_crit_edge ], [ %add.ptr12.i.i.i, %if.end.i.i.while.body.i.i_crit_edge ]
  %size.i.i = getelementptr inbounds %struct.videobuf_buffer, ptr %buf.086.i.i, i32 0, i32 5
  %35 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size.i.i, align 4
  %sub.i.i = sub i32 %36, %pos.089.i.i
  %37 = tail call i32 @llvm.umin.i32(i32 %len.addr.088.i.i, i32 %sub.i.i) #10
  %arrayidx.i.i = getelementptr i8, ptr %outp.190.i.i, i32 %pos.089.i.i
  %38 = call ptr @memcpy(ptr %arrayidx.i.i, ptr %ptr.addr.091.i.i, i32 %37)
  %add.i.i = add i32 %37, %pos.089.i.i
  %add.ptr8.i.i = getelementptr i8, ptr %ptr.addr.091.i.i, i32 %37
  %sub9.i.i = sub i32 %len.addr.088.i.i, %37
  %39 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %40)
  %cmp12.not.i.i = icmp ult i32 %add.i.i, %40
  br i1 %cmp12.not.i.i, label %while.body.i.i.if.end30.i.i_crit_edge, label %if.then13.i.i

while.body.i.i.if.end30.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i.i

if.then13.i.i:                                    ; preds = %while.body.i.i
  %41 = load i32, ptr @tm6000_debug, align 4
  %and.i61.i.i = and i32 %41, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i61.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then13.i.i.do.end2.i.i.i_crit_edge, label %do.end.i62.i.i

if.then13.i.i.do.end2.i.i.i_crit_edge:            ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end2.i.i.i

do.end.i62.i.i:                                   ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %43 = ptrtoint ptr %buf.086.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %buf.086.i.i, align 8
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %42, ptr noundef %add.ptr.i.i, ptr noundef nonnull @.str.71, ptr noundef %buf.086.i.i, i32 noundef %44) #13
  br label %do.end2.i.i.i

do.end2.i.i.i:                                    ; preds = %do.end.i62.i.i, %if.then13.i.i.do.end2.i.i.i_crit_edge
  %state.i.i.i = getelementptr inbounds %struct.videobuf_buffer, ptr %buf.086.i.i, i32 0, i32 7
  %45 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4, ptr %state.i.i.i, align 4
  %field_count.i.i.i = getelementptr inbounds %struct.videobuf_buffer, ptr %buf.086.i.i, i32 0, i32 11
  %46 = ptrtoint ptr %field_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %field_count.i.i.i, align 4
  %inc.i.i.i = add i32 %47, 1
  store i32 %inc.i.i.i, ptr %field_count.i.i.i, align 4
  %call.i.i.i.i = tail call i64 @ktime_get() #10
  %ts.i.i.i = getelementptr inbounds %struct.videobuf_buffer, ptr %buf.086.i.i, i32 0, i32 12
  %48 = ptrtoint ptr %ts.i.i.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %call.i.i.i.i, ptr %ts.i.i.i, align 8
  %queue.i.i.i = getelementptr inbounds %struct.videobuf_buffer, ptr %buf.086.i.i, i32 0, i32 9
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue.i.i.i) #10
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %do.end2.i.i.i.buffer_filled.exit.i.i_crit_edge

do.end2.i.i.i.buffer_filled.exit.i.i_crit_edge:   ; preds = %do.end2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %buffer_filled.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.end2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i.i = getelementptr inbounds %struct.videobuf_buffer, ptr %buf.086.i.i, i32 0, i32 9, i32 1
  %49 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %51 = ptrtoint ptr %queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %queue.i.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev1.i.i.i.i.i.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %52, ptr %50, align 4
  br label %buffer_filled.exit.i.i

buffer_filled.exit.i.i:                           ; preds = %if.end.i.i.i.i.i, %do.end2.i.i.i.buffer_filled.exit.i.i_crit_edge
  %55 = ptrtoint ptr %queue.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 256 to ptr), ptr %queue.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.videobuf_buffer, ptr %buf.086.i.i, i32 0, i32 9, i32 1
  %56 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  %done.i.i.i = getelementptr inbounds %struct.videobuf_buffer, ptr %buf.086.i.i, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %done.i.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  %57 = load i32, ptr @tm6000_debug, align 4
  %and.i18.i = and i32 %57, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i18.i)
  %tobool14.not.i.i = icmp eq i32 %and.i18.i, 0
  br i1 %tobool14.not.i.i, label %buffer_filled.exit.i.i.do.end21.i.i_crit_edge, label %do.end.i19.i

buffer_filled.exit.i.i.do.end21.i.i_crit_edge:    ; preds = %buffer_filled.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end21.i.i

do.end.i19.i:                                     ; preds = %buffer_filled.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %58 = load volatile i32, ptr @jiffies, align 128
  %call18.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %58, ptr noundef %add.ptr.i.i, ptr noundef nonnull @.str.67) #13
  br label %do.end21.i.i

do.end21.i.i:                                     ; preds = %do.end.i19.i, %buffer_filled.exit.i.i.do.end21.i.i_crit_edge
  %59 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %28, align 4
  %cmp.i.not.i64.i.i = icmp eq ptr %60, %28
  br i1 %cmp.i.not.i64.i.i, label %do.body.i67.i.i, label %get_next_buf.exit73.i.i

do.body.i67.i.i:                                  ; preds = %do.end21.i.i
  %61 = load i32, ptr @tm6000_debug, align 4
  %and.i65.i.i = and i32 %61, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i65.i.i)
  %tobool1.not.i66.i.i = icmp eq i32 %and.i65.i.i, 0
  br i1 %tobool1.not.i66.i.i, label %do.body.i67.i.i.while.end.i.i_crit_edge, label %do.end.i69.i.i

do.body.i67.i.i.while.end.i.i_crit_edge:          ; preds = %do.body.i67.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

do.end.i69.i.i:                                   ; preds = %do.body.i67.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  %call5.i68.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %62, ptr noundef %add.ptr.i.i, ptr noundef nonnull @.str.69) #13
  br label %while.end.i.i

get_next_buf.exit73.i.i:                          ; preds = %do.end21.i.i
  %add.ptr12.i70.i.i = getelementptr i8, ptr %60, i32 -40
  %tobool22.not.i.i = icmp eq ptr %add.ptr12.i70.i.i, null
  br i1 %tobool22.not.i.i, label %get_next_buf.exit73.i.i.while.end.i.i_crit_edge, label %if.end24.i.i

get_next_buf.exit73.i.i.while.end.i.i_crit_edge:  ; preds = %get_next_buf.exit73.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

if.end24.i.i:                                     ; preds = %get_next_buf.exit73.i.i
  %call26.i.i = tail call ptr @videobuf_to_vmalloc(ptr noundef nonnull %add.ptr12.i70.i.i) #10
  %tobool27.not.i.i = icmp eq ptr %call26.i.i, null
  br i1 %tobool27.not.i.i, label %if.end24.i.i.for.inc.i_crit_edge, label %if.end24.i.i.if.end30.i.i_crit_edge

if.end24.i.i.if.end30.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i.i

if.end24.i.i.for.inc.i_crit_edge:                 ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end30.i.i:                                     ; preds = %if.end24.i.i.if.end30.i.i_crit_edge, %while.body.i.i.if.end30.i.i_crit_edge
  %buf.1.i.i = phi ptr [ %buf.086.i.i, %while.body.i.i.if.end30.i.i_crit_edge ], [ %add.ptr12.i70.i.i, %if.end24.i.i.if.end30.i.i_crit_edge ]
  %pos.1.i.i = phi i32 [ %add.i.i, %while.body.i.i.if.end30.i.i_crit_edge ], [ 0, %if.end24.i.i.if.end30.i.i_crit_edge ]
  %outp.2.i.i = phi ptr [ %outp.190.i.i, %while.body.i.i.if.end30.i.i_crit_edge ], [ %call26.i.i, %if.end24.i.i.if.end30.i.i_crit_edge ]
  %cmp.not.i.i = icmp eq i32 %sub9.i.i, 0
  br i1 %cmp.not.i.i, label %if.end30.i.i.while.end.i.i_crit_edge, label %if.end30.i.i.while.body.i.i_crit_edge

if.end30.i.i.while.body.i.i_crit_edge:            ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

if.end30.i.i.while.end.i.i_crit_edge:             ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %if.end30.i.i.while.end.i.i_crit_edge, %get_next_buf.exit73.i.i.while.end.i.i_crit_edge, %do.end.i69.i.i, %do.body.i67.i.i.while.end.i.i_crit_edge
  %pos.2.i.i = phi i32 [ 0, %do.end.i69.i.i ], [ 0, %do.body.i67.i.i.while.end.i.i_crit_edge ], [ %pos.1.i.i, %if.end30.i.i.while.end.i.i_crit_edge ], [ 0, %get_next_buf.exit73.i.i.while.end.i.i_crit_edge ]
  %63 = ptrtoint ptr %pos1.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %pos.2.i.i, ptr %pos1.i.i, align 4
  br label %for.inc.i

if.else.i:                                        ; preds = %if.then18.i
  %data40.i.i = ptrtoint ptr %add.ptr14.i to i32
  %64 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %context, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %65, i32 -5496
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr14.i, i32 %20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %header.i.i) #10
  %66 = ptrtoint ptr %header.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %header.i.i, align 4
  %radio.i.i = getelementptr i8, ptr %65, i32 -5084
  %67 = ptrtoint ptr %radio.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %radio.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i22.i = icmp eq i8 %68, 0
  br i1 %tobool.not.i22.i, label %if.then.i.i, label %if.else.i.if.end7.i.i_crit_edge

if.else.i.if.end7.i.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i

if.then.i.i:                                      ; preds = %if.else.i
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %65, align 4
  %cmp.i.not.i.i23.i = icmp eq ptr %70, %65
  br i1 %cmp.i.not.i.i23.i, label %do.body.i.i26.i, label %get_next_buf.exit.i31.i

do.body.i.i26.i:                                  ; preds = %if.then.i.i
  %71 = load i32, ptr @tm6000_debug, align 4
  %and.i.i24.i = and i32 %71, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i24.i)
  %tobool1.not.i.i25.i = icmp eq i32 %and.i.i24.i, 0
  br i1 %tobool1.not.i.i25.i, label %do.body.i.i26.i.copy_streams.exit.i_crit_edge, label %do.end.i.i28.i

do.body.i.i26.i.copy_streams.exit.i_crit_edge:    ; preds = %do.body.i.i26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_streams.exit.i

do.end.i.i28.i:                                   ; preds = %do.body.i.i26.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %72 = load volatile i32, ptr @jiffies, align 128
  %call5.i.i27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %72, ptr noundef %add.ptr.i21.i, ptr noundef nonnull @.str.69) #13
  br label %copy_streams.exit.i

get_next_buf.exit.i31.i:                          ; preds = %if.then.i.i
  %add.ptr12.i.i29.i = getelementptr i8, ptr %70, i32 -40
  %tobool2.not.i30.i = icmp eq ptr %add.ptr12.i.i29.i, null
  br i1 %tobool2.not.i30.i, label %get_next_buf.exit.i31.i.copy_streams.exit.i_crit_edge, label %if.end.i33.i

get_next_buf.exit.i31.i.copy_streams.exit.i_crit_edge: ; preds = %get_next_buf.exit.i31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_streams.exit.i

if.end.i33.i:                                     ; preds = %get_next_buf.exit.i31.i
  %call.i32.i = tail call ptr @videobuf_to_vmalloc(ptr noundef nonnull %add.ptr12.i.i29.i) #10
  %tobool4.not.i.i = icmp eq ptr %call.i32.i, null
  br i1 %tobool4.not.i.i, label %if.end.i33.i.copy_streams.exit.i_crit_edge, label %if.end.i33.i.if.end7.i.i_crit_edge

if.end.i33.i.if.end7.i.i_crit_edge:               ; preds = %if.end.i33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i

if.end.i33.i.copy_streams.exit.i_crit_edge:       ; preds = %if.end.i33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_streams.exit.i

if.end7.i.i:                                      ; preds = %if.end.i33.i.if.end7.i.i_crit_edge, %if.else.i.if.end7.i.i_crit_edge
  %vbuf.0.i.i = phi ptr [ %add.ptr12.i.i29.i, %if.end.i33.i.if.end7.i.i_crit_edge ], [ null, %if.else.i.if.end7.i.i_crit_edge ]
  %voutp.0.i.i = phi ptr [ %call.i32.i, %if.end.i33.i.if.end7.i.i_crit_edge ], [ null, %if.else.i.if.end7.i.i_crit_edge ]
  %cmp32.i.i = icmp ugt ptr %add.ptr1.i.i, %add.ptr14.i
  br i1 %cmp32.i.i, label %for.body.lr.ph.i.i, label %if.end7.i.i.copy_streams.exit.i_crit_edge

if.end7.i.i.copy_streams.exit.i_crit_edge:        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_streams.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end7.i.i
  %cmd8.i.i = getelementptr i8, ptr %65, i32 1024
  %size120.i.i = getelementptr i8, ptr %65, i32 1032
  %pos122.i.i = getelementptr i8, ptr %65, i32 1028
  %pktsize124.i.i = getelementptr i8, ptr %65, i32 1036
  %field126.i.i = getelementptr i8, ptr %65, i32 1044
  %tmp_buf_len.i.i = getelementptr i8, ptr %65, i32 1052
  %add.ptr43.i.i = getelementptr i8, ptr %add.ptr1.i.i, i32 -3
  %tmp_buf.i.i = getelementptr i8, ptr %65, i32 1048
  %vfield.i.i = getelementptr i8, ptr %65, i32 1040
  %sub.ptr.lhs.cast128.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %73 = add nsw i32 %20, -3
  %74 = add i32 %73, %data40.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end198.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %voutp.137.i.i = phi ptr [ %voutp.0.i.i, %for.body.lr.ph.i.i ], [ %voutp.3.i.i, %if.end198.i.i.for.body.i.i_crit_edge ]
  %pos.036.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %pos.1.i56.i, %if.end198.i.i.for.body.i.i_crit_edge ]
  %ptr.035.i.i = phi ptr [ %add.ptr14.i, %for.body.lr.ph.i.i ], [ %ptr.5.i.i, %if.end198.i.i.for.body.i.i_crit_edge ]
  %vbuf.133.i.i = phi ptr [ %vbuf.0.i.i, %for.body.lr.ph.i.i ], [ %vbuf.3.i.i, %if.end198.i.i.for.body.i.i_crit_edge ]
  %ptr.03541.i.i = ptrtoint ptr %ptr.035.i.i to i32
  %75 = ptrtoint ptr %cmd8.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %cmd8.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool9.not.i.i = icmp eq i8 %76, 0
  br i1 %tobool9.not.i.i, label %if.then10.i.i, label %if.else115.i.i

if.then10.i.i:                                    ; preds = %for.body.i.i
  %77 = ptrtoint ptr %tmp_buf_len.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tmp_buf_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp12.i.i = icmp sgt i32 %78, 0
  br i1 %cmp12.i.i, label %if.then13.i34.i, label %if.else.i.i

if.then13.i34.i:                                  ; preds = %if.then10.i.i
  %79 = ptrtoint ptr %tmp_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tmp_buf.i.i, align 8
  %81 = ptrtoint ptr %header.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %header.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %78)
  %cmp17.i.i = icmp ult i32 %78, 4
  br i1 %cmp17.i.i, label %if.then18.i.i, label %if.then13.i34.i.if.end29.i.i_crit_edge

if.then13.i34.i.if.end29.i.i_crit_edge:           ; preds = %if.then13.i34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i.i

if.then18.i.i:                                    ; preds = %if.then13.i34.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i35.i = sub nuw nsw i32 4, %78
  %add.ptr21.i.i = getelementptr i8, ptr %header.i.i, i32 %78
  %82 = call ptr @memcpy(ptr %add.ptr21.i.i, ptr %ptr.035.i.i, i32 %sub.i35.i)
  %add.ptr28.i.i = getelementptr i8, ptr %ptr.035.i.i, i32 %sub.i35.i
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then18.i.i, %if.then13.i34.i.if.end29.i.i_crit_edge
  %ptr.1.i.i = phi ptr [ %add.ptr28.i.i, %if.then18.i.i ], [ %ptr.035.i.i, %if.then13.i34.i.if.end29.i.i_crit_edge ]
  %83 = ptrtoint ptr %tmp_buf_len.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %tmp_buf_len.i.i, align 4
  br label %if.end52.i.i

if.else.i.i:                                      ; preds = %if.then10.i.i
  %add.ptr32.i.i = getelementptr i8, ptr %ptr.035.i.i, i32 3
  %cmp33.not.i.i = icmp ult ptr %add.ptr32.i.i, %add.ptr1.i.i
  br i1 %cmp33.not.i.i, label %for.cond42.preheader.i.i, label %if.then34.i.i

for.cond42.preheader.i.i:                         ; preds = %if.else.i.i
  %cmp4427.i.i = icmp ult ptr %ptr.035.i.i, %add.ptr43.i.i
  br i1 %cmp4427.i.i, label %for.body45.preheader.i.i, label %for.cond42.preheader.i.i.for.end.i.i_crit_edge

for.cond42.preheader.i.i.for.end.i.i_crit_edge:   ; preds = %for.cond42.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body45.preheader.i.i:                         ; preds = %for.cond42.preheader.i.i
  %uglygep.i.i = getelementptr i8, ptr %ptr.035.i.i, i32 %74
  %84 = sub i32 0, %ptr.03541.i.i
  %uglygep42.i.i = getelementptr i8, ptr %uglygep.i.i, i32 %84
  br label %for.body45.i.i

if.then34.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ptr.03541.i.i.le = ptrtoint ptr %ptr.035.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast128.i.i, %ptr.03541.i.i.le
  %85 = ptrtoint ptr %tmp_buf_len.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %sub.ptr.sub.i.i, ptr %tmp_buf_len.i.i, align 4
  %86 = call ptr @memcpy(ptr %tmp_buf.i.i, ptr %ptr.035.i.i, i32 %sub.ptr.sub.i.i)
  br label %copy_streams.exit.i

for.body45.i.i:                                   ; preds = %for.inc.i.i.for.body45.i.i_crit_edge, %for.body45.preheader.i.i
  %ptr.228.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body45.i.i_crit_edge ], [ %ptr.035.i.i, %for.body45.preheader.i.i ]
  %add.ptr46.i.i = getelementptr i8, ptr %ptr.228.i.i, i32 3
  %87 = ptrtoint ptr %add.ptr46.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %add.ptr46.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 71, i8 %88)
  %cmp47.i.i = icmp eq i8 %88, 71
  br i1 %cmp47.i.i, label %for.body45.i.i.for.end.i.i_crit_edge, label %for.inc.i.i

for.body45.i.i.for.end.i.i_crit_edge:             ; preds = %for.body45.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %for.body45.i.i
  %incdec.ptr.i.i = getelementptr i8, ptr %ptr.228.i.i, i32 1
  %exitcond.not.i.i = icmp eq ptr %incdec.ptr.i.i, %uglygep42.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body45.i.i_crit_edge

for.inc.i.i.for.body45.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body45.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.body45.i.i.for.end.i.i_crit_edge, %for.cond42.preheader.i.i.for.end.i.i_crit_edge
  %ptr.2.lcssa.i.i = phi ptr [ %ptr.035.i.i, %for.cond42.preheader.i.i.for.end.i.i_crit_edge ], [ %ptr.228.i.i, %for.body45.i.i.for.end.i.i_crit_edge ], [ %uglygep42.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %89 = ptrtoint ptr %ptr.2.lcssa.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %ptr.2.lcssa.i.i, align 4
  %91 = ptrtoint ptr %header.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %header.i.i, align 4
  %add.ptr51.i.i = getelementptr i8, ptr %ptr.2.lcssa.i.i, i32 4
  br label %if.end52.i.i

if.end52.i.i:                                     ; preds = %for.end.i.i, %if.end29.i.i
  %ptr.3.i.i = phi ptr [ %ptr.1.i.i, %if.end29.i.i ], [ %add.ptr51.i.i, %for.end.i.i ]
  %92 = ptrtoint ptr %header.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %header.i.i, align 4
  %and.i36.i = shl i32 %93, 1
  %shl.i.i = and i32 %and.i36.i, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i.i)
  %cmp53.not.i.i = icmp eq i32 %shl.i.i, 0
  %sub56.i.i = add nsw i32 %shl.i.i, -4
  %shr.i.i = lshr i32 %93, 7
  %and58.i.i = and i32 %shr.i.i, 15
  %shr59.i.i = lshr i32 %93, 11
  %and60.i.i = and i32 %shr59.i.i, 1
  %shr63.i.i = lshr i32 %93, 21
  %and64.i.i = and i32 %shr63.i.i, 7
  %94 = tail call i32 @llvm.umin.i32(i32 %sub56.i.i, i32 180) #10
  %95 = select i1 %cmp53.not.i.i, i32 0, i32 %94
  %96 = zext i32 %and64.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %and64.i.i, label %if.end52.i.i.if.end127.i.i_crit_edge [
    i32 1, label %sw.bb.i37.i
    i32 4, label %if.end52.i.i.sw.bb114.i.i_crit_edge
    i32 2, label %if.end52.i.i.sw.bb114.i.i_crit_edge75
  ]

if.end52.i.i.sw.bb114.i.i_crit_edge75:            ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb114.i.i

if.end52.i.i.sw.bb114.i.i_crit_edge:              ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb114.i.i

if.end52.i.i.if.end127.i.i_crit_edge:             ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127.i.i

sw.bb.i37.i:                                      ; preds = %if.end52.i.i
  %97 = ptrtoint ptr %radio.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %radio.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool70.not.i.i = icmp eq i8 %98, 0
  br i1 %tobool70.not.i.i, label %if.then71.i.i, label %sw.bb.i37.i.if.end127.i.i_crit_edge

sw.bb.i37.i.if.end127.i.i_crit_edge:              ; preds = %sw.bb.i37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127.i.i

if.then71.i.i:                                    ; preds = %sw.bb.i37.i
  %99 = ptrtoint ptr %vfield.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %vfield.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %and60.i.i)
  %cmp73.not.i.i = icmp eq i32 %100, %and60.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i.i)
  %cmp75.not.i.i = icmp eq i32 %and60.i.i, 0
  %or.cond.i.i = or i1 %cmp75.not.i.i, %cmp73.not.i.i
  br i1 %or.cond.i.i, label %if.then71.i.i.if.end97.i.i_crit_edge, label %if.then77.i.i

if.then71.i.i.if.end97.i.i_crit_edge:             ; preds = %if.then71.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97.i.i

if.then77.i.i:                                    ; preds = %if.then71.i.i
  %101 = load i32, ptr @tm6000_debug, align 4
  %and.i2.i.i = and i32 %101, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i)
  %tobool.not.i.i38.i = icmp eq i32 %and.i2.i.i, 0
  br i1 %tobool.not.i.i38.i, label %if.then77.i.i.do.end2.i.i47.i_crit_edge, label %do.end.i3.i.i

if.then77.i.i.do.end2.i.i47.i_crit_edge:          ; preds = %if.then77.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end2.i.i47.i

do.end.i3.i.i:                                    ; preds = %if.then77.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %102 = load volatile i32, ptr @jiffies, align 128
  %103 = ptrtoint ptr %vbuf.133.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %vbuf.133.i.i, align 8
  %call.i.i39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %102, ptr noundef %add.ptr.i21.i, ptr noundef nonnull @.str.71, ptr noundef %vbuf.133.i.i, i32 noundef %104) #13
  br label %do.end2.i.i47.i

do.end2.i.i47.i:                                  ; preds = %do.end.i3.i.i, %if.then77.i.i.do.end2.i.i47.i_crit_edge
  %state.i.i40.i = getelementptr inbounds %struct.videobuf_buffer, ptr %vbuf.133.i.i, i32 0, i32 7
  %105 = ptrtoint ptr %state.i.i40.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 4, ptr %state.i.i40.i, align 4
  %field_count.i.i41.i = getelementptr inbounds %struct.videobuf_buffer, ptr %vbuf.133.i.i, i32 0, i32 11
  %106 = ptrtoint ptr %field_count.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %field_count.i.i41.i, align 4
  %inc.i.i42.i = add i32 %107, 1
  store i32 %inc.i.i42.i, ptr %field_count.i.i41.i, align 4
  %call.i.i.i43.i = tail call i64 @ktime_get() #10
  %ts.i.i44.i = getelementptr inbounds %struct.videobuf_buffer, ptr %vbuf.133.i.i, i32 0, i32 12
  %108 = ptrtoint ptr %ts.i.i44.i to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %call.i.i.i43.i, ptr %ts.i.i44.i, align 8
  %queue.i.i45.i = getelementptr inbounds %struct.videobuf_buffer, ptr %vbuf.133.i.i, i32 0, i32 9
  %call.i.i.i.i46.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue.i.i45.i) #10
  br i1 %call.i.i.i.i46.i, label %if.end.i.i.i.i50.i, label %do.end2.i.i47.i.buffer_filled.exit.i53.i_crit_edge

do.end2.i.i47.i.buffer_filled.exit.i53.i_crit_edge: ; preds = %do.end2.i.i47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %buffer_filled.exit.i53.i

if.end.i.i.i.i50.i:                               ; preds = %do.end2.i.i47.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i48.i = getelementptr inbounds %struct.videobuf_buffer, ptr %vbuf.133.i.i, i32 0, i32 9, i32 1
  %109 = ptrtoint ptr %prev.i.i.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %prev.i.i.i.i48.i, align 4
  %111 = ptrtoint ptr %queue.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %queue.i.i45.i, align 4
  %prev1.i.i.i.i.i49.i = getelementptr inbounds %struct.list_head, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %prev1.i.i.i.i.i49.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %110, ptr %prev1.i.i.i.i.i49.i, align 4
  %114 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile ptr %112, ptr %110, align 4
  br label %buffer_filled.exit.i53.i

buffer_filled.exit.i53.i:                         ; preds = %if.end.i.i.i.i50.i, %do.end2.i.i47.i.buffer_filled.exit.i53.i_crit_edge
  %115 = ptrtoint ptr %queue.i.i45.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr inttoptr (i32 256 to ptr), ptr %queue.i.i45.i, align 4
  %prev.i.i.i51.i = getelementptr inbounds %struct.videobuf_buffer, ptr %vbuf.133.i.i, i32 0, i32 9, i32 1
  %116 = ptrtoint ptr %prev.i.i.i51.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i51.i, align 4
  %done.i.i52.i = getelementptr inbounds %struct.videobuf_buffer, ptr %vbuf.133.i.i, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %done.i.i52.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  %117 = load i32, ptr @tm6000_debug, align 4
  %and78.i.i = and i32 %117, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78.i.i)
  %tobool79.not.i.i = icmp eq i32 %and78.i.i, 0
  br i1 %tobool79.not.i.i, label %buffer_filled.exit.i53.i.do.end86.i.i_crit_edge, label %do.end.i54.i

buffer_filled.exit.i53.i.do.end86.i.i_crit_edge:  ; preds = %buffer_filled.exit.i53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end86.i.i

do.end.i54.i:                                     ; preds = %buffer_filled.exit.i53.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %118 = load volatile i32, ptr @jiffies, align 128
  %call83.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %118, ptr noundef %add.ptr.i21.i, ptr noundef nonnull @.str.72) #13
  br label %do.end86.i.i

do.end86.i.i:                                     ; preds = %do.end.i54.i, %buffer_filled.exit.i53.i.do.end86.i.i_crit_edge
  %119 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile ptr, ptr %65, align 4
  %cmp.i.not.i5.i.i = icmp eq ptr %120, %65
  br i1 %cmp.i.not.i5.i.i, label %do.body.i8.i.i, label %get_next_buf.exit14.i.i

do.body.i8.i.i:                                   ; preds = %do.end86.i.i
  %121 = load i32, ptr @tm6000_debug, align 4
  %and.i6.i.i = and i32 %121, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6.i.i)
  %tobool1.not.i7.i.i = icmp eq i32 %and.i6.i.i, 0
  br i1 %tobool1.not.i7.i.i, label %do.body.i8.i.i.copy_streams.exit.i_crit_edge, label %do.end.i10.i.i

do.body.i8.i.i.copy_streams.exit.i_crit_edge:     ; preds = %do.body.i8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_streams.exit.i

do.end.i10.i.i:                                   ; preds = %do.body.i8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %122 = load volatile i32, ptr @jiffies, align 128
  %call5.i9.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %122, ptr noundef %add.ptr.i21.i, ptr noundef nonnull @.str.69) #13
  br label %copy_streams.exit.i

get_next_buf.exit14.i.i:                          ; preds = %do.end86.i.i
  %add.ptr12.i11.i.i = getelementptr i8, ptr %120, i32 -40
  %tobool87.not.i.i = icmp eq ptr %add.ptr12.i11.i.i, null
  br i1 %tobool87.not.i.i, label %get_next_buf.exit14.i.i.copy_streams.exit.i_crit_edge, label %if.end89.i.i

get_next_buf.exit14.i.i.copy_streams.exit.i_crit_edge: ; preds = %get_next_buf.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_streams.exit.i

if.end89.i.i:                                     ; preds = %get_next_buf.exit14.i.i
  %call91.i.i = tail call ptr @videobuf_to_vmalloc(ptr noundef nonnull %add.ptr12.i11.i.i) #10
  %tobool92.not.i.i = icmp eq ptr %call91.i.i, null
  br i1 %tobool92.not.i.i, label %if.end89.i.i.copy_streams.exit.i_crit_edge, label %if.end94.i.i

if.end89.i.i.copy_streams.exit.i_crit_edge:       ; preds = %if.end89.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_streams.exit.i

if.end94.i.i:                                     ; preds = %if.end89.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %size96.i.i = getelementptr i8, ptr %120, i32 -20
  %123 = ptrtoint ptr %size96.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %size96.i.i, align 4
  %125 = call ptr @memset(ptr %call91.i.i, i32 0, i32 %124)
  br label %if.end97.i.i

if.end97.i.i:                                     ; preds = %if.end94.i.i, %if.then71.i.i.if.end97.i.i_crit_edge
  %vbuf.2.i.i = phi ptr [ %vbuf.133.i.i, %if.then71.i.i.if.end97.i.i_crit_edge ], [ %add.ptr12.i11.i.i, %if.end94.i.i ]
  %voutp.2.i.i = phi ptr [ %voutp.137.i.i, %if.then71.i.i.if.end97.i.i_crit_edge ], [ %call91.i.i, %if.end94.i.i ]
  %width.i.i = getelementptr inbounds %struct.videobuf_buffer, ptr %vbuf.2.i.i, i32 0, i32 2
  %126 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %width.i.i, align 8
  %shl100.i.i = and i32 %shr59.i.i, 1022
  %128 = xor i32 %and60.i.i, -1
  %sub102.i.i = add nsw i32 %shl100.i.i, %128
  %shl99.i.i = shl nsw i32 %sub102.i.i, 1
  %mul.i.i = mul i32 %shl99.i.i, %127
  %mul103.i.i = mul nuw nsw i32 %and58.i.i, 180
  %add.i55.i = add i32 %mul.i.i, %mul103.i.i
  %add104.i.i = add i32 %add.i55.i, %95
  %size106.i.i = getelementptr inbounds %struct.videobuf_buffer, ptr %vbuf.2.i.i, i32 0, i32 5
  %129 = ptrtoint ptr %size106.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %size106.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add104.i.i, i32 %130)
  %cmp107.i.i = icmp ugt i32 %add104.i.i, %130
  %spec.select1.i.i = select i1 %cmp107.i.i, i32 5, i32 1
  %131 = ptrtoint ptr %vfield.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %and60.i.i, ptr %vfield.i.i, align 8
  br label %if.end127.i.i

sw.bb114.i.i:                                     ; preds = %if.end52.i.i.sw.bb114.i.i_crit_edge, %if.end52.i.i.sw.bb114.i.i_crit_edge75
  br label %if.end127.i.i

if.else115.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv118.i.i = zext i8 %76 to i32
  %132 = ptrtoint ptr %size120.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %size120.i.i, align 8
  %134 = ptrtoint ptr %pos122.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %pos122.i.i, align 4
  %136 = ptrtoint ptr %pktsize124.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %pktsize124.i.i, align 4
  %138 = ptrtoint ptr %field126.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %field126.i.i, align 4
  br label %if.end127.i.i

if.end127.i.i:                                    ; preds = %if.else115.i.i, %sw.bb114.i.i, %if.end97.i.i, %sw.bb.i37.i.if.end127.i.i_crit_edge, %if.end52.i.i.if.end127.i.i_crit_edge
  %vbuf.3.i.i = phi ptr [ %vbuf.133.i.i, %if.end52.i.i.if.end127.i.i_crit_edge ], [ %vbuf.133.i.i, %sw.bb114.i.i ], [ %vbuf.2.i.i, %if.end97.i.i ], [ %vbuf.133.i.i, %sw.bb.i37.i.if.end127.i.i_crit_edge ], [ %vbuf.133.i.i, %if.else115.i.i ]
  %ptr.4.i.i = phi ptr [ %ptr.3.i.i, %if.end52.i.i.if.end127.i.i_crit_edge ], [ %ptr.3.i.i, %sw.bb114.i.i ], [ %ptr.3.i.i, %if.end97.i.i ], [ %ptr.3.i.i, %sw.bb.i37.i.if.end127.i.i_crit_edge ], [ %ptr.035.i.i, %if.else115.i.i ]
  %cmd.1.i.i = phi i32 [ %and64.i.i, %if.end52.i.i.if.end127.i.i_crit_edge ], [ %and64.i.i, %sw.bb114.i.i ], [ %spec.select1.i.i, %if.end97.i.i ], [ 1, %sw.bb.i37.i.if.end127.i.i_crit_edge ], [ %conv118.i.i, %if.else115.i.i ]
  %pktsize.0.i.i = phi i32 [ 180, %if.end52.i.i.if.end127.i.i_crit_edge ], [ 180, %sw.bb114.i.i ], [ 180, %if.end97.i.i ], [ 180, %sw.bb.i37.i.if.end127.i.i_crit_edge ], [ %137, %if.else115.i.i ]
  %size.1.i.i = phi i32 [ %95, %if.end52.i.i.if.end127.i.i_crit_edge ], [ 180, %sw.bb114.i.i ], [ %95, %if.end97.i.i ], [ %95, %sw.bb.i37.i.if.end127.i.i_crit_edge ], [ %133, %if.else115.i.i ]
  %field.0.i.i = phi i32 [ %and60.i.i, %if.end52.i.i.if.end127.i.i_crit_edge ], [ %and60.i.i, %sw.bb114.i.i ], [ %and60.i.i, %if.end97.i.i ], [ %and60.i.i, %sw.bb.i37.i.if.end127.i.i_crit_edge ], [ %139, %if.else115.i.i ]
  %pos.1.i56.i = phi i32 [ %pos.036.i.i, %if.end52.i.i.if.end127.i.i_crit_edge ], [ %pos.036.i.i, %sw.bb114.i.i ], [ %add.i55.i, %if.end97.i.i ], [ %pos.036.i.i, %sw.bb.i37.i.if.end127.i.i_crit_edge ], [ %135, %if.else115.i.i ]
  %voutp.3.i.i = phi ptr [ %voutp.137.i.i, %if.end52.i.i.if.end127.i.i_crit_edge ], [ %voutp.137.i.i, %sw.bb114.i.i ], [ %voutp.2.i.i, %if.end97.i.i ], [ %voutp.137.i.i, %sw.bb.i37.i.if.end127.i.i_crit_edge ], [ %voutp.137.i.i, %if.else115.i.i ]
  %sub.ptr.rhs.cast129.i.i = ptrtoint ptr %ptr.4.i.i to i32
  %sub.ptr.sub130.i.i = sub i32 %sub.ptr.lhs.cast128.i.i, %sub.ptr.rhs.cast129.i.i
  %140 = tail call i32 @llvm.umin.i32(i32 %sub.ptr.sub130.i.i, i32 %size.1.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool136.not.i.i = icmp eq i32 %140, 0
  br i1 %tobool136.not.i.i, label %if.end127.i.i.if.end168.i.i_crit_edge, label %if.then137.i.i

if.end127.i.i.if.end168.i.i_crit_edge:            ; preds = %if.end127.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end168.i.i

if.then137.i.i:                                   ; preds = %if.end127.i.i
  %trunc.i.i = trunc i32 %cmd.1.i.i to i8
  %141 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.100)
  switch i8 %trunc.i.i, label %if.then137.i.i.if.end168.i.i_crit_edge [
    i8 1, label %sw.bb138.i.i
    i8 2, label %if.then137.i.i.for.body146.i.i_crit_edge
    i8 4, label %sw.bb152.i.i
  ]

if.then137.i.i.for.body146.i.i_crit_edge:         ; preds = %if.then137.i.i
  br label %for.body146.i.i

if.then137.i.i.if.end168.i.i_crit_edge:           ; preds = %if.then137.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end168.i.i

sw.bb138.i.i:                                     ; preds = %if.then137.i.i
  %tobool139.not.i.i = icmp eq ptr %vbuf.3.i.i, null
  br i1 %tobool139.not.i.i, label %sw.bb138.i.i.if.end168.i.i_crit_edge, label %if.then140.i.i

sw.bb138.i.i.if.end168.i.i_crit_edge:             ; preds = %sw.bb138.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end168.i.i

if.then140.i.i:                                   ; preds = %sw.bb138.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i57.i = getelementptr i8, ptr %voutp.3.i.i, i32 %pos.1.i56.i
  %142 = call ptr @memcpy(ptr %arrayidx.i57.i, ptr %ptr.4.i.i, i32 %140)
  br label %if.end168.i.i

for.body146.i.i:                                  ; preds = %for.body146.i.i.for.body146.i.i_crit_edge, %if.then137.i.i.for.body146.i.i_crit_edge
  %i.031.i.i = phi i32 [ %add149.i.i, %for.body146.i.i.for.body146.i.i_crit_edge ], [ 0, %if.then137.i.i.for.body146.i.i_crit_edge ]
  %add.ptr147.i.i = getelementptr i8, ptr %ptr.4.i.i, i32 %i.031.i.i
  %143 = ptrtoint ptr %add.ptr147.i.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %add.ptr147.i.i, align 2
  %145 = tail call i16 @llvm.bswap.i16(i16 %144) #10
  %146 = ptrtoint ptr %add.ptr147.i.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %145, ptr %add.ptr147.i.i, align 2
  %add149.i.i = add i32 %i.031.i.i, 2
  %cmp144.i.i = icmp ult i32 %add149.i.i, %140
  br i1 %cmp144.i.i, label %for.body146.i.i.for.body146.i.i_crit_edge, label %for.cond143.for.end150_crit_edge.i.i

for.body146.i.i.for.body146.i.i_crit_edge:        ; preds = %for.body146.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body146.i.i

for.cond143.for.end150_crit_edge.i.i:             ; preds = %for.body146.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call151.i.i = tail call i32 @tm6000_call_fillbuf(ptr noundef %add.ptr.i21.i, i32 noundef 16, ptr noundef %ptr.4.i.i, i32 noundef %140) #10
  br label %if.end168.i.i

sw.bb152.i.i:                                     ; preds = %if.then137.i.i
  %147 = load i32, ptr @tm6000_debug, align 4
  %and154.i.i = and i32 %147, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154.i.i)
  %tobool155.not.i.i = icmp eq i32 %and154.i.i, 0
  br i1 %tobool155.not.i.i, label %sw.bb152.i.i.if.end168.i.i_crit_edge, label %do.end159.i.i

sw.bb152.i.i.if.end168.i.i_crit_edge:             ; preds = %sw.bb152.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end168.i.i

do.end159.i.i:                                    ; preds = %sw.bb152.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %148 = ptrtoint ptr %ptr.4.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %ptr.4.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %150 = load volatile i32, ptr @jiffies, align 128
  %call163.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %150, ptr noundef %add.ptr.i21.i, ptr noundef nonnull @.str.72, i32 noundef %field.0.i.i, i32 noundef %149) #13
  br label %if.end168.i.i

if.end168.i.i:                                    ; preds = %do.end159.i.i, %sw.bb152.i.i.if.end168.i.i_crit_edge, %for.cond143.for.end150_crit_edge.i.i, %if.then140.i.i, %sw.bb138.i.i.if.end168.i.i_crit_edge, %if.then137.i.i.if.end168.i.i_crit_edge, %if.end127.i.i.if.end168.i.i_crit_edge
  %add.ptr169.i.i = getelementptr i8, ptr %ptr.4.i.i, i32 %pktsize.0.i.i
  %cmp170.i.i = icmp ugt ptr %add.ptr169.i.i, %add.ptr1.i.i
  br i1 %cmp170.i.i, label %if.then172.i.i, label %if.else194.i.i

if.then172.i.i:                                   ; preds = %if.end168.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add173.i.i = add i32 %pos.1.i56.i, %140
  %151 = ptrtoint ptr %pos122.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %add173.i.i, ptr %pos122.i.i, align 4
  %sub176.i.i = sub i32 %size.1.i.i, %140
  %152 = ptrtoint ptr %size120.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %sub176.i.i, ptr %size120.i.i, align 8
  %conv179.i.i = trunc i32 %cmd.1.i.i to i8
  %153 = ptrtoint ptr %cmd8.i.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %conv179.i.i, ptr %cmd8.i.i, align 8
  %154 = ptrtoint ptr %field126.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %field.0.i.i, ptr %field126.i.i, align 4
  %sub187.i.i = sub i32 %pktsize.0.i.i, %sub.ptr.sub130.i.i
  %155 = ptrtoint ptr %pktsize124.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %sub187.i.i, ptr %pktsize124.i.i, align 4
  %add.ptr193.i.i = getelementptr i8, ptr %ptr.4.i.i, i32 %sub.ptr.sub130.i.i
  br label %if.end198.i.i

if.else194.i.i:                                   ; preds = %if.end168.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %156 = ptrtoint ptr %cmd8.i.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 0, ptr %cmd8.i.i, align 8
  br label %if.end198.i.i

if.end198.i.i:                                    ; preds = %if.else194.i.i, %if.then172.i.i
  %ptr.5.i.i = phi ptr [ %add.ptr193.i.i, %if.then172.i.i ], [ %add.ptr169.i.i, %if.else194.i.i ]
  %cmp.i58.i = icmp ult ptr %ptr.5.i.i, %add.ptr1.i.i
  br i1 %cmp.i58.i, label %if.end198.i.i.for.body.i.i_crit_edge, label %if.end198.i.i.copy_streams.exit.i_crit_edge

if.end198.i.i.copy_streams.exit.i_crit_edge:      ; preds = %if.end198.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_streams.exit.i

if.end198.i.i.for.body.i.i_crit_edge:             ; preds = %if.end198.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

copy_streams.exit.i:                              ; preds = %if.end198.i.i.copy_streams.exit.i_crit_edge, %if.end89.i.i.copy_streams.exit.i_crit_edge, %get_next_buf.exit14.i.i.copy_streams.exit.i_crit_edge, %do.end.i10.i.i, %do.body.i8.i.i.copy_streams.exit.i_crit_edge, %if.then34.i.i, %if.end7.i.i.copy_streams.exit.i_crit_edge, %if.end.i33.i.copy_streams.exit.i_crit_edge, %get_next_buf.exit.i31.i.copy_streams.exit.i_crit_edge, %do.end.i.i28.i, %do.body.i.i26.i.copy_streams.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header.i.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %copy_streams.exit.i, %while.end.i.i, %if.end24.i.i.for.inc.i_crit_edge, %if.then11.i.for.inc.i_crit_edge, %if.end7.i.for.inc.i_crit_edge, %do.end18.i.i, %do.body12.i.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.067.i, 1
  %157 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %number_of_packets.i, align 4
  %cmp3.i = icmp slt i32 %inc.i, %158
  br i1 %cmp3.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.tm6000_isoc_copy.exit_crit_edge

for.inc.i.tm6000_isoc_copy.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tm6000_isoc_copy.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

tm6000_isoc_copy.exit:                            ; preds = %for.inc.i.tm6000_isoc_copy.exit_crit_edge, %if.end.i.i.tm6000_isoc_copy.exit_crit_edge, %get_next_buf.exit.i.i.tm6000_isoc_copy.exit_crit_edge, %do.end.i.i.i, %do.body.i.i.i.tm6000_isoc_copy.exit_crit_edge, %do.end.i.i, %sw.epilog.i.i.tm6000_isoc_copy.exit_crit_edge, %for.cond.preheader.i.tm6000_isoc_copy.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call11) #10
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %159 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %number_of_packets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %cmp1857 = icmp sgt i32 %160, 0
  br i1 %cmp1857, label %tm6000_isoc_copy.exit.for.body_crit_edge, label %tm6000_isoc_copy.exit.for.end_crit_edge

tm6000_isoc_copy.exit.for.end_crit_edge:          ; preds = %tm6000_isoc_copy.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

tm6000_isoc_copy.exit.for.body_crit_edge:         ; preds = %tm6000_isoc_copy.exit
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %tm6000_isoc_copy.exit.for.body_crit_edge
  %i.058 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %tm6000_isoc_copy.exit.for.body_crit_edge ]
  %status20 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.058, i32 3
  %161 = ptrtoint ptr %status20 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 0, ptr %status20, align 4
  %actual_length = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.058, i32 2
  %162 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 0, ptr %actual_length, align 4
  %inc = add nuw nsw i32 %i.058, 1
  %163 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %number_of_packets, align 4
  %cmp18 = icmp slt i32 %inc, %164
  br i1 %cmp18, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %tm6000_isoc_copy.exit.for.end_crit_edge
  %call23 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #10
  %165 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %call23, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool.not = icmp eq i32 %call23, 0
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %do.end29

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end29:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.48, i32 noundef %call23) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge73, %entry.cleanup_crit_edge74
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @videobuf_to_vmalloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tm6000_call_fillbuf(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_configuration(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_mmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.tm6000_fh, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.83, i32 noundef 16) #10
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call3 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.84, i32 noundef 32) #10
  %udev = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 8
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 1
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.85, ptr noundef %7, ptr noundef %devpath.i) #10
  %capabilities = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 4
  %8 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -2130706431, ptr %capabilities, align 4
  %tuner_type = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tuner_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp.not = icmp eq i32 %10, 4
  %spec.store.select = select i1 %cmp.not, i32 -2130706431, i32 -2130640895
  %11 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.store.select, ptr %capabilities, align 4
  %caps = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %caps, align 4
  %13 = and i8 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then7

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or9 = or i32 %spec.store.select, 262144
  %14 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or9, ptr %capabilities, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %entry.if.end10_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [3 x %struct.tm6000_fmt], ptr @format, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pixelformat, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_g_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %width = getelementptr inbounds %struct.tm6000_fh, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.tm6000_fh, ptr %priv, i32 0, i32 5
  %3 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %height, align 4
  %height3 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %height3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %height3, align 4
  %field = getelementptr inbounds %struct.tm6000_fh, ptr %priv, i32 0, i32 6, i32 7
  %6 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %field, align 4
  %field5 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %field5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %field5, align 4
  %fmt6 = getelementptr inbounds %struct.tm6000_fh, ptr %priv, i32 0, i32 3
  %9 = ptrtoint ptr %fmt6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fmt6, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %pixelformat, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %14 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %colorspace, align 4
  %15 = load ptr, ptr %fmt6, align 4
  %depth = getelementptr inbounds %struct.tm6000_fmt, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %depth, align 4
  %mul = mul i32 %17, %1
  %shr = lshr i32 %mul, 3
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %18 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr, ptr %bytesperline, align 4
  %mul17 = mul i32 %shr, %4
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %19 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul17, ptr %sizeimage, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.tm6000_fh, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixelformat.i, align 4
  %4 = load i32, ptr @format, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp2.i.i = icmp eq i32 %4, %3
  br i1 %cmp2.i.i, label %entry.format_by_fourcc.exit.i_crit_edge, label %for.inc.i.i

entry.format_by_fourcc.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %format_by_fourcc.exit.i

for.inc.i.i:                                      ; preds = %entry
  %5 = load i32, ptr getelementptr inbounds ([3 x %struct.tm6000_fmt], ptr @format, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp2.1.i.i = icmp eq i32 %5, %3
  br i1 %cmp2.1.i.i, label %for.inc.i.i.format_by_fourcc.exit.i_crit_edge, label %for.inc.1.i.i

for.inc.i.i.format_by_fourcc.exit.i_crit_edge:    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %format_by_fourcc.exit.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %6 = load i32, ptr getelementptr inbounds ([3 x %struct.tm6000_fmt], ptr @format, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp2.2.i.i = icmp eq i32 %6, %3
  br i1 %cmp2.2.i.i, label %for.inc.1.i.i.format_by_fourcc.exit.i_crit_edge, label %for.inc.1.i.i.do.body.i_crit_edge

for.inc.1.i.i.do.body.i_crit_edge:                ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

for.inc.1.i.i.format_by_fourcc.exit.i_crit_edge:  ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %format_by_fourcc.exit.i

format_by_fourcc.exit.i:                          ; preds = %for.inc.1.i.i.format_by_fourcc.exit.i_crit_edge, %for.inc.i.i.format_by_fourcc.exit.i_crit_edge, %entry.format_by_fourcc.exit.i_crit_edge
  %i.07.lcssa.i.i = phi i32 [ 0, %entry.format_by_fourcc.exit.i_crit_edge ], [ 1, %for.inc.i.i.format_by_fourcc.exit.i_crit_edge ], [ 2, %for.inc.1.i.i.format_by_fourcc.exit.i_crit_edge ]
  %add.ptr.i.i = getelementptr %struct.tm6000_fmt, ptr @format, i32 %i.07.lcssa.i.i
  %cmp.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp.i, label %format_by_fourcc.exit.i.do.body.i_crit_edge, label %if.end

format_by_fourcc.exit.i.do.body.i_crit_edge:      ; preds = %format_by_fourcc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.body.i:                                        ; preds = %format_by_fourcc.exit.i.do.body.i_crit_edge, %for.inc.1.i.i.do.body.i_crit_edge
  %7 = load i32, ptr @tm6000_debug, align 4
  %and.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i32 noundef %8, ptr noundef %1, ptr noundef nonnull @.str.87, i32 noundef %3) #13
  br label %cleanup

if.end:                                           ; preds = %format_by_fourcc.exit.i
  %fmt2.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %field12.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  tail call void @tm6000_get_std_res(ptr noundef %1) #10
  %width.i = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %width.i, align 8
  %11 = ptrtoint ptr %fmt2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fmt2.i, align 4
  %height.i = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height.i, align 4
  %height16.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %height16.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %height16.i, align 4
  %and19.i = and i32 %10, -2
  store i32 %and19.i, ptr %fmt2.i, align 4
  %15 = ptrtoint ptr %field12.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %field12.i, align 4
  %depth.i = getelementptr %struct.tm6000_fmt, ptr @format, i32 %i.07.lcssa.i.i, i32 1
  %16 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %depth.i, align 4
  %mul.i = mul i32 %17, %and19.i
  %shr.i = lshr i32 %mul.i, 3
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %18 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr.i, ptr %bytesperline.i, align 4
  %mul29.i = mul i32 %shr.i, %13
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %19 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul29.i, ptr %sizeimage.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %20 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %colorspace.i, align 4
  %21 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pixelformat.i, align 4
  %23 = load i32, ptr @format, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %22)
  %cmp2.i = icmp eq i32 %23, %22
  br i1 %cmp2.i, label %if.end.if.then.i_crit_edge, label %for.inc.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.1.i.if.then.i_crit_edge, %for.inc.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %i.07.lcssa.i = phi i32 [ 0, %if.end.if.then.i_crit_edge ], [ 1, %for.inc.i.if.then.i_crit_edge ], [ 2, %for.inc.1.i.if.then.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.tm6000_fmt, ptr @format, i32 %i.07.lcssa.i
  br label %format_by_fourcc.exit

for.inc.i:                                        ; preds = %if.end
  %24 = load i32, ptr getelementptr inbounds ([3 x %struct.tm6000_fmt], ptr @format, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %22)
  %cmp2.1.i = icmp eq i32 %24, %22
  br i1 %cmp2.1.i, label %for.inc.i.if.then.i_crit_edge, label %for.inc.1.i

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %25 = load i32, ptr getelementptr inbounds ([3 x %struct.tm6000_fmt], ptr @format, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %22)
  %cmp2.2.i = icmp eq i32 %25, %22
  br i1 %cmp2.2.i, label %for.inc.1.i.if.then.i_crit_edge, label %for.inc.1.i.format_by_fourcc.exit_crit_edge

for.inc.1.i.format_by_fourcc.exit_crit_edge:      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %format_by_fourcc.exit

for.inc.1.i.if.then.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

format_by_fourcc.exit:                            ; preds = %for.inc.1.i.format_by_fourcc.exit_crit_edge, %if.then.i
  %retval.0.i29 = phi ptr [ %add.ptr.i, %if.then.i ], [ null, %for.inc.1.i.format_by_fourcc.exit_crit_edge ]
  %fmt3 = getelementptr inbounds %struct.tm6000_fh, ptr %priv, i32 0, i32 3
  %26 = ptrtoint ptr %fmt3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %retval.0.i29, ptr %fmt3, align 4
  %27 = ptrtoint ptr %fmt2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fmt2.i, align 4
  %width5 = getelementptr inbounds %struct.tm6000_fh, ptr %priv, i32 0, i32 4
  %29 = ptrtoint ptr %width5 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %width5, align 4
  %30 = ptrtoint ptr %height16.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %height16.i, align 4
  %height7 = getelementptr inbounds %struct.tm6000_fh, ptr %priv, i32 0, i32 5
  %32 = ptrtoint ptr %height7 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %height7, align 4
  %33 = ptrtoint ptr %field12.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %field12.i, align 4
  %field9 = getelementptr inbounds %struct.tm6000_fh, ptr %priv, i32 0, i32 6, i32 7
  %35 = ptrtoint ptr %field9 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %field9, align 4
  %36 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %f, align 4
  %type10 = getelementptr inbounds %struct.tm6000_fh, ptr %priv, i32 0, i32 7
  %38 = ptrtoint ptr %type10 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %type10, align 4
  %39 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pixelformat.i, align 4
  %fourcc = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 35
  %41 = ptrtoint ptr %fourcc to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %fourcc, align 8
  tail call void @tm6000_set_fourcc_format(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %format_by_fourcc.exit, %do.end.i, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %format_by_fourcc.exit ], [ -22, %do.end.i ], [ -22, %do.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.tm6000_fh, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixelformat, align 4
  %4 = load i32, ptr @format, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp2.i = icmp eq i32 %4, %3
  br i1 %cmp2.i, label %entry.format_by_fourcc.exit_crit_edge, label %for.inc.i

entry.format_by_fourcc.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %format_by_fourcc.exit

for.inc.i:                                        ; preds = %entry
  %5 = load i32, ptr getelementptr inbounds ([3 x %struct.tm6000_fmt], ptr @format, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp2.1.i = icmp eq i32 %5, %3
  br i1 %cmp2.1.i, label %for.inc.i.format_by_fourcc.exit_crit_edge, label %for.inc.1.i

for.inc.i.format_by_fourcc.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %format_by_fourcc.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %6 = load i32, ptr getelementptr inbounds ([3 x %struct.tm6000_fmt], ptr @format, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp2.2.i = icmp eq i32 %6, %3
  br i1 %cmp2.2.i, label %for.inc.1.i.format_by_fourcc.exit_crit_edge, label %for.inc.1.i.do.body_crit_edge

for.inc.1.i.do.body_crit_edge:                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.inc.1.i.format_by_fourcc.exit_crit_edge:      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %format_by_fourcc.exit

format_by_fourcc.exit:                            ; preds = %for.inc.1.i.format_by_fourcc.exit_crit_edge, %for.inc.i.format_by_fourcc.exit_crit_edge, %entry.format_by_fourcc.exit_crit_edge
  %i.07.lcssa.i = phi i32 [ 0, %entry.format_by_fourcc.exit_crit_edge ], [ 1, %for.inc.i.format_by_fourcc.exit_crit_edge ], [ 2, %for.inc.1.i.format_by_fourcc.exit_crit_edge ]
  %add.ptr.i = getelementptr %struct.tm6000_fmt, ptr @format, i32 %i.07.lcssa.i
  %cmp = icmp eq ptr %add.ptr.i, null
  br i1 %cmp, label %format_by_fourcc.exit.do.body_crit_edge, label %if.end10

format_by_fourcc.exit.do.body_crit_edge:          ; preds = %format_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %format_by_fourcc.exit.do.body_crit_edge, %for.inc.1.i.do.body_crit_edge
  %7 = load i32, ptr @tm6000_debug, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i32 noundef %8, ptr noundef %1, ptr noundef nonnull @.str.87, i32 noundef %3) #13
  br label %cleanup

if.end10:                                         ; preds = %format_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %fmt2 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %field12 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  tail call void @tm6000_get_std_res(ptr noundef %1) #10
  %width = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %width, align 8
  %11 = ptrtoint ptr %fmt2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fmt2, align 4
  %height = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 4
  %height16 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %height16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %height16, align 4
  %and19 = and i32 %10, -2
  store i32 %and19, ptr %fmt2, align 4
  %15 = ptrtoint ptr %field12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %field12, align 4
  %depth = getelementptr %struct.tm6000_fmt, ptr @format, i32 %i.07.lcssa.i, i32 1
  %16 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %depth, align 4
  %mul = mul i32 %17, %and19
  %shr = lshr i32 %mul, 3
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %18 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr, ptr %bytesperline, align 4
  %mul29 = mul i32 %shr, %13
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %19 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul29, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %20 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %colorspace, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_reqbufs(ptr nocapture noundef readnone %file, ptr noundef %priv, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vb_vidq = getelementptr inbounds %struct.tm6000_fh, ptr %priv, i32 0, i32 6
  %call = tail call i32 @videobuf_reqbufs(ptr noundef %vb_vidq, ptr noundef %p) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querybuf(ptr nocapture noundef readnone %file, ptr noundef %priv, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vb_vidq = getelementptr inbounds %struct.tm6000_fh, ptr %priv, i32 0, i32 6
  %call = tail call i32 @videobuf_querybuf(ptr noundef %vb_vidq, ptr noundef %p) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_qbuf(ptr nocapture noundef readnone %file, ptr noundef %priv, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vb_vidq = getelementptr inbounds %struct.tm6000_fh, ptr %priv, i32 0, i32 6
  %call = tail call i32 @videobuf_qbuf(ptr noundef %vb_vidq, ptr noundef %p) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_dqbuf(ptr nocapture noundef readonly %file, ptr noundef %priv, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vb_vidq = getelementptr inbounds %struct.tm6000_fh, ptr %priv, i32 0, i32 6
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %0 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_flags, align 4
  %and = and i32 %1, 2048
  %call = tail call i32 @videobuf_dqbuf(ptr noundef %vb_vidq, ptr noundef %p, i32 noundef %and) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_streamon(ptr nocapture noundef readnone %file, ptr noundef %priv, i32 noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.tm6000_fh, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %type = getelementptr inbounds %struct.tm6000_fh, ptr %priv, i32 0, i32 7
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i)
  %cmp3.not = icmp eq i32 %i, 1
  %or.cond = and i1 %cmp3.not, %cmp.not
  br i1 %or.cond, label %if.end5, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %entry
  %resources.i = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %resources.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resources.i, align 4
  %cmp.i = icmp eq ptr %5, %priv
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end5.if.end.i_crit_edge

if.end5.if.end.i_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end5
  %is_res_read1.i = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 24
  %6 = ptrtoint ptr %is_res_read1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_res_read1.i, align 8, !range !249
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp4.i = icmp eq i8 %7, 0
  br i1 %cmp4.i, label %land.lhs.true.i.if.end7_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i.if.end7_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end5.if.end.i_crit_edge
  %tobool7.not.i = icmp eq ptr %5, null
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %resources.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %priv, ptr %resources.i, align 4
  %is_res_read12.i = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 24
  %9 = ptrtoint ptr %is_res_read12.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %is_res_read12.i, align 8
  %10 = load i32, ptr @tm6000_debug, align 4
  %and.i = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool14.not.i, label %if.end9.i.if.end7_crit_edge, label %do.end.i

if.end9.i.if.end7_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

do.end.i:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %11, ptr noundef %1, ptr noundef nonnull @.str.21) #13
  br label %if.end7

if.end7:                                          ; preds = %do.end.i, %if.end9.i.if.end7_crit_edge, %land.lhs.true.i.if.end7_crit_edge
  %vb_vidq = getelementptr inbounds %struct.tm6000_fh, ptr %priv, i32 0, i32 6
  %call8 = tail call i32 @videobuf_streamon(ptr noundef %vb_vidq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_streamoff(ptr nocapture noundef readnone %file, ptr noundef %priv, i32 noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.tm6000_fh, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %type = getelementptr inbounds %struct.tm6000_fh, ptr %priv, i32 0, i32 7
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i)
  %cmp3.not = icmp eq i32 %i, 1
  %or.cond = and i1 %cmp3.not, %cmp.not
  br i1 %or.cond, label %if.end5, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %entry
  %vb_vidq = getelementptr inbounds %struct.tm6000_fh, ptr %priv, i32 0, i32 6
  %call = tail call i32 @videobuf_streamoff(ptr noundef %vb_vidq) #10
  %resources.i = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %resources.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resources.i, align 4
  %cmp.not.i = icmp eq ptr %5, %priv
  br i1 %cmp.not.i, label %if.end.i, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end5
  %6 = ptrtoint ptr %resources.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %resources.i, align 4
  %7 = load i32, ptr @tm6000_debug, align 4
  %and.i = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %do.end.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %8, ptr noundef %1, ptr noundef nonnull @.str.82) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_g_std(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %norm) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.tm6000_fh, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %norm2 = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %norm2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %norm2, align 8
  %4 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %norm, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_std(ptr nocapture noundef readnone %file, ptr nocapture noundef %priv, i64 noundef %norm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.tm6000_fh, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %norm2 = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %norm2 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %norm, ptr %norm2, align 8
  %call = tail call i32 @tm6000_init_analog_mode(ptr noundef %1) #10
  %width = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %width, align 8
  %width3 = getelementptr inbounds %struct.tm6000_fh, ptr %priv, i32 0, i32 4
  %5 = ptrtoint ptr %width3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %width3, align 4
  %height = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %height4 = getelementptr inbounds %struct.tm6000_fh, ptr %priv, i32 0, i32 5
  %8 = ptrtoint ptr %height4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %height4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  %subdevs = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 28, i32 2
  %9 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn43 = load ptr, ptr %subdevs, align 4
  %cmp8.not45 = icmp eq ptr %.pn43, %subdevs
  br i1 %cmp8.not45, label %do.body.cleanup_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body.for.body_crit_edge
  %.pn46 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn43, %do.body.for.body_crit_edge ]
  %__sd.047 = getelementptr i8, ptr %.pn46, i32 -80
  %ops = getelementptr i8, ptr %.pn46, i32 24
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %video, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_std = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %s_std to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_std, align 4
  %tobool11.not = icmp eq ptr %15, null
  br i1 %tobool11.not, label %land.lhs.true.for.inc_crit_edge, label %if.then12

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %norm2 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %norm2, align 8
  %call17 = tail call i32 %15(ptr noundef %__sd.047, i64 noundef %17) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %18 = ptrtoint ptr %.pn46 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load ptr, ptr %.pn46, align 4
  %cmp8.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp8.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.tm6000_fh, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %arrayidx = getelementptr %struct.tm6000_core, ptr %3, i32 0, i32 32, i32 %1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %5, label %if.else [
    i32 0, label %if.end.cleanup_crit_edge
    i32 1, label %if.end.if.end12_crit_edge
  ]

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end.if.end12_crit_edge
  %.sink = phi i32 [ 2, %if.else ], [ %5, %if.end.if.end12_crit_edge ]
  %type11 = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 2
  %7 = ptrtoint ptr %type11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %type11, align 4
  %name = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %arrayidx16 = getelementptr [5 x ptr], ptr @iname, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx16, align 4
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef %11, i32 noundef 32) #10
  %std = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 5
  %12 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 16728063, ptr %std, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_g_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %i) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.tm6000_fh, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %input = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 8
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_input(ptr nocapture noundef readnone %file, ptr nocapture noundef %priv, i32 noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.tm6000_fh, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i)
  %cmp = icmp ugt i32 %i, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.tm6000_core, ptr %1, i32 0, i32 32, i32 %i
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %input = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %i, ptr %input, align 8
  %norm = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %norm, align 8
  %7 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1, align 4
  %norm2.i = getelementptr inbounds %struct.tm6000_core, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %norm2.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %6, ptr %norm2.i, align 8
  %call.i = tail call i32 @tm6000_init_analog_mode(ptr noundef %8) #10
  %width.i = getelementptr inbounds %struct.tm6000_core, ptr %8, i32 0, i32 7
  %10 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width.i, align 8
  %width3.i = getelementptr inbounds %struct.tm6000_fh, ptr %priv, i32 0, i32 4
  %12 = ptrtoint ptr %width3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %width3.i, align 4
  %height.i = getelementptr inbounds %struct.tm6000_core, ptr %8, i32 0, i32 8
  %13 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height.i, align 4
  %height4.i = getelementptr inbounds %struct.tm6000_fh, ptr %priv, i32 0, i32 5
  %15 = ptrtoint ptr %height4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %height4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end3.cleanup_crit_edge, label %do.body.i

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.i:                                        ; preds = %if.end3
  %subdevs.i = getelementptr inbounds %struct.tm6000_core, ptr %8, i32 0, i32 28, i32 2
  %16 = ptrtoint ptr %subdevs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn43.i = load ptr, ptr %subdevs.i, align 4
  %cmp8.not45.i = icmp eq ptr %.pn43.i, %subdevs.i
  br i1 %cmp8.not45.i, label %do.body.i.cleanup_crit_edge, label %do.body.i.for.body.i_crit_edge

do.body.i.for.body.i_crit_edge:                   ; preds = %do.body.i
  br label %for.body.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.body.i.for.body.i_crit_edge
  %.pn46.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn43.i, %do.body.i.for.body.i_crit_edge ]
  %__sd.047.i = getelementptr i8, ptr %.pn46.i, i32 -80
  %ops.i = getelementptr i8, ptr %.pn46.i, i32 24
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %video.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %video.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %video.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %s_std.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %s_std.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_std.i, align 4
  %tobool11.not.i = icmp eq ptr %22, null
  br i1 %tobool11.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then12.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then12.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %norm2.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %norm2.i, align 8
  %call17.i = tail call i32 %22(ptr noundef %__sd.047.i, i64 noundef %24) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then12.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %25 = ptrtoint ptr %.pn46.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn.i = load ptr, ptr %.pn46.i, align 4
  %cmp8.not.i = icmp eq ptr %.pn.i, %subdevs.i
  br i1 %cmp8.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %do.body.i.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i, %if.end3.cleanup_crit_edge ], [ 0, %do.body.i.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_tuner(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.tm6000_fh, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %tuner_type = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tuner_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.not = icmp eq i32 %5, 0
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 1
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.88, i32 noundef 32) #10
  %type = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %type, align 4
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 3
  %7 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 18, ptr %capability, align 4
  %rangehigh = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 5
  %8 = ptrtoint ptr %rangehigh to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %rangehigh, align 4
  %rxsubchans = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 6
  %9 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %rxsubchans, align 4
  %subdevs = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 28, i32 2
  %10 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn42 = load ptr, ptr %subdevs, align 4
  %cmp8.not44 = icmp eq ptr %.pn42, %subdevs
  br i1 %cmp8.not44, label %if.end4.do.end_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

if.end4.do.end_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end4.for.body_crit_edge
  %.pn45 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn42, %if.end4.for.body_crit_edge ]
  %__sd.046 = getelementptr i8, ptr %.pn45, i32 -80
  %ops = getelementptr i8, ptr %.pn45, i32 24
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tuner, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %g_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %g_tuner to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %g_tuner, align 4
  %tobool11.not = icmp eq ptr %16, null
  br i1 %tobool11.not, label %land.lhs.true.for.inc_crit_edge, label %if.then12

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = tail call i32 %16(ptr noundef %__sd.046, ptr noundef %t) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %17 = ptrtoint ptr %.pn45 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn45, align 4
  %cmp8.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp8.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %if.end4.do.end_crit_edge
  %amode = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 39
  %18 = ptrtoint ptr %amode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %amode, align 8
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 7
  %20 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %audmode, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -25, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_tuner(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.tm6000_fh, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %tuner_type = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tuner_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.not = icmp eq i32 %5, 0
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 7
  %6 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %audmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 39
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %10, align 8
  %12 = load i32, ptr @tm6000_debug, align 4
  %and = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4.do.body16_crit_edge, label %do.end

if.end4.do.body16_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %14 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %audmode, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %13, ptr noundef %1, ptr noundef nonnull @.str.93, i32 noundef %15) #13
  br label %do.body16

do.body16:                                        ; preds = %do.end, %if.end4.do.body16_crit_edge
  %subdevs = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 28, i32 2
  %16 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn58 = load ptr, ptr %subdevs, align 4
  %cmp21.not60 = icmp eq ptr %.pn58, %subdevs
  br i1 %cmp21.not60, label %do.body16.cleanup_crit_edge, label %do.body16.for.body_crit_edge

do.body16.for.body_crit_edge:                     ; preds = %do.body16
  br label %for.body

do.body16.cleanup_crit_edge:                      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body16.for.body_crit_edge
  %.pn61 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn58, %do.body16.for.body_crit_edge ]
  %__sd.062 = getelementptr i8, ptr %.pn61, i32 -80
  %ops = getelementptr i8, ptr %.pn61, i32 24
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tuner, align 4
  %tobool22.not = icmp eq ptr %20, null
  br i1 %tobool22.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %s_tuner to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_tuner, align 4
  %tobool25.not = icmp eq ptr %22, null
  br i1 %tobool25.not, label %land.lhs.true.for.inc_crit_edge, label %if.then26

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call30 = tail call i32 %22(ptr noundef %__sd.062, ptr noundef %t) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then26, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %23 = ptrtoint ptr %.pn61 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn = load ptr, ptr %.pn61, align 4
  %cmp21.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp21.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.body16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -25, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %do.body16.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_frequency(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.tm6000_fh, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %tuner_type = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tuner_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %freq = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 34
  %6 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %freq, align 4
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %8 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %frequency, align 4
  %subdevs = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 28, i32 2
  %9 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn37 = load ptr, ptr %subdevs, align 4
  %cmp7.not39 = icmp eq ptr %.pn37, %subdevs
  br i1 %cmp7.not39, label %if.end3.cleanup_crit_edge, label %if.end3.for.body_crit_edge

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end3.for.body_crit_edge
  %.pn40 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn37, %if.end3.for.body_crit_edge ]
  %__sd.041 = getelementptr i8, ptr %.pn40, i32 -80
  %ops = getelementptr i8, ptr %.pn40, i32 24
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %tuner8 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %tuner8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tuner8, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %g_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %g_frequency to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %g_frequency, align 4
  %tobool12.not = icmp eq ptr %15, null
  br i1 %tobool12.not, label %land.lhs.true.for.inc_crit_edge, label %if.then13

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %15(ptr noundef %__sd.041, ptr noundef %f) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %.pn40 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn40, align 4
  %cmp7.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp7.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -25, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_frequency(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.tm6000_fh, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %tuner_type = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tuner_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.not = icmp eq i32 %5, 0
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %6 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frequency, align 4
  %freq = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 34
  %8 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %freq, align 4
  %subdevs = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 28, i32 2
  %9 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn37 = load ptr, ptr %subdevs, align 4
  %cmp8.not39 = icmp eq ptr %.pn37, %subdevs
  br i1 %cmp8.not39, label %if.end4.cleanup_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end4.for.body_crit_edge
  %.pn40 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn37, %if.end4.for.body_crit_edge ]
  %__sd.041 = getelementptr i8, ptr %.pn40, i32 -80
  %ops = getelementptr i8, ptr %.pn40, i32 24
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %tuner9 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %tuner9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tuner9, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %s_frequency to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_frequency, align 4
  %tobool12.not = icmp eq ptr %15, null
  br i1 %tobool12.not, label %land.lhs.true.for.inc_crit_edge, label %if.then13

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %15(ptr noundef %__sd.041, ptr noundef %f) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %.pn40 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn40, align 4
  %cmp8.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp8.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -25, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tm6000_set_fourcc_format(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_reqbufs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_querybuf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_qbuf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_dqbuf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_streamon(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_streamoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_poll(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radio_g_tuner(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dev1 = getelementptr inbounds %struct.tm6000_fh, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %6 = call ptr @memset(ptr %t, i32 0, i32 84)
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 1
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.94, i32 noundef 32) #10
  %type = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 2
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %type, align 4
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 3
  %8 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 17, ptr %capability, align 4
  %rxsubchans = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 6
  %9 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %rxsubchans, align 4
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 7
  %10 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %audmode, align 4
  %subdevs = getelementptr inbounds %struct.tm6000_core, ptr %5, i32 0, i32 28, i32 2
  %11 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn37 = load ptr, ptr %subdevs, align 4
  %cmp5.not39 = icmp eq ptr %.pn37, %subdevs
  br i1 %cmp5.not39, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn40 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn37, %if.end.for.body_crit_edge ]
  %__sd.041 = getelementptr i8, ptr %.pn40, i32 -80
  %ops = getelementptr i8, ptr %.pn40, i32 24
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tuner, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %g_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %g_tuner to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %g_tuner, align 4
  %tobool8.not = icmp eq ptr %17, null
  br i1 %tobool8.not, label %land.lhs.true.for.inc_crit_edge, label %if.then9

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call i32 %17(ptr noundef %__sd.041, ptr noundef %t) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %18 = ptrtoint ptr %.pn40 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load ptr, ptr %.pn40, align 4
  %cmp5.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp5.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radio_s_tuner(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dev1 = getelementptr inbounds %struct.tm6000_fh, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %subdevs = getelementptr inbounds %struct.tm6000_core, ptr %5, i32 0, i32 28, i32 2
  %6 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn30 = load ptr, ptr %subdevs, align 4
  %cmp5.not32 = icmp eq ptr %.pn30, %subdevs
  br i1 %cmp5.not32, label %do.body.cleanup_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body.for.body_crit_edge
  %.pn33 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn30, %do.body.for.body_crit_edge ]
  %__sd.034 = getelementptr i8, ptr %.pn33, i32 -80
  %ops = getelementptr i8, ptr %.pn33, i32 24
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tuner, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %s_tuner to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_tuner, align 4
  %tobool8.not = icmp eq ptr %12, null
  br i1 %tobool8.not, label %land.lhs.true.for.inc_crit_edge, label %if.then9

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %12(ptr noundef %__sd.034, ptr noundef %t) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %13 = ptrtoint ptr %.pn33 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn33, align 4
  %cmp5.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp5.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !22, !24, !25, !26, !28, !29, !31, !32, !33, !35, !36, !38, !40, !41, !43, !45, !46, !48, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !101, !103, !104, !105, !106, !108, !109, !110, !112, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !147, !148, !149, !151, !152, !153, !155, !156, !157, !158, !160, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !181, !182, !183, !184, !186, !187, !188, !189, !191, !192, !193, !194, !196, !198, !200, !202, !204, !205, !206, !207, !209, !211, !213, !215, !217, !219, !220, !221, !222, !224, !226, !228, !230, !232, !234, !235, !236, !237, !239}
!llvm.module.flags = !{!240, !241, !242, !243, !244, !245, !246, !247}
!llvm.ident = !{!248}

!0 = !{ptr @__ksymtab_tm6000_debug, !1, !"__ksymtab_tm6000_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 51, i32 1}
!2 = !{ptr @tm6000_v4l2_register._key, !3, !"_key", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1604, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @tm6000_v4l2_register._key.1, !6, !"_key", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1605, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1628, i32 46}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1643, i32 3}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @tm6000_v4l2_register._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @tm6000_v4l2_register._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1648, i32 2}
!18 = !{ptr @tm6000_v4l2_register._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @tm6000_v4l2_register._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1653, i32 11}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1659, i32 4}
!24 = !{ptr @tm6000_v4l2_register._entry.11, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @tm6000_v4l2_register._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @tm6000_v4l2_register._entry.14, !27, !"_entry", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1664, i32 3}
!28 = !{ptr @tm6000_v4l2_register._entry_ptr.15, !27, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1668, i32 2}
!31 = !{ptr @tm6000_v4l2_register._entry.16, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @tm6000_v4l2_register._entry_ptr.18, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @__param_video_nr, !34, !"__param_video_nr", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1695, i32 1}
!35 = !{ptr @__UNIQUE_ID_video_nrtype305, !34, !"__UNIQUE_ID_video_nrtype305", i1 false, i1 false}
!36 = !{ptr @__UNIQUE_ID_video_nr306, !37, !"__UNIQUE_ID_video_nr306", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1696, i32 1}
!38 = !{ptr @__param_debug, !39, !"__param_debug", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1698, i32 1}
!40 = !{ptr @__UNIQUE_ID_debugtype307, !39, !"__UNIQUE_ID_debugtype307", i1 false, i1 false}
!41 = !{ptr @__UNIQUE_ID_debug308, !42, !"__UNIQUE_ID_debug308", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1699, i32 1}
!43 = !{ptr @__param_vid_limit, !44, !"__param_vid_limit", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1701, i32 1}
!45 = !{ptr @__UNIQUE_ID_vid_limittype309, !44, !"__UNIQUE_ID_vid_limittype309", i1 false, i1 false}
!46 = !{ptr @__UNIQUE_ID_vid_limit310, !47, !"__UNIQUE_ID_vid_limit310", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1702, i32 1}
!48 = !{ptr @__param_keep_urb, !49, !"__param_keep_urb", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1704, i32 1}
!50 = !{ptr @__UNIQUE_ID_keep_urbtype311, !49, !"__UNIQUE_ID_keep_urbtype311", i1 false, i1 false}
!51 = !{ptr @__UNIQUE_ID_keep_urb312, !52, !"__UNIQUE_ID_keep_urb312", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1705, i32 1}
!53 = !{ptr @keep_urb, !54, !"keep_urb", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 47, i32 13}
!55 = !{ptr @tm6000_debug, !56, !"tm6000_debug", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 50, i32 5}
!57 = !{ptr @tm6000_radio_ctrl_ops, !58, !"tm6000_radio_ctrl_ops", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1166, i32 35}
!59 = !{ptr @tm6000_ctrl_ops, !60, !"tm6000_ctrl_ops", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1143, i32 35}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1595, i32 41}
!63 = !{ptr @tm6000_template, !64, !"tm6000_template", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1548, i32 28}
!65 = !{ptr @tm6000_fops, !66, !"tm6000_fops", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1513, i32 42}
!67 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 831, i32 2}
!69 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @res_get._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @res_get._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1297, i32 2}
!74 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @__tm6000_open._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @__tm6000_open._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1317, i32 2}
!79 = !{ptr @__tm6000_open._entry.24, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @__tm6000_open._entry_ptr.26, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1343, i32 2}
!83 = !{ptr @__tm6000_open._entry.27, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @__tm6000_open._entry_ptr.29, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1345, i32 2}
!87 = !{ptr @__tm6000_open._entry.30, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @__tm6000_open._entry_ptr.32, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1347, i32 2}
!91 = !{ptr @__tm6000_open._entry.33, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @__tm6000_open._entry_ptr.35, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1367, i32 3}
!95 = !{ptr @__tm6000_open._entry.36, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @__tm6000_open._entry_ptr.38, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @format, !98, !"format", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 53, i32 26}
!99 = !{ptr @tm6000_video_qops, !100, !"tm6000_video_qops", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 787, i32 40}
!101 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 599, i32 2}
!103 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @tm6000_prepare_isoc._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @tm6000_prepare_isoc._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 605, i32 3}
!108 = !{ptr @tm6000_prepare_isoc._entry.41, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @tm6000_prepare_isoc._entry_ptr.43, !107, !"_entry_ptr", i1 false, i1 false}
!110 = distinct !{null, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../include/linux/usb.h", i32 1981, i32 3}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 479, i32 4}
!114 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @tm6000_alloc_urb_buffers._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @tm6000_alloc_urb_buffers._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 433, i32 3}
!119 = !{ptr @.str.48, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @tm6000_irq_callback._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @tm6000_irq_callback._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 449, i32 3}
!124 = !{ptr @tm6000_irq_callback._entry.49, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @tm6000_irq_callback._entry_ptr.51, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.52, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 328, i32 17}
!128 = !{ptr @.str.53, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 332, i32 12}
!130 = !{ptr @.str.54, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 335, i32 12}
!132 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 338, i32 12}
!134 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 341, i32 12}
!136 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 344, i32 12}
!138 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 347, i32 12}
!140 = !{ptr @.str.59, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 350, i32 12}
!142 = !{ptr @.str.60, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 353, i32 12}
!144 = !{ptr @.str.61, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 357, i32 3}
!146 = !{ptr @.str.62, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @print_err_status._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @print_err_status._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.64, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 360, i32 3}
!151 = !{ptr @print_err_status._entry.63, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @print_err_status._entry_ptr.65, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.66, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 310, i32 4}
!155 = !{ptr @.str.67, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @copy_multiplexed._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @copy_multiplexed._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.68, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 86, i32 3}
!160 = !{ptr @.str.69, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @get_next_buf._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @get_next_buf._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.70, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 103, i32 2}
!165 = !{ptr @.str.71, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @buffer_filled._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @buffer_filled._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.72, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 197, i32 7}
!170 = !{ptr @copy_streams._entry, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @copy_streams._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.74, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 255, i32 5}
!174 = !{ptr @copy_streams._entry.73, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @copy_streams._entry_ptr.75, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @tm6000_start_thread.__key, !177, !"__key", i1 false, i1 false}
!177 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 651, i32 2}
!178 = !{ptr @.str.76, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.77, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 657, i32 4}
!181 = !{ptr @.str.78, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @tm6000_start_thread._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @tm6000_start_thread._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.79, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1463, i32 2}
!186 = !{ptr @.str.80, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @tm6000_release._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @tm6000_release._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.81, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 842, i32 2}
!191 = !{ptr @.str.82, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @res_free._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @res_free._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @video_ioctl_ops, !195, !"video_ioctl_ops", i1 false, i1 false}
!195 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1523, i32 36}
!196 = !{ptr @.str.83, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 854, i32 23}
!198 = !{ptr @.str.84, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 855, i32 21}
!200 = !{ptr @.str.85, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../include/linux/usb.h", i32 912, i32 31}
!202 = !{ptr @.str.86, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 914, i32 3}
!204 = !{ptr @.str.87, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @vidioc_try_fmt_vid_cap._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @vidioc_try_fmt_vid_cap._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.88, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1057, i32 22}
!209 = !{ptr @.str.89, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1058, i32 30}
!211 = !{ptr @.str.90, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1059, i32 30}
!213 = !{ptr @.str.91, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1060, i32 26}
!215 = !{ptr @iname, !216, !"iname", i1 false, i1 false}
!216 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1056, i32 20}
!217 = !{ptr @.str.92, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1209, i32 2}
!219 = !{ptr @.str.93, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @vidioc_s_tuner._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @vidioc_s_tuner._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @video_nr, !223, !"video_nr", i1 false, i1 false}
!223 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 45, i32 12}
!224 = !{ptr @tm6000_radio_template, !225, !"tm6000_radio_template", i1 false, i1 false}
!225 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1574, i32 28}
!226 = !{ptr @radio_fops, !227, !"radio_fops", i1 false, i1 false}
!227 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1556, i32 42}
!228 = !{ptr @radio_ioctl_ops, !229, !"radio_ioctl_ops", i1 false, i1 false}
!229 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1564, i32 36}
!230 = !{ptr @.str.94, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 1261, i32 19}
!232 = distinct !{null, !233, !"radio_nr", i1 false, i1 false}
!233 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 46, i32 12}
!234 = !{ptr @__param_str_video_nr, !34, !"__param_str_video_nr", i1 false, i1 false}
!235 = !{ptr @__param_str_debug, !39, !"__param_str_debug", i1 false, i1 false}
!236 = !{ptr @__param_str_vid_limit, !44, !"__param_str_vid_limit", i1 false, i1 false}
!237 = !{ptr @vid_limit, !238, !"vid_limit", i1 false, i1 false}
!238 = !{!"../drivers/media/usb/tm6000/tm6000-video.c", i32 44, i32 21}
!239 = !{ptr @__param_str_keep_urb, !49, !"__param_str_keep_urb", i1 false, i1 false}
!240 = !{i32 1, !"wchar_size", i32 2}
!241 = !{i32 1, !"min_enum_size", i32 4}
!242 = !{i32 8, !"branch-target-enforcement", i32 0}
!243 = !{i32 8, !"sign-return-address", i32 0}
!244 = !{i32 8, !"sign-return-address-all", i32 0}
!245 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!246 = !{i32 7, !"uwtable", i32 1}
!247 = !{i32 7, !"frame-pointer", i32 2}
!248 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!249 = !{i8 0, i8 2}
!250 = !{!"branch_weights", i32 1, i32 2000}
!251 = !{i64 2156881584, i64 2156882088, i64 2156881621, i64 2156881677, i64 2156881711, i64 2156881735, i64 2156881776, i64 2156881797, i64 2156881825, i64 2156881859}
