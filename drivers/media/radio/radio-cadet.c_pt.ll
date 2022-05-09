; ModuleID = '/llk/IR_all_yes/drivers/media/radio/radio-cadet.c_pt.bc'
source_filename = "../drivers/media/radio/radio-cadet.c"
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
%struct.cadet = type { %struct.v4l2_device, %struct.video_device, %struct.v4l2_ctrl_handler, i32, i8, i32, i32, i32, %struct.wait_queue_head, %struct.timer_list, i8, i8, i8, [256 x i8], %struct.mutex, i32 }
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
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_frequency_band = type { i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.poll_table_struct = type { ptr, i32 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }

@__UNIQUE_ID_author292 = internal constant [114 x i8] c"radio_cadet.author=Fred Gleason, Russell Kroll, Quay Lu, Donald Song, Jason Lewis, Scott McGrath, William McGrath\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [73 x i8] c"radio_cadet.description=A driver for the ADS Cadet AM/FM/RDS radio card.\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [49 x i8] c"radio_cadet.file=drivers/media/radio/radio-cadet\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [24 x i8] c"radio_cadet.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version296 = internal constant [26 x i8] c"radio_cadet.version=0.3.4\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"radio_cadet\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.3.4\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_io = internal constant [15 x i8] c"radio_cadet.io\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@io = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_io = internal constant %struct.kernel_param { ptr @__param_str_io, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @io } }, section "__param", align 4
@__UNIQUE_ID_iotype297 = internal constant [28 x i8] c"radio_cadet.parmtype=io:int\00", section ".modinfo", align 1
@__UNIQUE_ID_io298 = internal constant [96 x i8] c"radio_cadet.parm=io:I/O address of Cadet card (0x330,0x332,0x334,0x336,0x338,0x33a,0x33c,0x33e)\00", section ".modinfo", align 1
@__param_str_radio_nr = internal constant [21 x i8] c"radio_cadet.radio_nr\00", align 1
@radio_nr = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_radio_nr = internal constant %struct.kernel_param { ptr @__param_str_radio_nr, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @radio_nr } }, section "__param", align 4
@__UNIQUE_ID_radio_nrtype299 = internal constant [34 x i8] c"radio_cadet.parmtype=radio_nr:int\00", section ".modinfo", align 1
@cadet_card = internal global { %struct.cadet, [512 x i8] } zeroinitializer, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@__initcall__kmod_radio_cadet__304_677_cadet_init6 = internal global ptr @cadet_init, section ".initcall6.init", align 4
@__exitcall_cadet_exit = internal global ptr @cadet_exit, section ".exitcall.exit", align 4
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cadet\00", [26 x i8] zeroinitializer }, align 32
@cadet_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@cadet_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: could not register v4l2_device\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cadet_init\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/radio/radio-cadet.c\00", [62 x i8] zeroinitializer }, align 32
@cadet_init._entry_ptr = internal global ptr @cadet_init._entry, section ".printk_index", align 4
@cadet_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"radio_cadet:627:(hdl)->_lock\00", [35 x i8] zeroinitializer }, align 32
@cadet_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @cadet_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@cadet_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str.7, i32 633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Could not register controls\0A\00", [61 x i8] zeroinitializer }, align 32
@cadet_init._entry_ptr.11 = internal global ptr @cadet_init._entry.9, section ".printk_index", align 4
@bands = internal constant { [2 x %struct.v4l2_frequency_band], [32 x i8] } { [2 x %struct.v4l2_frequency_band] [%struct.v4l2_frequency_band { i32 0, i32 1, i32 0, i32 1025, i32 8320, i32 26400, i32 8, [9 x i32] zeroinitializer }, %struct.v4l2_frequency_band { i32 0, i32 1, i32 1, i32 1425, i32 1400000, i32 1728000, i32 4, [9 x i32] zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@cadet_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @cadet_read, ptr null, ptr @cadet_poll, ptr @video_ioctl2, ptr null, ptr null, ptr @cadet_open, ptr @cadet_release }, [60 x i8] zeroinitializer }, align 32
@cadet_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_tuner, ptr @vidioc_s_tuner, ptr @vidioc_g_frequency, ptr @vidioc_s_frequency, ptr @vidioc_enum_freq_bands, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@cadet_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.6, ptr @.str.7, i32 653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: ADS Cadet Radio Card at 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@cadet_init._entry_ptr.14 = internal global ptr @cadet_init._entry.12, section ".printk_index", align 4
@cadet_probe.iovals = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 816, i32 818, i32 820, i32 822, i32 824, i32 826, i32 828, i32 830], [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cadet-probe\00", [20 x i8] zeroinitializer }, align 32
@sigtable = internal constant { [2 x [4 x i16]], [16 x i8] } { [2 x [4 x i16]] [[4 x i16] [i16 1835, i16 2621, i16 4128, i16 -1], [4 x i16] [i16 2185, i16 4369, i16 13107, i16 -1]], [16 x i8] zeroinitializer }, align 32
@cadet_start_rds.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(&dev->readtimer)\00", [46 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cadet_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.7, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013cadet: RDS fifo overflow\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cadet_handler\00", [18 x i8] zeroinitializer }, align 32
@cadet_handler._entry_ptr = internal global ptr @cadet_handler._entry, section ".printk_index", align 4
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@cadet_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&dev->read_queue\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ADS Cadet\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ISA:radio-cadet\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Radio\00", [26 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 52, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 54, i32 12 }
@___asan_gen_.38 = private unnamed_addr constant [9 x i8] c"radio_nr\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 55, i32 12 }
@___asan_gen_.41 = private unnamed_addr constant [11 x i8] c"cadet_card\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 82, i32 21 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 596, i32 26 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 597, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 622, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 627, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [15 x i8] c"cadet_ctrl_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 522, i32 35 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 633, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [6 x i8] c"bands\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 94, i32 41 }
@___asan_gen_.83 = private unnamed_addr constant [11 x i8] c"cadet_fops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 501, i32 42 }
@___asan_gen_.86 = private unnamed_addr constant [16 x i8] c"cadet_ioctl_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 510, i32 36 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 653, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"iovals\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 567, i32 13 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 572, i32 7 }
@___asan_gen_.101 = private unnamed_addr constant [9 x i8] c"sigtable\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 89, i32 12 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 321, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 293, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 230, i32 6 }
@___asan_gen_.123 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 214, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 174, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 462, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 357, i32 21 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 359, i32 23 }
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.141 = private constant [37 x i8] c"../drivers/media/radio/radio-cadet.c\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 371, i32 19 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_io298, ptr @__UNIQUE_ID_iotype297, ptr @__UNIQUE_ID_license295, ptr @__UNIQUE_ID_radio_nrtype299, ptr @__UNIQUE_ID_version296, ptr @__exitcall_cadet_exit, ptr @__initcall__kmod_radio_cadet__304_677_cadet_init6, ptr @__modver_attr, ptr @__param_io, ptr @__param_radio_nr, ptr @cadet_exit, ptr @cadet_handler._entry, ptr @cadet_handler._entry_ptr, ptr @cadet_init._entry, ptr @cadet_init._entry.12, ptr @cadet_init._entry.9, ptr @cadet_init._entry_ptr, ptr @cadet_init._entry_ptr.11, ptr @cadet_init._entry_ptr.14, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @io, ptr @radio_nr, ptr @cadet_card, ptr @.str.3, ptr @cadet_init.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @cadet_init._key, ptr @.str.8, ptr @cadet_ctrl_ops, ptr @.str.10, ptr @bands, ptr @cadet_fops, ptr @cadet_ioctl_ops, ptr @.str.13, ptr @cadet_probe.iovals, ptr @.str.15, ptr @sigtable, ptr @cadet_start_rds.__key, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @cadet_open.__key, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_nr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadet_card to i32), i32 2144, i32 2656, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadet_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadet_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadet_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadet_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadet_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bands to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadet_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadet_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadet_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadet_probe.iovals to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sigtable to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadet_start_rds.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadet_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadet_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cadet_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @video_unregister_device(ptr noundef getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 1)) #8
  tail call void @v4l2_ctrl_handler_free(ptr noundef getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 2)) #8
  tail call void @v4l2_device_unregister(ptr noundef nonnull @cadet_card) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %0 = load i32, ptr getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 3), align 8
  %and = and i32 %0, 1048575
  %add = or i32 %and, -18874368
  %1 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 7) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  tail call void @arm_heavy_mb() #8
  %2 = load i32, ptr getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 3), align 8
  %add5 = add i32 %2, 1
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %3 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 0) #8, !srcloc !105
  %4 = load i32, ptr getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 3), align 8
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %4, i32 noundef 2) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cadet_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 0, i32 4), ptr noundef nonnull @.str.3, i32 noundef 36) #8
  tail call void @__mutex_init(ptr noundef getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 14), ptr noundef nonnull @.str.4, ptr noundef nonnull @cadet_init.__key) #8
  %0 = load i32, ptr @io, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp slt i32 %0, 0
  store i32 %0, ptr getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 3), align 8
  br i1 %cmp, label %entry.for.body.i_crit_edge, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [8 x i32], ptr @cadet_probe.iovals, i32 0, i32 %i.03.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  store i32 %2, ptr getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 3), align 8
  %call.i = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %2, i32 noundef 2, ptr noundef nonnull @.str.15, i32 noundef 0) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  tail call fastcc void @cadet_setfreq(ptr noundef nonnull @cadet_card, i32 noundef 1400000) #8
  %call.i.i = tail call fastcc i32 @cadet_gettune(ptr noundef nonnull @cadet_card) #8
  %3 = load i8, ptr getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 4), align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i_crit_edge, label %cadet_getfreq.exit.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

