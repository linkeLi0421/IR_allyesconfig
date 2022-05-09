; ModuleID = '/llk/IR_all_yes/drivers/media/radio/si470x/radio-si470x-common.c_pt.bc'
source_filename = "../drivers/media/radio/si470x/radio-si470x-common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+si470x_set_freq\22, \22a\22\09"
module asm "\09.weak\09__crc_si470x_set_freq\09\09\09\09"
module asm "\09.long\09__crc_si470x_set_freq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_si470x_set_freq:\09\09\09\09\09"
module asm "\09.asciz \09\22si470x_set_freq\22\09\09\09\09\09"
module asm "__kstrtabns_si470x_set_freq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+si470x_start\22, \22a\22\09"
module asm "\09.weak\09__crc_si470x_start\09\09\09\09"
module asm "\09.long\09__crc_si470x_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_si470x_start:\09\09\09\09\09"
module asm "\09.asciz \09\22si470x_start\22\09\09\09\09\09"
module asm "__kstrtabns_si470x_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+si470x_stop\22, \22a\22\09"
module asm "\09.weak\09__crc_si470x_stop\09\09\09\09"
module asm "\09.long\09__crc_si470x_stop\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_si470x_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22si470x_stop\22\09\09\09\09\09"
module asm "__kstrtabns_si470x_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+si470x_ctrl_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_si470x_ctrl_ops\09\09\09\09"
module asm "\09.long\09__crc_si470x_ctrl_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_si470x_ctrl_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22si470x_ctrl_ops\22\09\09\09\09\09"
module asm "__kstrtabns_si470x_ctrl_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+si470x_viddev_template\22, \22a\22\09"
module asm "\09.weak\09__crc_si470x_viddev_template\09\09\09\09"
module asm "\09.long\09__crc_si470x_viddev_template\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_si470x_viddev_template:\09\09\09\09\09"
module asm "\09.asciz \09\22si470x_viddev_template\22\09\09\09\09\09"
module asm "__kstrtabns_si470x_viddev_template:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.v4l2_frequency_band = type { i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.si470x_device = type { %struct.v4l2_device, %struct.video_device, %struct.v4l2_ctrl_handler, i32, [16 x i16], %struct.wait_queue_head, %struct.mutex, ptr, i32, i32, i32, %struct.completion, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
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
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.v4l2_hw_freq_seek = type { i32, i32, i32, i32, i32, i32, i32, [5 x i32] }

