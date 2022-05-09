; ModuleID = '/llk/IR_all_yes/drivers/media/radio/radio-sf16fmi.c_pt.bc'
source_filename = "../drivers/media/radio/radio-sf16fmi.c"
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
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.fmi = type { %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.video_device, i32, i8, i32, %struct.mutex }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }

@__UNIQUE_ID_author292 = internal constant [73 x i8] c"radio_sf16fmi.author=Petr Vandrovec, vandrove@vc.cvut.cz and M. Kirkwood\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [82 x i8] c"radio_sf16fmi.description=A driver for the SF16-FMI, SF16-FMP and SF16-FMD radio.\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [53 x i8] c"radio_sf16fmi.file=drivers/media/radio/radio-sf16fmi\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [26 x i8] c"radio_sf16fmi.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version296 = internal constant [28 x i8] c"radio_sf16fmi.version=0.0.3\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"radio_sf16fmi\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.0.3\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_io = internal constant [17 x i8] c"radio_sf16fmi.io\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@io = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_io = internal constant %struct.kernel_param { ptr @__param_str_io, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @io } }, section "__param", align 4
@__UNIQUE_ID_iotype297 = internal constant [30 x i8] c"radio_sf16fmi.parmtype=io:int\00", section ".modinfo", align 1
@__UNIQUE_ID_io298 = internal constant [90 x i8] c"radio_sf16fmi.parm=io:I/O address of the SF16-FMI/SF16-FMP/SF16-FMD card (0x284 or 0x384)\00", section ".modinfo", align 1
@__param_str_radio_nr = internal constant [23 x i8] c"radio_sf16fmi.radio_nr\00", align 1
@radio_nr = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_radio_nr = internal constant %struct.kernel_param { ptr @__param_str_radio_nr, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @radio_nr } }, section "__param", align 4
@__UNIQUE_ID_radio_nrtype299 = internal constant [36 x i8] c"radio_sf16fmi.parmtype=radio_nr:int\00", section ".modinfo", align 1
@fmi_card = internal global { %struct.fmi, [440 x i8] } zeroinitializer, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@__initcall__kmod_radio_sf16fmi__304_381_fmi_init6 = internal global ptr @fmi_init, section ".initcall6.init", align 4
@__exitcall_fmi_exit = internal global ptr @fmi_exit, section ".exitcall.exit", align 4
@__const.fmi_init.probe_ports = private unnamed_addr constant [3 x i32] [i32 0, i32 644, i32 900], align 4
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"radio-sf16fmi\00", [18 x i8] zeroinitializer }, align 32
@fmi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013radio-sf16fmi: port %#x already in use\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fmi_init\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/radio/radio-sf16fmi.c\00", [60 x i8] zeroinitializer }, align 32
@fmi_init._entry_ptr = internal global ptr @fmi_init._entry, section ".printk_index", align 4
@fmi_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013radio-sf16fmi: card not present at %#x\0A\00", [54 x i8] zeroinitializer }, align 32
@fmi_init._entry_ptr.9 = internal global ptr @fmi_init._entry.7, section ".printk_index", align 4
@fmi_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013radio-sf16fmi: no cards found\0A\00", [63 x i8] zeroinitializer }, align 32
@fmi_init._entry_ptr.12 = internal global ptr @fmi_init._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sf16fmi\00", [24 x i8] zeroinitializer }, align 32
@fmi_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.6, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Could not register v4l2_device\0A\00", [58 x i8] zeroinitializer }, align 32
@fmi_init._entry_ptr.16 = internal global ptr @fmi_init._entry.14, section ".printk_index", align 4
@fmi_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"radio_sf16fmi:329:(hdl)->_lock\00", [33 x i8] zeroinitializer }, align 32
@fmi_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @fmi_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@fmi_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.6, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Could not register controls\0A\00", [61 x i8] zeroinitializer }, align 32
@fmi_init._entry_ptr.20 = internal global ptr @fmi_init._entry.18, section ".printk_index", align 4
@fmi_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_ctrl_poll, ptr @video_ioctl2, ptr null, ptr null, ptr @v4l2_fh_open, ptr @v4l2_fh_release }, [60 x i8] zeroinitializer }, align 32
@fmi_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_tuner, ptr @vidioc_s_tuner, ptr @vidioc_g_frequency, ptr @vidioc_s_frequency, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@fmi_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&fmi->lock\00", [21 x i8] zeroinitializer }, align 32
@fmi_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.5, ptr @.str.6, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: card driver at 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@fmi_init._entry_ptr.24 = internal global ptr @fmi_init._entry.22, section ".printk_index", align 4
@isapnp_fmi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.6, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013radio-sf16fmi: PnP configure failed (out of resources?)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"isapnp_fmi_probe\00", [47 x i8] zeroinitializer }, align 32
@isapnp_fmi_probe._entry_ptr = internal global ptr @isapnp_fmi_probe._entry, section ".printk_index", align 4
@isapnp_fmi_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.6, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016radio-sf16fmi: PnP reports card at %#x\0A\00", [54 x i8] zeroinitializer }, align 32
@isapnp_fmi_probe._entry_ptr.29 = internal global ptr @isapnp_fmi_probe._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SF16-FMI/FMP/FMD radio\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ISA:radio-sf16fmi\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"FM\00", [29 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 38, i32 1 }
@___asan_gen_.42 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 40, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant [9 x i8] c"radio_nr\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 41, i32 12 }
@___asan_gen_.48 = private unnamed_addr constant [9 x i8] c"fmi_card\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 58, i32 19 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 289, i32 9 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 303, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 307, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 313, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 317, i32 26 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 325, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 329, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [13 x i8] c"fmi_ctrl_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 206, i32 35 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 335, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [9 x i8] c"fmi_fops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 210, i32 42 }
@___asan_gen_.105 = private unnamed_addr constant [14 x i8] c"fmi_ioctl_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 218, i32 36 }
@___asan_gen_.108 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 349, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 365, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 257, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 267, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 134, i32 19 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 135, i32 23 }
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.142 = private constant [39 x i8] c"../drivers/media/radio/radio-sf16fmi.c\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 147, i32 19 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_io298, ptr @__UNIQUE_ID_iotype297, ptr @__UNIQUE_ID_license295, ptr @__UNIQUE_ID_radio_nrtype299, ptr @__UNIQUE_ID_version296, ptr @__exitcall_fmi_exit, ptr @__initcall__kmod_radio_sf16fmi__304_381_fmi_init6, ptr @__modver_attr, ptr @__param_io, ptr @__param_radio_nr, ptr @fmi_exit, ptr @fmi_init._entry, ptr @fmi_init._entry.10, ptr @fmi_init._entry.14, ptr @fmi_init._entry.18, ptr @fmi_init._entry.22, ptr @fmi_init._entry.7, ptr @fmi_init._entry_ptr, ptr @fmi_init._entry_ptr.12, ptr @fmi_init._entry_ptr.16, ptr @fmi_init._entry_ptr.20, ptr @fmi_init._entry_ptr.24, ptr @fmi_init._entry_ptr.9, ptr @isapnp_fmi_probe._entry, ptr @isapnp_fmi_probe._entry.27, ptr @isapnp_fmi_probe._entry_ptr, ptr @isapnp_fmi_probe._entry_ptr.29, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @io, ptr @radio_nr, ptr @fmi_card, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @fmi_init._key, ptr @.str.17, ptr @fmi_ctrl_ops, ptr @.str.19, ptr @fmi_fops, ptr @fmi_ioctl_ops, ptr @fmi_init.__key, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_nr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmi_card to i32), i32 1768, i32 2208, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmi_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmi_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmi_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmi_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmi_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmi_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmi_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmi_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmi_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmi_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isapnp_fmi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isapnp_fmi_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fmi_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @v4l2_ctrl_handler_free(ptr noundef getelementptr inbounds (%struct.fmi, ptr @fmi_card, i32 0, i32 1)) #6
  tail call void @video_unregister_device(ptr noundef getelementptr inbounds (%struct.fmi, ptr @fmi_card, i32 0, i32 2)) #6
  tail call void @v4l2_device_unregister(ptr noundef nonnull @fmi_card) #6
  %0 = load i32, ptr getelementptr inbounds (%struct.fmi, ptr @fmi_card, i32 0, i32 3), align 8
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %0, i32 noundef 2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fmi_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @io, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %entry.for.body_crit_edge, label %if.else

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0172 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x i32], ptr @__const.fmi_init.probe_ports, i32 0, i32 %i.0172
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  store i32 %2, ptr @io, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0172)
  %cmp4 = icmp eq i32 %i.0172, 0
  br i1 %cmp4, label %for.body.for.inc_crit_edge, label %if.end8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end8:                                          ; preds = %for.body
  %call9 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %2, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %if.end8.for.inc_crit_edge, label %lor.lhs.false

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.end8
  %3 = load i32, ptr @io, align 4
  %and = and i32 %3, 1048575
  %add = or i32 %and, -18874368
  %4 = inttoptr i32 %add to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #6, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  %6 = and i8 %5, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -7, i8 %6)
  %cmp19 = icmp eq i8 %6, -7
  br i1 %cmp19, label %land.lhs.true, label %lor.lhs.false.if.end32_crit_edge