cadet_getfreq.exit.i:                             ; preds = %if.then.i
  %and1.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp2.not.i.i = icmp eq i32 %and1.i.i, 0
  %add.i.i = select i1 %cmp2.not.i.i, i32 0, i32 12500
  %4 = and i32 %call.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp2.not.1.i.i = icmp eq i32 %4, 0
  %add.1.i.i = select i1 %cmp2.not.1.i.i, i32 0, i32 25000
  %spec.select.1.i.i = add nuw nsw i32 %add.1.i.i, %add.i.i
  %5 = and i32 %call.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.not.2.i.i = icmp eq i32 %5, 0
  %add.2.i.i = select i1 %cmp2.not.2.i.i, i32 0, i32 50000
  %spec.select.2.i.i = add nuw nsw i32 %spec.select.1.i.i, %add.2.i.i
  %6 = and i32 %call.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2.not.3.i.i = icmp eq i32 %6, 0
  %add.3.i.i = select i1 %cmp2.not.3.i.i, i32 0, i32 100000
  %spec.select.3.i.i = add nuw nsw i32 %spec.select.2.i.i, %add.3.i.i
  %7 = and i32 %call.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2.not.4.i.i = icmp eq i32 %7, 0
  %add.4.i.i = select i1 %cmp2.not.4.i.i, i32 0, i32 200000
  %spec.select.4.i.i = add nuw nsw i32 %spec.select.3.i.i, %add.4.i.i
  %8 = and i32 %call.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp2.not.5.i.i = icmp eq i32 %8, 0
  %add.5.i.i = select i1 %cmp2.not.5.i.i, i32 0, i32 400000
  %spec.select.5.i.i = add nuw nsw i32 %spec.select.4.i.i, %add.5.i.i
  %9 = and i32 %call.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2.not.6.i.i = icmp eq i32 %9, 0
  %add.6.i.i = select i1 %cmp2.not.6.i.i, i32 0, i32 800000
  %spec.select.6.i.i = add nuw nsw i32 %spec.select.5.i.i, %add.6.i.i
  %10 = and i32 %call.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp2.not.7.i.i = icmp eq i32 %10, 0
  %add.7.i.i = select i1 %cmp2.not.7.i.i, i32 0, i32 1600000
  %spec.select.7.i.i = add nuw nsw i32 %spec.select.6.i.i, %add.7.i.i
  %11 = and i32 %call.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp2.not.8.i.i = icmp eq i32 %11, 0
  %add.8.i.i = select i1 %cmp2.not.8.i.i, i32 0, i32 3200000
  %spec.select.8.i.i = add nuw nsw i32 %spec.select.7.i.i, %add.8.i.i
  %12 = and i32 %call.i.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp2.not.9.i.i = icmp eq i32 %12, 0
  %add.9.i.i = select i1 %cmp2.not.9.i.i, i32 0, i32 6400000
  %spec.select.9.i.i = add nuw nsw i32 %spec.select.8.i.i, %add.9.i.i
  %13 = and i32 %call.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp2.not.10.i.i = icmp eq i32 %13, 0
  %add.10.i.i = select i1 %cmp2.not.10.i.i, i32 0, i32 12800000
  %spec.select.10.i.i = add nuw nsw i32 %spec.select.9.i.i, %add.10.i.i
  %14 = and i32 %call.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp2.not.11.i.i = icmp eq i32 %14, 0
  %add.11.i.i = select i1 %cmp2.not.11.i.i, i32 0, i32 25600000
  %spec.select.11.i.i = add nuw nsw i32 %spec.select.10.i.i, %add.11.i.i
  %15 = and i32 %call.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp2.not.12.i.i = icmp eq i32 %15, 0
  %add.12.i.i = select i1 %cmp2.not.12.i.i, i32 0, i32 51200000
  %spec.select.12.i.i = add nuw nsw i32 %spec.select.11.i.i, %add.12.i.i
  %16 = and i32 %call.i.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp2.not.13.i.i = icmp eq i32 %16, 0
  %add.13.i.i = select i1 %cmp2.not.13.i.i, i32 0, i32 102400000
  %spec.select.13.i.i = add nuw nsw i32 %spec.select.12.i.i, %add.13.i.i
  %sub5.i.i = shl nuw i32 %spec.select.13.i.i, 4
  %mul6.i.off.i = add i32 %sub5.i.i, -1571200000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %mul6.i.off.i)
  %17 = icmp ult i32 %mul6.i.off.i, 1000
  br i1 %17, label %if.end6, label %cadet_getfreq.exit.i.if.end.i_crit_edge

cadet_getfreq.exit.i.if.end.i_crit_edge:          ; preds = %cadet_getfreq.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %cadet_getfreq.exit.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %18 = load i32, ptr getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 3), align 8
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %18, i32 noundef 2) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %if.end6.thread, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end6.thread:                                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  store i32 -1, ptr getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 3), align 8
  br label %cleanup

if.end6:                                          ; preds = %cadet_getfreq.exit.i
  %19 = load i32, ptr getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 3), align 8
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %19, i32 noundef 2) #8
  %.pr = load i32, ptr getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 3), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp8 = icmp slt i32 %.pr, 0
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end6.if.end10_crit_edge, %entry.if.end10_crit_edge
  %20 = phi i32 [ %.pr, %if.end6.if.end10_crit_edge ], [ %0, %entry.if.end10_crit_edge ]
  %call12 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %20, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %call12, null
  br i1 %tobool.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %call15 = tail call i32 @v4l2_device_register(ptr noundef null, ptr noundef nonnull @cadet_card) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end25

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %21 = load i32, ptr getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 3), align 8
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %21, i32 noundef 2) #8
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 0, i32 4)) #11
  br label %cleanup

if.end25:                                         ; preds = %if.end14
  %call27 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 2), i32 noundef 2, ptr noundef nonnull @cadet_init._key, ptr noundef nonnull @.str.8) #8
  %call28 = tail call ptr @v4l2_ctrl_new_std(ptr noundef getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 2), ptr noundef nonnull @cadet_ctrl_ops, i32 noundef 9963785, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #8
  store ptr getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 2), ptr getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 0, i32 6), align 4
  %22 = load i32, ptr getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 2, i32 9), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool30.not = icmp eq i32 %22, 0
  br i1 %tobool30.not, label %if.end40, label %if.then31

if.then31:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 0, i32 4)) #11
  br label %err_hdl