@__param_str_space = internal constant [26 x i8] c"radio_si470x_common.space\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@space = internal global { i16, [30 x i8] } { i16 2, [30 x i8] zeroinitializer }, align 32
@__param_space = internal constant %struct.kernel_param { ptr @__param_str_space, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @space } }, section "__param", align 4
@__UNIQUE_ID_spacetype292 = internal constant [42 x i8] c"radio_si470x_common.parmtype=space:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_space293 = internal constant [68 x i8] c"radio_si470x_common.parm=space:Spacing: 0=200kHz 1=100kHz *2=50kHz*\00", section ".modinfo", align 1
@__param_str_de = internal constant [23 x i8] c"radio_si470x_common.de\00", align 1
@de = internal global { i16, [30 x i8] } { i16 1, [30 x i8] zeroinitializer }, align 32
@__param_de = internal constant %struct.kernel_param { ptr @__param_str_de, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @de } }, section "__param", align 4
@__UNIQUE_ID_detype294 = internal constant [39 x i8] c"radio_si470x_common.parmtype=de:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_de295 = internal constant [57 x i8] c"radio_si470x_common.parm=de:De-emphasis: 0=75us *1=50us*\00", section ".modinfo", align 1
@__param_str_tune_timeout = internal constant [33 x i8] c"radio_si470x_common.tune_timeout\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@tune_timeout = internal global { i32, [28 x i8] } { i32 3000, [28 x i8] zeroinitializer }, align 32
@__param_tune_timeout = internal constant %struct.kernel_param { ptr @__param_str_tune_timeout, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @tune_timeout } }, section "__param", align 4
@__UNIQUE_ID_tune_timeouttype296 = internal constant [47 x i8] c"radio_si470x_common.parmtype=tune_timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_tune_timeout297 = internal constant [59 x i8] c"radio_si470x_common.parm=tune_timeout:Tune timeout: *3000*\00", section ".modinfo", align 1
@__param_str_seek_timeout = internal constant [33 x i8] c"radio_si470x_common.seek_timeout\00", align 1
@seek_timeout = internal global { i32, [28 x i8] } { i32 5000, [28 x i8] zeroinitializer }, align 32
@__param_seek_timeout = internal constant %struct.kernel_param { ptr @__param_str_seek_timeout, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @seek_timeout } }, section "__param", align 4
@__UNIQUE_ID_seek_timeouttype298 = internal constant [47 x i8] c"radio_si470x_common.parmtype=seek_timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_seek_timeout299 = internal constant [59 x i8] c"radio_si470x_common.parm=seek_timeout:Seek timeout: *5000*\00", section ".modinfo", align 1
@bands = internal constant { [3 x %struct.v4l2_frequency_band], [32 x i8] } { [3 x %struct.v4l2_frequency_band] [%struct.v4l2_frequency_band { i32 0, i32 1, i32 0, i32 1437, i32 1400000, i32 1728000, i32 4, [9 x i32] zeroinitializer }, %struct.v4l2_frequency_band { i32 0, i32 1, i32 1, i32 1437, i32 1216000, i32 1728000, i32 4, [9 x i32] zeroinitializer }, %struct.v4l2_frequency_band { i32 0, i32 1, i32 2, i32 1437, i32 1216000, i32 1440000, i32 4, [9 x i32] zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@__kstrtab_si470x_set_freq = external dso_local constant [0 x i8], align 1
@__kstrtabns_si470x_set_freq = external dso_local constant [0 x i8], align 1
@__ksymtab_si470x_set_freq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @si470x_set_freq to i32), ptr @__kstrtab_si470x_set_freq, ptr @__kstrtabns_si470x_set_freq }, section "___ksymtab_gpl+si470x_set_freq", align 4
@__kstrtab_si470x_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_si470x_start = external dso_local constant [0 x i8], align 1
@__ksymtab_si470x_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @si470x_start to i32), ptr @__kstrtab_si470x_start, ptr @__kstrtabns_si470x_start }, section "___ksymtab_gpl+si470x_start", align 4
@__kstrtab_si470x_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_si470x_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_si470x_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @si470x_stop to i32), ptr @__kstrtab_si470x_stop, ptr @__kstrtabns_si470x_stop }, section "___ksymtab_gpl+si470x_stop", align 4
@si470x_ctrl_ops = dso_local constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @si470x_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@__kstrtab_si470x_ctrl_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_si470x_ctrl_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_si470x_ctrl_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @si470x_ctrl_ops to i32), ptr @__kstrtab_si470x_ctrl_ops, ptr @__kstrtabns_si470x_ctrl_ops }, section "___ksymtab_gpl+si470x_ctrl_ops", align 4
@si470x_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @si470x_fops_read, ptr null, ptr @si470x_fops_poll, ptr @video_ioctl2, ptr null, ptr null, ptr @si470x_fops_open, ptr @si470x_fops_release }, [60 x i8] zeroinitializer }, align 32
@si470x_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @si470x_vidioc_querycap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @si470x_vidioc_g_tuner, ptr @si470x_vidioc_s_tuner, ptr @si470x_vidioc_g_frequency, ptr @si470x_vidioc_s_frequency, ptr @si470x_vidioc_enum_freq_bands, ptr null, ptr null, ptr @si470x_vidioc_s_hw_freq_seek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@si470x_viddev_template = dso_local constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @si470x_fops, i32 0, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"radio-si470x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release_empty, ptr @si470x_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@__kstrtab_si470x_viddev_template = external dso_local constant [0 x i8], align 1
@__kstrtabns_si470x_viddev_template = external dso_local constant [0 x i8], align 1
@__ksymtab_si470x_viddev_template = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @si470x_viddev_template to i32), ptr @__kstrtab_si470x_viddev_template, ptr @__kstrtabns_si470x_viddev_template }, section "___ksymtab_gpl+si470x_viddev_template", align 4
@__UNIQUE_ID_file304 = internal constant [72 x i8] c"radio_si470x_common.file=drivers/media/radio/si470x/radio-si470x-common\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [32 x i8] c"radio_si470x_common.license=GPL\00", section ".modinfo", align 1
@si470x_set_chan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 223, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tune does not complete\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"si470x_set_chan\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/media/radio/si470x/radio-si470x-common.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@si470x_set_chan._entry_ptr = internal global ptr @si470x_set_chan._entry, section ".printk_index", align 4
@si470x_set_chan._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 226, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tune timed out after %u ms\0A\00", [36 x i8] zeroinitializer }, align 32
@si470x_set_chan._entry_ptr.7 = internal global ptr @si470x_set_chan._entry.5, section ".printk_index", align 4
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"FM\00", [29 x i8] zeroinitializer }, align 32
@si470x_set_seek._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 348, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"seek does not complete\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"si470x_set_seek\00", [16 x i8] zeroinitializer }, align 32
@si470x_set_seek._entry_ptr = internal global ptr @si470x_set_seek._entry, section ".printk_index", align 4
@si470x_set_seek._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 351, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"seek failed / band limit reached\0A\00", [62 x i8] zeroinitializer }, align 32
@si470x_set_seek._entry_ptr.16 = internal global ptr @si470x_set_seek._entry.14, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 9963781, i64 9963785]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1216000, i64 1400000]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 1440000, i64 1728000]
@___asan_gen_.19 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 112, i32 23 }
@___asan_gen_.22 = private unnamed_addr constant [3 x i8] c"de\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 119, i32 23 }
@___asan_gen_.25 = private unnamed_addr constant [13 x i8] c"tune_timeout\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 124, i32 21 }
@___asan_gen_.28 = private unnamed_addr constant [13 x i8] c"seek_timeout\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 129, i32 21 }
@___asan_gen_.31 = private unnamed_addr constant [6 x i8] c"bands\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 133, i32 41 }
@___asan_gen_.34 = private unnamed_addr constant [16 x i8] c"si470x_ctrl_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 753, i32 28 }
@___asan_gen_.37 = private unnamed_addr constant [12 x i8] c"si470x_fops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 559, i32 42 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"si470x_ioctl_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 769, i32 36 }
@___asan_gen_.43 = private unnamed_addr constant [23 x i8] c"si470x_viddev_template\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 785, i32 27 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 223, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 225, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 174, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 616, i32 23 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 348, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private constant [52 x i8] c"../drivers/media/radio/si470x/radio-si470x-common.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 350, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_de295, ptr @__UNIQUE_ID_detype294, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__UNIQUE_ID_seek_timeout299, ptr @__UNIQUE_ID_seek_timeouttype298, ptr @__UNIQUE_ID_space293, ptr @__UNIQUE_ID_spacetype292, ptr @__UNIQUE_ID_tune_timeout297, ptr @__UNIQUE_ID_tune_timeouttype296, ptr @__ksymtab_si470x_ctrl_ops, ptr @__ksymtab_si470x_set_freq, ptr @__ksymtab_si470x_start, ptr @__ksymtab_si470x_stop, ptr @__ksymtab_si470x_viddev_template, ptr @__param_de, ptr @__param_seek_timeout, ptr @__param_space, ptr @__param_tune_timeout, ptr @si470x_set_chan._entry, ptr @si470x_set_chan._entry.5, ptr @si470x_set_chan._entry_ptr, ptr @si470x_set_chan._entry_ptr.7, ptr @si470x_set_seek._entry, ptr @si470x_set_seek._entry.14, ptr @si470x_set_seek._entry_ptr, ptr @si470x_set_seek._entry_ptr.16, ptr @space, ptr @de, ptr @tune_timeout, ptr @seek_timeout, ptr @bands, ptr @si470x_ctrl_ops, ptr @si470x_fops, ptr @si470x_ioctl_ops, ptr @si470x_viddev_template, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @space to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @de to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tune_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seek_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bands to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_viddev_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_set_chan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_set_chan._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_set_seek._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_set_seek._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @si470x_set_freq(ptr noundef %radio, i32 noundef %freq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %band = getelementptr inbounds %struct.si470x_device, ptr %radio, i32 0, i32 3
  %0 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %band, align 8
  %rangelow = getelementptr [3 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %1, i32 4
  %2 = ptrtoint ptr %rangelow to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rangelow, align 4
  %4 = tail call i32 @llvm.umax.i32(i32 %3, i32 %freq)
  %rangehigh = getelementptr [3 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %1, i32 5
  %5 = ptrtoint ptr %rangehigh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rangehigh, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %4, i32 %6)
  %sub = sub i32 %7, %3
  %arrayidx.i = getelementptr %struct.si470x_device, ptr %radio, i32 0, i32 4, i32 5
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i, align 2
  %10 = lshr i16 %9, 4
  %11 = and i16 %10, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %11)
  %switch.selectcmp.i = icmp eq i16 %11, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1600, i32 800
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %switch.selectcmp2.i = icmp eq i16 %11, 0
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 3200, i32 %switch.select.i
  %div = udiv i32 %sub, %switch.select3.i
  %conv = trunc i32 %div to i16
  %call12 = tail call fastcc i32 @si470x_set_chan(ptr noundef %radio, i16 noundef zeroext %conv)
  ret i32 %call12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si470x_set_chan(ptr noundef %radio, i16 noundef zeroext %chan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %get_register = getelementptr inbounds %struct.si470x_device, ptr %radio, i32 0, i32 13
  %0 = ptrtoint ptr %get_register to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_register, align 8
  %call = tail call i32 %1(ptr noundef %radio, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.si470x_device, ptr %radio, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 4
  %4 = and i16 %3, 16385
  call void @__sanitizer_cov_trace_const_cmp2(i16 16385, i16 %4)
  %cmp.not = icmp eq i16 %4, 16385
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arrayidx6 = getelementptr %struct.si470x_device, ptr %radio, i32 0, i32 4, i32 3
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx6, align 2
  %7 = and i16 %6, 31744
  %8 = or i16 %7, %chan
  %or1470 = or i16 %8, -32768
  store i16 %or1470, ptr %arrayidx6, align 2
  %set_register = getelementptr inbounds %struct.si470x_device, ptr %radio, i32 0, i32 14
  %9 = ptrtoint ptr %set_register to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_register, align 4
  %call16 = tail call i32 %10(ptr noundef %radio, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end4.cleanup_crit_edge, label %if.end20

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end4
  %completion = getelementptr inbounds %struct.si470x_device, ptr %radio, i32 0, i32 11
  %11 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %completion, align 4
  %12 = load i32, ptr @tune_timeout, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %12) #6
  %call23 = tail call i32 @wait_for_completion_timeout(ptr noundef %completion, i32 noundef %call2.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp eq i32 %call23, 0
  %arrayidx29 = getelementptr %struct.si470x_device, ptr %radio, i32 0, i32 4, i32 10
  %13 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx29, align 4
  %15 = and i16 %14, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp32 = icmp eq i16 %15, 0
  br i1 %cmp32, label %do.end, label %if.end20.if.end35_crit_edge

if.end20.if.end35_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.si470x_device, ptr %radio, i32 0, i32 1, i32 5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str) #9
  br label %if.end35

if.end35:                                         ; preds = %do.end, %if.end20.if.end35_crit_edge
  br i1 %cmp24, label %do.end40, label %if.end35.if.end43_crit_edge

if.end35.if.end43_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

do.end40:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %dev42 = getelementptr inbounds %struct.si470x_device, ptr %radio, i32 0, i32 1, i32 5
  %16 = load i32, ptr @tune_timeout, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev42, ptr noundef nonnull @.str.6, i32 noundef %16) #9
  br label %if.end43

if.end43:                                         ; preds = %do.end40, %if.end35.if.end43_crit_edge
  %17 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx6, align 2
  %19 = and i16 %18, 32767
  store i16 %19, ptr %arrayidx6, align 2
  %20 = ptrtoint ptr %set_register to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_register, align 4
  %call50 = tail call i32 %21(ptr noundef %radio, i32 noundef 3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call16, %if.end4.cleanup_crit_edge ], [ %call50, %if.end43 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @si470x_start(ptr noundef %radio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.si470x_device, ptr %radio, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 18433, ptr %arrayidx, align 4
  %set_register = getelementptr inbounds %struct.si470x_device, ptr %radio, i32 0, i32 14
  %1 = ptrtoint ptr %set_register to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %set_register, align 4
  %call = tail call i32 %2(ptr noundef %radio, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end:                                           ; preds = %entry
  %arrayidx3 = getelementptr %struct.si470x_device, ptr %radio, i32 0, i32 4, i32 4
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx3, align 4
  %5 = and i16 %4, 12275
  %6 = or i16 %5, -12284
  store i16 %6, ptr %arrayidx3, align 4
  %7 = load i16, ptr @de, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.end.if.end20_crit_edge, label %if.then14

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = or i16 %5, -10236
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %arrayidx3, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then14, %if.end.if.end20_crit_edge
  %10 = ptrtoint ptr %set_register to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_register, align 4
  %call22 = tail call i32 %11(ptr noundef %radio, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end20.done_crit_edge, label %if.end26

if.end20.done_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end26:                                         ; preds = %if.end20
  %band = getelementptr inbounds %struct.si470x_device, ptr %radio, i32 0, i32 3
  %12 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %band, align 8
  %shl = shl i32 %13, 6
  %and27 = and i32 %shl, 192
  %14 = load i16, ptr @space, align 2
  %conv29 = zext i16 %14 to i32
  %shl30 = shl nuw nsw i32 %conv29, 4
  %and31 = and i32 %shl30, 48
  %or28 = or i32 %and31, %and27
  %15 = trunc i32 %or28 to i16
  %conv34 = or i16 %15, 7951
  %arrayidx36 = getelementptr %struct.si470x_device, ptr %radio, i32 0, i32 4, i32 5
  %16 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv34, ptr %arrayidx36, align 2
  %17 = ptrtoint ptr %set_register to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_register, align 4
  %call38 = tail call i32 %18(ptr noundef %radio, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.end26.done_crit_edge, label %if.end42

if.end26.done_crit_edge:                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end42:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx44 = getelementptr %struct.si470x_device, ptr %radio, i32 0, i32 4, i32 3
  %19 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx44, align 2
  %21 = and i16 %20, 1023
  %call48 = tail call fastcc i32 @si470x_set_chan(ptr noundef %radio, i16 noundef zeroext %21)
  br label %done

done:                                             ; preds = %if.end42, %if.end26.done_crit_edge, %if.end20.done_crit_edge, %entry.done_crit_edge
  %retval1.0 = phi i32 [ %call, %entry.done_crit_edge ], [ %call22, %if.end20.done_crit_edge ], [ %call38, %if.end26.done_crit_edge ], [ %call48, %if.end42 ]
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @si470x_stop(ptr noundef %radio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.si470x_device, ptr %radio, i32 0, i32 4, i32 4
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 4
  %2 = and i16 %1, -4097
  store i16 %2, ptr %arrayidx, align 4
  %set_register = getelementptr inbounds %struct.si470x_device, ptr %radio, i32 0, i32 14
  %3 = ptrtoint ptr %set_register to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %set_register, align 4
  %call = tail call i32 %4(ptr noundef %radio, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx5 = getelementptr %struct.si470x_device, ptr %radio, i32 0, i32 4, i32 2
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx5, align 4
  %7 = and i16 %6, -16450
  %8 = or i16 %7, 65
  store i16 %8, ptr %arrayidx5, align 4
  %9 = ptrtoint ptr %set_register to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_register, align 4
  %call14 = tail call i32 %10(ptr noundef %radio, i32 noundef 2) #6
  br label %done

done:                                             ; preds = %if.end, %entry.done_crit_edge
  %retval1.0 = phi i32 [ %call, %entry.done_crit_edge ], [ %call14, %if.end ]
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si470x_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -1480
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 9963781, label %sw.bb
    i32 9963785, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr i8, ptr %1, i32 198
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 2
  %7 = and i16 %6, -16
  store i16 %7, ptr %arrayidx, align 2
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %10 = trunc i32 %9 to i16
  %conv5 = or i16 %7, %10
  store i16 %conv5, ptr %arrayidx, align 2
  br label %cleanup.sink.split

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %11 = ptrtoint ptr %val7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  %arrayidx14 = getelementptr i8, ptr %1, i32 192
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx14, align 4
  %15 = and i16 %14, -16385
  %masksel = select i1 %tobool.not, i16 16384, i16 0
  %.sink = or i16 %15, %masksel
  store i16 %.sink, ptr %arrayidx14, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb6, %sw.bb
  %.sink30 = phi i32 [ 2, %sw.bb6 ], [ 5, %sw.bb ]
  %set_register18 = getelementptr i8, ptr %1, i32 444
  %16 = ptrtoint ptr %set_register18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_register18, align 4
  %call19 = tail call i32 %17(ptr noundef %add.ptr, i32 noundef %.sink30) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call19, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si470x_fops_read(ptr noundef %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %arrayidx = getelementptr %struct.si470x_device, ptr %1, i32 0, i32 4, i32 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 4
  %4 = and i16 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp = icmp eq i16 %4, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %5 = or i16 %3, 4096
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %arrayidx, align 4
  %set_register.i = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %set_register.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_register.i, align 4
  %call.i86 = tail call i32 %8(ptr noundef %1, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %cmp.i = icmp slt i32 %call.i86, 0
  br i1 %cmp.i, label %if.then.i87, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i87:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx, align 4
  %11 = and i16 %10, -4097
  store i16 %11, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i87, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %wr_index = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 10
  %rd_index = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 9
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %read_queue = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 5
  br label %while.cond

while.cond:                                       ; preds = %if.end29.while.cond_crit_edge, %if.end
  %12 = ptrtoint ptr %wr_index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wr_index, align 8
  %14 = ptrtoint ptr %rd_index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rd_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp4 = icmp eq i32 %13, %15
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %f_flags, align 4
  %and6 = and i32 %17, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %if.end8, label %while.body.done_crit_edge

while.body.done_crit_edge:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end8:                                          ; preds = %while.body
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 477) #6
  %18 = ptrtoint ptr %wr_index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wr_index, align 8
  %20 = ptrtoint ptr %rd_index to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rd_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp14.not = icmp eq i32 %19, %21
  br i1 %cmp14.not, label %if.then16, label %if.end8.if.end29_crit_edge

if.end8.if.end29_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then16:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %22 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %call18103 = call i32 @prepare_to_wait_event(ptr noundef %read_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  %23 = ptrtoint ptr %wr_index to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %wr_index, align 8
  %25 = ptrtoint ptr %rd_index to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rd_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp21.not104 = icmp eq i32 %24, %26
  br i1 %cmp21.not104, label %if.then16.if.end24_crit_edge, label %if.then16.for.end_crit_edge

if.then16.for.end_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then16.if.end24_crit_edge:                     ; preds = %if.then16
  br label %if.end24

if.end24:                                         ; preds = %cleanup.if.end24_crit_edge, %if.then16.if.end24_crit_edge
  %call18105 = phi i32 [ %call18, %cleanup.if.end24_crit_edge ], [ %call18103, %if.then16.if.end24_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18105)
  %tobool25.not = icmp eq i32 %call18105, 0
  br i1 %tobool25.not, label %cleanup, label %if.end24.__out_crit_edge

if.end24.__out_crit_edge:                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %__out

cleanup:                                          ; preds = %if.end24
  call void @schedule() #6
  %call18 = call i32 @prepare_to_wait_event(ptr noundef %read_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  %27 = ptrtoint ptr %wr_index to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %wr_index, align 8
  %29 = ptrtoint ptr %rd_index to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rd_index, align 4
  %cmp21.not = icmp eq i32 %28, %30
  br i1 %cmp21.not, label %cleanup.if.end24_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup.if.end24_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then16.for.end_crit_edge
  call void @finish_wait(ptr noundef %read_queue, ptr noundef nonnull %__wq_entry) #6
  br label %__out

__out:                                            ; preds = %for.end, %if.end24.__out_crit_edge
  %__ret17.190 = phi i32 [ 0, %for.end ], [ %call18105, %if.end24.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %if.end29

if.end29:                                         ; preds = %__out, %if.end8.if.end29_crit_edge
  %__ret.0 = phi i32 [ 0, %if.end8.if.end29_crit_edge ], [ %__ret17.190, %__out ]
  %cmp31 = icmp slt i32 %__ret.0, 0
  br i1 %cmp31, label %if.end29.done_crit_edge, label %if.end29.while.cond_crit_edge

if.end29.while.cond_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

if.end29.done_crit_edge:                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %31 = icmp ult i32 %count, 3
  br i1 %31, label %while.end.done_crit_edge, label %while.body38.lr.ph

while.end.done_crit_edge:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

while.body38.lr.ph:                               ; preds = %while.end
  %div = udiv i32 %count, 3
  %buffer = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 7
  %buf_size = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 8
  %32 = mul nuw i32 %div, 3
  br label %while.body38

while.body38:                                     ; preds = %if.end50.while.body38_crit_edge, %while.body38.lr.ph
  %buf.addr.0109 = phi ptr [ %buf, %while.body38.lr.ph ], [ %add.ptr, %if.end50.while.body38_crit_edge ]
  %block_count.0108 = phi i32 [ 0, %while.body38.lr.ph ], [ %inc, %if.end50.while.body38_crit_edge ]
  %retval1.0107 = phi i32 [ 0, %while.body38.lr.ph ], [ %add58, %if.end50.while.body38_crit_edge ]
  %33 = ptrtoint ptr %rd_index to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rd_index, align 4
  %35 = ptrtoint ptr %wr_index to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %wr_index, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp41 = icmp eq i32 %34, %36
  br i1 %cmp41, label %while.body38.done_crit_edge, label %if.end44

while.body38.done_crit_edge:                      ; preds = %while.body38
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end44:                                         ; preds = %while.body38
  %37 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buffer, align 4
  %arrayidx46 = getelementptr i8, ptr %38, i32 %34
  call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 174) #6
  %call.i.i = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.end44.done_crit_edge, label %if.end.i.i

if.end44.done_crit_edge:                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end.i.i:                                       ; preds = %if.end44
  %39 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0109, i32 3, i32 -1226833920) #10, !srcloc !94
  %asmresult.i.i = extractvalue { i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.done_crit_edge

if.end.i.i.done_crit_edge:                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx46, i32 noundef 3) #6
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %buf.addr.0109, ptr noundef %arrayidx46, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool48.not = icmp eq i32 %call.i1.i.i, 0
  br i1 %tobool48.not, label %if.end50, label %copy_to_user.exit.done_crit_edge

copy_to_user.exit.done_crit_edge:                 ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end50:                                         ; preds = %copy_to_user.exit
  %40 = ptrtoint ptr %rd_index to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rd_index, align 4
  %add = add i32 %41, 3
  %42 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %buf_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %43)
  %cmp53.not = icmp ult i32 %add, %43
  %spec.store.select = select i1 %cmp53.not, i32 %add, i32 0
  %44 = ptrtoint ptr %rd_index to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %spec.store.select, ptr %rd_index, align 4
  %inc = add nuw nsw i32 %block_count.0108, 1
  %add.ptr = getelementptr i8, ptr %buf.addr.0109, i32 3
  %add58 = add nuw i32 %retval1.0107, 3
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %if.end50.done_crit_edge, label %if.end50.while.body38_crit_edge

if.end50.while.body38_crit_edge:                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body38

if.end50.done_crit_edge:                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

done:                                             ; preds = %if.end50.done_crit_edge, %copy_to_user.exit.done_crit_edge, %if.end.i.i.done_crit_edge, %if.end44.done_crit_edge, %while.body38.done_crit_edge, %while.end.done_crit_edge, %if.end29.done_crit_edge, %while.body.done_crit_edge
  %retval1.1 = phi i32 [ 0, %while.end.done_crit_edge ], [ %retval1.0107, %copy_to_user.exit.done_crit_edge ], [ %retval1.0107, %while.body38.done_crit_edge ], [ %32, %if.end50.done_crit_edge ], [ %retval1.0107, %if.end44.done_crit_edge ], [ %retval1.0107, %if.end.i.i.done_crit_edge ], [ -4, %if.end29.done_crit_edge ], [ -11, %while.body.done_crit_edge ]
  ret i32 %retval1.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si470x_fops_poll(ptr noundef %file, ptr noundef %pts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool.not.i = icmp eq ptr %pts, null
  br i1 %tobool.not.i, label %poll_requested_events.exit.thread, label %poll_requested_events.exit

poll_requested_events.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call326 = tail call i32 @v4l2_ctrl_poll(ptr noundef %file, ptr noundef null) #6
  br label %if.then

poll_requested_events.exit:                       ; preds = %entry
  %_key.i = getelementptr inbounds %struct.poll_table_struct, ptr %pts, i32 0, i32 1
  %2 = ptrtoint ptr %_key.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %_key.i, align 4
  %call3 = tail call i32 @v4l2_ctrl_poll(ptr noundef %file, ptr noundef nonnull %pts) #6
  %and = and i32 %3, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %poll_requested_events.exit.if.end12_crit_edge, label %poll_requested_events.exit.if.then_crit_edge

poll_requested_events.exit.if.then_crit_edge:     ; preds = %poll_requested_events.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

poll_requested_events.exit.if.end12_crit_edge:    ; preds = %poll_requested_events.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then:                                          ; preds = %poll_requested_events.exit.if.then_crit_edge, %poll_requested_events.exit.thread
  %call329 = phi i32 [ %call326, %poll_requested_events.exit.thread ], [ %call3, %poll_requested_events.exit.if.then_crit_edge ]
  %arrayidx = getelementptr %struct.si470x_device, ptr %1, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 4
  %6 = and i16 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp = icmp eq i16 %6, 0
  br i1 %cmp, label %if.then6, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then6:                                         ; preds = %if.then
  %7 = or i16 %5, 4096
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %arrayidx, align 4
  %set_register.i = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 14
  %9 = ptrtoint ptr %set_register.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_register.i, align 4
  %call.i22 = tail call i32 %10(ptr noundef %1, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %cmp.i = icmp slt i32 %call.i22, 0
  br i1 %cmp.i, label %if.then.i, label %if.then6.if.end_crit_edge

if.then6.if.end_crit_edge:                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx, align 4
  %13 = and i16 %12, -4097
  store i16 %13, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then6.if.end_crit_edge, %if.then.if.end_crit_edge
  %read_queue = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 5
  br i1 %tobool.not.i, label %if.end.poll_wait.exit_crit_edge, label %land.lhs.true.i

if.end.poll_wait.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %if.end
  %14 = ptrtoint ptr %pts to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pts, align 4
  %tobool1.not.i = icmp eq ptr %15, null
  %tobool3.not.i = icmp eq ptr %read_queue, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i24

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %poll_wait.exit

if.then.i24:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %15(ptr noundef %file, ptr noundef nonnull %read_queue, ptr noundef nonnull %pts) #6
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i24, %land.lhs.true.i.poll_wait.exit_crit_edge, %if.end.poll_wait.exit_crit_edge
  %rd_index = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %rd_index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rd_index, align 4
  %wr_index = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %wr_index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wr_index, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp8.not = icmp eq i32 %17, %19
  %or = or i32 %call329, 65
  %spec.select = select i1 %cmp8.not, i32 %call329, i32 %or
  br label %if.end12

if.end12:                                         ; preds = %poll_wait.exit, %poll_requested_events.exit.if.end12_crit_edge
  %retval2.0 = phi i32 [ %call3, %poll_requested_events.exit.if.end12_crit_edge ], [ %spec.select, %poll_wait.exit ]
  ret i32 %retval2.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si470x_fops_open(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fops_open = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %fops_open to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fops_open, align 8
  %call1 = tail call i32 %3(ptr noundef %file) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si470x_fops_release(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fops_release = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %fops_release to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fops_release, align 4
  %call1 = tail call i32 %3(ptr noundef %file) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_poll(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si470x_vidioc_querycap(ptr noundef %file, ptr noundef %priv, ptr noundef %capability) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %vidioc_querycap = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %vidioc_querycap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vidioc_querycap, align 8
  %call1 = tail call i32 %3(ptr noundef %file, ptr noundef %priv, ptr noundef %capability) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si470x_vidioc_g_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %tuner) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tuner, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %status_rssi_auto_update = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %status_rssi_auto_update to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %status_rssi_auto_update, align 4, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then2, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %get_register = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %get_register to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_register, align 8
  %call3 = tail call i32 %7(ptr noundef %1, i32 noundef 10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then2.cleanup_crit_edge, label %if.then2.if.end7_crit_edge

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.then2.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %retval1.0 = phi i32 [ 0, %if.end.if.end7_crit_edge ], [ %call3, %if.then2.if.end7_crit_edge ]
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 1
  %call8 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.11, i32 noundef 32) #6
  %type = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 2
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %type, align 4
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 3
  %9 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 413, ptr %capability, align 4
  %rangelow = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 4
  %10 = ptrtoint ptr %rangelow to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1216000, ptr %rangelow, align 4
  %rangehigh = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 5
  %11 = ptrtoint ptr %rangehigh to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1728000, ptr %rangehigh, align 4
  %arrayidx = getelementptr %struct.si470x_device, ptr %1, i32 0, i32 4, i32 10
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx, align 4
  %14 = and i16 %13, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp9 = icmp eq i16 %14, 0
  %spec.select = select i1 %cmp9, i32 17, i32 18
  %15 = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 6
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.select, ptr %15, align 4
  %arrayidx16 = getelementptr %struct.si470x_device, ptr %1, i32 0, i32 4, i32 2
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx16, align 4
  %19 = lshr i16 %18, 13
  %.lobit72 = and i16 %19, 1
  %20 = xor i16 %.lobit72, 1
  %21 = zext i16 %20 to i32
  %22 = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 7
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %22, align 4
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx, align 4
  %26 = and i16 %25, 255
  %and28 = zext i16 %26 to i32
  %signal = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 8
  %mul = mul nuw nsw i32 %and28, 873
  %mul31 = shl nuw nsw i16 %26, 3
  %div70 = udiv i16 %mul31, 10
  %div.zext = zext i16 %div70 to i32
  %add = add nuw nsw i32 %mul, %div.zext
  %27 = tail call i32 @llvm.umin.i32(i32 %add, i32 65535)
  %28 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %signal, align 4
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx, align 4
  %31 = lshr i16 %30, 12
  %.lobit = and i16 %31, 1
  %32 = zext i16 %.lobit to i32
  %afc = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 9
  %33 = ptrtoint ptr %afc to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %afc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ %call3, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si470x_vidioc_s_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %tuner) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %0 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tuner, align 4
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
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 7
  %4 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %audmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cond = icmp eq i32 %5, 0
  %arrayidx = getelementptr %struct.si470x_device, ptr %3, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 4
  %8 = and i16 %7, -8193
  %masksel = select i1 %cond, i16 8192, i16 0
  %.sink = or i16 %8, %masksel
  store i16 %.sink, ptr %arrayidx, align 4
  %set_register = getelementptr inbounds %struct.si470x_device, ptr %3, i32 0, i32 14
  %9 = ptrtoint ptr %set_register to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_register, align 4
  %call7 = tail call i32 %10(ptr noundef %3, i32 noundef 2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si470x_vidioc_g_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %freq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %0 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %freq, align 4
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
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %freq, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %type, align 4
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %freq, i32 0, i32 2
  %get_register.i = getelementptr inbounds %struct.si470x_device, ptr %3, i32 0, i32 13
  %5 = ptrtoint ptr %get_register.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_register.i, align 8
  %call.i4 = tail call i32 %6(ptr noundef %3, i32 noundef 11) #6
  %arrayidx.i = getelementptr %struct.si470x_device, ptr %3, i32 0, i32 4, i32 11
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx.i, align 2
  %9 = and i16 %8, 1023
  %and.i = zext i16 %9 to i32
  %arrayidx.i.i = getelementptr %struct.si470x_device, ptr %3, i32 0, i32 4, i32 5
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.i.i, align 2
  %12 = lshr i16 %11, 4
  %13 = and i16 %12, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %13)
  %switch.selectcmp.i.i = icmp eq i16 %13, 1
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 1600, i32 800
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %switch.selectcmp2.i.i = icmp eq i16 %13, 0
  %switch.select3.i.i = select i1 %switch.selectcmp2.i.i, i32 3200, i32 %switch.select.i.i
  %mul.i = mul nuw nsw i32 %switch.select3.i.i, %and.i
  %band.i = getelementptr inbounds %struct.si470x_device, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %band.i, align 8
  %rangelow.i = getelementptr [3 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %15, i32 4
  %16 = ptrtoint ptr %rangelow.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rangelow.i, align 4
  %add.i = add i32 %mul.i, %17
  %18 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add.i, ptr %frequency, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i4, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si470x_vidioc_s_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %freq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %freq, i32 0, i32 2
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frequency, align 4
  %band = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %band, align 8
  %rangelow = getelementptr [3 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %7, i32 4
  %8 = ptrtoint ptr %rangelow to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rangelow, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp2 = icmp ult i32 %5, %9
  br i1 %cmp2, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %rangehigh = getelementptr [3 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %7, i32 5
  %10 = ptrtoint ptr %rangehigh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rangehigh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %11)
  %cmp6 = icmp ule i32 %5, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp eq i32 %7, 1
  %or.cond = select i1 %cmp6, i1 true, i1 %cmp.i
  br i1 %or.cond, label %lor.lhs.false.if.end11_crit_edge, label %lor.lhs.false.si470x_set_band.exit_crit_edge

lor.lhs.false.si470x_set_band.exit_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %si470x_set_band.exit

lor.lhs.false.if.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i.old = icmp eq i32 %7, 1
  br i1 %cmp.i.old, label %if.then7.if.end11_crit_edge, label %if.then7.si470x_set_band.exit_crit_edge

if.then7.si470x_set_band.exit_crit_edge:          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %si470x_set_band.exit

if.then7.if.end11_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

si470x_set_band.exit:                             ; preds = %if.then7.si470x_set_band.exit_crit_edge, %lor.lhs.false.si470x_set_band.exit_crit_edge
  %12 = ptrtoint ptr %band to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %band, align 8
  %arrayidx.i = getelementptr %struct.si470x_device, ptr %1, i32 0, i32 4, i32 5
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx.i, align 2
  %15 = and i16 %14, -193
  %conv8.i = or i16 %15, 64
  store i16 %conv8.i, ptr %arrayidx.i, align 2
  %set_register.i = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 14
  %16 = ptrtoint ptr %set_register.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_register.i, align 4
  %call.i22 = tail call i32 %17(ptr noundef %1, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool.not = icmp eq i32 %call.i22, 0
  br i1 %tobool.not, label %si470x_set_band.exit.if.end11_crit_edge, label %si470x_set_band.exit.cleanup_crit_edge

si470x_set_band.exit.cleanup_crit_edge:           ; preds = %si470x_set_band.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

si470x_set_band.exit.if.end11_crit_edge:          ; preds = %si470x_set_band.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end11:                                         ; preds = %si470x_set_band.exit.if.end11_crit_edge, %if.then7.if.end11_crit_edge, %lor.lhs.false.if.end11_crit_edge
  %18 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %frequency, align 4
  %20 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %band, align 8
  %rangelow.i = getelementptr [3 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %21, i32 4
  %22 = ptrtoint ptr %rangelow.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rangelow.i, align 4
  %24 = tail call i32 @llvm.umax.i32(i32 %23, i32 %19) #6
  %rangehigh.i = getelementptr [3 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %21, i32 5
  %25 = ptrtoint ptr %rangehigh.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rangehigh.i, align 4
  %27 = tail call i32 @llvm.umin.i32(i32 %24, i32 %26) #6
  %sub.i = sub i32 %27, %23
  %arrayidx.i.i = getelementptr %struct.si470x_device, ptr %1, i32 0, i32 4, i32 5
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.i.i, align 2
  %30 = lshr i16 %29, 4
  %31 = and i16 %30, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %31)
  %switch.selectcmp.i.i = icmp eq i16 %31, 1
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 1600, i32 800
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %switch.selectcmp2.i.i = icmp eq i16 %31, 0
  %switch.select3.i.i = select i1 %switch.selectcmp2.i.i, i32 3200, i32 %switch.select.i.i
  %div.i = udiv i32 %sub.i, %switch.select3.i.i
  %conv.i = trunc i32 %div.i to i16
  %call12.i = tail call fastcc i32 @si470x_set_chan(ptr noundef %1, i16 noundef zeroext %conv.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %si470x_set_band.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12.i, %if.end11 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i22, %si470x_set_band.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @si470x_vidioc_enum_freq_bands(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %band) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_frequency_band, ptr %band, i32 0, i32 2
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp1 = icmp ugt i32 %3, 2
  br i1 %cmp1, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr [3 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %3
  %4 = call ptr @memcpy(ptr %band, ptr %arrayidx, i32 64)
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si470x_vidioc_s_hw_freq_seek(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %seek) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %seek to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %seek, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %4 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_flags, align 4
  %and = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %rangelow.i = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %seek, i32 0, i32 5
  %6 = ptrtoint ptr %rangelow.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rangelow.i, align 4
  %rangehigh.i = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %seek, i32 0, i32 6
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %7, label %if.end2.cleanup_crit_edge [
    i32 0, label %lor.lhs.false.i
    i32 1400000, label %land.lhs.true.i
    i32 1216000, label %land.lhs.true.1.i
  ]

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end2
  %9 = ptrtoint ptr %rangehigh.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rangehigh.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not.i = icmp eq i32 %10, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end14.i_crit_edge, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i.if.end14.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

land.lhs.true.i:                                  ; preds = %if.end2
  %11 = ptrtoint ptr %rangehigh.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rangehigh.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1728000, i32 %12)
  %cmp9.i = icmp eq i32 %12, 1728000
  br i1 %cmp9.i, label %land.lhs.true.i.if.end14.i_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i.if.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

land.lhs.true.1.i:                                ; preds = %if.end2
  %13 = ptrtoint ptr %rangehigh.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rangehigh.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %14, label %land.lhs.true.1.i.cleanup_crit_edge [
    i32 1728000, label %land.lhs.true.1.i.if.end14.i_crit_edge
    i32 1440000, label %if.end14.i.fold.split
  ]

land.lhs.true.1.i.if.end14.i_crit_edge:           ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

land.lhs.true.1.i.cleanup_crit_edge:              ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14.i.fold.split:                            ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end14.i.fold.split, %land.lhs.true.1.i.if.end14.i_crit_edge, %land.lhs.true.i.if.end14.i_crit_edge, %lor.lhs.false.i.if.end14.i_crit_edge
  %band.1.i = phi i32 [ 1, %lor.lhs.false.i.if.end14.i_crit_edge ], [ 0, %land.lhs.true.i.if.end14.i_crit_edge ], [ 1, %land.lhs.true.1.i.if.end14.i_crit_edge ], [ 2, %if.end14.i.fold.split ]
  %band15.i = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %band15.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %band15.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %band.1.i)
  %cmp16.not.i = icmp eq i32 %17, %band.1.i
  br i1 %cmp16.not.i, label %if.end14.i.if.end29.i_crit_edge, label %if.then17.i

if.end14.i.if.end29.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

if.then17.i:                                      ; preds = %if.end14.i
  %get_register.i.i = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 13
  %18 = ptrtoint ptr %get_register.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_register.i.i, align 8
  %call.i.i = tail call i32 %19(ptr noundef %1, i32 noundef 11) #6
  %arrayidx.i.i = getelementptr %struct.si470x_device, ptr %1, i32 0, i32 4, i32 11
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.i.i, align 2
  %22 = and i16 %21, 1023
  %and.i.i = zext i16 %22 to i32
  %arrayidx.i.i.i = getelementptr %struct.si470x_device, ptr %1, i32 0, i32 4, i32 5
  %23 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx.i.i.i, align 2
  %25 = lshr i16 %24, 4
  %26 = and i16 %25, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %26)
  %switch.selectcmp.i.i.i = icmp eq i16 %26, 1
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i, i32 1600, i32 800
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %switch.selectcmp2.i.i.i = icmp eq i16 %26, 0
  %switch.select3.i.i.i = select i1 %switch.selectcmp2.i.i.i, i32 3200, i32 %switch.select.i.i.i
  %mul.i.i = mul nuw nsw i32 %switch.select3.i.i.i, %and.i.i
  %27 = ptrtoint ptr %band15.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %band15.i, align 8
  %rangelow.i.i = getelementptr [3 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %28, i32 4
  %29 = ptrtoint ptr %rangelow.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rangelow.i.i, align 4
  %add.i.i = add i32 %mul.i.i, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool18.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.then17.i.cleanup_crit_edge

if.then17.i.cleanup_crit_edge:                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20.i:                                       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %band.1.i)
  %cmp.i149.i = icmp eq i32 %28, %band.1.i
  br i1 %cmp.i149.i, label %if.end20.i.if.end24.i_crit_edge, label %si470x_set_band.exit.i

if.end20.i.if.end24.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

si470x_set_band.exit.i:                           ; preds = %if.end20.i
  %31 = ptrtoint ptr %band15.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %band.1.i, ptr %band15.i, align 8
  %32 = and i16 %24, -193
  %band.tr.i.i = trunc i32 %band.1.i to i16
  %33 = shl nuw nsw i16 %band.tr.i.i, 6
  %conv8.i.i = or i16 %32, %33
  %34 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv8.i.i, ptr %arrayidx.i.i.i, align 2
  %set_register.i.i = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 14
  %35 = ptrtoint ptr %set_register.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_register.i.i, align 4
  %call.i151.i = tail call i32 %36(ptr noundef %1, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151.i)
  %tobool22.not.i = icmp eq i32 %call.i151.i, 0
  br i1 %tobool22.not.i, label %si470x_set_band.exit.i.if.end24.i_crit_edge, label %si470x_set_band.exit.i.cleanup_crit_edge

si470x_set_band.exit.i.cleanup_crit_edge:         ; preds = %si470x_set_band.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

si470x_set_band.exit.i.if.end24.i_crit_edge:      ; preds = %si470x_set_band.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

if.end24.i:                                       ; preds = %si470x_set_band.exit.i.if.end24.i_crit_edge, %if.end20.i.if.end24.i_crit_edge
  %37 = ptrtoint ptr %band15.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %band15.i, align 8
  %rangelow.i155.i = getelementptr [3 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %38, i32 4
  %39 = ptrtoint ptr %rangelow.i155.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rangelow.i155.i, align 4
  %41 = tail call i32 @llvm.umax.i32(i32 %40, i32 %add.i.i) #6
  %rangehigh.i.i = getelementptr [3 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %38, i32 5
  %42 = ptrtoint ptr %rangehigh.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rangehigh.i.i, align 4
  %44 = tail call i32 @llvm.umin.i32(i32 %41, i32 %43) #6
  %sub.i.i = sub i32 %44, %40
  %45 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx.i.i.i, align 2
  %47 = lshr i16 %46, 4
  %48 = and i16 %47, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %48)
  %switch.selectcmp.i.i157.i = icmp eq i16 %48, 1
  %switch.select.i.i158.i = select i1 %switch.selectcmp.i.i157.i, i32 1600, i32 800
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %switch.selectcmp2.i.i159.i = icmp eq i16 %48, 0
  %switch.select3.i.i160.i = select i1 %switch.selectcmp2.i.i159.i, i32 3200, i32 %switch.select.i.i158.i
  %div.i.i = udiv i32 %sub.i.i, %switch.select3.i.i160.i
  %conv.i.i = trunc i32 %div.i.i to i16
  %call12.i.i = tail call fastcc i32 @si470x_set_chan(ptr noundef %1, i16 noundef zeroext %conv.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool26.not.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool26.not.i, label %if.end24.i.if.end29.i_crit_edge, label %if.end24.i.cleanup_crit_edge

if.end24.i.cleanup_crit_edge:                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24.i.if.end29.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.end24.i.if.end29.i_crit_edge, %if.end14.i.if.end29.i_crit_edge
  %arrayidx30.i = getelementptr %struct.si470x_device, ptr %1, i32 0, i32 4, i32 2
  %49 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx30.i, align 4
  %51 = or i16 %50, 256
  store i16 %51, ptr %arrayidx30.i, align 4
  %wrap_around.i = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %seek, i32 0, i32 3
  %52 = ptrtoint ptr %wrap_around.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %wrap_around.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool32.not.i = icmp eq i32 %53, 0
  %54 = or i16 %50, 1280
  %55 = and i16 %51, -1025
  %storemerge.i = select i1 %tobool32.not.i, i16 %54, i16 %55
  %56 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %storemerge.i, ptr %arrayidx30.i, align 4
  %seek_upward.i = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %seek, i32 0, i32 2
  %57 = ptrtoint ptr %seek_upward.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %seek_upward.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool45.not.i = icmp eq i32 %58, 0
  %59 = and i16 %storemerge.i, -513
  %masksel.i = select i1 %tobool45.not.i, i16 0, i16 512
  %storemerge148.i = or i16 %masksel.i, %59
  %60 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %storemerge148.i, ptr %arrayidx30.i, align 4
  %set_register.i = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 14
  %61 = ptrtoint ptr %set_register.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %set_register.i, align 4
  %call59.i = tail call i32 %62(ptr noundef %1, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %cmp60.i = icmp slt i32 %call59.i, 0
  br i1 %cmp60.i, label %if.end29.i.cleanup_crit_edge, label %if.end63.i

if.end29.i.cleanup_crit_edge:                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end63.i:                                       ; preds = %if.end29.i
  %completion.i = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 11
  %63 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %completion.i, align 4
  %64 = load i32, ptr @seek_timeout, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %64) #6
  %call66.i = tail call i32 @wait_for_completion_timeout(ptr noundef %completion.i, i32 noundef %call2.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %cmp67.i = icmp ne i32 %call66.i, 0
  %arrayidx72.i = getelementptr %struct.si470x_device, ptr %1, i32 0, i32 4, i32 10
  %65 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx72.i, align 4
  %67 = and i16 %66, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %cmp75.i = icmp eq i16 %67, 0
  br i1 %cmp75.i, label %do.end.i, label %if.end63.i.if.end78.i_crit_edge

if.end63.i.if.end78.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78.i

do.end.i:                                         ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 1, i32 5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.12) #9
  br label %if.end78.i

if.end78.i:                                       ; preds = %do.end.i, %if.end63.i.if.end78.i_crit_edge
  %68 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %arrayidx72.i, align 4
  %70 = and i16 %69, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool83.not.i = icmp eq i16 %70, 0
  br i1 %tobool83.not.i, label %if.end78.i.if.end90.i_crit_edge, label %do.end87.i

if.end78.i.if.end90.i_crit_edge:                  ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90.i

do.end87.i:                                       ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev89.i = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 1, i32 5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev89.i, ptr noundef nonnull @.str.15) #9
  br label %if.end90.i

if.end90.i:                                       ; preds = %do.end87.i, %if.end78.i.if.end90.i_crit_edge
  %71 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %arrayidx30.i, align 4
  %73 = and i16 %72, -257
  store i16 %73, ptr %arrayidx30.i, align 4
  %74 = ptrtoint ptr %set_register.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %set_register.i, align 4
  %call97.i = tail call i32 %75(ptr noundef %1, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97.i)
  %cmp98.i = icmp ne i32 %call97.i, 0
  %brmerge.i = select i1 %cmp98.i, i1 true, i1 %cmp67.i
  %spec.select.i = select i1 %brmerge.i, i32 %call97.i, i32 -61
  br label %cleanup

cleanup:                                          ; preds = %if.end90.i, %if.end29.i.cleanup_crit_edge, %if.end24.i.cleanup_crit_edge, %si470x_set_band.exit.i.cleanup_crit_edge, %if.then17.i.cleanup_crit_edge, %land.lhs.true.1.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ], [ %call.i.i, %if.then17.i.cleanup_crit_edge ], [ %call.i151.i, %si470x_set_band.exit.i.cleanup_crit_edge ], [ %call12.i.i, %if.end24.i.cleanup_crit_edge ], [ %call59.i, %if.end29.i.cleanup_crit_edge ], [ %spec.select.i, %if.end90.i ], [ -22, %land.lhs.true.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ], [ -22, %land.lhs.true.1.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !40, !41, !43, !44, !46, !47, !49, !51, !53, !54, !55, !56, !57, !58, !59, !61, !62, !63, !65, !67, !68, !70, !72, !74, !76, !78, !79, !80, !81, !83, !84}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__param_space, !1, !"__param_space", i1 false, i1 false}
!1 = !{!"../drivers/media/radio/si470x/radio-si470x-common.c", i32 113, i32 1}
!2 = !{ptr @__UNIQUE_ID_spacetype292, !1, !"__UNIQUE_ID_spacetype292", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_space293, !4, !"__UNIQUE_ID_space293", i1 false, i1 false}
!4 = !{!"../drivers/media/radio/si470x/radio-si470x-common.c", i32 114, i32 1}
!5 = !{ptr @__param_de, !6, !"__param_de", i1 false, i1 false}
!6 = !{!"../drivers/media/radio/si470x/radio-si470x-common.c", i32 120, i32 1}
!7 = !{ptr @__UNIQUE_ID_detype294, !6, !"__UNIQUE_ID_detype294", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_de295, !9, !"__UNIQUE_ID_de295", i1 false, i1 false}
!9 = !{!"../drivers/media/radio/si470x/radio-si470x-common.c", i32 121, i32 1}
!10 = !{ptr @__param_tune_timeout, !11, !"__param_tune_timeout", i1 false, i1 false}
!11 = !{!"../drivers/media/radio/si470x/radio-si470x-common.c", i32 125, i32 1}
!12 = !{ptr @__UNIQUE_ID_tune_timeouttype296, !11, !"__UNIQUE_ID_tune_timeouttype296", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_tune_timeout297, !14, !"__UNIQUE_ID_tune_timeout297", i1 false, i1 false}
!14 = !{!"../drivers/media/radio/si470x/radio-si470x-common.c", i32 126, i32 1}
!15 = !{ptr @__param_seek_timeout, !16, !"__param_seek_timeout", i1 false, i1 false}
!16 = !{!"../drivers/media/radio/si470x/radio-si470x-common.c", i32 130, i32 1}
!17 = !{ptr @__UNIQUE_ID_seek_timeouttype298, !16, !"__UNIQUE_ID_seek_timeouttype298", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_seek_timeout299, !19, !"__UNIQUE_ID_seek_timeout299", i1 false, i1 false}
!19 = !{!"../drivers/media/radio/si470x/radio-si470x-common.c", i32 131, i32 1}
!20 = !{ptr @__ksymtab_si470x_set_freq, !21, !"__ksymtab_si470x_set_freq", i1 false, i1 false}
!21 = !{!"../drivers/media/radio/si470x/radio-si470x-common.c", i32 288, i32 1}
!22 = !{ptr @__ksymtab_si470x_start, !23, !"__ksymtab_si470x_start", i1 false, i1 false}
!23 = !{!"../drivers/media/radio/si470x/radio-si470x-common.c", i32 406, i32 1}
!24 = !{ptr @__ksymtab_si470x_stop, !25, !"__ksymtab_si470x_stop", i1 false, i1 false}
!25 = !{!"../drivers/media/radio/si470x/radio-si470x-common.c", i32 431, i32 1}
!26 = !{ptr @si470x_ctrl_ops, !27, !"si470x_ctrl_ops", i1 false, i1 false}
!27 = !{!"../drivers/media/radio/si470x/radio-si470x-common.c", i32 753, i32 28}
!28 = !{ptr @__ksymtab_si470x_ctrl_ops, !29, !"__ksymtab_si470x_ctrl_ops", i1 false, i1 false}
!29 = !{!"../drivers/media/radio/si470x/radio-si470x-common.c", i32 756, i32 1}
!30 = !{ptr @si470x_viddev_template, !31, !"si470x_viddev_template", i1 false, i1 false}
!31 = !{!"../drivers/media/radio/si470x/radio-si470x-common.c", i32 785, i32 27}
!32 = !{ptr @__ksymtab_si470x_viddev_template, !33, !"__ksymtab_si470x_viddev_template", i1 false, i1 false}
!33 = !{!"../drivers/media/radio/si470x/radio-si470x-common.c", i32 791, i32 1}
!34 = !{ptr @__UNIQUE_ID_file304, !35, !"__UNIQUE_ID_file304", i1 false, i1 false}
!35 = !{!"../drivers/media/radio/si470x/radio-si470x-common.c", i32 793, i32 1}
!36 = !{ptr @__UNIQUE_ID_license305, !35, !"__UNIQUE_ID_license305", i1 false, i1 false}
!37 = !{ptr @__param_str_space, !1, !"__param_str_space", i1 false, i1 false}
!38 = !{ptr @space, !39, !"space", i1 false, i1 false}
!39 = !{!"../drivers/media/radio/si470x/radio-si470x-common.c", i32 112, i32 23}
!40 = !{ptr @__param_str_de, !6, !"__param_str_de", i1 false, i1 false}
!41 = !{ptr @de, !42, !"de", i1 false, i1 false}
!42 = !{!"../drivers/media/radio/si470x/radio-si470x-common.c", i32 119, i32 23}
!43 = !{ptr @__param_str_tune_timeout, !11, !"__param_str_tune_timeout", i1 false, i1 false}
!44 = !{ptr @tune_timeout, !45, !"tune_timeout", i1 false, i1 false}
!45 = !{!"../drivers/media/radio/si470x/radio-si470x-common.c", i32 124, i32 21}
!46 = !{ptr @__param_str_seek_timeout, !16, !"__param_str_seek_timeout", i1 false, i1 false}
!47 = !{ptr @seek_timeout, !48, !"seek_timeout", i1 false, i1 false}
!48 = !{!"../drivers/media/radio/si470x/radio-si470x-common.c", i32 129, i32 21}
!49 = !{ptr @bands, !50, !"bands", i1 false, i1 false}
!50 = !{!"../drivers/media/radio/si470x/radio-si470x-common.c", i32 133, i32 41}
!51 = !{ptr @.str, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/radio/si470x/radio-si470x-common.c", i32 223, i32 3}
!53 = !{ptr @.str.1, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.2, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.3, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.4, !52, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @si470x_set_chan._entry, !52, !"_entry", i1 false, i1 false}
!58 = !{ptr @si470x_set_chan._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.6, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/radio/si470x/radio-si470x-common.c", i32 225, i32 3}
!61 = !{ptr @si470x_set_chan._entry.5, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @si470x_set_chan._entry_ptr.7, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @si470x_fops, !64, !"si470x_fops", i1 false, i1 false}
!64 = !{!"../drivers/media/radio/si470x/radio-si470x-common.c", i32 559, i32 42}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!67 = distinct !{null, !66, !"<string literal>", i1 false, i1 false}
!68 = distinct !{null, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!70 = !{ptr @.str.10, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!72 = !{ptr @si470x_ioctl_ops, !73, !"si470x_ioctl_ops", i1 false, i1 false}
!73 = !{!"../drivers/media/radio/si470x/radio-si470x-common.c", i32 769, i32 36}
!74 = !{ptr @.str.11, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/radio/si470x/radio-si470x-common.c", i32 616, i32 23}
!76 = !{ptr @.str.12, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/radio/si470x/radio-si470x-common.c", i32 348, i32 3}
!78 = !{ptr @.str.13, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @si470x_set_seek._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @si470x_set_seek._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.15, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/radio/si470x/radio-si470x-common.c", i32 350, i32 3}
!83 = !{ptr @si470x_set_seek._entry.14, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @si470x_set_seek._entry_ptr.16, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i64 2153133647, i64 2153133672}
!95 = !{i8 0, i8 2}