lor.lhs.false.if.end32_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

land.lhs.true:                                    ; preds = %lor.lhs.false
  %7 = load i32, ptr @io, align 4
  %and22 = and i32 %7, 1048575
  %add23 = or i32 %and22, -18874368
  %8 = inttoptr i32 %add23 to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #6, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  %10 = and i8 %9, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp29 = icmp eq i8 %10, 0
  br i1 %cmp29, label %land.lhs.true.if.end55_crit_edge, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.end32:                                         ; preds = %land.lhs.true.if.end32_crit_edge, %lor.lhs.false.if.end32_crit_edge
  %11 = load i32, ptr @io, align 4
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %11, i32 noundef 2) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end32, %if.end8.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %.sink = phi i32 [ -1, %if.end32 ], [ -19, %for.body.for.inc_crit_edge ], [ -1, %if.end8.for.inc_crit_edge ]
  store i32 %.sink, ptr @io, align 4
  %inc = add nuw nsw i32 %i.0172, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.inc.if.end55_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.if.end55_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.else:                                          ; preds = %entry
  %call33 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %0, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 0) #6
  %tobool34.not = icmp eq ptr %call33, null
  %12 = load i32, ptr @io, align 4
  br i1 %tobool34.not, label %do.end, label %if.end38

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %12) #9
  br label %cleanup

