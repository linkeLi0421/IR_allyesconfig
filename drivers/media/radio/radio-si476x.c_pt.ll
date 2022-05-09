; ModuleID = '/llk/IR_all_yes/drivers/media/radio/radio-si476x.c_pt.bc'
source_filename = "../drivers/media/radio/radio-si476x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.86], %struct.media_entity_enum, i32 }
%struct.anon.86 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.si476x_radio_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_frequency_band = type { i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.si476x_rsq_status_args = type { i8, i8, i8, i8, i8 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.si476x_radio = type { %struct.v4l2_device, %struct.video_device, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.si476x_core = type { ptr, ptr, i32, [2 x %struct.mfd_cell], %struct.mutex, %struct.atomic_t, %struct.wait_queue_head, %struct.kfifo, %struct.work_struct, i8, %struct.mutex, %struct.wait_queue_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic_t, %struct.si476x_power_up_args, i32, [4 x %struct.regulator_bulk_data], i32, %struct.si476x_pinmux, i32, %struct.atomic_t, %struct.delayed_work, i32, i32 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.kfifo = type { %union.anon.119, [0 x i8] }
%union.anon.119 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.si476x_power_up_args = type { i32, i32, i8, i8, i32, i32, i32, i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.si476x_pinmux = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.si476x_tune_freq_args = type { i8, i8, i32, i32, i32, i32, i32 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.si476x_rsq_status_report = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i16 }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.v4l2_hw_freq_seek = type { i32, i32, i32, i32, i32, i32, i32, [5 x i32] }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.91 }
%union.anon.91 = type { i32, [28 x i8] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.92, %union.anon.93, i32, ptr, i32, %struct.anon.94, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.92 = type { i64 }
%union.anon.93 = type { ptr }
%struct.anon.94 = type { i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.si476x_acf_status_report = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.si476x_rds_blockcount_report = type { i16, i16, i16 }
%struct.si476x_agc_status_report = type { i8, i8, i8, i8, i8, i8, i8, i8 }

@__UNIQUE_ID_alias298 = internal constant [41 x i8] c"radio_si476x.alias=platform:si476x-radio\00", section ".modinfo", align 1
@__initcall__kmod_radio_si476x__299_1525_si476x_radio_driver_init6 = internal global ptr @si476x_radio_driver_init, section ".initcall6.init", align 4
@si476x_radio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @si476x_radio_probe, ptr @si476x_radio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_si476x_radio_driver_exit = internal global ptr @si476x_radio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author300 = internal constant [62 x i8] c"radio_si476x.author=Andrey Smirnov <andrew.smirnov@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description301 = internal constant [70 x i8] c"radio_si476x.description=Driver for Si4761/64/68 AM/FM Radio MFD Cell\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [51 x i8] c"radio_si476x.file=drivers/media/radio/radio-si476x\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [25 x i8] c"radio_si476x.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"si476x-radio\00", [19 x i8] zeroinitializer }, align 32
@si476x_radio_probe.instance = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@si476x_radio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1399, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot register v4l2_device.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"si476x_radio_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/radio/radio-si476x.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@si476x_radio_probe._entry_ptr = internal global ptr @si476x_radio_probe._entry, section ".printk_index", align 4
@si476x_viddev_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @si476x_fops, i32 0, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"si476x-radio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release_empty, ptr null, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@si4761_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @si476x_radio_querycap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @si476x_radio_g_tuner, ptr @si476x_radio_s_tuner, ptr @si476x_radio_g_frequency, ptr @si476x_radio_s_frequency, ptr @si476x_radio_enum_freq_bands, ptr null, ptr null, ptr @si476x_radio_s_hw_freq_seek, ptr @si476x_radio_g_register, ptr @si476x_radio_s_register, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@si476x_radio_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"radio_si476x:1423:(&radio->ctrl_handler)->_lock\00", [48 x i8] zeroinitializer }, align 32
@si476x_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @si476x_radio_g_volatile_ctrl, ptr null, ptr @si476x_radio_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@si476x_radio_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1434, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Could not initialize V4L2_CID_POWER_LINE_FREQUENCY control %d\0A\00", [33 x i8] zeroinitializer }, align 32
@si476x_radio_probe._entry_ptr.9 = internal global ptr @si476x_radio_probe._entry.7, section ".printk_index", align 4
@si476x_radio_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1463, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Could not initialize V4L2_CID_TUNE_DEEMPHASIS control %d\0A\00", [38 x i8] zeroinitializer }, align 32
@si476x_radio_probe._entry_ptr.12 = internal global ptr @si476x_radio_probe._entry.10, section ".printk_index", align 4
@si476x_radio_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1473, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Could not initialize V4L2_CID_RDS_RECEPTION control %d\0A\00", [40 x i8] zeroinitializer }, align 32
@si476x_radio_probe._entry_ptr.15 = internal global ptr @si476x_radio_probe._entry.13, section ".printk_index", align 4
@si476x_ctrls = internal global { [6 x %struct.v4l2_ctrl_config], [160 x i8] } { [6 x %struct.v4l2_ctrl_config] [%struct.v4l2_ctrl_config { ptr @si476x_ctrl_ops, ptr null, i32 9967937, ptr @.str.31, i32 1, i64 -128, i64 127, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @si476x_ctrl_ops, ptr null, i32 9967938, ptr @.str.32, i32 1, i64 -128, i64 127, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @si476x_ctrl_ops, ptr null, i32 9967939, ptr @.str.33, i32 1, i64 0, i64 252, i64 2, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @si476x_ctrl_ops, ptr null, i32 9967940, ptr @.str.34, i32 1, i64 0, i64 20, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @si476x_ctrl_ops, ptr null, i32 9967941, ptr @.str.35, i32 3, i64 0, i64 4, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @phase_diversity_modes, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @si476x_ctrl_ops, ptr null, i32 9967942, ptr @.str.36, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 132, i64 0, ptr null, ptr null, i8 0 }], [160 x i8] zeroinitializer }, align 32
@si476x_radio_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1492, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not register video device\0A\00", [63 x i8] zeroinitializer }, align 32
@si476x_radio_probe._entry_ptr.18 = internal global ptr @si476x_radio_probe._entry.16, section ".printk_index", align 4
@si476x_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @si476x_radio_fops_read, ptr null, ptr @si476x_radio_fops_poll, ptr @video_ioctl2, ptr null, ptr null, ptr @si476x_radio_fops_open, ptr @si476x_radio_fops_release }, [60 x i8] zeroinitializer }, align 32
@si476x_radio_fops_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 1118, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error during FIFO to userspace copy\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"si476x_radio_fops_read\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@si476x_radio_fops_read._entry_ptr = internal global ptr @si476x_radio_fops_read._entry, section ".printk_index", align 4
@si476x_radio_init_vtable.fm_ops = internal constant { %struct.si476x_radio_ops, [32 x i8] } { %struct.si476x_radio_ops { ptr @si476x_core_cmd_fm_tune_freq, ptr @si476x_core_cmd_fm_seek_start, ptr @si476x_core_cmd_fm_rsq_status, ptr @si476x_core_cmd_fm_rds_blockcount, ptr @si476x_core_cmd_fm_phase_diversity, ptr @si476x_core_cmd_fm_phase_div_status, ptr @si476x_core_cmd_fm_acf_status, ptr @si476x_core_cmd_agc_status }, [32 x i8] zeroinitializer }, align 32
@si476x_radio_init_vtable.am_ops = internal constant { %struct.si476x_radio_ops, [32 x i8] } { %struct.si476x_radio_ops { ptr @si476x_core_cmd_am_tune_freq, ptr @si476x_core_cmd_am_seek_start, ptr @si476x_core_cmd_am_rsq_status, ptr null, ptr null, ptr null, ptr @si476x_core_cmd_am_acf_status, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unexpected tuner function value\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SI476x AM/FM Receiver\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FM (secondary)\00", [17 x i8] zeroinitializer }, align 32
@si476x_bands = internal constant { [2 x %struct.v4l2_frequency_band], [32 x i8] } { [2 x %struct.v4l2_frequency_band] [%struct.v4l2_frequency_band { i32 0, i32 1, i32 0, i32 1425, i32 1024000, i32 1728000, i32 4, [9 x i32] zeroinitializer }, %struct.v4l2_frequency_band { i32 0, i32 1, i32 1, i32 1025, i32 8320, i32 480000, i32 8, [9 x i32] zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AM/FM (primary)\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AM/FM\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"FM\00", [29 x i8] zeroinitializer }, align 32
@__const.si476x_radio_g_frequency.args = private unnamed_addr constant %struct.si476x_rsq_status_args { i8 0, i8 0, i8 1, i8 0, i8 0 }, align 1
@si476x_phase_diversity_idx_to_mode.idx_to_value = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 5], [44 x i8] zeroinitializer }, align 32
@si476x_radio_add_new_custom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 1376, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Could not initialize '%s' control %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"si476x_radio_add_new_custom\00", [36 x i8] zeroinitializer }, align 32
@si476x_radio_add_new_custom._entry_ptr = internal global ptr @si476x_radio_add_new_custom._entry, section ".printk_index", align 4
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Valid RSSI Threshold\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Valid SNR Threshold\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Max Tune Errors\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Count of Harmonics to Reject\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Phase Diversity Mode\00", [43 x i8] zeroinitializer }, align 32
@phase_diversity_modes = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Inter-Chip Link\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Primary with Secondary\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Primary Antenna\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Secondary Antenna\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Secondary with Primary\00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"acf\00", [28 x i8] zeroinitializer }, align 32
@radio_acf_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @si476x_radio_read_acf_blob, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rds_blckcnt\00", [20 x i8] zeroinitializer }, align 32
@radio_rds_blckcnt_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @si476x_radio_read_rds_blckcnt_blob, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"agc\00", [28 x i8] zeroinitializer }, align 32
@radio_agc_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @si476x_radio_read_agc_blob, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rsq\00", [28 x i8] zeroinitializer }, align 32
@radio_rsq_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @si476x_radio_read_rsq_blob, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rsq_primary\00", [20 x i8] zeroinitializer }, align 32
@radio_rsq_primary_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @si476x_radio_read_rsq_primary_blob, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__const.si476x_radio_read_rsq_primary_blob.args = private unnamed_addr constant %struct.si476x_rsq_status_args { i8 1, i8 0, i8 0, i8 0, i8 0 }, align 1
@switch.table.si476x_radio_probe = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 3, i32 0, i32 4], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.49 = internal global [10 x i64] [i64 8, i64 32, i64 9963800, i64 9967937, i64 9967938, i64 9967939, i64 9967940, i64 9967941, i64 10553601, i64 10553602]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.51 = private unnamed_addr constant [20 x i8] c"si476x_radio_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1518, i32 31 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1520, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant [9 x i8] c"instance\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1387, i32 18 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1399, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [23 x i8] c"si476x_viddev_template\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1178, i32 34 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"si4761_ioctl_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1158, i32 36 }
@___asan_gen_.84 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1422, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"si476x_ctrl_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 137, i32 35 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1433, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1462, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1472, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [13 x i8] c"si476x_ctrls\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 151, i32 32 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1492, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [12 x i8] c"si476x_fops\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1148, i32 42 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1117, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [7 x i8] c"fm_ops\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 471, i32 39 }
@___asan_gen_.138 = private unnamed_addr constant [7 x i8] c"am_ops\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 482, i32 39 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 502, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 331, i32 30 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 333, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 404, i32 24 }
@___asan_gen_.153 = private unnamed_addr constant [13 x i8] c"si476x_bands\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 48, i32 41 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 409, i32 25 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 412, i32 25 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 422, i32 24 }
@___asan_gen_.165 = private unnamed_addr constant [13 x i8] c"idx_to_value\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 126, i32 19 }
@___asan_gen_.168 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1374, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 167, i32 11 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 177, i32 11 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 186, i32 11 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 202, i32 11 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 226, i32 11 }
@___asan_gen_.192 = private unnamed_addr constant [22 x i8] c"phase_diversity_modes\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 96, i32 27 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 244, i32 11 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 97, i32 33 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 98, i32 41 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 99, i32 39 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 100, i32 41 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 101, i32 43 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1346, i32 22 }
@___asan_gen_.216 = private unnamed_addr constant [15 x i8] c"radio_acf_fops\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1208, i32 37 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1349, i32 22 }
@___asan_gen_.222 = private unnamed_addr constant [23 x i8] c"radio_rds_blckcnt_fops\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1237, i32 37 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1352, i32 22 }
@___asan_gen_.228 = private unnamed_addr constant [15 x i8] c"radio_agc_fops\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1265, i32 37 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1355, i32 22 }
@___asan_gen_.234 = private unnamed_addr constant [15 x i8] c"radio_rsq_fops\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1300, i32 37 }
@___asan_gen_.237 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1358, i32 22 }
@___asan_gen_.240 = private unnamed_addr constant [23 x i8] c"radio_rsq_primary_fops\00", align 1
@___asan_gen_.241 = private constant [38 x i8] c"../drivers/media/radio/radio-si476x.c\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1335, i32 37 }
@___asan_gen_.243 = private unnamed_addr constant [32 x i8] c"switch.table.si476x_radio_probe\00", align 1
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_alias298, ptr @__UNIQUE_ID_author300, ptr @__UNIQUE_ID_description301, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_si476x_radio_driver_exit, ptr @__initcall__kmod_radio_si476x__299_1525_si476x_radio_driver_init6, ptr @si476x_radio_add_new_custom._entry, ptr @si476x_radio_add_new_custom._entry_ptr, ptr @si476x_radio_driver_exit, ptr @si476x_radio_fops_read._entry, ptr @si476x_radio_fops_read._entry_ptr, ptr @si476x_radio_probe._entry, ptr @si476x_radio_probe._entry.10, ptr @si476x_radio_probe._entry.13, ptr @si476x_radio_probe._entry.16, ptr @si476x_radio_probe._entry.7, ptr @si476x_radio_probe._entry_ptr, ptr @si476x_radio_probe._entry_ptr.12, ptr @si476x_radio_probe._entry_ptr.15, ptr @si476x_radio_probe._entry_ptr.18, ptr @si476x_radio_probe._entry_ptr.9, ptr @si476x_radio_driver, ptr @.str, ptr @si476x_radio_probe.instance, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @si476x_viddev_template, ptr @si4761_ioctl_ops, ptr @si476x_radio_probe._key, ptr @.str.6, ptr @si476x_ctrl_ops, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @si476x_ctrls, ptr @.str.17, ptr @si476x_fops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @si476x_radio_init_vtable.fm_ops, ptr @si476x_radio_init_vtable.am_ops, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @si476x_bands, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @si476x_phase_diversity_idx_to_mode.idx_to_value, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @phase_diversity_modes, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @radio_acf_fops, ptr @.str.43, ptr @radio_rds_blckcnt_fops, ptr @.str.44, ptr @radio_agc_fops, ptr @.str.45, ptr @radio_rsq_fops, ptr @.str.46, ptr @radio_rsq_primary_fops, ptr @switch.table.si476x_radio_probe], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si476x_radio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si476x_radio_probe.instance to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si476x_radio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si476x_viddev_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4761_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si476x_radio_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si476x_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si476x_radio_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si476x_radio_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si476x_radio_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si476x_ctrls to i32), i32 672, i32 832, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si476x_radio_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si476x_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si476x_radio_fops_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si476x_radio_init_vtable.fm_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si476x_radio_init_vtable.am_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si476x_bands to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si476x_phase_diversity_idx_to_mode.idx_to_value to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si476x_radio_add_new_custom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phase_diversity_modes to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_acf_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_rds_blckcnt_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_agc_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_rsq_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_rsq_primary_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.si476x_radio_probe to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @si476x_radio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @si476x_radio_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @si476x_radio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @si476x_radio_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si476x_radio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1680, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i.i = getelementptr i8, ptr %1, i32 164
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %core = getelementptr inbounds %struct.si476x_radio, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %core to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %core, align 8
  %call3 = tail call i32 @v4l2_device_set_name(ptr noundef nonnull %call.i, ptr noundef nonnull @.str, ptr noundef nonnull @si476x_radio_probe.instance) #7
  %call6 = tail call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %videodev = getelementptr inbounds %struct.si476x_radio, ptr %call.i, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %videodev, ptr @si476x_viddev_template, i32 1352)
  %v4l2_dev = getelementptr inbounds %struct.si476x_radio, ptr %call.i, i32 0, i32 1, i32 7
  %6 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %v4l2_dev, align 4
  %ioctl_ops = getelementptr inbounds %struct.si476x_radio, ptr %call.i, i32 0, i32 1, i32 24
  %7 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @si4761_ioctl_ops, ptr %ioctl_ops, align 4
  %device_caps = getelementptr inbounds %struct.si476x_radio, ptr %call.i, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 328704, ptr %device_caps, align 8
  %9 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %core, align 8
  %cmd_lock.i = getelementptr inbounds %struct.si476x_core, ptr %10, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %cmd_lock.i, i32 noundef 0) #7
  %11 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %core, align 8
  %call17 = tail call zeroext i1 @si476x_core_is_a_secondary_tuner(ptr noundef %12) #7
  br i1 %call17, label %if.end10.if.end21_crit_edge, label %if.then18

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then18:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %device_caps to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %device_caps, align 8
  %or = or i32 %14, 16777472
  store i32 %or, ptr %device_caps, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end10.if.end21_crit_edge
  %15 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %core, align 8
  %cmd_lock.i179 = getelementptr inbounds %struct.si476x_core, ptr %16, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %cmd_lock.i179) #7
  %driver_data.i.i = getelementptr inbounds %struct.si476x_radio, ptr %call.i, i32 0, i32 1, i32 5, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i180 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %18 = ptrtoint ptr %driver_data.i.i180 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %driver_data.i.i180, align 4
  %ctrl_handler = getelementptr inbounds %struct.si476x_radio, ptr %call.i, i32 0, i32 2
  %ctrl_handler25 = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 6
  %19 = ptrtoint ptr %ctrl_handler25 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %ctrl_handler, ptr %ctrl_handler25, align 4
  %call27 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 7, ptr noundef nonnull @si476x_radio_probe._key, ptr noundef nonnull @.str.6) #7
  %20 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %core, align 8
  %call29 = tail call zeroext i1 @si476x_core_has_am(ptr noundef %21) #7
  br i1 %call29, label %if.then30, label %if.end21.if.end45_crit_edge