if.end40:                                         ; preds = %if.end25
  store i8 1, ptr getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 4), align 4
  store i32 1400000, ptr getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 5), align 8
  tail call fastcc void @cadet_setfreq(ptr noundef nonnull @cadet_card, i32 noundef 1400000)
  %call48 = tail call i32 @strscpy(ptr noundef getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 1, i32 12), ptr noundef getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 0, i32 4), i32 noundef 32) #8
  store ptr @cadet_card, ptr getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 1, i32 7), align 4
  store ptr @cadet_fops, ptr getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 1, i32 3), align 4
  store ptr @cadet_ioctl_ops, ptr getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 1, i32 24), align 4
  store ptr @video_device_release_empty, ptr getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 1, i32 23), align 8
  store ptr getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 14), ptr getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 1, i32 26), align 8
  store i32 17105152, ptr getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 1, i32 4), align 8
  store ptr @cadet_card, ptr getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 1, i32 5, i32 8), align 4
  %23 = load i32, ptr @radio_nr, align 4
  %call.i118 = tail call i32 @__video_register_device(ptr noundef getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 1), i32 noundef 2, i32 noundef %23, i32 noundef 1, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %cmp61 = icmp slt i32 %call.i118, 0
  br i1 %cmp61, label %if.end40.err_hdl_crit_edge, label %do.end66

if.end40.err_hdl_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_hdl

do.end66:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %24 = load i32, ptr getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 3), align 8
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 0, i32 4), i32 noundef %24) #11
  br label %cleanup

err_hdl:                                          ; preds = %if.end40.err_hdl_crit_edge, %if.then31
  %res.0 = phi i32 [ %22, %if.then31 ], [ %call.i118, %if.end40.err_hdl_crit_edge ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 2)) #8
  tail call void @v4l2_device_unregister(ptr noundef nonnull @cadet_card) #8
  %25 = load i32, ptr getelementptr inbounds (%struct.cadet, ptr @cadet_card, i32 0, i32 3), align 8
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %25, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %err_hdl, %do.end66, %if.then17, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end6.thread
  %retval.0 = phi i32 [ 0, %do.end66 ], [ -19, %if.end6.cleanup_crit_edge ], [ %call15, %if.then17 ], [ %res.0, %err_hdl ], [ -19, %if.end10.cleanup_crit_edge ], [ -19, %if.end6.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cadet_setfreq(ptr nocapture noundef %dev, i32 noundef %freq) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %is_fm_band = getelementptr inbounds %struct.cadet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %is_fm_band to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_fm_band, align 4, !range !107
  %2 = zext i8 %1 to i32
  %rangelow = getelementptr [2 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %2, i32 4
  %3 = ptrtoint ptr %rangelow to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rangelow, align 4
  %5 = tail call i32 @llvm.umax.i32(i32 %4, i32 %freq)
  %rangehigh = getelementptr [2 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %2, i32 5
  %6 = ptrtoint ptr %rangehigh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rangehigh, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %5, i32 %7)
  %curfreq = getelementptr inbounds %struct.cadet, ptr %dev, i32 0, i32 5
  %9 = ptrtoint ptr %curfreq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %curfreq, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool12.not = icmp eq i8 %1, 0
  %div16127 = lshr i32 %8, 4
  br i1 %tobool12.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add = add nuw nsw i32 %div16127, 10700
  call void @__sanitizer_cov_trace_const_cmp4(i32 1467200, i32 %8)
  %cmp14.not = icmp ult i32 %8, 1467200
  %sub.neg = select i1 %cmp14.not, i32 0, i32 -102400
  %freq.addr.1 = add nsw i32 %sub.neg, %add
  %shl.1 = select i1 %cmp14.not, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 51200, i32 %freq.addr.1)
  %cmp14.not.1 = icmp ult i32 %freq.addr.1, 51200
  %not.cmp14.not.1 = xor i1 %cmp14.not.1, true
  %or.1 = zext i1 %not.cmp14.not.1 to i32
  %fifo.1.1 = or i32 %shl.1, %or.1
  %sub.1.neg = select i1 %cmp14.not.1, i32 0, i32 -51200
  %freq.addr.1.1 = add nsw i32 %sub.1.neg, %freq.addr.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 25600, i32 %freq.addr.1.1)
  %cmp14.not.2 = icmp ult i32 %freq.addr.1.1, 25600
  %sub.2.neg = select i1 %cmp14.not.2, i32 0, i32 -25600
  %freq.addr.1.2 = add nsw i32 %sub.2.neg, %freq.addr.1.1
  %10 = shl nuw nsw i32 %fifo.1.1, 2
  %11 = select i1 %cmp14.not.2, i32 0, i32 2
  %shl.3 = or i32 %10, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 12800, i32 %freq.addr.1.2)
  %cmp14.not.3 = icmp ult i32 %freq.addr.1.2, 12800
  %not.cmp14.not.3 = xor i1 %cmp14.not.3, true
  %or.3 = zext i1 %not.cmp14.not.3 to i32
  %fifo.1.3 = or i32 %shl.3, %or.3
  %sub.3.neg = select i1 %cmp14.not.3, i32 0, i32 -12800
  %freq.addr.1.3 = add nsw i32 %sub.3.neg, %freq.addr.1.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6400, i32 %freq.addr.1.3)
  %cmp14.not.4 = icmp ult i32 %freq.addr.1.3, 6400
  %sub.4.neg = select i1 %cmp14.not.4, i32 0, i32 -6400
  %freq.addr.1.4 = add nsw i32 %sub.4.neg, %freq.addr.1.3
  %12 = shl nuw nsw i32 %fifo.1.3, 2
  %13 = select i1 %cmp14.not.4, i32 0, i32 2
  %shl.5 = or i32 %12, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3200, i32 %freq.addr.1.4)
  %cmp14.not.5 = icmp ult i32 %freq.addr.1.4, 3200
  %not.cmp14.not.5 = xor i1 %cmp14.not.5, true
  %or.5 = zext i1 %not.cmp14.not.5 to i32
  %fifo.1.5 = or i32 %shl.5, %or.5
  %sub.5.neg = select i1 %cmp14.not.5, i32 0, i32 -3200
  %freq.addr.1.5 = add nsw i32 %sub.5.neg, %freq.addr.1.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1600, i32 %freq.addr.1.5)
  %cmp14.not.6 = icmp ult i32 %freq.addr.1.5, 1600
  %sub.6.neg = select i1 %cmp14.not.6, i32 0, i32 -1600
  %freq.addr.1.6 = add nsw i32 %sub.6.neg, %freq.addr.1.5
  %14 = shl i32 %fifo.1.5, 2
  %15 = select i1 %cmp14.not.6, i32 0, i32 2
  %shl.7 = or i32 %14, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %freq.addr.1.6)
  %cmp14.not.7 = icmp ult i32 %freq.addr.1.6, 800
  %not.cmp14.not.7 = xor i1 %cmp14.not.7, true
  %or.7 = zext i1 %not.cmp14.not.7 to i32
  %fifo.1.7 = or i32 %shl.7, %or.7
  %sub.7.neg = select i1 %cmp14.not.7, i32 0, i32 -800
  %freq.addr.1.7 = add nsw i32 %sub.7.neg, %freq.addr.1.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 400, i32 %freq.addr.1.7)
  %cmp14.not.8 = icmp ult i32 %freq.addr.1.7, 400
  %sub.8.neg = select i1 %cmp14.not.8, i32 0, i32 -400
  %freq.addr.1.8 = add nsw i32 %sub.8.neg, %freq.addr.1.7
  %16 = shl i32 %fifo.1.7, 2
  %17 = select i1 %cmp14.not.8, i32 0, i32 2
  %shl.9 = or i32 %16, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %freq.addr.1.8)
  %cmp14.not.9 = icmp ult i32 %freq.addr.1.8, 200
  %not.cmp14.not.9 = xor i1 %cmp14.not.9, true
  %or.9 = zext i1 %not.cmp14.not.9 to i32
  %fifo.1.9 = or i32 %shl.9, %or.9
  %sub.9.neg = select i1 %cmp14.not.9, i32 0, i32 -200
  %freq.addr.1.9 = add nsw i32 %sub.9.neg, %freq.addr.1.8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %freq.addr.1.9)
  %cmp14.not.10 = icmp ult i32 %freq.addr.1.9, 100
  %sub.10.neg = select i1 %cmp14.not.10, i32 0, i32 -100
  %freq.addr.1.10 = add nsw i32 %sub.10.neg, %freq.addr.1.9
  %18 = shl i32 %fifo.1.9, 2
  %19 = select i1 %cmp14.not.10, i32 0, i32 2
  %shl.11 = or i32 %18, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %freq.addr.1.10)
  %cmp14.not.11 = icmp ult i32 %freq.addr.1.10, 50
  %not.cmp14.not.11 = xor i1 %cmp14.not.11, true
  %or.11 = zext i1 %not.cmp14.not.11 to i32
  %fifo.1.11 = or i32 %shl.11, %or.11
  %sub.11.neg = select i1 %cmp14.not.11, i32 0, i32 -50
  %freq.addr.1.11 = add nsw i32 %sub.11.neg, %freq.addr.1.10
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %freq.addr.1.11)
  %cmp14.not.12 = icmp ult i32 %freq.addr.1.11, 25
  %sub.12.neg = select i1 %cmp14.not.12, i32 0, i32 -25
  %freq.addr.1.12 = add nsw i32 %sub.12.neg, %freq.addr.1.11
  %20 = shl i32 %fifo.1.11, 2
  %21 = select i1 %cmp14.not.12, i32 0, i32 2
  %shl.13 = or i32 %20, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %freq.addr.1.12)
  %cmp14.not.13 = icmp ugt i32 %freq.addr.1.12, 11
  %or.13 = zext i1 %cmp14.not.13 to i32
  %fifo.1.13 = or i32 %shl.13, %or.13
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add17 = add nuw nsw i32 %div16127, 450
  %or18 = or i32 %add17, 1048576
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %fifo.2 = phi i32 [ %or18, %if.else ], [ %fifo.1.13, %if.then ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %io = getelementptr inbounds %struct.cadet, ptr %dev, i32 0, i32 3
  %22 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %io, align 8
  %and = and i32 %23, 1048575
  %add20 = or i32 %and, -18874368
  %24 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 7) #8, !srcloc !105
  %25 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %io, align 8
  %add22 = add i32 %26, 1
  %and23 = and i32 %add22, 1048575
  %add24 = or i32 %and23, -18874368
  %27 = inttoptr i32 %add24 to ptr
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %27) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %tunestat = getelementptr inbounds %struct.cadet, ptr %dev, i32 0, i32 6
  br label %for.body31