if.end38:                                         ; preds = %if.else
  %and40 = and i32 %12, 1048575
  %add41 = or i32 %and40, -18874368
  %13 = inttoptr i32 %add41 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #6, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %cmp46 = icmp eq i8 %14, -1
  br i1 %cmp46, label %do.end51, label %if.end38.if.end55_crit_edge

if.end38.if.end55_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

do.end51:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %15 = load i32, ptr @io, align 4
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %15) #9
  %16 = load i32, ptr @io, align 4
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %16, i32 noundef 2) #6
  br label %cleanup

if.end55:                                         ; preds = %if.end38.if.end55_crit_edge, %for.inc.if.end55_crit_edge, %land.lhs.true.if.end55_crit_edge
  %17 = load i32, ptr @io, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp56 = icmp slt i32 %17, 0
  br i1 %cmp56, label %do.end61, label %if.end64

do.end61:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end64:                                         ; preds = %if.end55
  %call65 = tail call i32 @strscpy(ptr noundef getelementptr inbounds (%struct.fmi, ptr @fmi_card, i32 0, i32 0, i32 4), ptr noundef nonnull @.str.13, i32 noundef 36) #6
  %18 = load i32, ptr @io, align 4
  store i32 %18, ptr getelementptr inbounds (%struct.fmi, ptr @fmi_card, i32 0, i32 3), align 8
  %call66 = tail call i32 @v4l2_device_register(ptr noundef null, ptr noundef nonnull @fmi_card) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.then69, label %if.end81