if.end21.if.end45_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then30:                                        ; preds = %if.end21
  %call32 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @si476x_ctrl_ops, i32 noundef 9963800, i8 noundef zeroext 2, i64 noundef 0, i8 noundef zeroext 0) #7
  %error = getelementptr inbounds %struct.si476x_radio, ptr %call.i, i32 0, i32 2, i32 9
  %22 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %error, align 4
  %cmp = icmp ne ptr %call32, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool34.not = icmp eq i32 %23, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool34.not
  br i1 %or.cond, label %if.end40, label %do.end38

do.end38:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %23) #10
  br label %exit

if.end40:                                         ; preds = %if.then30
  %call.i181 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef getelementptr inbounds ([6 x %struct.v4l2_ctrl_config], ptr @si476x_ctrls, i32 0, i32 3), ptr noundef null) #7
  %24 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %error, align 4
  %cmp.i = icmp ne ptr %call.i181, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %if.end40.si476x_radio_add_new_custom.exit_crit_edge, label %do.end.i

if.end40.si476x_radio_add_new_custom.exit_crit_edge: ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %si476x_radio_add_new_custom.exit

do.end.i:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 8
  %28 = load ptr, ptr getelementptr inbounds ([6 x %struct.v4l2_ctrl_config], ptr @si476x_ctrls, i32 0, i32 3, i32 3), align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.29, ptr noundef %28, i32 noundef %25) #10
  br label %si476x_radio_add_new_custom.exit

si476x_radio_add_new_custom.exit:                 ; preds = %do.end.i, %if.end40.si476x_radio_add_new_custom.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp42 = icmp slt i32 %25, 0
  br i1 %cmp42, label %si476x_radio_add_new_custom.exit.exit_crit_edge, label %si476x_radio_add_new_custom.exit.if.end45_crit_edge

si476x_radio_add_new_custom.exit.if.end45_crit_edge: ; preds = %si476x_radio_add_new_custom.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

si476x_radio_add_new_custom.exit.exit_crit_edge:  ; preds = %si476x_radio_add_new_custom.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end45:                                         ; preds = %si476x_radio_add_new_custom.exit.if.end45_crit_edge, %if.end21.if.end45_crit_edge
  %call.i183 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef nonnull @si476x_ctrls, ptr noundef null) #7
  %error.i184 = getelementptr inbounds %struct.si476x_radio, ptr %call.i, i32 0, i32 2, i32 9
  %29 = ptrtoint ptr %error.i184 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %error.i184, align 4
  %cmp.i185 = icmp ne ptr %call.i183, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i186 = icmp eq i32 %30, 0
  %or.cond.i187 = select i1 %cmp.i185, i1 true, i1 %tobool.not.i186
  br i1 %or.cond.i187, label %if.end45.si476x_radio_add_new_custom.exit189_crit_edge, label %do.end.i188

if.end45.si476x_radio_add_new_custom.exit189_crit_edge: ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %si476x_radio_add_new_custom.exit189

do.end.i188:                                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 8
  %33 = load ptr, ptr getelementptr inbounds ([6 x %struct.v4l2_ctrl_config], ptr @si476x_ctrls, i32 0, i32 0, i32 3), align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.29, ptr noundef %33, i32 noundef %30) #10
  br label %si476x_radio_add_new_custom.exit189

si476x_radio_add_new_custom.exit189:              ; preds = %do.end.i188, %if.end45.si476x_radio_add_new_custom.exit189_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp47 = icmp slt i32 %30, 0
  br i1 %cmp47, label %si476x_radio_add_new_custom.exit189.exit_crit_edge, label %if.end49

si476x_radio_add_new_custom.exit189.exit_crit_edge: ; preds = %si476x_radio_add_new_custom.exit189
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end49:                                         ; preds = %si476x_radio_add_new_custom.exit189
  %call.i191 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef getelementptr inbounds ([6 x %struct.v4l2_ctrl_config], ptr @si476x_ctrls, i32 0, i32 1), ptr noundef null) #7
  %34 = ptrtoint ptr %error.i184 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %error.i184, align 4
  %cmp.i193 = icmp ne ptr %call.i191, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i194 = icmp eq i32 %35, 0
  %or.cond.i195 = select i1 %cmp.i193, i1 true, i1 %tobool.not.i194
  br i1 %or.cond.i195, label %if.end49.si476x_radio_add_new_custom.exit197_crit_edge, label %do.end.i196

if.end49.si476x_radio_add_new_custom.exit197_crit_edge: ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %si476x_radio_add_new_custom.exit197

do.end.i196:                                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 8
  %38 = load ptr, ptr getelementptr inbounds ([6 x %struct.v4l2_ctrl_config], ptr @si476x_ctrls, i32 0, i32 1, i32 3), align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.29, ptr noundef %38, i32 noundef %35) #10
  br label %si476x_radio_add_new_custom.exit197

si476x_radio_add_new_custom.exit197:              ; preds = %do.end.i196, %if.end49.si476x_radio_add_new_custom.exit197_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp51 = icmp slt i32 %35, 0
  br i1 %cmp51, label %si476x_radio_add_new_custom.exit197.exit_crit_edge, label %if.end53

si476x_radio_add_new_custom.exit197.exit_crit_edge: ; preds = %si476x_radio_add_new_custom.exit197
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end53:                                         ; preds = %si476x_radio_add_new_custom.exit197
  %call.i199 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef getelementptr inbounds ([6 x %struct.v4l2_ctrl_config], ptr @si476x_ctrls, i32 0, i32 2), ptr noundef null) #7
  %39 = ptrtoint ptr %error.i184 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %error.i184, align 4
  %cmp.i201 = icmp ne ptr %call.i199, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i202 = icmp eq i32 %40, 0
  %or.cond.i203 = select i1 %cmp.i201, i1 true, i1 %tobool.not.i202
  br i1 %or.cond.i203, label %if.end53.si476x_radio_add_new_custom.exit205_crit_edge, label %do.end.i204

if.end53.si476x_radio_add_new_custom.exit205_crit_edge: ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %si476x_radio_add_new_custom.exit205

do.end.i204:                                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call.i, align 8
  %43 = load ptr, ptr getelementptr inbounds ([6 x %struct.v4l2_ctrl_config], ptr @si476x_ctrls, i32 0, i32 2, i32 3), align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.29, ptr noundef %43, i32 noundef %40) #10
  br label %si476x_radio_add_new_custom.exit205

si476x_radio_add_new_custom.exit205:              ; preds = %do.end.i204, %if.end53.si476x_radio_add_new_custom.exit205_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp55 = icmp slt i32 %40, 0
  br i1 %cmp55, label %si476x_radio_add_new_custom.exit205.exit_crit_edge, label %if.end57

si476x_radio_add_new_custom.exit205.exit_crit_edge: ; preds = %si476x_radio_add_new_custom.exit205
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end57:                                         ; preds = %si476x_radio_add_new_custom.exit205
  %call59 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @si476x_ctrl_ops, i32 noundef 10553601, i8 noundef zeroext 2, i64 noundef 0, i8 noundef zeroext 0) #7
  %44 = ptrtoint ptr %error.i184 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %error.i184, align 4
  %cmp62 = icmp ne ptr %call59, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool64.not = icmp eq i32 %45, 0
  %or.cond177 = select i1 %cmp62, i1 true, i1 %tobool64.not
  br i1 %or.cond177, label %if.end70, label %do.end68

do.end68:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %45) #10
  br label %exit

if.end70:                                         ; preds = %if.end57
  %call72 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @si476x_ctrl_ops, i32 noundef 10553602, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #7
  %46 = ptrtoint ptr %error.i184 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %error.i184, align 4
  %cmp75 = icmp ne ptr %call72, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool77.not = icmp eq i32 %47, 0
  %or.cond178 = select i1 %cmp75, i1 true, i1 %tobool77.not
  br i1 %or.cond178, label %if.end83, label %do.end81

do.end81:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %47) #10
  br label %exit

if.end83:                                         ; preds = %if.end70
  %48 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %core, align 8
  %call85 = tail call zeroext i1 @si476x_core_has_diversity(ptr noundef %49) #7
  br i1 %call85, label %if.then86, label %if.end83.if.end99_crit_edge

if.end83.if.end99_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

if.then86:                                        ; preds = %if.end83
  %50 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %core, align 8
  %diversity_mode = getelementptr inbounds %struct.si476x_core, ptr %51, i32 0, i32 20
  %52 = ptrtoint ptr %diversity_mode to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %diversity_mode, align 8
  %switch.tableidx = add i32 %53, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %54 = icmp ult i32 %switch.tableidx, 5
  br i1 %54, label %switch.lookup, label %if.then86.si476x_phase_diversity_mode_to_idx.exit_crit_edge

if.then86.si476x_phase_diversity_mode_to_idx.exit_crit_edge: ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #9
  br label %si476x_phase_diversity_mode_to_idx.exit

switch.lookup:                                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.si476x_radio_probe, i32 0, i32 %switch.tableidx
  %55 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %55)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %si476x_phase_diversity_mode_to_idx.exit

si476x_phase_diversity_mode_to_idx.exit:          ; preds = %switch.lookup, %if.then86.si476x_phase_diversity_mode_to_idx.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then86.si476x_phase_diversity_mode_to_idx.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %conv = zext i32 %retval.0.i to i64
  store i64 %conv, ptr getelementptr inbounds ([6 x %struct.v4l2_ctrl_config], ptr @si476x_ctrls, i32 0, i32 4, i32 8), align 8
  %call.i207 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef getelementptr inbounds ([6 x %struct.v4l2_ctrl_config], ptr @si476x_ctrls, i32 0, i32 4), ptr noundef null) #7
  %56 = ptrtoint ptr %error.i184 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %error.i184, align 4
  %cmp.i209 = icmp ne ptr %call.i207, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i210 = icmp eq i32 %57, 0
  %or.cond.i211 = select i1 %cmp.i209, i1 true, i1 %tobool.not.i210
  br i1 %or.cond.i211, label %si476x_phase_diversity_mode_to_idx.exit.si476x_radio_add_new_custom.exit213_crit_edge, label %do.end.i212

si476x_phase_diversity_mode_to_idx.exit.si476x_radio_add_new_custom.exit213_crit_edge: ; preds = %si476x_phase_diversity_mode_to_idx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %si476x_radio_add_new_custom.exit213

do.end.i212:                                      ; preds = %si476x_phase_diversity_mode_to_idx.exit
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i, align 8
  %60 = load ptr, ptr getelementptr inbounds ([6 x %struct.v4l2_ctrl_config], ptr @si476x_ctrls, i32 0, i32 4, i32 3), align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.29, ptr noundef %60, i32 noundef %57) #10
  br label %si476x_radio_add_new_custom.exit213