for.body31:                                       ; preds = %for.inc62.for.body31_crit_edge, %do.body
  %j.0134 = phi i32 [ 3, %do.body ], [ %dec, %for.inc62.for.body31_crit_edge ]
  %shl32 = shl i32 %j.0134, 16
  %or33 = or i32 %shl32, %fifo.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %io, align 8
  %and.i = and i32 %30, 1048575
  %add.i = or i32 %and.i, -18874368
  %31 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 7) #8, !srcloc !105
  %shr.i = lshr i32 %or33, 23
  %and1.i = and i32 %shr.i, 2
  %or.i = or i32 %and1.i, 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @arm_heavy_mb() #8
  %32 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %io, align 8
  %and6.i = and i32 %33, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %34 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 7) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %conv.i = trunc i32 %or.i to i8
  %35 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %io, align 8
  %add13.i = add i32 %36, 1
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %37 = inttoptr i32 %add15.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %conv.i) #8, !srcloc !105
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body31
  %test.066.i = phi i32 [ %or.i, %for.body31 ], [ %or40.i, %for.body.i.for.body.i_crit_edge ]
  %i.065.i = phi i32 [ 0, %for.body31 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %fifo.addr.064.i = phi i32 [ %or33, %for.body31 ], [ %shl.i, %for.body.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  tail call void @arm_heavy_mb() #8
  %38 = trunc i32 %test.066.i to i8
  %conv22.i = or i8 %38, 1
  %39 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %io, align 8
  %add24.i = add i32 %40, 1
  %and25.i = and i32 %add24.i, 1048575
  %add26.i = or i32 %and25.i, -18874368
  %41 = inttoptr i32 %add26.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 %conv22.i) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  tail call void @arm_heavy_mb() #8
  %conv32.i = and i8 %38, -2
  %42 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %io, align 8
  %add34.i = add i32 %43, 1
  %and35.i = and i32 %add34.i, 1048575
  %add36.i = or i32 %and35.i, -18874368
  %44 = inttoptr i32 %add36.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 %conv32.i) #8, !srcloc !105
  %shl.i = shl i32 %fifo.addr.064.i, 1
  %shr38.i = lshr i32 %shl.i, 23
  %and39.i = and i32 %shr38.i, 2
  %or40.i = or i32 %and39.i, 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void @arm_heavy_mb() #8
  %conv44.i = trunc i32 %or40.i to i8
  %45 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %io, align 8
  %add46.i = add i32 %46, 1
  %and47.i = and i32 %add46.i, 1048575
  %add48.i = or i32 %and47.i, -18874368
  %47 = inttoptr i32 %add48.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 %conv44.i) #8, !srcloc !105
  %inc.i = add nuw nsw i32 %i.065.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 25
  br i1 %exitcond.not.i, label %cadet_settune.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

cadet_settune.exit:                               ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  tail call void @arm_heavy_mb() #8
  %48 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %io, align 8
  %and38 = and i32 %49, 1048575
  %add39 = or i32 %and38, -18874368
  %50 = inttoptr i32 %add39 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 7) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @arm_heavy_mb() #8
  %51 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %io, align 8
  %add46 = add i32 %52, 1
  %and47 = and i32 %add46, 1048575
  %add48 = or i32 %and47, -18874368
  %53 = inttoptr i32 %add48 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 %28) #8, !srcloc !105
  tail call void @msleep(i32 noundef 100) #8
  %call50 = tail call fastcc i32 @cadet_gettune(ptr noundef %dev)
  %54 = ptrtoint ptr %tunestat to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tunestat, align 4
  %and51 = and i32 %55, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %cmp52 = icmp eq i32 %and51, 0
  br i1 %cmp52, label %if.then54, label %for.inc62

if.then54:                                        ; preds = %cadet_settune.exit
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %is_fm_band to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %is_fm_band, align 4, !range !107
  %58 = zext i8 %57 to i32
  %arrayidx59 = getelementptr [2 x [4 x i16]], ptr @sigtable, i32 0, i32 %58, i32 %j.0134
  %59 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx59, align 2
  %conv60 = zext i16 %60 to i32
  br label %do.body65

for.inc62:                                        ; preds = %cadet_settune.exit
  %dec = add nsw i32 %j.0134, -1
  %cmp29 = icmp sgt i32 %j.0134, 0
  br i1 %cmp29, label %for.inc62.for.body31_crit_edge, label %for.inc62.do.body65_crit_edge

for.inc62.do.body65_crit_edge:                    ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body65

for.inc62.for.body31_crit_edge:                   ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body31

do.body65:                                        ; preds = %for.inc62.do.body65_crit_edge, %if.then54
  %conv60.sink = phi i32 [ %conv60, %if.then54 ], [ 0, %for.inc62.do.body65_crit_edge ]
  %sigstrength = getelementptr inbounds %struct.cadet, ptr %dev, i32 0, i32 7
  %61 = ptrtoint ptr %sigstrength to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv60.sink, ptr %sigstrength, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void @arm_heavy_mb() #8
  %62 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %io, align 8
  %and69 = and i32 %63, 1048575
  %add70 = or i32 %and69, -18874368
  %64 = inttoptr i32 %add70 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %64, i8 3) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %65 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %io, align 8
  %add77 = add i32 %66, 1
  %and78 = and i32 %add77, 1048575
  %add79 = or i32 %and78, -18874368
  %67 = inttoptr i32 %add79 to ptr
  %68 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %67) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  %69 = and i8 %68, 127
  %70 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %io, align 8
  %add87 = add i32 %71, 1
  %and88 = and i32 %add87, 1048575
  %add89 = or i32 %and88, -18874368
  %72 = inttoptr i32 %add89 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %72, i8 %69) #8, !srcloc !105
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cadet_gettune(ptr nocapture noundef %dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  tail call void @arm_heavy_mb() #8
  %io = getelementptr inbounds %struct.cadet, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io, align 8
  %and = and i32 %1, 1048575
  %add = or i32 %and, -18874368
  %2 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 7) #8, !srcloc !105
  %3 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io, align 8
  %add2 = add i32 %4, 1
  %and3 = and i32 %add2, 1048575
  %add4 = or i32 %and3, -18874368
  %5 = inttoptr i32 %add4 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %io, align 8
  %add11 = add i32 %8, 1
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %9 = inttoptr i32 %add13 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 0) #8, !srcloc !105
  %tunestat = getelementptr inbounds %struct.cadet, ptr %dev, i32 0, i32 6
  %10 = ptrtoint ptr %tunestat to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 65535, ptr %tunestat, align 4
  %11 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %io, align 8
  %add1880 = add i32 %12, 1
  %and1981 = and i32 %add1880, 1048575
  %add2082 = or i32 %and1981, -18874368
  %13 = inttoptr i32 %add2082 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !125
  %15 = lshr i8 %14, 7
  %16 = zext i8 %15 to i32
  br label %for.inc