if.then69:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %19 = load i32, ptr getelementptr inbounds (%struct.fmi, ptr @fmi_card, i32 0, i32 3), align 8
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %19, i32 noundef 2) #6
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef getelementptr inbounds (%struct.fmi, ptr @fmi_card, i32 0, i32 0, i32 4)) #9
  br label %cleanup

if.end81:                                         ; preds = %if.end64
  %call83 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef getelementptr inbounds (%struct.fmi, ptr @fmi_card, i32 0, i32 1), i32 noundef 1, ptr noundef nonnull @fmi_init._key, ptr noundef nonnull @.str.17) #6
  %call84 = tail call ptr @v4l2_ctrl_new_std(ptr noundef getelementptr inbounds (%struct.fmi, ptr @fmi_card, i32 0, i32 1), ptr noundef nonnull @fmi_ctrl_ops, i32 noundef 9963785, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #6
  store ptr getelementptr inbounds (%struct.fmi, ptr @fmi_card, i32 0, i32 1), ptr getelementptr inbounds (%struct.fmi, ptr @fmi_card, i32 0, i32 0, i32 6), align 4
  %20 = load i32, ptr getelementptr inbounds (%struct.fmi, ptr @fmi_card, i32 0, i32 1, i32 9), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool85.not = icmp eq i32 %20, 0
  br i1 %tobool85.not, label %if.end95, label %if.then86

if.then86:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef getelementptr inbounds (%struct.fmi, ptr @fmi_card, i32 0, i32 0, i32 4)) #9
  tail call void @v4l2_ctrl_handler_free(ptr noundef getelementptr inbounds (%struct.fmi, ptr @fmi_card, i32 0, i32 1)) #6
  tail call void @v4l2_device_unregister(ptr noundef nonnull @fmi_card) #6
  br label %cleanup

if.end95:                                         ; preds = %if.end81
  %call100 = tail call i32 @strscpy(ptr noundef getelementptr inbounds (%struct.fmi, ptr @fmi_card, i32 0, i32 2, i32 12), ptr noundef getelementptr inbounds (%struct.fmi, ptr @fmi_card, i32 0, i32 0, i32 4), i32 noundef 32) #6
  store ptr @fmi_card, ptr getelementptr inbounds (%struct.fmi, ptr @fmi_card, i32 0, i32 2, i32 7), align 4
  store ptr @fmi_fops, ptr getelementptr inbounds (%struct.fmi, ptr @fmi_card, i32 0, i32 2, i32 3), align 4
  store ptr @fmi_ioctl_ops, ptr getelementptr inbounds (%struct.fmi, ptr @fmi_card, i32 0, i32 2, i32 24), align 4
  store ptr @video_device_release_empty, ptr getelementptr inbounds (%struct.fmi, ptr @fmi_card, i32 0, i32 2, i32 23), align 8
  store i32 327680, ptr getelementptr inbounds (%struct.fmi, ptr @fmi_card, i32 0, i32 2, i32 4), align 8
  store ptr @fmi_card, ptr getelementptr inbounds (%struct.fmi, ptr @fmi_card, i32 0, i32 2, i32 5, i32 8), align 4
  tail call void @__mutex_init(ptr noundef getelementptr inbounds (%struct.fmi, ptr @fmi_card, i32 0, i32 6), ptr noundef nonnull @.str.21, ptr noundef nonnull @fmi_init.__key) #6
  store i8 1, ptr getelementptr inbounds (%struct.fmi, ptr @fmi_card, i32 0, i32 4), align 4
  store i32 1392000, ptr getelementptr inbounds (%struct.fmi, ptr @fmi_card, i32 0, i32 5), align 8
  tail call fastcc void @fmi_set_freq(ptr noundef nonnull @fmi_card)
  %21 = load i32, ptr @radio_nr, align 4
  %22 = load ptr, ptr getelementptr inbounds (%struct.fmi, ptr @fmi_card, i32 0, i32 2, i32 3), align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef getelementptr inbounds (%struct.fmi, ptr @fmi_card, i32 0, i32 2), i32 noundef 2, i32 noundef %21, i32 noundef 1, ptr noundef %24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp113 = icmp slt i32 %call.i, 0
  br i1 %cmp113, label %if.then115, label %do.end123