si476x_radio_add_new_custom.exit213:              ; preds = %do.end.i212, %si476x_phase_diversity_mode_to_idx.exit.si476x_radio_add_new_custom.exit213_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp90 = icmp slt i32 %57, 0
  br i1 %cmp90, label %si476x_radio_add_new_custom.exit213.exit_crit_edge, label %if.end93

si476x_radio_add_new_custom.exit213.exit_crit_edge: ; preds = %si476x_radio_add_new_custom.exit213
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end93:                                         ; preds = %si476x_radio_add_new_custom.exit213
  %call.i215 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef getelementptr inbounds ([6 x %struct.v4l2_ctrl_config], ptr @si476x_ctrls, i32 0, i32 5), ptr noundef null) #7
  %61 = ptrtoint ptr %error.i184 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %error.i184, align 4
  %cmp.i217 = icmp ne ptr %call.i215, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i218 = icmp eq i32 %62, 0
  %or.cond.i219 = select i1 %cmp.i217, i1 true, i1 %tobool.not.i218
  br i1 %or.cond.i219, label %if.end93.si476x_radio_add_new_custom.exit221_crit_edge, label %do.end.i220

if.end93.si476x_radio_add_new_custom.exit221_crit_edge: ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %si476x_radio_add_new_custom.exit221

do.end.i220:                                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call.i, align 8
  %65 = load ptr, ptr getelementptr inbounds ([6 x %struct.v4l2_ctrl_config], ptr @si476x_ctrls, i32 0, i32 5, i32 3), align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.29, ptr noundef %65, i32 noundef %62) #10
  br label %si476x_radio_add_new_custom.exit221

si476x_radio_add_new_custom.exit221:              ; preds = %do.end.i220, %if.end93.si476x_radio_add_new_custom.exit221_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp95 = icmp slt i32 %62, 0
  br i1 %cmp95, label %si476x_radio_add_new_custom.exit221.exit_crit_edge, label %si476x_radio_add_new_custom.exit221.if.end99_crit_edge

si476x_radio_add_new_custom.exit221.if.end99_crit_edge: ; preds = %si476x_radio_add_new_custom.exit221
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

si476x_radio_add_new_custom.exit221.exit_crit_edge: ; preds = %si476x_radio_add_new_custom.exit221
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end99:                                         ; preds = %si476x_radio_add_new_custom.exit221.if.end99_crit_edge, %if.end83.if.end99_crit_edge
  %fops.i = getelementptr inbounds %struct.si476x_radio, ptr %call.i, i32 0, i32 1, i32 3
  %66 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %fops.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %call.i222 = tail call i32 @__video_register_device(ptr noundef %videodev, i32 noundef 2, i32 noundef -1, i32 noundef 1, ptr noundef %69) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i222)
  %cmp102 = icmp slt i32 %call.i222, 0
  br i1 %cmp102, label %do.end107, label %if.end109

do.end107:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #10
  br label %exit

if.end109:                                        ; preds = %if.end99
  %70 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %73, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end109.si476x_radio_init_debugfs.exit_crit_edge

if.end109.si476x_radio_init_debugfs.exit_crit_edge: ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %si476x_radio_init_debugfs.exit

if.end.i.i:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %71, align 4
  br label %si476x_radio_init_debugfs.exit

si476x_radio_init_debugfs.exit:                   ; preds = %if.end.i.i, %if.end109.si476x_radio_init_debugfs.exit_crit_edge
  %retval.0.i.i = phi ptr [ %75, %if.end.i.i ], [ %73, %if.end109.si476x_radio_init_debugfs.exit_crit_edge ]
  %call1.i = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i.i, ptr noundef null) #7
  %debugfs.i = getelementptr inbounds %struct.si476x_radio, ptr %call.i, i32 0, i32 5
  %76 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call1.i, ptr %debugfs.i, align 8
  %call3.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.42, i16 noundef zeroext 292, ptr noundef %call1.i, ptr noundef nonnull %call.i, ptr noundef nonnull @radio_acf_fops) #7
  %77 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %debugfs.i, align 8
  %call5.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.43, i16 noundef zeroext 292, ptr noundef %78, ptr noundef nonnull %call.i, ptr noundef nonnull @radio_rds_blckcnt_fops) #7
  %79 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %debugfs.i, align 8
  %call7.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.44, i16 noundef zeroext 292, ptr noundef %80, ptr noundef nonnull %call.i, ptr noundef nonnull @radio_agc_fops) #7
  %81 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %debugfs.i, align 8
  %call9.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.45, i16 noundef zeroext 292, ptr noundef %82, ptr noundef nonnull %call.i, ptr noundef nonnull @radio_rsq_fops) #7
  %83 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %debugfs.i, align 8
  %call11.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.46, i16 noundef zeroext 292, ptr noundef %84, ptr noundef nonnull %call.i, ptr noundef nonnull @radio_rsq_primary_fops) #7
  br label %cleanup

exit:                                             ; preds = %do.end107, %si476x_radio_add_new_custom.exit221.exit_crit_edge, %si476x_radio_add_new_custom.exit213.exit_crit_edge, %do.end81, %do.end68, %si476x_radio_add_new_custom.exit205.exit_crit_edge, %si476x_radio_add_new_custom.exit197.exit_crit_edge, %si476x_radio_add_new_custom.exit189.exit_crit_edge, %si476x_radio_add_new_custom.exit.exit_crit_edge, %do.end38
  %rval.0 = phi i32 [ %23, %do.end38 ], [ %25, %si476x_radio_add_new_custom.exit.exit_crit_edge ], [ %30, %si476x_radio_add_new_custom.exit189.exit_crit_edge ], [ %35, %si476x_radio_add_new_custom.exit197.exit_crit_edge ], [ %40, %si476x_radio_add_new_custom.exit205.exit_crit_edge ], [ %45, %do.end68 ], [ %47, %do.end81 ], [ %57, %si476x_radio_add_new_custom.exit213.exit_crit_edge ], [ %62, %si476x_radio_add_new_custom.exit221.exit_crit_edge ], [ %call.i222, %do.end107 ]
  %ctrl_handler111 = getelementptr inbounds %struct.si476x_radio, ptr %call.i, i32 0, i32 1, i32 9
  %85 = ptrtoint ptr %ctrl_handler111 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ctrl_handler111, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %86) #7
  br label %cleanup

cleanup:                                          ; preds = %exit, %si476x_radio_init_debugfs.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.end ], [ %rval.0, %exit ], [ 0, %si476x_radio_init_debugfs.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si476x_radio_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %videodev = getelementptr inbounds %struct.si476x_radio, ptr %1, i32 0, i32 1
  %ctrl_handler = getelementptr inbounds %struct.si476x_radio, ptr %1, i32 0, i32 1, i32 9
  %2 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_handler, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %3) #7
  tail call void @video_unregister_device(ptr noundef %videodev) #7
  tail call void @v4l2_device_unregister(ptr noundef %1) #7
  %debugfs = getelementptr inbounds %struct.si476x_radio, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs, align 8
  tail call void @debugfs_remove(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_set_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @si476x_core_is_a_secondary_tuner(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @si476x_core_has_am(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @si476x_core_has_diversity(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si476x_radio_fops_read(ptr noundef %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %copied = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %copied) #7
  %0 = ptrtoint ptr %copied to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %copied, align 4, !annotation !141
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %1 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i.i, align 4
  %core = getelementptr inbounds %struct.si476x_radio, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %core, align 8
  %rds_fifo = getelementptr inbounds %struct.si476x_core, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %rds_fifo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rds_fifo, align 4
  %out = getelementptr inbounds %struct.si476x_core, ptr %4, i32 0, i32 7, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp = icmp eq i32 %6, %8
  br i1 %cmp, label %if.then, label %entry.if.end56_crit_edge

entry.if.end56_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then:                                          ; preds = %entry
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %9 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %f_flags, align 4
  %and = and i32 %10, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end, label %if.then.cleanup77_crit_edge

if.then.cleanup77_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup77

if.end:                                           ; preds = %if.then
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1104) #7
  %11 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %core, align 8
  %rds_fifo8 = getelementptr inbounds %struct.si476x_core, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %rds_fifo8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rds_fifo8, align 4
  %out11 = getelementptr inbounds %struct.si476x_core, ptr %12, i32 0, i32 7, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %out11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %out11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp12 = icmp eq i32 %14, %16
  br i1 %cmp12, label %lor.lhs.false, label %if.end.if.end49_crit_edge

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

lor.lhs.false:                                    ; preds = %if.end
  %is_alive = getelementptr inbounds %struct.si476x_core, ptr %12, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %is_alive, i32 noundef 4) #7
  %17 = ptrtoint ptr %is_alive to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %is_alive, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool17.not = icmp eq i32 %18, 0
  br i1 %tobool17.not, label %lor.lhs.false.if.end49_crit_edge, label %if.then18

lor.lhs.false.if.end49_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then18:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %19 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %20 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %core, align 8
  %rds_read_queue115 = getelementptr inbounds %struct.si476x_core, ptr %21, i32 0, i32 6
  %call21116 = call i32 @prepare_to_wait_event(ptr noundef %rds_read_queue115, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %22 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %core, align 8
  %rds_fifo24117 = getelementptr inbounds %struct.si476x_core, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %rds_fifo24117 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rds_fifo24117, align 4
  %out27118 = getelementptr inbounds %struct.si476x_core, ptr %23, i32 0, i32 7, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %out27118 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %out27118, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp28119 = icmp eq i32 %25, %27
  br i1 %cmp28119, label %if.then18.lor.lhs.false31_crit_edge, label %if.then18.if.end44.thread111_crit_edge

if.then18.if.end44.thread111_crit_edge:           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.thread111

if.then18.lor.lhs.false31_crit_edge:              ; preds = %if.then18
  br label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %cleanup.lor.lhs.false31_crit_edge, %if.then18.lor.lhs.false31_crit_edge
  %28 = phi ptr [ %34, %cleanup.lor.lhs.false31_crit_edge ], [ %23, %if.then18.lor.lhs.false31_crit_edge ]
  %call21120 = phi i32 [ %call21, %cleanup.lor.lhs.false31_crit_edge ], [ %call21116, %if.then18.lor.lhs.false31_crit_edge ]
  %is_alive33 = getelementptr inbounds %struct.si476x_core, ptr %28, i32 0, i32 21
  %call.i.i100 = call zeroext i1 @__kasan_check_read(ptr noundef %is_alive33, i32 noundef 4) #7
  %29 = ptrtoint ptr %is_alive33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %is_alive33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool35.not = icmp eq i32 %30, 0
  br i1 %tobool35.not, label %lor.lhs.false31.if.end44.thread111_crit_edge, label %if.end37

lor.lhs.false31.if.end44.thread111_crit_edge:     ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.thread111

if.end37:                                         ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21120)
  %tobool38.not = icmp eq i32 %call21120, 0
  br i1 %tobool38.not, label %cleanup, label %if.end44

cleanup:                                          ; preds = %if.end37
  call void @schedule() #7
  %31 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %core, align 8
  %rds_read_queue = getelementptr inbounds %struct.si476x_core, ptr %32, i32 0, i32 6
  %call21 = call i32 @prepare_to_wait_event(ptr noundef %rds_read_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %33 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %core, align 8
  %rds_fifo24 = getelementptr inbounds %struct.si476x_core, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %rds_fifo24 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rds_fifo24, align 4
  %out27 = getelementptr inbounds %struct.si476x_core, ptr %34, i32 0, i32 7, i32 0, i32 0, i32 1
  %37 = ptrtoint ptr %out27 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %out27, align 4
  %cmp28 = icmp eq i32 %36, %38
  br i1 %cmp28, label %cleanup.lor.lhs.false31_crit_edge, label %cleanup.if.end44.thread111_crit_edge

cleanup.if.end44.thread111_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.thread111

cleanup.lor.lhs.false31_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false31

if.end44.thread111:                               ; preds = %cleanup.if.end44.thread111_crit_edge, %lor.lhs.false31.if.end44.thread111_crit_edge, %if.then18.if.end44.thread111_crit_edge
  %39 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %core, align 8
  %rds_read_queue42 = getelementptr inbounds %struct.si476x_core, ptr %40, i32 0, i32 6
  call void @finish_wait(ptr noundef %rds_read_queue42, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end49

if.end44:                                         ; preds = %if.end37
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21120)
  %cmp46 = icmp slt i32 %call21120, 0
  br i1 %cmp46, label %if.end44.cleanup77_crit_edge, label %if.end44.if.end49_crit_edge

if.end44.if.end49_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.end44.cleanup77_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup77

if.end49:                                         ; preds = %if.end44.if.end49_crit_edge, %if.end44.thread111, %lor.lhs.false.if.end49_crit_edge, %if.end.if.end49_crit_edge
  %41 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %core, align 8
  %is_alive51 = getelementptr inbounds %struct.si476x_core, ptr %42, i32 0, i32 21
  %call.i.i101 = call zeroext i1 @__kasan_check_read(ptr noundef %is_alive51, i32 noundef 4) #7
  %43 = ptrtoint ptr %is_alive51 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %is_alive51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool53.not = icmp eq i32 %44, 0
  br i1 %tobool53.not, label %if.end49.cleanup77_crit_edge, label %if.end49.if.end56_crit_edge

if.end49.if.end56_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.end49.cleanup77_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup77

if.end56:                                         ; preds = %if.end49.if.end56_crit_edge, %entry.if.end56_crit_edge
  %45 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %core, align 8
  %rds_fifo58 = getelementptr inbounds %struct.si476x_core, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %rds_fifo58 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rds_fifo58, align 4
  %out61 = getelementptr inbounds %struct.si476x_core, ptr %46, i32 0, i32 7, i32 0, i32 0, i32 1
  %49 = ptrtoint ptr %out61 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %out61, align 4
  %sub = sub i32 %48, %50
  %51 = call i32 @llvm.umin.i32(i32 %sub, i32 %count)
  %call68 = call i32 @__kfifo_to_user(ptr noundef %rds_fifo58, ptr noundef %buf, i32 noundef %51, ptr noundef nonnull %copied) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp70.not = icmp eq i32 %call68, 0
  br i1 %cmp70.not, label %if.else, label %do.end75

do.end75:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.si476x_radio, ptr %2, i32 0, i32 1, i32 5
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.19) #10
  br label %cleanup77

if.else:                                          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %copied to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %copied, align 4
  br label %cleanup77

cleanup77:                                        ; preds = %if.else, %do.end75, %if.end49.cleanup77_crit_edge, %if.end44.cleanup77_crit_edge, %if.then.cleanup77_crit_edge
  %retval.0 = phi i32 [ -11, %if.then.cleanup77_crit_edge ], [ -4, %if.end44.cleanup77_crit_edge ], [ -19, %if.end49.cleanup77_crit_edge ], [ -5, %do.end75 ], [ %53, %if.else ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %copied) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si476x_radio_fops_poll(ptr noundef %file, ptr noundef %pts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool.not.i = icmp eq ptr %pts, null
  br i1 %tobool.not.i, label %poll_requested_events.exit.thread, label %poll_requested_events.exit

poll_requested_events.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call230 = tail call i32 @v4l2_ctrl_poll(ptr noundef %file, ptr noundef null) #7
  br label %if.then

poll_requested_events.exit:                       ; preds = %entry
  %_key.i = getelementptr inbounds %struct.poll_table_struct, ptr %pts, i32 0, i32 1
  %2 = ptrtoint ptr %_key.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %_key.i, align 4
  %call2 = tail call i32 @v4l2_ctrl_poll(ptr noundef %file, ptr noundef nonnull %pts) #7
  %and = and i32 %3, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %poll_requested_events.exit.if.end17_crit_edge, label %poll_requested_events.exit.if.then_crit_edge

poll_requested_events.exit.if.then_crit_edge:     ; preds = %poll_requested_events.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

poll_requested_events.exit.if.end17_crit_edge:    ; preds = %poll_requested_events.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then:                                          ; preds = %poll_requested_events.exit.if.then_crit_edge, %poll_requested_events.exit.thread
  %call233 = phi i32 [ %call230, %poll_requested_events.exit.thread ], [ %call2, %poll_requested_events.exit.if.then_crit_edge ]
  %core = getelementptr inbounds %struct.si476x_radio, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 8
  %is_alive = getelementptr inbounds %struct.si476x_core, ptr %5, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %is_alive, i32 noundef 4) #7
  %6 = ptrtoint ptr %is_alive to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %is_alive, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then5:                                         ; preds = %if.then
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 8
  %rds_read_queue = getelementptr inbounds %struct.si476x_core, ptr %9, i32 0, i32 6
  br i1 %tobool.not.i, label %if.then5.if.end_crit_edge, label %land.lhs.true.i

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.then5
  %10 = ptrtoint ptr %pts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pts, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  %tobool3.not.i = icmp eq ptr %rds_read_queue, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.if.end_crit_edge, label %if.then.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %11(ptr noundef %file, ptr noundef nonnull %rds_read_queue, ptr noundef nonnull %pts) #7
  br label %if.end

if.end:                                           ; preds = %if.then.i, %land.lhs.true.i.if.end_crit_edge, %if.then5.if.end_crit_edge, %if.then.if.end_crit_edge
  %12 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core, align 8
  %is_alive8 = getelementptr inbounds %struct.si476x_core, ptr %13, i32 0, i32 21
  %call.i.i27 = tail call zeroext i1 @__kasan_check_read(ptr noundef %is_alive8, i32 noundef 4) #7
  %14 = ptrtoint ptr %is_alive8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %is_alive8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not = icmp eq i32 %15, 0
  %spec.select = select i1 %tobool10.not, i32 16, i32 %call233
  %16 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %core, align 8
  %rds_fifo = getelementptr inbounds %struct.si476x_core, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %rds_fifo to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rds_fifo, align 4
  %out = getelementptr inbounds %struct.si476x_core, ptr %17, i32 0, i32 7, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp = icmp eq i32 %19, %21
  %spec.select26 = select i1 %cmp, i32 %spec.select, i32 65
  br label %if.end17

if.end17:                                         ; preds = %if.end, %poll_requested_events.exit.if.end17_crit_edge
  %err.1 = phi i32 [ %call2, %poll_requested_events.exit.if.end17_crit_edge ], [ %spec.select26, %if.end ]
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si476x_radio_fops_open(ptr noundef %file) #2 align 64 {
entry:
  %args.i = alloca %struct.si476x_tune_freq_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @v4l2_fh_open(ptr noundef %file) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %call.i47 = tail call i32 @v4l2_fh_is_singular(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %tobool3.not = icmp eq i32 %call.i47, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %core = getelementptr inbounds %struct.si476x_radio, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 8
  %cmd_lock.i = getelementptr inbounds %struct.si476x_core, ptr %5, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %cmd_lock.i, i32 noundef 0) #7
  %6 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core, align 8
  %call6 = tail call i32 @si476x_core_set_power_state(ptr noundef %7, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then4.done_crit_edge, label %if.end8

if.then4.done_crit_edge:                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end8:                                          ; preds = %if.then4
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 8
  %func = getelementptr inbounds %struct.si476x_core, ptr %9, i32 0, i32 15, i32 6
  %10 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %func, align 4
  %call10 = tail call fastcc i32 @si476x_radio_do_post_powerup_init(ptr noundef %1, i32 noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end8.power_down_crit_edge, label %if.end13

if.end8.power_down_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %power_down

if.end13:                                         ; preds = %if.end8
  %12 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core, align 8
  %func16 = getelementptr inbounds %struct.si476x_core, ptr %13, i32 0, i32 15, i32 6
  %14 = ptrtoint ptr %func16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %func16, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args.i) #7
  %16 = call ptr @memset(ptr %args.i, i32 0, i32 24)
  %17 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %si476x_radio_pretune.exit.thread [
    i32 1, label %if.end13.si476x_radio_pretune.exit_crit_edge
    i32 2, label %sw.bb4.i
  ]

if.end13.si476x_radio_pretune.exit_crit_edge:     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %si476x_radio_pretune.exit

sw.bb4.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %si476x_radio_pretune.exit

si476x_radio_pretune.exit.thread:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 533, i32 noundef 9, ptr noundef nonnull @.str.22) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #7
  br label %power_down

si476x_radio_pretune.exit:                        ; preds = %sw.bb4.i, %if.end13.si476x_radio_pretune.exit_crit_edge
  %.sink = phi i32 [ 600, %sw.bb4.i ], [ 9200, %if.end13.si476x_radio_pretune.exit_crit_edge ]
  %freq.i = getelementptr inbounds %struct.si476x_tune_freq_args, ptr %args.i, i32 0, i32 3
  %18 = ptrtoint ptr %freq.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %freq.i, align 4
  %ops.i = getelementptr inbounds %struct.si476x_radio, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %call3.i = call i32 %22(ptr noundef %13, ptr noundef nonnull %args.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp18 = icmp slt i32 %call3.i, 0
  br i1 %cmp18, label %si476x_radio_pretune.exit.power_down_crit_edge, label %if.end20

si476x_radio_pretune.exit.power_down_crit_edge:   ; preds = %si476x_radio_pretune.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %power_down

if.end20:                                         ; preds = %si476x_radio_pretune.exit
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %core, align 8
  %cmd_lock.i48 = getelementptr inbounds %struct.si476x_core, ptr %24, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %cmd_lock.i48) #7
  %ctrl_handler = getelementptr inbounds %struct.si476x_radio, ptr %1, i32 0, i32 2
  %call22 = call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_handler) #7
  br label %cleanup

power_down:                                       ; preds = %si476x_radio_pretune.exit.power_down_crit_edge, %si476x_radio_pretune.exit.thread, %if.end8.power_down_crit_edge
  %err.1 = phi i32 [ %call10, %if.end8.power_down_crit_edge ], [ %call3.i, %si476x_radio_pretune.exit.power_down_crit_edge ], [ -22, %si476x_radio_pretune.exit.thread ]
  %25 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %core, align 8
  %call25 = call i32 @si476x_core_set_power_state(ptr noundef %26, i32 noundef 0) #7
  br label %done

done:                                             ; preds = %power_down, %if.then4.done_crit_edge
  %err.2 = phi i32 [ %call6, %if.then4.done_crit_edge ], [ %err.1, %power_down ]
  %27 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %core, align 8
  %cmd_lock.i49 = getelementptr inbounds %struct.si476x_core, ptr %28, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %cmd_lock.i49) #7
  %call27 = call i32 @v4l2_fh_release(ptr noundef %file) #7
  br label %cleanup