for.inc:                                          ; preds = %for.inc.for.inc_crit_edge, %entry
  %or84 = phi i32 [ %16, %entry ], [ %or, %for.inc.for.inc_crit_edge ]
  %i.07783 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.inc_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %io, align 8
  %add32 = add i32 %18, 1
  %and33 = and i32 %add32, 1048575
  %add34 = or i32 %and33, -18874368
  %19 = inttoptr i32 %add34 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 1) #8, !srcloc !105
  %20 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %io, align 8
  %add38 = add i32 %21, 1
  %and39 = and i32 %add38, 1048575
  %add40 = or i32 %and39, -18874368
  %22 = inttoptr i32 %add40 to ptr
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  %conv44 = zext i8 %23 to i32
  %24 = ptrtoint ptr %tunestat to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tunestat, align 4
  %and46 = and i32 %25, %conv44
  store i32 %and46, ptr %tunestat, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %io, align 8
  %add51 = add i32 %27, 1
  %and52 = and i32 %add51, 1048575
  %add53 = or i32 %and52, -18874368
  %28 = inttoptr i32 %add53 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 0) #8, !srcloc !105
  %inc = add nuw nsw i32 %i.07783, 1
  %shl = shl i32 %or84, 1
  %29 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %io, align 8
  %add18 = add i32 %30, 1
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %31 = inttoptr i32 %add20 to ptr
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %31) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !125
  %33 = lshr i8 %32, 7
  %34 = zext i8 %33 to i32
  %or = or i32 %shl, %34
  %cmp26.not = icmp eq i32 %inc, 24
  br i1 %cmp26.not, label %do.body55, label %for.inc.for.inc_crit_edge

for.inc.for.inc_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body55:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %35 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %io, align 8
  %add60 = add i32 %36, 1
  %and61 = and i32 %add60, 1048575
  %add62 = or i32 %and61, -18874368
  %37 = inttoptr i32 %add62 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %6) #8, !srcloc !105
  ret i32 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cadet_s_ctrl(ptr nocapture noundef readonly %ctrl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963785, i32 %1)
  %cond = icmp eq i32 %1, 9963785
  br i1 %cond, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %io = getelementptr i8, ptr %3, i32 184
  %4 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io, align 8
  %and = and i32 %5, 1048575
  %add = or i32 %and, -18874368
  %6 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 7) #8, !srcloc !105
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %io, align 8
  %add13 = add i32 %10, 1
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %11 = inttoptr i32 %add15 to ptr
  br i1 %tobool.not, label %do.body9, label %do.body1

do.body1:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 0) #8, !srcloc !105
  br label %cleanup

do.body9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 32) #8, !srcloc !105
  br label %cleanup

cleanup:                                          ; preds = %do.body9, %do.body1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body9 ], [ 0, %do.body1 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cadet_read(ptr noundef %file, ptr noundef %data, i32 noundef %count, ptr nocapture noundef readnone %ppos) #4 align 64 {
entry:
  %readbuf = alloca [256 x i8], align 1
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %readbuf) #8
  %2 = call ptr @memset(ptr %readbuf, i32 255, i32 256)
  %lock = getelementptr inbounds %struct.cadet, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %rdsstat = getelementptr inbounds %struct.cadet, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %rdsstat to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rdsstat, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %rdsstat to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %rdsstat, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %io.i = getelementptr inbounds %struct.cadet, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io.i, align 8
  %and.i = and i32 %7, 1048575
  %add.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 -128) #8, !srcloc !105
  %readtimer.i = getelementptr inbounds %struct.cadet, ptr %1, i32 0, i32 9
  tail call void @init_timer_key(ptr noundef %readtimer.i, ptr noundef nonnull @cadet_handler, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @cadet_start_rds.__key) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add4.i = add i32 %9, 5
  %expires.i = getelementptr inbounds %struct.cadet, ptr %1, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add4.i, ptr %expires.i, align 8
  tail call void @add_timer(ptr noundef %readtimer.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %rdsin.i = getelementptr inbounds %struct.cadet, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %rdsin.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rdsin.i, align 8
  %rdsout.i = getelementptr inbounds %struct.cadet, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %rdsout.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rdsout.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %14)
  %cmp.i.not = icmp eq i8 %12, %14
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br i1 %cmp.i.not, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %15 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %f_flags, align 4
  %and = and i32 %16, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end5_crit_edge, label %land.lhs.true.cleanup42_crit_edge

land.lhs.true.cleanup42_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup42

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 339) #8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %17 = ptrtoint ptr %rdsin.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %rdsin.i, align 8
  %19 = ptrtoint ptr %rdsout.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rdsout.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %20)
  %cmp.i70.not = icmp eq i8 %18, %20
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br i1 %cmp.i70.not, label %if.then10, label %if.end5.if.end24_crit_edge

if.end5.if.end24_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then10:                                        ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %21 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %read_queue = getelementptr inbounds %struct.cadet, ptr %1, i32 0, i32 8
  %call1291 = call i32 @prepare_to_wait_event(ptr noundef %read_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %22 = ptrtoint ptr %rdsin.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rdsin.i, align 8
  %24 = ptrtoint ptr %rdsout.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rdsout.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %25)
  %cmp.i74.not92 = icmp eq i8 %23, %25
  call void @mutex_unlock(ptr noundef %lock) #8
  br i1 %cmp.i74.not92, label %if.then10.if.end15_crit_edge, label %if.then10.if.end20.thread84_crit_edge

if.then10.if.end20.thread84_crit_edge:            ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.thread84

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  br label %if.end15

if.end15:                                         ; preds = %cleanup.if.end15_crit_edge, %if.then10.if.end15_crit_edge
  %call1293 = phi i32 [ %call12, %cleanup.if.end15_crit_edge ], [ %call1291, %if.then10.if.end15_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1293)
  %tobool16.not = icmp eq i32 %call1293, 0
  br i1 %tobool16.not, label %cleanup, label %if.end20

cleanup:                                          ; preds = %if.end15
  call void @schedule() #8
  %call12 = call i32 @prepare_to_wait_event(ptr noundef %read_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %26 = ptrtoint ptr %rdsin.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rdsin.i, align 8
  %28 = ptrtoint ptr %rdsout.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %rdsout.i, align 1
  %cmp.i74.not = icmp eq i8 %27, %29
  call void @mutex_unlock(ptr noundef %lock) #8
  br i1 %cmp.i74.not, label %cleanup.if.end15_crit_edge, label %cleanup.if.end20.thread84_crit_edge

cleanup.if.end20.thread84_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.thread84

cleanup.if.end15_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end20.thread84:                                ; preds = %cleanup.if.end20.thread84_crit_edge, %if.then10.if.end20.thread84_crit_edge
  call void @finish_wait(ptr noundef %read_queue, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end24

if.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %cleanup42

if.end24:                                         ; preds = %if.end20.thread84, %if.end5.if.end24_crit_edge
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp2694.not = icmp eq i32 %count, 0
  br i1 %cmp2694.not, label %while.end.thread, label %if.end24.land.rhs_crit_edge

if.end24.land.rhs_crit_edge:                      ; preds = %if.end24
  br label %land.rhs

while.end.thread:                                 ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %if.end41

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %if.end24.land.rhs_crit_edge
  %i.095 = phi i32 [ %inc33, %while.body.land.rhs_crit_edge ], [ 0, %if.end24.land.rhs_crit_edge ]
  %30 = ptrtoint ptr %rdsin.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rdsin.i, align 8
  %32 = ptrtoint ptr %rdsout.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %rdsout.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %33)
  %cmp30.not = icmp eq i8 %31, %33
  br i1 %cmp30.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %conv29 = zext i8 %33 to i32
  %inc = add i8 %33, 1
  %34 = ptrtoint ptr %rdsout.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %inc, ptr %rdsout.i, align 1
  %arrayidx = getelementptr %struct.cadet, ptr %1, i32 0, i32 13, i32 %conv29
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx, align 1
  %inc33 = add nuw i32 %i.095, 1
  %arrayidx34 = getelementptr [256 x i8], ptr %readbuf, i32 0, i32 %i.095
  %37 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx34, align 1
  %exitcond.not = icmp eq i32 %inc33, %count
  br i1 %exitcond.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %i.0.lcssa = phi i32 [ %i.095, %land.rhs.while.end_crit_edge ], [ %count, %while.body.while.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa)
  %tobool36.not = icmp eq i32 %i.0.lcssa, 0
  br i1 %tobool36.not, label %while.end.if.end41_crit_edge, label %land.lhs.true37

while.end.if.end41_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

land.lhs.true37:                                  ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %i.0.lcssa)
  %cmp1.i.i = icmp ugt i32 %i.0.lcssa, 256
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !132