if.then115:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @v4l2_ctrl_handler_free(ptr noundef getelementptr inbounds (%struct.fmi, ptr @fmi_card, i32 0, i32 1)) #6
  tail call void @v4l2_device_unregister(ptr noundef nonnull @fmi_card) #6
  %25 = load i32, ptr getelementptr inbounds (%struct.fmi, ptr @fmi_card, i32 0, i32 3), align 8
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %25, i32 noundef 2) #6
  br label %cleanup

do.end123:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  %26 = load i32, ptr getelementptr inbounds (%struct.fmi, ptr @fmi_card, i32 0, i32 3), align 8
  %call128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef getelementptr inbounds (%struct.fmi, ptr @fmi_card, i32 0, i32 0, i32 4), i32 noundef %26) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end123, %if.then115, %if.then86, %if.then69, %do.end61, %do.end51, %do.end
  %retval.0 = phi i32 [ -19, %do.end61 ], [ %call66, %if.then69 ], [ %20, %if.then86 ], [ -22, %if.then115 ], [ 0, %do.end123 ], [ -19, %do.end51 ], [ -16, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fmi_set_freq(ptr noundef %fmi) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %curfreq = getelementptr inbounds %struct.fmi, ptr %fmi, i32 0, i32 5
  %0 = ptrtoint ptr %curfreq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %curfreq, align 8
  %2 = tail call i32 @llvm.umax.i32(i32 %1, i32 1392000)
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 1728000)
  %4 = ptrtoint ptr %curfreq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %curfreq, align 8
  %5 = urem i32 %3, 800
  %mul = add nuw nsw i32 %3, 171200
  %add.i = sub nuw nsw i32 %mul, %5
  %div.i = udiv i32 %add.i, 400
  %or1.i = or i32 %div.i, 10485760
  %mute.i.i = getelementptr inbounds %struct.fmi, ptr %fmi, i32 0, i32 4
  %lock.i.i = getelementptr inbounds %struct.fmi, ptr %fmi, i32 0, i32 6
  %io.i.i = getelementptr inbounds %struct.fmi, ptr %fmi, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.026.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %6 = lshr i32 %or1.i, %i.026.i
  %7 = trunc i32 %6 to i3
  %8 = and i3 %7, 1
  %9 = ptrtoint ptr %mute.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mute.i.i, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i = icmp eq i8 %10, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i8 24, i8 16
  %trunc35.i.i = or i3 %8, -4
  %rev36.i.i = tail call i3 @llvm.bitreverse.i3(i3 %trunc35.i.i) #6
  %11 = zext i3 %rev36.i.i to i8
  %12 = or i8 %spec.select.i.i, %11
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #6
  %13 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %and.i.i.i = and i32 %14, 1048575
  %add.i.i.i = or i32 %and.i.i.i, -18874368
  %15 = inttoptr i32 %add.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %12) #6, !srcloc !111
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 429496) #6
  %17 = ptrtoint ptr %mute.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mute.i.i, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i2.i = icmp eq i8 %18, 0
  %spec.select.i3.i = select i1 %tobool.not.i2.i, i8 24, i8 16
  %trunc35.i4.i = or i3 %7, -2
  %rev36.i5.i = tail call i3 @llvm.bitreverse.i3(i3 %trunc35.i4.i) #6
  %19 = zext i3 %rev36.i5.i to i8
  %20 = or i8 %spec.select.i3.i, %19
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #6
  %21 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %io.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %and.i.i8.i = and i32 %22, 1048575
  %add.i.i9.i = or i32 %and.i.i8.i, -18874368
  %23 = inttoptr i32 %add.i.i9.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %20) #6, !srcloc !111
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 429496) #6
  %25 = ptrtoint ptr %mute.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %mute.i.i, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i11.i = icmp eq i8 %26, 0
  %spec.select.i12.i = select i1 %tobool.not.i11.i, i8 24, i8 16
  %27 = or i8 %spec.select.i12.i, %11
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #6
  %28 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %io.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %and.i.i17.i = and i32 %29, 1048575
  %add.i.i18.i = or i32 %and.i.i17.i, -18874368
  %30 = inttoptr i32 %add.i.i18.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 %27) #6, !srcloc !111
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 429496) #6
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 24
  br i1 %exitcond.not.i, label %lm7000_set_freq.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