cleanup:                                          ; preds = %done, %if.end20, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %done ], [ %call1, %entry.cleanup_crit_edge ], [ %call3.i, %if.end20 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si476x_radio_fops_release(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %call.i10 = tail call i32 @v4l2_fh_is_singular(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %tobool.not = icmp eq i32 %call.i10, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %core = getelementptr inbounds %struct.si476x_radio, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 8
  %is_alive = getelementptr inbounds %struct.si476x_core, ptr %5, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %is_alive, i32 noundef 4) #7
  %6 = ptrtoint ptr %is_alive to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %is_alive, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 8
  %call5 = tail call i32 @si476x_core_set_power_state(ptr noundef %9, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call6 = tail call i32 @v4l2_fh_release(ptr noundef %file) #7
  ret i32 %call6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_to_user(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_poll(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si476x_core_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si476x_radio_do_post_powerup_init(ptr nocapture noundef %radio, i32 noundef %func) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.si476x_radio, ptr %radio, i32 0, i32 3
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 8
  %regmap = getelementptr inbounds %struct.si476x_core, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regcache_sync_region(ptr noundef %3, i32 noundef 512, i32 noundef 515) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 8
  %regmap2 = getelementptr inbounds %struct.si476x_core, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap2, align 4
  %call3 = tail call i32 @regcache_sync_region(ptr noundef %7, i32 noundef 770, i32 noundef 771) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 8
  %regmap8 = getelementptr inbounds %struct.si476x_core, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap8, align 4
  %call9 = tail call i32 @regcache_sync_region(ptr noundef %11, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end6.cleanup_crit_edge, label %if.end12

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %12 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core, align 8
  %regmap14 = getelementptr inbounds %struct.si476x_core, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %regmap14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap14, align 4
  %call15 = tail call i32 @regcache_sync_region(ptr noundef %15, i32 noundef 8192, i32 noundef 8192) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end12.cleanup_crit_edge, label %if.end18

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %16 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %core, align 8
  %regmap20 = getelementptr inbounds %struct.si476x_core, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %regmap20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap20, align 4
  %call21 = tail call i32 @regcache_sync_region(ptr noundef %19, i32 noundef 8195, i32 noundef 8196) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end18.cleanup_crit_edge, label %if.end24

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  %20 = zext i32 %func to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %func, label %do.end.i [
    i32 1, label %if.then26
    i32 2, label %sw.bb1.i
  ]

if.then26:                                        ; preds = %if.end24
  %21 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %core, align 8
  %call28 = tail call zeroext i1 @si476x_core_has_diversity(ptr noundef %22) #7
  br i1 %call28, label %if.then29, label %if.then26.if.end36_crit_edge

if.then26.if.end36_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then29:                                        ; preds = %if.then26
  %23 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %core, align 8
  %diversity_mode = getelementptr inbounds %struct.si476x_core, ptr %24, i32 0, i32 20
  %25 = ptrtoint ptr %diversity_mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %diversity_mode, align 8
  %call32 = tail call i32 @si476x_core_cmd_fm_phase_diversity(ptr noundef %24, i32 noundef %26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.then29.cleanup_crit_edge, label %if.then29.if.end36_crit_edge

if.then29.if.end36_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end36:                                         ; preds = %if.then29.if.end36_crit_edge, %if.then26.if.end36_crit_edge
  %27 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %core, align 8
  %regmap38 = getelementptr inbounds %struct.si476x_core, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %regmap38 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap38, align 4
  %call39 = tail call i32 @regcache_sync_region(ptr noundef %30, i32 noundef 16384, i32 noundef 16386) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.end36.cleanup_crit_edge, label %sw.bb.i

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %ops.i = getelementptr inbounds %struct.si476x_radio, ptr %radio, i32 0, i32 4
  %31 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @si476x_radio_init_vtable.fm_ops, ptr %ops.i, align 4
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %ops2.i = getelementptr inbounds %struct.si476x_radio, ptr %radio, i32 0, i32 4
  %32 = ptrtoint ptr %ops2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @si476x_radio_init_vtable.am_ops, ptr %ops2.i, align 4
  br label %cleanup

do.end.i:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 502, i32 noundef 9, ptr noundef nonnull @.str.22) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %sw.bb1.i, %sw.bb.i, %if.end36.cleanup_crit_edge, %if.then29.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call9, %if.end6.cleanup_crit_edge ], [ %call15, %if.end12.cleanup_crit_edge ], [ %call21, %if.end18.cleanup_crit_edge ], [ %call32, %if.then29.cleanup_crit_edge ], [ %call39, %if.end36.cleanup_crit_edge ], [ -22, %do.end.i ], [ 0, %sw.bb1.i ], [ 0, %sw.bb.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_is_singular(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si476x_core_cmd_fm_phase_diversity(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si476x_core_cmd_fm_tune_freq(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si476x_core_cmd_fm_seek_start(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si476x_core_cmd_fm_rsq_status(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si476x_core_cmd_fm_rds_blockcount(ptr noundef, i1 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si476x_core_cmd_fm_phase_div_status(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si476x_core_cmd_fm_acf_status(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si476x_core_cmd_agc_status(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si476x_core_cmd_am_tune_freq(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si476x_core_cmd_am_seek_start(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si476x_core_cmd_am_rsq_status(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si476x_core_cmd_am_acf_status(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si476x_radio_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %capability) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call2 = tail call i32 @strscpy(ptr noundef %capability, ptr noundef %name, i32 noundef 16) #7
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %capability, i32 0, i32 1
  %call4 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.23, i32 noundef 32) #7
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %capability, i32 0, i32 2
  %call9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.24, ptr noundef %name)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si476x_radio_g_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %tuner) #2 align 64 {
entry:
  %report = alloca %struct.si476x_rsq_status_report, align 1
  %args = alloca %struct.si476x_rsq_status_args, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %report) #7
  %0 = getelementptr inbounds %struct.si476x_rsq_status_report, ptr %report, i32 0, i32 14
  %1 = call ptr @memset(ptr %report, i32 255, i32 32)
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %args) #7
  %4 = call ptr @memset(ptr %args, i32 0, i32 5)
  %5 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tuner, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 2
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %type, align 4
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 3
  %8 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2077, ptr %capability, align 4
  %core = getelementptr inbounds %struct.si476x_radio, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %core, align 8
  %cmd_lock.i = getelementptr inbounds %struct.si476x_core, ptr %10, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %cmd_lock.i, i32 noundef 0) #7
  %11 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %core, align 8
  %call2 = tail call zeroext i1 @si476x_core_is_a_secondary_tuner(ptr noundef %12) #7
  br i1 %call2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 1
  %call4 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.25, i32 noundef 32) #7
  %rxsubchans = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 6
  %13 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %rxsubchans, align 4
  br label %if.end31

if.else:                                          ; preds = %if.end
  %14 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %core, align 8
  %call6 = tail call zeroext i1 @si476x_core_has_am(ptr noundef %15) #7
  br i1 %call6, label %if.then7, label %if.else22

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %core, align 8
  %call9 = tail call zeroext i1 @si476x_core_is_a_primary_tuner(ptr noundef %17) #7
  %name11 = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 1
  %.str.26..str.27 = select i1 %call9, ptr @.str.26, ptr @.str.27
  %call17 = tail call i32 @strscpy(ptr noundef %name11, ptr noundef nonnull %.str.26..str.27, i32 noundef 32) #7
  %rxsubchans19 = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 6
  %18 = ptrtoint ptr %rxsubchans19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 19, ptr %rxsubchans19, align 4
  %19 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %capability, align 4
  %or = or i32 %20, 1408
  store i32 %or, ptr %capability, align 4
  br label %if.end31

if.else22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %name23 = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 1
  %call25 = tail call i32 @strscpy(ptr noundef %name23, ptr noundef nonnull @.str.28, i32 noundef 32) #7
  %rxsubchans26 = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 6
  %21 = ptrtoint ptr %rxsubchans26 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 16, ptr %rxsubchans26, align 4
  %22 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %capability, align 4
  %or28 = or i32 %23, 1408
  store i32 %or28, ptr %capability, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else22, %if.then7, %if.then3
  %.sink = phi i32 [ 8320, %if.then7 ], [ 1024000, %if.else22 ], [ 1024000, %if.then3 ]
  %rangelow21 = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 4
  %24 = ptrtoint ptr %rangelow21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink, ptr %rangelow21, align 4
  %audmode = getelementptr inbounds %struct.si476x_radio, ptr %3, i32 0, i32 6
  %25 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %audmode, align 4
  %audmode32 = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 7
  %27 = ptrtoint ptr %audmode32 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %audmode32, align 4
  %afc = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 9
  %28 = ptrtoint ptr %afc to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %afc, align 4
  %rangehigh = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 5
  %29 = ptrtoint ptr %rangehigh to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1728000, ptr %rangehigh, align 4
  %ops = getelementptr inbounds %struct.si476x_radio, ptr %3, i32 0, i32 4
  %30 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops, align 4
  %rsq_status = getelementptr inbounds %struct.si476x_radio_ops, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %rsq_status to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rsq_status, align 4
  %34 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %core, align 8
  %call34 = call i32 %33(ptr noundef %35, ptr noundef nonnull %args, ptr noundef nonnull %report) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.end31.if.end39_crit_edge, label %if.else37

if.end31.if.end39_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.else37:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %0, align 1
  %conv = sext i8 %37 to i32
  %38 = mul nsw i32 %conv, 257
  %mul = add nsw i32 %38, 32896
  br label %if.end39

if.end39:                                         ; preds = %if.else37, %if.end31.if.end39_crit_edge
  %mul.sink = phi i32 [ %mul, %if.else37 ], [ 0, %if.end31.if.end39_crit_edge ]
  %39 = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mul.sink, ptr %39, align 4
  %41 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %core, align 8
  %cmd_lock.i71 = getelementptr inbounds %struct.si476x_core, ptr %42, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %cmd_lock.i71) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call34, %if.end39 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %args) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %report) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si476x_radio_s_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %tuner) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %0 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tuner, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 7
  %4 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %audmode, align 4
  %audmode6 = getelementptr inbounds %struct.si476x_radio, ptr %3, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = ptrtoint ptr %audmode6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %audmode6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si476x_radio_g_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  %report = alloca %struct.si476x_rsq_status_report, align 1
  %args = alloca %struct.si476x_rsq_status_args, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
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
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %core = getelementptr inbounds %struct.si476x_radio, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core, align 8
  %cmd_lock.i = getelementptr inbounds %struct.si476x_core, ptr %7, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %cmd_lock.i, i32 noundef 0) #7
  %ops = getelementptr inbounds %struct.si476x_radio, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %rsq_status = getelementptr inbounds %struct.si476x_radio_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %rsq_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rsq_status, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %if.then2

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %report) #7
  %12 = call ptr @memset(ptr %report, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %args) #7
  %13 = call ptr @memcpy(ptr %args, ptr @__const.si476x_radio_g_frequency.args, i32 5)
  %14 = ptrtoint ptr %rsq_status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rsq_status, align 4
  %16 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %core, align 8
  %call6 = call i32 %15(ptr noundef %17, ptr noundef nonnull %args, ptr noundef nonnull %report) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.then2.if.end11_crit_edge

if.then2.if.end11_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then8:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %18 = getelementptr inbounds %struct.si476x_rsq_status_report, ptr %report, i32 0, i32 12
  %19 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %core, align 8
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %18, align 1
  %func.i.i = getelementptr inbounds %struct.si476x_core, ptr %20, i32 0, i32 15, i32 6
  %23 = ptrtoint ptr %func.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %func.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cond.i.i = icmp eq i32 %24, 2
  %conv2.i.i = zext i16 %22 to i32
  %result.0.v.i.i = select i1 %cond.i.i, i32 1000, i32 10000
  %result.0.i.i = mul nuw nsw i32 %conv2.i.i, 10
  %mul.i.i = mul i32 %result.0.i.i, %result.0.v.i.i
  %div.i.i = sdiv i32 %mul.i.i, 625
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %25 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div.i.i, ptr %frequency, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.then2.if.end11_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %args) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %report) #7
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end.if.end12_crit_edge
  %err.0 = phi i32 [ %call6, %if.end11 ], [ -22, %if.end.if.end12_crit_edge ]
  %26 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %core, align 8
  %cmd_lock.i23 = getelementptr inbounds %struct.si476x_core, ptr %27, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %cmd_lock.i23) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end12 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si476x_radio_s_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %f) #2 align 64 {
entry:
  %args = alloca %struct.si476x_tune_freq_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %frequency, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #7
  %2 = call ptr @memset(ptr %args, i32 255, i32 24)
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %3 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 752001, i32 %1)
  %cmp = icmp ult i32 %1, 752001
  %cond = zext i1 %cmp to i32
  %cond2 = select i1 %cmp, i32 2, i32 1
  %5 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp3.not = icmp eq i32 %6, 0
  br i1 %cmp3.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp4.not = icmp eq i32 %8, 1
  br i1 %cmp4.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %core = getelementptr inbounds %struct.si476x_radio, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %core, align 8
  %cmd_lock.i = getelementptr inbounds %struct.si476x_core, ptr %10, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %cmd_lock.i, i32 noundef 0) #7
  %rangelow = getelementptr [2 x %struct.v4l2_frequency_band], ptr @si476x_bands, i32 0, i32 %cond, i32 4
  %11 = ptrtoint ptr %rangelow to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rangelow, align 4
  %13 = tail call i32 @llvm.umax.i32(i32 %1, i32 %12)
  %rangehigh = getelementptr [2 x %struct.v4l2_frequency_band], ptr @si476x_bands, i32 0, i32 %cond, i32 5
  %14 = ptrtoint ptr %rangehigh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rangehigh, align 4
  %16 = tail call i32 @llvm.umin.i32(i32 %13, i32 %15)
  %17 = add i32 %16, -8320
  call void @__sanitizer_cov_trace_const_cmp4(i32 471681, i32 %17)
  %18 = icmp ult i32 %17, 471681
  br i1 %18, label %land.lhs.true, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end
  %19 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %core, align 8
  %call16 = tail call zeroext i1 @si476x_core_has_am(ptr noundef %20) #7
  br i1 %call16, label %lor.lhs.false17, label %land.lhs.true.unlock_crit_edge