if.then3.i.i:                                     ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.20, i32 noundef 256, i32 noundef %i.0.lcssa) #8
  br label %cleanup42

if.then.i.i.i:                                    ; preds = %land.lhs.true37
  call void @__check_object_size(ptr noundef nonnull %readbuf, i32 noundef %i.0.lcssa, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.21, i32 noundef 174) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then.i.i.i.cleanup42_crit_edge, label %if.end.i.i

if.then.i.i.i.cleanup42_crit_edge:                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup42

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %38 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 %i.0.lcssa, i32 -1226833920) #12, !srcloc !133
  %asmresult.i.i = extractvalue { i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup42_crit_edge

if.end.i.i.cleanup42_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup42

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %readbuf, i32 noundef %i.0.lcssa) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %data, ptr noundef nonnull %readbuf, i32 noundef %i.0.lcssa) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool39.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool39.not, label %copy_to_user.exit.if.end41_crit_edge, label %copy_to_user.exit.cleanup42_crit_edge

copy_to_user.exit.cleanup42_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup42

copy_to_user.exit.if.end41_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.end41:                                         ; preds = %copy_to_user.exit.if.end41_crit_edge, %while.end.if.end41_crit_edge, %while.end.thread
  %i.0.lcssa101 = phi i32 [ 0, %while.end.thread ], [ %i.0.lcssa, %copy_to_user.exit.if.end41_crit_edge ], [ 0, %while.end.if.end41_crit_edge ]
  br label %cleanup42

cleanup42:                                        ; preds = %if.end41, %copy_to_user.exit.cleanup42_crit_edge, %if.end.i.i.cleanup42_crit_edge, %if.then.i.i.i.cleanup42_crit_edge, %if.then3.i.i, %if.end20, %land.lhs.true.cleanup42_crit_edge
  %retval.0 = phi i32 [ %i.0.lcssa101, %if.end41 ], [ -11, %land.lhs.true.cleanup42_crit_edge ], [ %call1293, %if.end20 ], [ -14, %copy_to_user.exit.cleanup42_crit_edge ], [ -14, %if.then.i.i.i.cleanup42_crit_edge ], [ -14, %if.end.i.i.cleanup42_crit_edge ], [ -14, %if.then3.i.i ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %readbuf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cadet_poll(ptr noundef %file, ptr noundef %wait) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %poll_requested_events.exit.thread, label %land.lhs.true.i

poll_requested_events.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call227 = tail call i32 @v4l2_ctrl_poll(ptr noundef %file, ptr noundef null) #8
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %_key.i = getelementptr inbounds %struct.poll_table_struct, ptr %wait, i32 0, i32 1
  %2 = ptrtoint ptr %_key.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %_key.i, align 4
  %call2 = tail call i32 @v4l2_ctrl_poll(ptr noundef %file, ptr noundef nonnull %wait) #8
  %read_queue = getelementptr inbounds %struct.cadet, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  %tobool3.not.i = icmp eq ptr %read_queue, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %5(ptr noundef %file, ptr noundef nonnull %read_queue, ptr noundef nonnull %wait) #8
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %poll_requested_events.exit.thread
  %call230 = phi i32 [ %call227, %poll_requested_events.exit.thread ], [ %call2, %land.lhs.true.i.poll_wait.exit_crit_edge ], [ %call2, %if.then.i ]
  %cond.i29 = phi i32 [ -1, %poll_requested_events.exit.thread ], [ %3, %land.lhs.true.i.poll_wait.exit_crit_edge ], [ %3, %if.then.i ]
  %rdsstat = getelementptr inbounds %struct.cadet, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %rdsstat to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rdsstat, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp ne i8 %7, 0
  %and = and i32 %cond.i29, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %poll_wait.exit.if.end10_crit_edge, label %if.then

poll_wait.exit.if.end10_crit_edge:                ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then:                                          ; preds = %poll_wait.exit
  %lock = getelementptr inbounds %struct.cadet, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %8 = ptrtoint ptr %rdsstat to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rdsstat, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp6 = icmp eq i8 %9, 0
  br i1 %cmp6, label %if.then8, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %rdsstat to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %rdsstat, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %io.i = getelementptr inbounds %struct.cadet, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %io.i, align 8
  %and.i = and i32 %12, 1048575
  %add.i = or i32 %and.i, -18874368
  %13 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 -128) #8, !srcloc !105
  %readtimer.i = getelementptr inbounds %struct.cadet, ptr %1, i32 0, i32 9
  tail call void @init_timer_key(ptr noundef %readtimer.i, ptr noundef nonnull @cadet_handler, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @cadet_start_rds.__key) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add4.i = add i32 %14, 5
  %expires.i = getelementptr inbounds %struct.cadet, ptr %1, i32 0, i32 9, i32 1
  %15 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add4.i, ptr %expires.i, align 8
  tail call void @add_timer(ptr noundef %readtimer.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %if.end10

if.end10:                                         ; preds = %if.end, %poll_wait.exit.if.end10_crit_edge
  %lock.i = getelementptr inbounds %struct.cadet, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %rdsin.i = getelementptr inbounds %struct.cadet, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %rdsin.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rdsin.i, align 8
  %rdsout.i = getelementptr inbounds %struct.cadet, ptr %1, i32 0, i32 11
  %18 = ptrtoint ptr %rdsout.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rdsout.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp.i.not = icmp eq i8 %17, %19
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %or = or i32 %call230, 65
  %spec.select = select i1 %cmp.i.not, i32 %call230, i32 %or
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cadet_open(ptr noundef %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %lock = getelementptr inbounds %struct.cadet, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %call1 = tail call i32 @v4l2_fh_open(ptr noundef %file) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.fail_crit_edge

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end:                                           ; preds = %entry
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %call.i12 = tail call i32 @v4l2_fh_is_singular(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %tobool3.not = icmp eq i32 %call.i12, 0
  br i1 %tobool3.not, label %if.end.fail_crit_edge, label %do.body

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %read_queue = getelementptr inbounds %struct.cadet, ptr %1, i32 0, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %read_queue, ptr noundef nonnull @.str.22, ptr noundef nonnull @cadet_open.__key) #8
  br label %fail

fail:                                             ; preds = %do.body, %if.end.fail_crit_edge, %entry.fail_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cadet_release(ptr noundef %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %lock = getelementptr inbounds %struct.cadet, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %call.i13 = tail call i32 @v4l2_fh_is_singular(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %tobool.not = icmp eq i32 %call.i13, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %rdsstat = getelementptr inbounds %struct.cadet, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %rdsstat to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rdsstat, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %readtimer = getelementptr inbounds %struct.cadet, ptr %1, i32 0, i32 9
  %call3 = tail call i32 @del_timer_sync(ptr noundef %readtimer) #8
  %6 = ptrtoint ptr %rdsstat to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %rdsstat, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call5 = tail call i32 @v4l2_fh_release(ptr noundef %file) #8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cadet_handler(ptr noundef %t) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %t, i32 308
  %call = tail call i32 @mutex_trylock(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end53_crit_edge, label %do.body

entry.if.end53_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %io = getelementptr i8, ptr %t, i32 -72
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io, align 8
  %and = and i32 %1, 1048575
  %add = or i32 %and, -18874368
  %2 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 3) #8, !srcloc !105
  %3 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io, align 8
  %add3 = add i32 %4, 1
  %and4 = and i32 %add3, 1048575
  %add5 = or i32 %and4, -18874368
  %5 = inttoptr i32 %add5 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  %7 = and i8 %6, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not = icmp eq i8 %7, 0
  br i1 %cmp.not, label %do.body.do.body17_crit_edge, label %do.end14

do.body.do.body17_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body17

do.end14:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #11
  br label %do.body17

do.body17:                                        ; preds = %do.end14, %do.body.do.body17_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io, align 8
  %and21 = and i32 %9, 1048575
  %add22 = or i32 %and21, -18874368
  %10 = inttoptr i32 %add22 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 -128) #8, !srcloc !105
  %11 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %io, align 8
  %and2675 = and i32 %12, 1048575
  %add2776 = or i32 %and2675, -18874368
  %13 = inttoptr i32 %add2776 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %cmp33.not77 = icmp sgt i8 %14, -1
  br i1 %cmp33.not77, label %do.body17.while.end_crit_edge, label %while.body.lr.ph

do.body17.while.end_crit_edge:                    ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.body17
  %rdsbuf = getelementptr i8, ptr %t, i32 51
  %rdsin = getelementptr i8, ptr %t, i32 48
  %rdsout = getelementptr i8, ptr %t, i32 49
  br label %while.body

while.body:                                       ; preds = %if.end51.while.body_crit_edge, %while.body.lr.ph
  %15 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %io, align 8
  %add37 = add i32 %16, 1
  %and38 = and i32 %add37, 1048575
  %add39 = or i32 %and38, -18874368
  %17 = inttoptr i32 %add39 to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %19 = ptrtoint ptr %rdsin to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rdsin, align 8
  %idxprom = zext i8 %20 to i32
  %arrayidx = getelementptr [256 x i8], ptr %rdsbuf, i32 0, i32 %idxprom
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %18, ptr %arrayidx, align 1
  %add45 = add nuw nsw i32 %idxprom, 1
  %22 = ptrtoint ptr %rdsout to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rdsout, align 1
  %conv46 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add45, i32 %conv46)
  %cmp47.not = icmp eq i32 %add45, %conv46
  br i1 %cmp47.not, label %while.body.if.end51_crit_edge, label %if.then49

while.body.if.end51_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then49:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add i8 %20, 1
  %24 = ptrtoint ptr %rdsin to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %inc, ptr %rdsin, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %while.body.if.end51_crit_edge
  %25 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %io, align 8
  %and26 = and i32 %26, 1048575
  %add27 = or i32 %and26, -18874368
  %27 = inttoptr i32 %add27 to ptr
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %27) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  %cmp33.not = icmp sgt i8 %28, -1
  br i1 %cmp33.not, label %if.end51.while.end_crit_edge, label %if.end51.while.body_crit_edge

if.end51.while.body_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end51.while.end_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end51.while.end_crit_edge, %do.body17.while.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %if.end53

if.end53:                                         ; preds = %while.end, %entry.if.end53_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %rdsin.i = getelementptr i8, ptr %t, i32 48
  %29 = ptrtoint ptr %rdsin.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %rdsin.i, align 8
  %rdsout.i = getelementptr i8, ptr %t, i32 49
  %31 = ptrtoint ptr %rdsout.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %rdsout.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %32)
  %cmp.i.not = icmp eq i8 %30, %32
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br i1 %cmp.i.not, label %if.end53.if.end56_crit_edge, label %if.then55