lm7000_set_freq.exit:                             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %mute.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %mute.i.i, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i20.i = icmp eq i8 %33, 0
  %spec.select.i21.i = select i1 %tobool.not.i20.i, i8 24, i8 16
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #6
  %34 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %io.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %and.i.i24.i = and i32 %35, 1048575
  %add.i.i25.i = or i32 %and.i.i24.i, -18874368
  %36 = inttoptr i32 %add.i.i25.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 %spec.select.i21.i) #6, !srcloc !111
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fmi_s_ctrl(ptr nocapture noundef readonly %ctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963785, i32 %3)
  %cond = icmp eq i32 %3, 9963785
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %lock.i8 = getelementptr i8, ptr %1, i32 1548
  tail call void @mutex_lock_nested(ptr noundef %lock.i8, i32 noundef 0) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %io.i9 = getelementptr i8, ptr %1, i32 1536
  %6 = ptrtoint ptr %io.i9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io.i9, align 8
  %and.i10 = and i32 %7, 1048575
  %add.i11 = or i32 %and.i10, -18874368
  %8 = inttoptr i32 %add.i11 to ptr
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 0) #6, !srcloc !111
  br label %if.end

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 8) #6, !srcloc !111
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @mutex_unlock(ptr noundef %lock.i8) #6
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2 = icmp ne i32 %10, 0
  %mute = getelementptr i8, ptr %1, i32 1540
  %frombool = zext i1 %tobool2 to i8
  %11 = ptrtoint ptr %mute to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %mute, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_poll(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef %v, ptr noundef nonnull @.str.3, i32 noundef 16) #6
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %v, i32 0, i32 1
  %call2 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.30, i32 noundef 32) #6
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %v, i32 0, i32 2
  %call4 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef nonnull @.str.31, i32 noundef 32) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %0 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 1
  %call1 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.32, i32 noundef 32) #6
  %type = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %type, align 4
  %rangelow = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 4
  %5 = ptrtoint ptr %rangelow to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1392000, ptr %rangelow, align 4
  %rangehigh = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 5
  %6 = ptrtoint ptr %rangehigh to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1728000, ptr %rangehigh, align 4
  %rxsubchans = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 6
  %7 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %rxsubchans, align 4
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 3
  %8 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 17, ptr %capability, align 4
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 7
  %9 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %audmode, align 4
  %lock.i = getelementptr inbounds %struct.fmi, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %mute.i = getelementptr inbounds %struct.fmi, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %mute.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mute.i, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void @arm_heavy_mb() #6
  %conv.i = select i1 %tobool.not.i, i8 8, i8 0
  %io.i = getelementptr inbounds %struct.fmi, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io.i, align 8
  %and.i = and i32 %13, 1048575
  %add.i = or i32 %and.i, -18874368
  %14 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %conv.i) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %conv4.i = or i8 %conv.i, 16
  %15 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %io.i, align 8
  %and6.i = and i32 %16, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %17 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %conv4.i) #6, !srcloc !111
  tail call void @msleep(i32 noundef 143) #6
  %18 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %io.i, align 8
  %add10.i = add i32 %19, 1
  %and11.i = and i32 %add10.i, 1048575
  %add12.i = or i32 %and11.i, -18874368
  %20 = inttoptr i32 %add12.i to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #6, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %io.i, align 8
  %and21.i = and i32 %23, 1048575
  %add22.i = or i32 %and21.i, -18874368
  %24 = inttoptr i32 %add22.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %conv.i) #6, !srcloc !111
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  %25 = and i8 %21, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool26.not.i = icmp eq i8 %25, 0
  %cond27.i = select i1 %tobool26.not.i, i32 65535, i32 0
  %signal = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 8
  %26 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %cond27.i, ptr %signal, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_s_tuner(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %v) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %cond = select i1 %tobool.not, i32 0, i32 -22
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %type, align 4
  %curfreq = getelementptr inbounds %struct.fmi, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %curfreq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %curfreq, align 8
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %7 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %frequency, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %f) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1.not = icmp eq i32 %5, 1
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %6 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frequency, align 4
  %curfreq = getelementptr inbounds %struct.fmi, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %curfreq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %curfreq, align 8
  tail call fastcc void @fmi_set_freq(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i3 @llvm.bitreverse.i3(i3) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !21, !23, !25, !27, !29, !31, !32, !34, !35, !37, !39, !41, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !57, !58, !59, !61, !62, !64, !65, !66, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !86, !88, !90, !92, !94}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @__UNIQUE_ID_author292, !1, !"__UNIQUE_ID_author292", i1 false, i1 false}