land.lhs.true.unlock_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

lor.lhs.false17:                                  ; preds = %land.lhs.true
  %21 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %core, align 8
  %call19 = tail call zeroext i1 @si476x_core_is_a_secondary_tuner(ptr noundef %22) #7
  br i1 %call19, label %lor.lhs.false17.unlock_crit_edge, label %lor.lhs.false17.if.end21_crit_edge

lor.lhs.false17.if.end21_crit_edge:               ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

lor.lhs.false17.unlock_crit_edge:                 ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end21:                                         ; preds = %lor.lhs.false17.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %23 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %core, align 8
  %func1.i = getelementptr inbounds %struct.si476x_core, ptr %24, i32 0, i32 15, i32 6
  %25 = ptrtoint ptr %func1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %func1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %cond2)
  %cmp.i = icmp eq i32 %26, %cond2
  br i1 %cmp.i, label %if.end21.if.end25_crit_edge, label %if.end.i

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.end.i:                                         ; preds = %if.end21
  %call.i59 = tail call i32 @si476x_core_stop(ptr noundef %24, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %cmp3.i = icmp slt i32 %call.i59, 0
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.if.end11.i_crit_edge

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then4.i:                                       ; preds = %if.end.i
  %27 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %core, align 8
  %call7.i = tail call i32 @si476x_core_stop(ptr noundef %28, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.then4.i.unlock_crit_edge, label %if.then4.i.if.end11.i_crit_edge

if.then4.i.if.end11.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then4.i.unlock_crit_edge:                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end11.i:                                       ; preds = %if.then4.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge
  %29 = xor i1 %cmp3.i, true
  %30 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %core, align 8
  %func14.i = getelementptr inbounds %struct.si476x_core, ptr %31, i32 0, i32 15, i32 6
  %32 = ptrtoint ptr %func14.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %cond2, ptr %func14.i, align 4
  %33 = load ptr, ptr %core, align 8
  %call17.i = tail call i32 @si476x_core_start(ptr noundef %33, i1 noundef zeroext %29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %if.end11.i.unlock_crit_edge, label %si476x_radio_change_func.exit

if.end11.i.unlock_crit_edge:                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

si476x_radio_change_func.exit:                    ; preds = %if.end11.i
  %call25.i = tail call fastcc i32 @si476x_radio_do_post_powerup_init(ptr noundef %4, i32 noundef %cond2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp23 = icmp slt i32 %call25.i, 0
  br i1 %cmp23, label %si476x_radio_change_func.exit.unlock_crit_edge, label %si476x_radio_change_func.exit.if.end25_crit_edge

si476x_radio_change_func.exit.if.end25_crit_edge: ; preds = %si476x_radio_change_func.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

si476x_radio_change_func.exit.unlock_crit_edge:   ; preds = %si476x_radio_change_func.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end25:                                         ; preds = %si476x_radio_change_func.exit.if.end25_crit_edge, %if.end21.if.end25_crit_edge
  %34 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %args, align 4
  %hd = getelementptr inbounds %struct.si476x_tune_freq_args, ptr %args, i32 0, i32 1
  %35 = ptrtoint ptr %hd to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %hd, align 1
  %injside = getelementptr inbounds %struct.si476x_tune_freq_args, ptr %args, i32 0, i32 2
  %36 = ptrtoint ptr %injside to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %injside, align 4
  %37 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %core, align 8
  %mul.i.i = mul i32 %16, 625
  %div.i.i = sdiv i32 %mul.i.i, 10
  %func.i.i = getelementptr inbounds %struct.si476x_core, ptr %38, i32 0, i32 15, i32 6
  %39 = ptrtoint ptr %func.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %func.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cond.i.i = icmp eq i32 %40, 2
  %result.0.in.v.i.i = select i1 %cond.i.i, i32 1000, i32 10000
  %result.0.in.i.i = sdiv i32 %div.i.i, %result.0.in.v.i.i
  %conv = and i32 %result.0.in.i.i, 65535
  %freq28 = getelementptr inbounds %struct.si476x_tune_freq_args, ptr %args, i32 0, i32 3
  %41 = ptrtoint ptr %freq28 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv, ptr %freq28, align 4
  %tunemode = getelementptr inbounds %struct.si476x_tune_freq_args, ptr %args, i32 0, i32 4
  %42 = ptrtoint ptr %tunemode to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %tunemode, align 4
  %smoothmetrics = getelementptr inbounds %struct.si476x_tune_freq_args, ptr %args, i32 0, i32 5
  %43 = ptrtoint ptr %smoothmetrics to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %smoothmetrics, align 4
  %antcap = getelementptr inbounds %struct.si476x_tune_freq_args, ptr %args, i32 0, i32 6
  %44 = ptrtoint ptr %antcap to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %antcap, align 4
  %ops = getelementptr inbounds %struct.si476x_radio, ptr %4, i32 0, i32 4
  %45 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %call30 = call i32 %48(ptr noundef %38, ptr noundef nonnull %args) #7
  br label %unlock

unlock:                                           ; preds = %if.end25, %si476x_radio_change_func.exit.unlock_crit_edge, %if.end11.i.unlock_crit_edge, %if.then4.i.unlock_crit_edge, %lor.lhs.false17.unlock_crit_edge, %land.lhs.true.unlock_crit_edge
  %err.0 = phi i32 [ %call25.i, %si476x_radio_change_func.exit.unlock_crit_edge ], [ %call30, %if.end25 ], [ -22, %lor.lhs.false17.unlock_crit_edge ], [ -22, %land.lhs.true.unlock_crit_edge ], [ %call17.i, %if.end11.i.unlock_crit_edge ], [ %call7.i, %if.then4.i.unlock_crit_edge ]
  %49 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %core, align 8
  %cmd_lock.i60 = getelementptr inbounds %struct.si476x_core, ptr %50, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %cmd_lock.i60) #7
  br label %cleanup

cleanup:                                          ; preds = %unlock, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %unlock ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si476x_radio_enum_freq_bands(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %band) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %0 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %core = getelementptr inbounds %struct.si476x_radio, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 8
  %chip_id = getelementptr inbounds %struct.si476x_core, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chip_id, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %7, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.sw.bb_crit_edge
    i32 2, label %if.end.sw.bb_crit_edge21
    i32 3, label %sw.bb5
  ]

if.end.sw.bb_crit_edge21:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge21
  %index = getelementptr inbounds %struct.v4l2_frequency_band, ptr %band, i32 0, i32 2
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp1 = icmp ult i32 %10, 2
  br i1 %cmp1, label %if.then2, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [2 x %struct.v4l2_frequency_band], ptr @si476x_bands, i32 0, i32 %10
  %11 = call ptr @memcpy(ptr %band, ptr %arrayidx, i32 64)
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  %index6 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %band, i32 0, i32 2
  %12 = ptrtoint ptr %index6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp7 = icmp eq i32 %13, 0
  br i1 %cmp7, label %if.then8, label %sw.bb5.cleanup_crit_edge

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  %14 = call ptr @memcpy(ptr %band, ptr @si476x_bands, i32 64)
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %sw.bb5.cleanup_crit_edge, %if.then2, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then8 ], [ 0, %if.then2 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb5.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si476x_radio_s_hw_freq_seek(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %seek) #2 align 64 {
entry:
  %rangelow = alloca i32, align 4
  %rangehigh = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rangelow) #7
  %rangelow1 = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %seek, i32 0, i32 5
  %0 = ptrtoint ptr %rangelow1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rangelow1, align 4
  %2 = ptrtoint ptr %rangelow to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %rangelow, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rangehigh) #7
  %rangehigh2 = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %seek, i32 0, i32 6
  %3 = ptrtoint ptr %rangehigh2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rangehigh2, align 4
  %5 = ptrtoint ptr %rangehigh to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %rangehigh, align 4
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %8 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_flags, align 4
  %and = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %seek to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %seek, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %type = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %seek, i32 0, i32 1
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp3.not = icmp eq i32 %13, 1
  br i1 %cmp3.not, label %if.end5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %core = getelementptr inbounds %struct.si476x_radio, ptr %7, i32 0, i32 3
  %14 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %core, align 8
  %cmd_lock.i = getelementptr inbounds %struct.si476x_core, ptr %15, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %cmd_lock.i, i32 noundef 0) #7
  %16 = ptrtoint ptr %rangelow to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rangelow, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool6.not = icmp eq i32 %17, 0
  br i1 %tobool6.not, label %if.then7, label %if.end5.if.end15_crit_edge

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then7:                                         ; preds = %if.end5
  %18 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %core, align 8
  %regmap = getelementptr inbounds %struct.si476x_core, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call9 = call i32 @regmap_read(ptr noundef %21, i32 noundef 4352, ptr noundef nonnull %rangelow) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then7.unlock_crit_edge