if.end53.if.end56_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %read_queue = getelementptr i8, ptr %t, i32 -52
  tail call void @__wake_up(ptr noundef %read_queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end53.if.end56_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %add58 = add i32 %33, 5
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %34 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add58, ptr %expires, align 8
  tail call void @add_timer(ptr noundef %t) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_poll(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_is_singular(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %v) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef %v, ptr noundef nonnull @.str.23, i32 noundef 16) #8
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %v, i32 0, i32 1
  %call2 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.23, i32 noundef 32) #8
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %v, i32 0, i32 2
  %call4 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef nonnull @.str.24, i32 noundef 32) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %v) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %type, align 4
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 1
  %call1 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.25, i32 noundef 32) #8
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 3
  %5 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1425, ptr %capability, align 4
  %rangelow = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 4
  %6 = ptrtoint ptr %rangelow to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8320, ptr %rangelow, align 4
  %rangehigh = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 5
  %7 = ptrtoint ptr %rangehigh to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1728000, ptr %rangehigh, align 4
  %is_fm_band = getelementptr inbounds %struct.cadet, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %is_fm_band to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_fm_band, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %if.else, label %cadet_getstereo.exit

cadet_getstereo.exit:                             ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  tail call void @arm_heavy_mb() #8
  %io.i = getelementptr inbounds %struct.cadet, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %io.i, align 8
  %and.i = and i32 %11, 1048575
  %add.i = or i32 %and.i, -18874368
  %12 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 7) #8, !srcloc !105
  %13 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io.i, align 8
  %add2.i = add i32 %14, 1
  %and3.i = and i32 %add2.i, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %15 = inttoptr i32 %add4.i to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  %17 = and i8 %16, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.i = icmp eq i8 %17, 0
  %spec.select.i = select i1 %cmp.i, i32 2, i32 1
  %rxsubchans = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 6
  %18 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.select.i, ptr %rxsubchans, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %io.i, align 8
  %and = and i32 %20, 1048575
  %add = or i32 %and, -18874368
  %21 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 3) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %io.i, align 8
  %add10 = add i32 %23, 1
  %and11 = and i32 %add10, 1048575
  %add12 = or i32 %and11, -18874368
  %24 = inttoptr i32 %add12 to ptr
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  %26 = and i8 %25, 127
  %27 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %io.i, align 8
  %add18 = add i32 %28, 1
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %29 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 %26) #8, !srcloc !105
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %cadet_getstereo.exit
  %__ms.068 = phi i32 [ 100, %cadet_getstereo.exit ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.068, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #8
  %tobool22.not = icmp eq i32 %dec, 0
  br i1 %tobool22.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %io.i, align 8
  %and27 = and i32 %32, 1048575
  %add28 = or i32 %and27, -18874368
  %33 = inttoptr i32 %add28 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 3) #8, !srcloc !105
  %34 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %io.i, align 8
  %add32 = add i32 %35, 1
  %and33 = and i32 %add32, 1048575
  %add34 = or i32 %and33, -18874368
  %36 = inttoptr i32 %add34 to ptr
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %36) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %37)
  %tobool40.not = icmp sgt i8 %37, -1
  br i1 %tobool40.not, label %while.end.if.end48_crit_edge, label %if.then41

while.end.if.end48_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then41:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rxsubchans, align 4
  %or43 = or i32 %39, 16
  store i32 %or43, ptr %rxsubchans, align 4
  br label %if.end48

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %rangehigh to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 26400, ptr %rangehigh, align 4
  %rxsubchans47 = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 6
  %41 = ptrtoint ptr %rxsubchans47 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %rxsubchans47, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then41, %while.end.if.end48_crit_edge
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 7
  %42 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %audmode, align 4
  %sigstrength = getelementptr inbounds %struct.cadet, ptr %1, i32 0, i32 7
  %43 = ptrtoint ptr %sigstrength to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sigstrength, align 8
  %signal = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 8
  %45 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %signal, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end48 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_s_tuner(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %v) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