!1 = !{!"../drivers/media/radio/radio-sf16fmi.c", i32 35, i32 1}
!2 = !{ptr @__UNIQUE_ID_description293, !3, !"__UNIQUE_ID_description293", i1 false, i1 false}
!3 = !{!"../drivers/media/radio/radio-sf16fmi.c", i32 36, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/media/radio/radio-sf16fmi.c", i32 37, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version296, !8, !"__UNIQUE_ID_version296", i1 false, i1 false}
!8 = !{!"../drivers/media/radio/radio-sf16fmi.c", i32 38, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__param_io, !14, !"__param_io", i1 false, i1 false}
!14 = !{!"../drivers/media/radio/radio-sf16fmi.c", i32 43, i32 1}
!15 = !{ptr @__UNIQUE_ID_iotype297, !14, !"__UNIQUE_ID_iotype297", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_io298, !17, !"__UNIQUE_ID_io298", i1 false, i1 false}
!17 = !{!"../drivers/media/radio/radio-sf16fmi.c", i32 44, i32 1}
!18 = !{ptr @__param_radio_nr, !19, !"__param_radio_nr", i1 false, i1 false}
!19 = !{!"../drivers/media/radio/radio-sf16fmi.c", i32 45, i32 1}
!20 = !{ptr @__UNIQUE_ID_radio_nrtype299, !19, !"__UNIQUE_ID_radio_nrtype299", i1 false, i1 false}
!21 = !{ptr @__initcall__kmod_radio_sf16fmi__304_381_fmi_init6, !22, !"__initcall__kmod_radio_sf16fmi__304_381_fmi_init6", i1 false, i1 false}
!22 = !{!"../drivers/media/radio/radio-sf16fmi.c", i32 381, i32 1}
!23 = !{ptr @__exitcall_fmi_exit, !24, !"__exitcall_fmi_exit", i1 false, i1 false}
!24 = !{!"../drivers/media/radio/radio-sf16fmi.c", i32 382, i32 1}
!25 = !{ptr @fmi_card, !26, !"fmi_card", i1 false, i1 false}
!26 = !{!"../drivers/media/radio/radio-sf16fmi.c", i32 58, i32 19}
!27 = distinct !{null, !28, !"dev", i1 false, i1 false}
!28 = !{!"../drivers/media/radio/radio-sf16fmi.c", i32 59, i32 24}
!29 = distinct !{null, !30, !"pnp_attached", i1 false, i1 false}
!30 = !{!"../drivers/media/radio/radio-sf16fmi.c", i32 60, i32 13}
!31 = !{ptr @__param_str_io, !14, !"__param_str_io", i1 false, i1 false}
!32 = !{ptr @io, !33, !"io", i1 false, i1 false}
!33 = !{!"../drivers/media/radio/radio-sf16fmi.c", i32 40, i32 12}
!34 = !{ptr @__param_str_radio_nr, !19, !"__param_str_radio_nr", i1 false, i1 false}
!35 = !{ptr @radio_nr, !36, !"radio_nr", i1 false, i1 false}
!36 = !{!"../drivers/media/radio/radio-sf16fmi.c", i32 41, i32 12}
!37 = !{ptr @.str.3, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/radio/radio-sf16fmi.c", i32 289, i32 9}
!39 = !{ptr @.str.4, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/radio/radio-sf16fmi.c", i32 303, i32 4}
!41 = !{ptr @.str.5, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @fmi_init._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @fmi_init._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.8, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/radio/radio-sf16fmi.c", i32 307, i32 4}
!47 = !{ptr @fmi_init._entry.7, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @fmi_init._entry_ptr.9, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/radio/radio-sf16fmi.c", i32 313, i32 3}
!51 = !{ptr @fmi_init._entry.10, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @fmi_init._entry_ptr.12, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/radio/radio-sf16fmi.c", i32 317, i32 26}
!55 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/radio/radio-sf16fmi.c", i32 325, i32 3}
!57 = !{ptr @fmi_init._entry.14, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @fmi_init._entry_ptr.16, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @fmi_init._key, !60, !"_key", i1 false, i1 false}
!60 = !{!"../drivers/media/radio/radio-sf16fmi.c", i32 329, i32 2}
!61 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/radio/radio-sf16fmi.c", i32 335, i32 3}
!64 = !{ptr @fmi_init._entry.18, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @fmi_init._entry_ptr.20, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @fmi_init.__key, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/media/radio/radio-sf16fmi.c", i32 349, i32 2}
!68 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/radio/radio-sf16fmi.c", i32 365, i32 2}
!71 = !{ptr @fmi_init._entry.22, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @fmi_init._entry_ptr.24, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/radio/radio-sf16fmi.c", i32 257, i32 3}
!75 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @isapnp_fmi_probe._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @isapnp_fmi_probe._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/radio/radio-sf16fmi.c", i32 267, i32 2}
!80 = !{ptr @isapnp_fmi_probe._entry.27, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @isapnp_fmi_probe._entry_ptr.29, !79, !"_entry_ptr", i1 false, i1 false}
!82 = distinct !{null, !83, !"id_table", i1 false, i1 false}
!83 = !{!"../drivers/media/radio/radio-sf16fmi.c", i32 230, i32 32}
!84 = !{ptr @fmi_ctrl_ops, !85, !"fmi_ctrl_ops", i1 false, i1 false}
!85 = !{!"../drivers/media/radio/radio-sf16fmi.c", i32 206, i32 35}
!86 = !{ptr @fmi_fops, !87, !"fmi_fops", i1 false, i1 false}
!87 = !{!"../drivers/media/radio/radio-sf16fmi.c", i32 210, i32 42}
!88 = !{ptr @fmi_ioctl_ops, !89, !"fmi_ioctl_ops", i1 false, i1 false}
!89 = !{!"../drivers/media/radio/radio-sf16fmi.c", i32 218, i32 36}
!90 = !{ptr @.str.30, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/radio/radio-sf16fmi.c", i32 134, i32 19}
!92 = !{ptr @.str.31, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/radio/radio-sf16fmi.c", i32 135, i32 23}
!94 = !{ptr @.str.32, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/radio/radio-sf16fmi.c", i32 147, i32 19}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{i64 5056333}
!106 = !{i64 2156297210}
!107 = !{i64 2156297475}
!108 = !{i64 2156299400}
!109 = !{i8 0, i8 2}
!110 = !{i64 2152591994}
!111 = !{i64 5055938}
!112 = !{i64 2156278758}
!113 = !{i64 2156279089}
!114 = !{i64 2156279488}
!115 = !{i64 2156279696}