if.then7.unlock_crit_edge:                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end12:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %core, align 8
  %24 = ptrtoint ptr %rangelow to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rangelow, align 4
  %func.i.i = getelementptr inbounds %struct.si476x_core, ptr %23, i32 0, i32 15, i32 6
  %26 = ptrtoint ptr %func.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %func.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cond.i.i = icmp eq i32 %27, 2
  %conv2.i.i = and i32 %25, 65535
  %result.0.v.i.i = select i1 %cond.i.i, i32 1000, i32 10000
  %result.0.i.i = mul nuw nsw i32 %conv2.i.i, 10
  %mul.i.i = mul i32 %result.0.i.i, %result.0.v.i.i
  %div.i.i = sdiv i32 %mul.i.i, 625
  %28 = ptrtoint ptr %rangelow to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div.i.i, ptr %rangelow, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end12, %if.end5.if.end15_crit_edge
  %29 = ptrtoint ptr %rangehigh to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rangehigh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool16.not = icmp eq i32 %30, 0
  br i1 %tobool16.not, label %if.then17, label %if.end15.if.end27_crit_edge

if.end15.if.end27_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then17:                                        ; preds = %if.end15
  %31 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %core, align 8
  %regmap19 = getelementptr inbounds %struct.si476x_core, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %regmap19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap19, align 4
  %call20 = call i32 @regmap_read(ptr noundef %34, i32 noundef 4353, ptr noundef nonnull %rangehigh) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.then17.unlock_crit_edge

if.then17.unlock_crit_edge:                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end23:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %core, align 8
  %37 = ptrtoint ptr %rangehigh to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rangehigh, align 4
  %func.i.i135 = getelementptr inbounds %struct.si476x_core, ptr %36, i32 0, i32 15, i32 6
  %39 = ptrtoint ptr %func.i.i135 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %func.i.i135, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cond.i.i136 = icmp eq i32 %40, 2
  %conv2.i.i137 = and i32 %38, 65535
  %result.0.v.i.i138 = select i1 %cond.i.i136, i32 1000, i32 10000
  %result.0.i.i139 = mul nuw nsw i32 %conv2.i.i137, 10
  %mul.i.i140 = mul i32 %result.0.i.i139, %result.0.v.i.i138
  %div.i.i141 = sdiv i32 %mul.i.i140, 625
  %41 = ptrtoint ptr %rangehigh to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %div.i.i141, ptr %rangehigh, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end23, %if.end15.if.end27_crit_edge
  %42 = ptrtoint ptr %rangelow to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rangelow, align 4
  %44 = ptrtoint ptr %rangehigh to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rangehigh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp28 = icmp ugt i32 %43, %45
  br i1 %cmp28, label %if.end27.unlock_crit_edge, label %if.end31

if.end27.unlock_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end31:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023999, i32 %43)
  %cmp.not.i = icmp ugt i32 %43, 1023999
  call void @__sanitizer_cov_trace_const_cmp4(i32 1728001, i32 %45)
  %cmp2.i = icmp ult i32 %45, 1728001
  %or.cond = select i1 %cmp.not.i, i1 %cmp2.i, i1 false
  br i1 %or.cond, label %if.end31.if.end42_crit_edge, label %if.else

if.end31.if.end42_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.else:                                          ; preds = %if.end31
  %46 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %core, align 8
  %call35 = call zeroext i1 @si476x_core_has_am(ptr noundef %47) #7
  br i1 %call35, label %land.lhs.true, label %if.else.unlock_crit_edge

if.else.unlock_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

land.lhs.true:                                    ; preds = %if.else
  %48 = ptrtoint ptr %rangelow to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rangelow, align 4
  %50 = ptrtoint ptr %rangehigh to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rangehigh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8319, i32 %49)
  %cmp.not.i142 = icmp ugt i32 %49, 8319
  call void @__sanitizer_cov_trace_const_cmp4(i32 480001, i32 %51)
  %cmp2.i143 = icmp ult i32 %51, 480001
  %or.cond166 = select i1 %cmp.not.i142, i1 %cmp2.i143, i1 false
  br i1 %or.cond166, label %land.lhs.true.if.end42_crit_edge, label %land.lhs.true.unlock_crit_edge

land.lhs.true.unlock_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.end42:                                         ; preds = %land.lhs.true.if.end42_crit_edge, %if.end31.if.end42_crit_edge
  %func.0 = phi i32 [ 1, %if.end31.if.end42_crit_edge ], [ 2, %land.lhs.true.if.end42_crit_edge ]
  %call43 = call fastcc i32 @si476x_radio_change_func(ptr noundef %7, i32 noundef %func.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.end42.unlock_crit_edge, label %if.end47

if.end42.unlock_crit_edge:                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end47:                                         ; preds = %if.end42
  %52 = ptrtoint ptr %rangehigh2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rangehigh2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool49.not = icmp eq i32 %53, 0
  br i1 %tobool49.not, label %if.end47.if.end61_crit_edge, label %if.then50

if.end47.if.end61_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then50:                                        ; preds = %if.end47
  %54 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %core, align 8
  %regmap52 = getelementptr inbounds %struct.si476x_core, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %regmap52 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap52, align 4
  %mul.i.i146 = mul i32 %53, 625
  %div.i.i147 = sdiv i32 %mul.i.i146, 10
  %func.i.i148 = getelementptr inbounds %struct.si476x_core, ptr %55, i32 0, i32 15, i32 6
  %58 = ptrtoint ptr %func.i.i148 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %func.i.i148, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cond.i.i149 = icmp eq i32 %59, 2
  %result.0.in.v.i.i = select i1 %cond.i.i149, i32 1000, i32 10000
  %result.0.in.i.i = sdiv i32 %div.i.i147, %result.0.in.v.i.i
  %conv56 = and i32 %result.0.in.i.i, 65535
  %call57 = call i32 @regmap_write(ptr noundef %57, i32 noundef 4353, i32 noundef %conv56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then50.if.end61_crit_edge, label %if.then50.unlock_crit_edge

if.then50.unlock_crit_edge:                       ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.then50.if.end61_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.end61:                                         ; preds = %if.then50.if.end61_crit_edge, %if.end47.if.end61_crit_edge
  %60 = ptrtoint ptr %rangelow1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rangelow1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool63.not = icmp eq i32 %61, 0
  br i1 %tobool63.not, label %if.end61.if.end75_crit_edge, label %if.then64

if.end61.if.end75_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.then64:                                        ; preds = %if.end61
  %62 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %core, align 8
  %regmap66 = getelementptr inbounds %struct.si476x_core, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %regmap66 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap66, align 4
  %mul.i.i151 = mul i32 %61, 625
  %div.i.i152 = sdiv i32 %mul.i.i151, 10
  %func.i.i153 = getelementptr inbounds %struct.si476x_core, ptr %63, i32 0, i32 15, i32 6
  %66 = ptrtoint ptr %func.i.i153 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %func.i.i153, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cond.i.i154 = icmp eq i32 %67, 2
  %result.0.in.v.i.i155 = select i1 %cond.i.i154, i32 1000, i32 10000
  %result.0.in.i.i156 = sdiv i32 %div.i.i152, %result.0.in.v.i.i155
  %conv70 = and i32 %result.0.in.i.i156, 65535
  %call71 = call i32 @regmap_write(ptr noundef %65, i32 noundef 4352, i32 noundef %conv70) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.then64.if.end75_crit_edge, label %if.then64.unlock_crit_edge

if.then64.unlock_crit_edge:                       ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.then64.if.end75_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.end75:                                         ; preds = %if.then64.if.end75_crit_edge, %if.end61.if.end75_crit_edge
  %spacing = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %seek, i32 0, i32 4
  %68 = ptrtoint ptr %spacing to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %spacing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool76.not = icmp eq i32 %69, 0
  br i1 %tobool76.not, label %if.end75.if.end88_crit_edge, label %if.then77

if.end75.if.end88_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.then77:                                        ; preds = %if.end75
  %70 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %core, align 8
  %regmap79 = getelementptr inbounds %struct.si476x_core, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %regmap79 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap79, align 4
  %mul.i.i158 = mul i32 %69, 625
  %div.i.i159 = sdiv i32 %mul.i.i158, 10
  %func.i.i160 = getelementptr inbounds %struct.si476x_core, ptr %71, i32 0, i32 15, i32 6
  %74 = ptrtoint ptr %func.i.i160 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %func.i.i160, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %75)
  %cond.i.i161 = icmp eq i32 %75, 2
  %result.0.in.v.i.i162 = select i1 %cond.i.i161, i32 1000, i32 10000
  %result.0.in.i.i163 = sdiv i32 %div.i.i159, %result.0.in.v.i.i162
  %conv83 = and i32 %result.0.in.i.i163, 65535
  %call84 = call i32 @regmap_write(ptr noundef %73, i32 noundef 4354, i32 noundef %conv83) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.then77.if.end88_crit_edge, label %if.then77.unlock_crit_edge

if.then77.unlock_crit_edge:                       ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.then77.if.end88_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.end88:                                         ; preds = %if.then77.if.end88_crit_edge, %if.end75.if.end88_crit_edge
  %ops = getelementptr inbounds %struct.si476x_radio, ptr %7, i32 0, i32 4
  %76 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ops, align 4
  %seek_start = getelementptr inbounds %struct.si476x_radio_ops, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %seek_start to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %seek_start, align 4
  %80 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %core, align 8
  %seek_upward = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %seek, i32 0, i32 2
  %82 = ptrtoint ptr %seek_upward to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %seek_upward, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool90 = icmp ne i32 %83, 0
  %wrap_around = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %seek, i32 0, i32 3
  %84 = ptrtoint ptr %wrap_around to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %wrap_around, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool91 = icmp ne i32 %85, 0
  %call92 = call i32 %79(ptr noundef %81, i1 noundef zeroext %tobool90, i1 noundef zeroext %tobool91) #7
  br label %unlock

unlock:                                           ; preds = %if.end88, %if.then77.unlock_crit_edge, %if.then64.unlock_crit_edge, %if.then50.unlock_crit_edge, %if.end42.unlock_crit_edge, %land.lhs.true.unlock_crit_edge, %if.else.unlock_crit_edge, %if.end27.unlock_crit_edge, %if.then17.unlock_crit_edge, %if.then7.unlock_crit_edge
  %err.0 = phi i32 [ %call43, %if.end42.unlock_crit_edge ], [ %call57, %if.then50.unlock_crit_edge ], [ %call71, %if.then64.unlock_crit_edge ], [ %call84, %if.then77.unlock_crit_edge ], [ %call92, %if.end88 ], [ %call20, %if.then17.unlock_crit_edge ], [ %call9, %if.then7.unlock_crit_edge ], [ -22, %if.end27.unlock_crit_edge ], [ -22, %if.else.unlock_crit_edge ], [ -22, %land.lhs.true.unlock_crit_edge ]
  %86 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %core, align 8
  %cmd_lock.i165 = getelementptr inbounds %struct.si476x_core, ptr %87, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %cmd_lock.i165) #7
  br label %cleanup