define internal i32 @vidioc_g_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %type, align 4
  %curfreq = getelementptr inbounds %struct.cadet, ptr %3, i32 0, i32 5
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
define internal i32 @vidioc_s_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %f) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frequency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 713199, i32 %5)
  %cmp = icmp ugt i32 %5, 713199
  %is_fm_band = getelementptr inbounds %struct.cadet, ptr %3, i32 0, i32 4
  %frombool = zext i1 %cmp to i8
  %6 = ptrtoint ptr %is_fm_band to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %is_fm_band, align 4
  %7 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %frequency, align 4
  tail call fastcc void @cadet_setfreq(ptr noundef %3, i32 noundef %8)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_enum_freq_bands(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %band) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_frequency_band, ptr %band, i32 0, i32 2
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [2 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %3
  %4 = call ptr @memcpy(ptr %band, ptr %arrayidx, i32 64)
  br label %return

return:                                           ; preds = %if.end2, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !21, !23, !25, !27, !29, !30, !32, !33, !35, !37, !39, !40, !42, !43, !44, !45, !46, !48, !49, !51, !52, !53, !55, !56, !57, !59, !61, !63, !65, !67, !69, !71, !72, !74, !75, !76, !77, !79, !80, !82, !84, !86, !87, !89, !91, !93}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @__UNIQUE_ID_author292, !1, !"__UNIQUE_ID_author292", i1 false, i1 false}
!1 = !{!"../drivers/media/radio/radio-cadet.c", i32 49, i32 1}
!2 = !{ptr @__UNIQUE_ID_description293, !3, !"__UNIQUE_ID_description293", i1 false, i1 false}
!3 = !{!"../drivers/media/radio/radio-cadet.c", i32 50, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/media/radio/radio-cadet.c", i32 51, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version296, !8, !"__UNIQUE_ID_version296", i1 false, i1 false}
!8 = !{!"../drivers/media/radio/radio-cadet.c", i32 52, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__param_io, !14, !"__param_io", i1 false, i1 false}
!14 = !{!"../drivers/media/radio/radio-cadet.c", i32 57, i32 1}
!15 = !{ptr @__UNIQUE_ID_iotype297, !14, !"__UNIQUE_ID_iotype297", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_io298, !17, !"__UNIQUE_ID_io298", i1 false, i1 false}
!17 = !{!"../drivers/media/radio/radio-cadet.c", i32 58, i32 1}
!18 = !{ptr @__param_radio_nr, !19, !"__param_radio_nr", i1 false, i1 false}
!19 = !{!"../drivers/media/radio/radio-cadet.c", i32 59, i32 1}
!20 = !{ptr @__UNIQUE_ID_radio_nrtype299, !19, !"__UNIQUE_ID_radio_nrtype299", i1 false, i1 false}
!21 = !{ptr @__initcall__kmod_radio_cadet__304_677_cadet_init6, !22, !"__initcall__kmod_radio_cadet__304_677_cadet_init6", i1 false, i1 false}
!22 = !{!"../drivers/media/radio/radio-cadet.c", i32 677, i32 1}
!23 = !{ptr @__exitcall_cadet_exit, !24, !"__exitcall_cadet_exit", i1 false, i1 false}
!24 = !{!"../drivers/media/radio/radio-cadet.c", i32 678, i32 1}
!25 = !{ptr @cadet_card, !26, !"cadet_card", i1 false, i1 false}
!26 = !{!"../drivers/media/radio/radio-cadet.c", i32 82, i32 21}
!27 = distinct !{null, !28, !"cadet_pnp_driver", i1 false, i1 false}
!28 = !{!"../drivers/media/radio/radio-cadet.c", i32 562, i32 26}
!29 = !{ptr @__param_str_io, !14, !"__param_str_io", i1 false, i1 false}
!30 = !{ptr @io, !31, !"io", i1 false, i1 false}
!31 = !{!"../drivers/media/radio/radio-cadet.c", i32 54, i32 12}
!32 = !{ptr @__param_str_radio_nr, !19, !"__param_str_radio_nr", i1 false, i1 false}
!33 = !{ptr @radio_nr, !34, !"radio_nr", i1 false, i1 false}
!34 = !{!"../drivers/media/radio/radio-cadet.c", i32 55, i32 12}
!35 = !{ptr @.str.3, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/radio/radio-cadet.c", i32 596, i32 26}
!37 = !{ptr @cadet_init.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/media/radio/radio-cadet.c", i32 597, i32 2}
!39 = !{ptr @.str.4, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.5, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/radio/radio-cadet.c", i32 622, i32 3}
!42 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @cadet_init._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @cadet_init._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @cadet_init._key, !47, !"_key", i1 false, i1 false}
!47 = !{!"../drivers/media/radio/radio-cadet.c", i32 627, i32 2}
!48 = !{ptr @.str.8, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.10, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/radio/radio-cadet.c", i32 633, i32 3}
!51 = !{ptr @cadet_init._entry.9, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @cadet_init._entry_ptr.11, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/radio/radio-cadet.c", i32 653, i32 2}
!55 = !{ptr @cadet_init._entry.12, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @cadet_init._entry_ptr.14, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @cadet_probe.iovals, !58, !"iovals", i1 false, i1 false}
!58 = !{!"../drivers/media/radio/radio-cadet.c", i32 567, i32 13}
!59 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/radio/radio-cadet.c", i32 572, i32 7}
!61 = !{ptr @cadet_ctrl_ops, !62, !"cadet_ctrl_ops", i1 false, i1 false}
!62 = !{!"../drivers/media/radio/radio-cadet.c", i32 522, i32 35}
!63 = !{ptr @bands, !64, !"bands", i1 false, i1 false}
!64 = !{!"../drivers/media/radio/radio-cadet.c", i32 94, i32 41}
!65 = !{ptr @sigtable, !66, !"sigtable", i1 false, i1 false}
!66 = !{!"../drivers/media/radio/radio-cadet.c", i32 89, i32 12}
!67 = !{ptr @cadet_fops, !68, !"cadet_fops", i1 false, i1 false}
!68 = !{!"../drivers/media/radio/radio-cadet.c", i32 501, i32 42}
!69 = !{ptr @cadet_start_rds.__key, !70, !"__key", i1 false, i1 false}
!70 = !{!"../drivers/media/radio/radio-cadet.c", i32 321, i32 2}
!71 = !{ptr @.str.16, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.17, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/radio/radio-cadet.c", i32 293, i32 4}
!74 = !{ptr @.str.18, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @cadet_handler._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @cadet_handler._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!79 = !{ptr @.str.19, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.20, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!82 = !{ptr @.str.21, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!84 = !{ptr @cadet_open.__key, !85, !"__key", i1 false, i1 false}
!85 = !{!"../drivers/media/radio/radio-cadet.c", i32 462, i32 3}
!86 = !{ptr @.str.22, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @cadet_ioctl_ops, !88, !"cadet_ioctl_ops", i1 false, i1 false}
!88 = !{!"../drivers/media/radio/radio-cadet.c", i32 510, i32 36}
!89 = !{ptr @.str.23, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/radio/radio-cadet.c", i32 357, i32 21}
!91 = !{ptr @.str.24, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/radio/radio-cadet.c", i32 359, i32 23}
!93 = !{ptr @.str.25, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/radio/radio-cadet.c", i32 371, i32 19}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{i64 2156316714}
!105 = !{i64 5059216}
!106 = !{i64 2156317043}
!107 = !{i8 0, i8 2}
!108 = !{i64 2156295162}
!109 = !{i64 5059611}
!110 = !{i64 2156295561}
!111 = !{i64 2156281000}
!112 = !{i64 2156281322}
!113 = !{i64 2156281651}
!114 = !{i64 2156281984}
!115 = !{i64 2156282317}
!116 = !{i64 2156282650}
!117 = !{i64 2156295767}
!118 = !{i64 2156296098}
!119 = !{i64 2156296424}
!120 = !{i64 2156297241}
!121 = !{i64 2156297058}
!122 = !{i64 2156278495}
!123 = !{i64 2156278894}
!124 = !{i64 2156279107}
!125 = !{i64 2156279510}
!126 = !{i64 2156279723}
!127 = !{i64 2156280126}
!128 = !{i64 2156280339}
!129 = !{i64 2156280674}
!130 = !{i64 2156308726}
!131 = !{i64 2156301923}
!132 = !{!"branch_weights", i32 1, i32 2000}
!133 = !{i64 2153061501, i64 2153061526}
!134 = !{i64 2156298818}
!135 = !{i64 2156299217}
!136 = !{i64 2156300962}
!137 = !{i64 2156301353}
!138 = !{i64 2156301636}
!139 = !{i64 2156277883}
!140 = !{i64 2156278282}
!141 = !{i64 2156303976}
!142 = !{i64 2156304793}
!143 = !{i64 2156304610}
!144 = !{i64 2156306427}
!145 = !{i64 2156306826}