cleanup:                                          ; preds = %unlock, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %unlock ], [ -11, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rangehigh) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rangelow) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si476x_radio_g_register(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %reg) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #7
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !141
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %1 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i.i, align 4
  %core = getelementptr inbounds %struct.si476x_radio, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %core, align 8
  %cmd_lock.i = getelementptr inbounds %struct.si476x_core, ptr %4, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %cmd_lock.i, i32 noundef 0) #7
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 2, ptr %size, align 1
  %6 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core, align 8
  %regmap = getelementptr inbounds %struct.si476x_core, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %reg2 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %10 = ptrtoint ptr %reg2 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %reg2, align 1
  %conv = trunc i64 %11 to i32
  %call3 = call i32 @regmap_read(ptr noundef %9, i32 noundef %conv, ptr noundef nonnull %value) #7
  %12 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value, align 4
  %conv4 = zext i32 %13 to i64
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %14 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %conv4, ptr %val, align 1
  %15 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %core, align 8
  %cmd_lock.i10 = getelementptr inbounds %struct.si476x_core, ptr %16, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %cmd_lock.i10) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #7
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si476x_radio_s_register(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %core = getelementptr inbounds %struct.si476x_radio, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 8
  %cmd_lock.i = getelementptr inbounds %struct.si476x_core, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %cmd_lock.i, i32 noundef 0) #7
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 8
  %regmap = getelementptr inbounds %struct.si476x_core, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %reg2 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %8 = ptrtoint ptr %reg2 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %reg2, align 1
  %conv = trunc i64 %9 to i32
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %10 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %val, align 1
  %conv3 = trunc i64 %11 to i32
  %call4 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %conv, i32 noundef %conv3) #7
  %12 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core, align 8
  %cmd_lock.i9 = getelementptr inbounds %struct.si476x_core, ptr %13, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %cmd_lock.i9) #7
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @si476x_core_is_a_primary_tuner(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si476x_radio_change_func(ptr nocapture noundef %radio, i32 noundef %func) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.si476x_radio, ptr %radio, i32 0, i32 3
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 8
  %func1 = getelementptr inbounds %struct.si476x_core, ptr %1, i32 0, i32 15, i32 6
  %2 = ptrtoint ptr %func1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %func1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %func)
  %cmp = icmp eq i32 %3, %func
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @si476x_core_stop(ptr noundef %1, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.then4, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then4:                                         ; preds = %if.end
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 8
  %call7 = tail call i32 @si476x_core_stop(ptr noundef %5, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then4.cleanup_crit_edge, label %if.then4.if.end11_crit_edge

if.then4.if.end11_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.then4.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %6 = xor i1 %cmp3, true
  %7 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core, align 8
  %func14 = getelementptr inbounds %struct.si476x_core, ptr %8, i32 0, i32 15, i32 6
  %9 = ptrtoint ptr %func14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %func, ptr %func14, align 4
  %10 = load ptr, ptr %core, align 8
  %call17 = tail call i32 @si476x_core_start(ptr noundef %10, i1 noundef zeroext %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end11.cleanup_crit_edge, label %if.end20

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call fastcc i32 @si476x_radio_do_post_powerup_init(ptr noundef %radio, i32 noundef %func)
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end11.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %if.end20 ], [ 0, %entry.cleanup_crit_edge ], [ %call7, %if.then4.cleanup_crit_edge ], [ %call17, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si476x_core_stop(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si476x_core_start(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si476x_radio_g_volatile_ctrl(ptr nocapture noundef %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %core = getelementptr i8, ptr %1, i32 184
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 8
  %cmd_lock.i = getelementptr inbounds %struct.si476x_core, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %cmd_lock.i, i32 noundef 0) #7
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9967942, i32 %5)
  %cond = icmp eq i32 %5, 9967942
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %6 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core, align 8
  %call3 = tail call zeroext i1 @si476x_core_has_diversity(ptr noundef %7) #7
  br i1 %call3, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %ops = getelementptr i8, ptr %1, i32 188
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %phase_diversity = getelementptr inbounds %struct.si476x_radio_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %phase_diversity to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phase_diversity, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.then.sw.epilog_crit_edge, label %if.then4

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then4:                                         ; preds = %if.then
  %phase_div_status = getelementptr inbounds %struct.si476x_radio_ops, ptr %9, i32 0, i32 5
  %12 = ptrtoint ptr %phase_div_status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phase_div_status, align 4
  %14 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %core, align 8
  %call7 = tail call i32 %13(ptr noundef %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.then4.sw.epilog_crit_edge, label %if.end

if.then4.sw.epilog_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %and = lshr i32 %call7, 7
  %and.lobit = and i32 %and, 1
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and.lobit, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %if.then4.sw.epilog_crit_edge, %if.then.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %retval1.0 = phi i32 [ %call7, %if.then4.sw.epilog_crit_edge ], [ 0, %if.end ], [ -25, %if.then.sw.epilog_crit_edge ], [ -22, %sw.bb.sw.epilog_crit_edge ], [ -22, %entry.sw.epilog_crit_edge ]
  %17 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %core, align 8
  %cmd_lock.i22 = getelementptr inbounds %struct.si476x_core, ptr %18, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %cmd_lock.i22) #7
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si476x_radio_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %core = getelementptr i8, ptr %1, i32 184
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 8
  %cmd_lock.i = getelementptr inbounds %struct.si476x_core, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %cmd_lock.i, i32 noundef 0) #7
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %5, label %entry.sw.epilog101_crit_edge [
    i32 9967940, label %sw.bb
    i32 9963800, label %sw.bb4
    i32 9967937, label %sw.bb18
    i32 9967938, label %sw.bb23
    i32 9967939, label %sw.bb28
    i32 10553602, label %sw.bb33
    i32 10553601, label %sw.bb74
    i32 9967941, label %sw.bb79
  ]

entry.sw.epilog101_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog101

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core, align 8
  %regmap = getelementptr inbounds %struct.si476x_core, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 771, i32 noundef 31, i32 noundef %12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sw.epilog101

sw.bb4:                                           ; preds = %entry
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %13 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val5, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %14, label %sw.bb4.sw.epilog101_crit_edge [
    i32 0, label %sw.bb6
    i32 1, label %sw.bb10
    i32 2, label %sw.bb14
  ]

sw.bb4.sw.epilog101_crit_edge:                    ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog101

sw.bb6:                                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %core, align 8
  %regmap8 = getelementptr inbounds %struct.si476x_core, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap8, align 4
  %call.i145 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 771, i32 noundef 512, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sw.epilog101

sw.bb10:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %core, align 8
  %regmap12 = getelementptr inbounds %struct.si476x_core, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %regmap12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap12, align 4
  %call.i146 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 771, i32 noundef 256, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sw.epilog101

sw.bb14:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %core, align 8
  %regmap16 = getelementptr inbounds %struct.si476x_core, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap16, align 4
  %call.i147 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 771, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sw.epilog101

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %core, align 8
  %regmap20 = getelementptr inbounds %struct.si476x_core, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %regmap20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap20, align 4
  %val21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %32 = ptrtoint ptr %val21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val21, align 4
  %call22 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 8196, i32 noundef %33) #7
  br label %sw.epilog101

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %core, align 8
  %regmap25 = getelementptr inbounds %struct.si476x_core, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %regmap25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap25, align 4
  %val26 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %38 = ptrtoint ptr %val26 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val26, align 4
  %call27 = tail call i32 @regmap_write(ptr noundef %37, i32 noundef 8195, i32 noundef %39) #7
  br label %sw.epilog101

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %core, align 8
  %regmap30 = getelementptr inbounds %struct.si476x_core, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %regmap30 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap30, align 4
  %val31 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %44 = ptrtoint ptr %val31 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val31, align 4
  %call32 = tail call i32 @regmap_write(ptr noundef %43, i32 noundef 8192, i32 noundef %45) #7
  br label %sw.epilog101

sw.bb33:                                          ; preds = %entry
  %46 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %core, align 8
  %call35 = tail call zeroext i1 @si476x_core_is_in_am_receiver_mode(ptr noundef %47) #7
  br i1 %call35, label %if.then, label %sw.bb33.if.end_crit_edge

sw.bb33.if.end_crit_edge:                         ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %core, align 8
  %regmap37 = getelementptr inbounds %struct.si476x_core, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %regmap37 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap37, align 4
  tail call void @regcache_cache_only(ptr noundef %51, i1 noundef zeroext true) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb33.if.end_crit_edge
  %val38 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %52 = ptrtoint ptr %val38 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %val38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not = icmp eq i32 %53, 0
  %54 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %core, align 8
  %regmap65 = getelementptr inbounds %struct.si476x_core, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %regmap65 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap65, align 4
  br i1 %tobool.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %if.end
  %rds_fifo_depth = getelementptr inbounds %struct.si476x_core, ptr %55, i32 0, i32 24
  %58 = ptrtoint ptr %rds_fifo_depth to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rds_fifo_depth, align 8
  %call43 = tail call i32 @regmap_write(ptr noundef %57, i32 noundef 16385, i32 noundef %59) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp = icmp slt i32 %call43, 0
  br i1 %cmp, label %if.then39.sw.epilog101_crit_edge, label %if.end45

if.then39.sw.epilog101_crit_edge:                 ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog101

if.end45:                                         ; preds = %if.then39
  %60 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %core, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 8
  %irq = getelementptr inbounds %struct.i2c_client, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool47.not = icmp eq i32 %65, 0
  br i1 %tobool47.not, label %if.end45.if.end55_crit_edge, label %if.then48

if.end45.if.end55_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then48:                                        ; preds = %if.end45
  %regmap50 = getelementptr inbounds %struct.si476x_core, ptr %61, i32 0, i32 1
  %66 = ptrtoint ptr %regmap50 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap50, align 4
  %call51 = tail call i32 @regmap_write(ptr noundef %67, i32 noundef 16384, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.then48.sw.epilog101_crit_edge, label %if.then48.if.end55_crit_edge

if.then48.if.end55_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then48.sw.epilog101_crit_edge:                 ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog101

if.end55:                                         ; preds = %if.then48.if.end55_crit_edge, %if.end45.if.end55_crit_edge
  %68 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %core, align 8
  %call57 = tail call i32 @si476x_core_cmd_fm_rds_status(ptr noundef %69, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.end55.sw.epilog101_crit_edge, label %if.end60

if.end55.sw.epilog101_crit_edge:                  ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog101

if.end60:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %core, align 8
  %regmap62 = getelementptr inbounds %struct.si476x_core, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %regmap62 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap62, align 4
  %call.i148 = tail call i32 @regmap_update_bits_base(ptr noundef %73, i32 noundef 16386, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end67

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i149 = tail call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef 16386, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end67

if.end67:                                         ; preds = %if.else, %if.end60
  %retval1.0 = phi i32 [ %call.i148, %if.end60 ], [ %call.i149, %if.else ]
  %74 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %core, align 8
  %call69 = tail call zeroext i1 @si476x_core_is_in_am_receiver_mode(ptr noundef %75) #7
  br i1 %call69, label %if.then70, label %if.end67.sw.epilog101_crit_edge

if.end67.sw.epilog101_crit_edge:                  ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog101

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %core, align 8
  %regmap72 = getelementptr inbounds %struct.si476x_core, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %regmap72 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regmap72, align 4
  tail call void @regcache_cache_only(ptr noundef %79, i1 noundef zeroext false) #7
  br label %sw.epilog101

sw.bb74:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %core, align 8
  %regmap76 = getelementptr inbounds %struct.si476x_core, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %regmap76 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regmap76, align 4
  %val77 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %84 = ptrtoint ptr %val77 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %val77, align 4
  %call78 = tail call i32 @regmap_write(ptr noundef %83, i32 noundef 770, i32 noundef %85) #7
  br label %sw.epilog101

sw.bb79:                                          ; preds = %entry
  %val80 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %86 = ptrtoint ptr %val80 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %val80, align 4
  %arrayidx.i = getelementptr [5 x i32], ptr @si476x_phase_diversity_idx_to_mode.idx_to_value, i32 0, i32 %87
  %88 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.i, align 4
  %90 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %core, align 8
  %diversity_mode = getelementptr inbounds %struct.si476x_core, ptr %91, i32 0, i32 20
  %92 = ptrtoint ptr %diversity_mode to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %diversity_mode, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %93)
  %cmp83 = icmp eq i32 %89, %93
  br i1 %cmp83, label %sw.bb79.sw.epilog101_crit_edge, label %if.end85

sw.bb79.sw.epilog101_crit_edge:                   ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog101

if.end85:                                         ; preds = %sw.bb79
  %call87 = tail call zeroext i1 @si476x_core_is_in_am_receiver_mode(ptr noundef %91) #7
  br i1 %call87, label %if.then88, label %if.else91

if.then88:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %core, align 8
  %diversity_mode90 = getelementptr inbounds %struct.si476x_core, ptr %95, i32 0, i32 20
  %96 = ptrtoint ptr %diversity_mode90 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %89, ptr %diversity_mode90, align 8
  br label %sw.epilog101

if.else91:                                        ; preds = %if.end85
  %ops = getelementptr i8, ptr %1, i32 188
  %97 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ops, align 4
  %phase_diversity = getelementptr inbounds %struct.si476x_radio_ops, ptr %98, i32 0, i32 4
  %99 = ptrtoint ptr %phase_diversity to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %phase_diversity, align 4
  %101 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %core, align 8
  %call93 = tail call i32 %100(ptr noundef %102, i32 noundef %89) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.then95, label %if.else91.sw.epilog101_crit_edge

if.else91.sw.epilog101_crit_edge:                 ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog101

if.then95:                                        ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #9
  %103 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %core, align 8
  %diversity_mode97 = getelementptr inbounds %struct.si476x_core, ptr %104, i32 0, i32 20
  %105 = ptrtoint ptr %diversity_mode97 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %89, ptr %diversity_mode97, align 8
  br label %sw.epilog101

sw.epilog101:                                     ; preds = %if.then95, %if.else91.sw.epilog101_crit_edge, %if.then88, %sw.bb79.sw.epilog101_crit_edge, %sw.bb74, %if.then70, %if.end67.sw.epilog101_crit_edge, %if.end55.sw.epilog101_crit_edge, %if.then48.sw.epilog101_crit_edge, %if.then39.sw.epilog101_crit_edge, %sw.bb28, %sw.bb23, %sw.bb18, %sw.bb14, %sw.bb10, %sw.bb6, %sw.bb4.sw.epilog101_crit_edge, %sw.bb, %entry.sw.epilog101_crit_edge
  %retval1.1 = phi i32 [ 0, %if.then88 ], [ %call93, %if.else91.sw.epilog101_crit_edge ], [ 0, %if.then95 ], [ %call78, %sw.bb74 ], [ %call43, %if.then39.sw.epilog101_crit_edge ], [ %call51, %if.then48.sw.epilog101_crit_edge ], [ %call57, %if.end55.sw.epilog101_crit_edge ], [ %retval1.0, %if.then70 ], [ %retval1.0, %if.end67.sw.epilog101_crit_edge ], [ %call32, %sw.bb28 ], [ %call27, %sw.bb23 ], [ %call22, %sw.bb18 ], [ %call.i147, %sw.bb14 ], [ %call.i146, %sw.bb10 ], [ %call.i145, %sw.bb6 ], [ %call.i, %sw.bb ], [ -22, %sw.bb4.sw.epilog101_crit_edge ], [ 0, %sw.bb79.sw.epilog101_crit_edge ], [ -22, %entry.sw.epilog101_crit_edge ]
  %106 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %core, align 8
  %cmd_lock.i150 = getelementptr inbounds %struct.si476x_core, ptr %107, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %cmd_lock.i150) #7
  ret i32 %retval1.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @si476x_core_is_in_am_receiver_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si476x_core_cmd_fm_rds_status(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si476x_radio_read_acf_blob(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %report = alloca %struct.si476x_acf_status_report, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %report) #7
  %core = getelementptr inbounds %struct.si476x_radio, ptr %1, i32 0, i32 3
  %2 = call ptr @memset(ptr %report, i32 255, i32 12)
  %3 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %core, align 8
  %cmd_lock.i = getelementptr inbounds %struct.si476x_core, ptr %4, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %cmd_lock.i, i32 noundef 0) #7
  %ops = getelementptr inbounds %struct.si476x_radio, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %acf_status = getelementptr inbounds %struct.si476x_radio_ops, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %acf_status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %acf_status, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %core, align 8
  %call = call i32 %8(ptr noundef %10, ptr noundef nonnull %report) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call, %if.then ], [ -2, %entry.if.end_crit_edge ]
  %11 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %core, align 8
  %cmd_lock.i15 = getelementptr inbounds %struct.si476x_core, ptr %12, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %cmd_lock.i15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp = icmp slt i32 %err.0, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %report, i32 noundef 12) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ %err.0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %report) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si476x_radio_read_rds_blckcnt_blob(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %report = alloca %struct.si476x_rds_blockcount_report, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %report) #7
  %2 = ptrtoint ptr %report to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %report, align 2, !annotation !141
  %3 = getelementptr inbounds %struct.si476x_rds_blockcount_report, ptr %report, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %3, align 2, !annotation !141
  %5 = getelementptr inbounds %struct.si476x_rds_blockcount_report, ptr %report, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %5, align 2, !annotation !141
  %core = getelementptr inbounds %struct.si476x_radio, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core, align 8
  %cmd_lock.i = getelementptr inbounds %struct.si476x_core, ptr %8, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %cmd_lock.i, i32 noundef 0) #7
  %ops = getelementptr inbounds %struct.si476x_radio, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %rds_blckcnt = getelementptr inbounds %struct.si476x_radio_ops, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %rds_blckcnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rds_blckcnt, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %core, align 8
  %call = call i32 %12(ptr noundef %14, i1 noundef zeroext true, ptr noundef nonnull %report) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call, %if.then ], [ -2, %entry.if.end_crit_edge ]
  %15 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %core, align 8
  %cmd_lock.i15 = getelementptr inbounds %struct.si476x_core, ptr %16, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %cmd_lock.i15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp = icmp slt i32 %err.0, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %report, i32 noundef 6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ %err.0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %report) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si476x_radio_read_agc_blob(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %report = alloca %struct.si476x_agc_status_report, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %report) #7
  %core = getelementptr inbounds %struct.si476x_radio, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %report to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %report, align 8
  %3 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %core, align 8
  %cmd_lock.i = getelementptr inbounds %struct.si476x_core, ptr %4, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %cmd_lock.i, i32 noundef 0) #7
  %ops = getelementptr inbounds %struct.si476x_radio, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %rds_blckcnt = getelementptr inbounds %struct.si476x_radio_ops, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %rds_blckcnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rds_blckcnt, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %agc_status = getelementptr inbounds %struct.si476x_radio_ops, ptr %6, i32 0, i32 7
  %9 = ptrtoint ptr %agc_status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %agc_status, align 4
  %11 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %core, align 8
  %call = call i32 %10(ptr noundef %12, ptr noundef nonnull %report) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call, %if.then ], [ -2, %entry.if.end_crit_edge ]
  %13 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %core, align 8
  %cmd_lock.i14 = getelementptr inbounds %struct.si476x_core, ptr %14, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %cmd_lock.i14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp = icmp slt i32 %err.0, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %report, i32 noundef 8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ %err.0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %report) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si476x_radio_read_rsq_blob(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %report = alloca %struct.si476x_rsq_status_report, align 1
  %args = alloca %struct.si476x_rsq_status_args, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %report) #7
  %2 = call ptr @memset(ptr %report, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %args) #7
  %3 = call ptr @memset(ptr %args, i32 0, i32 5)
  %core = getelementptr inbounds %struct.si476x_radio, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 8
  %cmd_lock.i = getelementptr inbounds %struct.si476x_core, ptr %5, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %cmd_lock.i, i32 noundef 0) #7
  %ops = getelementptr inbounds %struct.si476x_radio, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %rds_blckcnt = getelementptr inbounds %struct.si476x_radio_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %rds_blckcnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rds_blckcnt, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rsq_status = getelementptr inbounds %struct.si476x_radio_ops, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %rsq_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rsq_status, align 4
  %12 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core, align 8
  %call = call i32 %11(ptr noundef %13, ptr noundef nonnull %args, ptr noundef nonnull %report) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call, %if.then ], [ -2, %entry.if.end_crit_edge ]
  %14 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %core, align 8
  %cmd_lock.i15 = getelementptr inbounds %struct.si476x_core, ptr %15, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %cmd_lock.i15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp = icmp slt i32 %err.0, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %report, i32 noundef 32) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ %err.0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %args) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %report) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si476x_radio_read_rsq_primary_blob(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %report = alloca %struct.si476x_rsq_status_report, align 1
  %args = alloca %struct.si476x_rsq_status_args, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %report) #7
  %2 = call ptr @memset(ptr %report, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %args) #7
  %3 = call ptr @memcpy(ptr %args, ptr @__const.si476x_radio_read_rsq_primary_blob.args, i32 5)
  %core = getelementptr inbounds %struct.si476x_radio, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 8
  %cmd_lock.i = getelementptr inbounds %struct.si476x_core, ptr %5, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %cmd_lock.i, i32 noundef 0) #7
  %ops = getelementptr inbounds %struct.si476x_radio, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %rds_blckcnt = getelementptr inbounds %struct.si476x_radio_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %rds_blckcnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rds_blckcnt, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rsq_status = getelementptr inbounds %struct.si476x_radio_ops, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %rsq_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rsq_status, align 4
  %12 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core, align 8
  %call = call i32 %11(ptr noundef %13, ptr noundef nonnull %args, ptr noundef nonnull %report) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call, %if.then ], [ -2, %entry.if.end_crit_edge ]
  %14 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %core, align 8
  %cmd_lock.i15 = getelementptr inbounds %struct.si476x_core, ptr %15, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %cmd_lock.i15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp = icmp slt i32 %err.0, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %report, i32 noundef 32) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ %err.0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %args) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %report) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !51, !52, !53, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !84, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130}
!llvm.module.flags = !{!132, !133, !134, !135, !136, !137, !138, !139}
!llvm.ident = !{!140}

!0 = !{ptr @__UNIQUE_ID_alias298, !1, !"__UNIQUE_ID_alias298", i1 false, i1 false}
!1 = !{!"../drivers/media/radio/radio-si476x.c", i32 1516, i32 1}
!2 = !{ptr @__initcall__kmod_radio_si476x__299_1525_si476x_radio_driver_init6, !3, !"__initcall__kmod_radio_si476x__299_1525_si476x_radio_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/media/radio/radio-si476x.c", i32 1525, i32 1}
!4 = !{ptr @__exitcall_si476x_radio_driver_exit, !3, !"__exitcall_si476x_radio_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author300, !6, !"__UNIQUE_ID_author300", i1 false, i1 false}
!6 = !{!"../drivers/media/radio/radio-si476x.c", i32 1527, i32 1}
!7 = !{ptr @__UNIQUE_ID_description301, !8, !"__UNIQUE_ID_description301", i1 false, i1 false}
!8 = !{!"../drivers/media/radio/radio-si476x.c", i32 1528, i32 1}
!9 = !{ptr @__UNIQUE_ID_file302, !10, !"__UNIQUE_ID_file302", i1 false, i1 false}
!10 = !{!"../drivers/media/radio/radio-si476x.c", i32 1529, i32 1}
!11 = !{ptr @__UNIQUE_ID_license303, !10, !"__UNIQUE_ID_license303", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/radio/radio-si476x.c", i32 1520, i32 11}
!14 = !{ptr @si476x_radio_driver, !15, !"si476x_radio_driver", i1 false, i1 false}
!15 = !{!"../drivers/media/radio/radio-si476x.c", i32 1518, i32 31}
!16 = !{ptr @si476x_radio_probe.instance, !17, !"instance", i1 false, i1 false}
!17 = !{!"../drivers/media/radio/radio-si476x.c", i32 1387, i32 18}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/radio/radio-si476x.c", i32 1399, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @si476x_radio_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @si476x_radio_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @si476x_radio_probe._key, !27, !"_key", i1 false, i1 false}
!27 = !{!"../drivers/media/radio/radio-si476x.c", i32 1422, i32 2}
!28 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/radio/radio-si476x.c", i32 1433, i32 4}
!31 = !{ptr @si476x_radio_probe._entry.7, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @si476x_radio_probe._entry_ptr.9, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/radio/radio-si476x.c", i32 1462, i32 3}
!35 = !{ptr @si476x_radio_probe._entry.10, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @si476x_radio_probe._entry_ptr.12, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/radio/radio-si476x.c", i32 1472, i32 3}
!39 = !{ptr @si476x_radio_probe._entry.13, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @si476x_radio_probe._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/radio/radio-si476x.c", i32 1492, i32 3}
!43 = !{ptr @si476x_radio_probe._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @si476x_radio_probe._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @si476x_viddev_template, !46, !"si476x_viddev_template", i1 false, i1 false}
!46 = !{!"../drivers/media/radio/radio-si476x.c", i32 1178, i32 34}
!47 = !{ptr @si476x_fops, !48, !"si476x_fops", i1 false, i1 false}
!48 = !{!"../drivers/media/radio/radio-si476x.c", i32 1148, i32 42}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/radio/radio-si476x.c", i32 1117, i32 3}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @si476x_radio_fops_read._entry, !50, !"_entry", i1 false, i1 false}
!54 = !{ptr @si476x_radio_fops_read._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @si476x_radio_init_vtable.fm_ops, !56, !"fm_ops", i1 false, i1 false}
!56 = !{!"../drivers/media/radio/radio-si476x.c", i32 471, i32 39}
!57 = !{ptr @si476x_radio_init_vtable.am_ops, !58, !"am_ops", i1 false, i1 false}
!58 = !{!"../drivers/media/radio/radio-si476x.c", i32 482, i32 39}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/radio/radio-si476x.c", i32 502, i32 3}
!61 = !{ptr @si4761_ioctl_ops, !62, !"si4761_ioctl_ops", i1 false, i1 false}
!62 = !{!"../drivers/media/radio/radio-si476x.c", i32 1158, i32 36}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/radio/radio-si476x.c", i32 331, i32 30}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/radio/radio-si476x.c", i32 333, i32 4}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/radio/radio-si476x.c", i32 404, i32 24}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/radio/radio-si476x.c", i32 409, i32 25}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/radio/radio-si476x.c", i32 412, i32 25}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/radio/radio-si476x.c", i32 422, i32 24}
!75 = !{ptr @si476x_bands, !76, !"si476x_bands", i1 false, i1 false}
!76 = !{!"../drivers/media/radio/radio-si476x.c", i32 48, i32 41}
!77 = !{ptr @si476x_ctrl_ops, !78, !"si476x_ctrl_ops", i1 false, i1 false}
!78 = !{!"../drivers/media/radio/radio-si476x.c", i32 137, i32 35}
!79 = !{ptr @si476x_phase_diversity_idx_to_mode.idx_to_value, !80, !"idx_to_value", i1 false, i1 false}
!80 = !{!"../drivers/media/radio/radio-si476x.c", i32 126, i32 19}
!81 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/radio/radio-si476x.c", i32 1374, i32 3}
!83 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @si476x_radio_add_new_custom._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @si476x_radio_add_new_custom._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/radio/radio-si476x.c", i32 167, i32 11}
!88 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/radio/radio-si476x.c", i32 177, i32 11}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/radio/radio-si476x.c", i32 186, i32 11}
!92 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/radio/radio-si476x.c", i32 202, i32 11}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/radio/radio-si476x.c", i32 226, i32 11}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/radio/radio-si476x.c", i32 244, i32 11}
!98 = !{ptr @si476x_ctrls, !99, !"si476x_ctrls", i1 false, i1 false}
!99 = !{!"../drivers/media/radio/radio-si476x.c", i32 151, i32 32}
!100 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/radio/radio-si476x.c", i32 97, i32 33}
!102 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/radio/radio-si476x.c", i32 98, i32 41}
!104 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/radio/radio-si476x.c", i32 99, i32 39}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/radio/radio-si476x.c", i32 100, i32 41}
!108 = !{ptr @.str.41, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/radio/radio-si476x.c", i32 101, i32 43}
!110 = !{ptr @phase_diversity_modes, !111, !"phase_diversity_modes", i1 false, i1 false}
!111 = !{!"../drivers/media/radio/radio-si476x.c", i32 96, i32 27}
!112 = !{ptr @.str.42, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/radio/radio-si476x.c", i32 1346, i32 22}
!114 = !{ptr @.str.43, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/radio/radio-si476x.c", i32 1349, i32 22}
!116 = !{ptr @.str.44, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/radio/radio-si476x.c", i32 1352, i32 22}
!118 = !{ptr @.str.45, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/radio/radio-si476x.c", i32 1355, i32 22}
!120 = !{ptr @.str.46, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/radio/radio-si476x.c", i32 1358, i32 22}
!122 = !{ptr @radio_acf_fops, !123, !"radio_acf_fops", i1 false, i1 false}
!123 = !{!"../drivers/media/radio/radio-si476x.c", i32 1208, i32 37}
!124 = !{ptr @radio_rds_blckcnt_fops, !125, !"radio_rds_blckcnt_fops", i1 false, i1 false}
!125 = !{!"../drivers/media/radio/radio-si476x.c", i32 1237, i32 37}
!126 = !{ptr @radio_agc_fops, !127, !"radio_agc_fops", i1 false, i1 false}
!127 = !{!"../drivers/media/radio/radio-si476x.c", i32 1265, i32 37}
!128 = !{ptr @radio_rsq_fops, !129, !"radio_rsq_fops", i1 false, i1 false}
!129 = !{!"../drivers/media/radio/radio-si476x.c", i32 1300, i32 37}
!130 = !{ptr @radio_rsq_primary_fops, !131, !"radio_rsq_primary_fops", i1 false, i1 false}
!131 = !{!"../drivers/media/radio/radio-si476x.c", i32 1335, i32 37}
!132 = !{i32 1, !"wchar_size", i32 2}
!133 = !{i32 1, !"min_enum_size", i32 4}
!134 = !{i32 8, !"branch-target-enforcement", i32 0}
!135 = !{i32 8, !"sign-return-address", i32 0}
!136 = !{i32 8, !"sign-return-address-all", i32 0}
!137 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!138 = !{i32 7, !"uwtable", i32 1}
!139 = !{i32 7, !"frame-pointer", i32 2}
!140 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!141 = !{!"auto-init"}
