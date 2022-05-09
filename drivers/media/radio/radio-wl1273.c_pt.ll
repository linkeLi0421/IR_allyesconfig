; ModuleID = '/llk/IR_all_yes/drivers/media/radio/radio-wl1273.c_pt.bc'
source_filename = "../drivers/media/radio/radio-wl1273.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.92 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.92 = type { %struct.anon.93 }
%struct.anon.93 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.89], %struct.media_entity_enum, i32 }
%struct.anon.89 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.wl1273_device = type { ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, %struct.wait_queue_head, %struct.mutex, %struct.completion, ptr, i32, i32, i32, i16, i16, %struct.v4l2_ctrl_handler, %struct.v4l2_device, %struct.video_device, ptr, ptr, ptr, ptr, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.wl1273_core = type { [2 x %struct.mfd_cell], ptr, i32, i32, i32, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.86, %union.anon.87, i32, ptr, i32, %struct.anon.88, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.86 = type { i64 }
%union.anon.87 = type { ptr }
%struct.anon.88 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.wl1273_fm_platform_data = type { ptr, ptr, ptr, ptr, i8, i32 }
%struct.v4l2_rds_data = type { i8, i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_audio = type { i32, [32 x i8], i32, i32, [2 x i32] }
%struct.v4l2_modulator = type { i32, [32 x i8], i32, i32, i32, i32, i32, [3 x i32] }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.v4l2_hw_freq_seek = type { i32, i32, i32, i32, i32, i32, i32, [5 x i32] }
%struct.firmware = type { i32, ptr, ptr }

@__param_str_radio_nr = internal constant [22 x i8] c"radio_wl1273.radio_nr\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@radio_nr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_radio_nr = internal constant %struct.kernel_param { ptr @__param_str_radio_nr, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @radio_nr } }, section "__param", align 4
@__UNIQUE_ID_radio_nrtype292 = internal constant [35 x i8] c"radio_wl1273.parmtype=radio_nr:int\00", section ".modinfo", align 1
@__UNIQUE_ID_radio_nr293 = internal constant [71 x i8] c"radio_wl1273.parm=radio_nr:The number of the radio device. Default = 0\00", section ".modinfo", align 1
@__param_str_rds_buf = internal constant [21 x i8] c"radio_wl1273.rds_buf\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@rds_buf = internal global { i32, [28 x i8] } { i32 100, [28 x i8] zeroinitializer }, align 32
@__param_rds_buf = internal constant %struct.kernel_param { ptr @__param_str_rds_buf, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @rds_buf } }, section "__param", align 4
@__UNIQUE_ID_rds_buftype294 = internal constant [35 x i8] c"radio_wl1273.parmtype=rds_buf:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_rds_buf295 = internal constant [70 x i8] c"radio_wl1273.parm=rds_buf:Number of RDS buffer entries. Default = 100\00", section ".modinfo", align 1
@__initcall__kmod_radio_wl1273__377_2156_wl1273_fm_radio_driver_init6 = internal global ptr @wl1273_fm_radio_driver_init, section ".initcall6.init", align 4
@wl1273_fm_radio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wl1273_fm_radio_probe, ptr @wl1273_fm_radio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_wl1273_fm_radio_driver_exit = internal global ptr @wl1273_fm_radio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author378 = internal constant [64 x i8] c"radio_wl1273.author=Matti Aaltonen <matti.j.aaltonen@nokia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description379 = internal constant [41 x i8] c"radio_wl1273.description=Wl1273 FM Radio\00", section ".modinfo", align 1
@__UNIQUE_ID_file380 = internal constant [51 x i8] c"radio_wl1273.file=drivers/media/radio/radio-wl1273\00", section ".modinfo", align 1
@__UNIQUE_ID_license381 = internal constant [25 x i8] c"radio_wl1273.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias382 = internal constant [44 x i8] c"radio_wl1273.alias=platform:wl1273_fm_radio\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wl1273_fm_radio\00", [16 x i8] zeroinitializer }, align 32
@wl1273_fm_radio_probe.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 1, i8 -11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"radio_wl1273\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wl1273_fm_radio_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/radio/radio-wl1273.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@wl1273_fm_radio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 2007, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"No platform data.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wl1273_fm_radio_probe._entry_ptr = internal global ptr @wl1273_fm_radio_probe._entry, section ".printk_index", align 4
@wl1273_fm_radio_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 2022, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Cannot allocate memory for RDS buffer.\0A\00", [54 x i8] zeroinitializer }, align 32
@wl1273_fm_radio_probe._entry_ptr.10 = internal global ptr @wl1273_fm_radio_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I2C\00", [28 x i8] zeroinitializer }, align 32
@wl1273_fm_radio_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 2049, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"wl1273-fm: Cannot get platform data\0A\00", [59 x i8] zeroinitializer }, align 32
@wl1273_fm_radio_probe._entry_ptr.14 = internal global ptr @wl1273_fm_radio_probe._entry.12, section ".printk_index", align 4
@wl1273_fm_radio_probe.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.15, i8 2, i8 1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"irq: %d\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wl1273-fm\00", [22 x i8] zeroinitializer }, align 32
@wl1273_fm_radio_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 2061, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"wl1273-fm: Unable to register IRQ handler: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@wl1273_fm_radio_probe._entry_ptr.19 = internal global ptr @wl1273_fm_radio_probe._entry.17, section ".printk_index", align 4
@wl1273_fm_radio_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 2065, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"wl1273-fm: Core WL1273 IRQ not configured\00", [54 x i8] zeroinitializer }, align 32
@wl1273_fm_radio_probe._entry_ptr.22 = internal global ptr @wl1273_fm_radio_probe._entry.20, section ".printk_index", align 4
@wl1273_fm_radio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&radio->read_queue\00", [45 x i8] zeroinitializer }, align 32
@wl1273_fm_radio_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 2085, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot register v4l2_device.\0A\00", [34 x i8] zeroinitializer }, align 32
@wl1273_fm_radio_probe._entry_ptr.26 = internal global ptr @wl1273_fm_radio_probe._entry.24, section ".printk_index", align 4
@wl1273_viddev_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @wl1273_fops, i32 986368, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"wl1273-fm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @wl1273_vdev_release, ptr @wl1273_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@wl1273_fm_radio_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"radio_wl1273:2094:(&radio->ctrl_handler)->_lock\00", [48 x i8] zeroinitializer }, align 32
@wl1273_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @wl1273_fm_g_volatile_ctrl, ptr null, ptr @wl1273_fm_vidioc_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@wl1273_fm_radio_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 2120, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Ctrl handler error: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@wl1273_fm_radio_probe._entry_ptr.30 = internal global ptr @wl1273_fm_radio_probe._entry.28, section ".printk_index", align 4
@wl1273_fm_radio_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.2, ptr @.str.3, i32 2131, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"wl1273-fm: Could not register video device\0A\00", [52 x i8] zeroinitializer }, align 32
@wl1273_fm_radio_probe._entry_ptr.33 = internal global ptr @wl1273_fm_radio_probe._entry.31, section ".printk_index", align 4
@wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.3, ptr @.str.35, i8 0, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wl1273_fm_irq_thread_handler\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IRQ: BL\0A\00", [23 x i8] zeroinitializer }, align 32
@wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.3, ptr @.str.36, i8 0, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IRQ: BBLK\0A\00", [21 x i8] zeroinitializer }, align 32
@wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.3, ptr @.str.37, i8 0, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IRQ: LSYNC\0A\00", [20 x i8] zeroinitializer }, align 32
@wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.3, ptr @.str.38, i8 0, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IRQ: LEV: 0x%x04\0A\00", [46 x i8] zeroinitializer }, align 32
@wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.3, ptr @.str.39, i8 0, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IRQ: IFFR\0A\00", [21 x i8] zeroinitializer }, align 32
@wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.3, ptr @.str.40, i8 0, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IRQ: PI\0A\00", [23 x i8] zeroinitializer }, align 32
@wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.3, ptr @.str.41, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IRQ: PD\0A\00", [23 x i8] zeroinitializer }, align 32
@wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.3, ptr @.str.42, i8 0, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IRQ: STIC\0A\00", [21 x i8] zeroinitializer }, align 32
@wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.3, ptr @.str.43, i8 0, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IRQ: MAL\0A\00", [22 x i8] zeroinitializer }, align 32
@wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.3, ptr @.str.44, i8 0, i8 68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NOT BUSY\0A\00", [22 x i8] zeroinitializer }, align 32
@wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.3, ptr @.str.45, i8 0, i8 68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IRQ: POW_ENB\0A\00", [18 x i8] zeroinitializer }, align 32
@wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.3, ptr @.str.46, i8 0, i8 69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IRQ: SCAN_OVER\0A\00", [16 x i8] zeroinitializer }, align 32
@wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.3, ptr @.str.47, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IRQ: ERROR\0A\00", [20 x i8] zeroinitializer }, align 32
@wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.3, ptr @.str.48, i8 0, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IRQ: FR:\0A\00", [22 x i8] zeroinitializer }, align 32
@wl1273_fm_irq_thread_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.34, ptr @.str.3, i32 295, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: TUNER_MODE_SET fails: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@wl1273_fm_irq_thread_handler._entry_ptr = internal global ptr @wl1273_fm_irq_thread_handler._entry, section ".printk_index", align 4
@wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.3, ptr @.str.50, i8 0, i8 78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%dkHz\0A\00", [25 x i8] zeroinitializer }, align 32
@wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.3, ptr @.str.50, i8 0, i8 80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.3, ptr @.str.51, i8 0, i8 81, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: NOT BUSY\0A\00", [18 x i8] zeroinitializer }, align 32
@wl1273_fm_rds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 172, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"wl1273-fm: %s: read_rds error r == %i)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wl1273_fm_rds\00", [18 x i8] zeroinitializer }, align 32
@wl1273_fm_rds._entry_ptr = internal global ptr @wl1273_fm_rds._entry, section ".printk_index", align 4
@wl1273_fm_rds.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.3, ptr @.str.54, i8 0, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RDS OVERFLOW\00", [19 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@wl1273_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @wl1273_fm_fops_read, ptr @wl1273_fm_fops_write, ptr @wl1273_fm_fops_poll, ptr @video_ioctl2, ptr null, ptr null, ptr @wl1273_fm_fops_open, ptr @wl1273_fm_fops_release }, [60 x i8] zeroinitializer }, align 32
@wl1273_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @wl1273_fm_vidioc_querycap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wl1273_fm_vidioc_g_input, ptr @wl1273_fm_vidioc_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wl1273_fm_vidioc_g_audio, ptr @wl1273_fm_vidioc_s_audio, ptr null, ptr null, ptr null, ptr @wl1273_fm_vidioc_g_modulator, ptr @wl1273_fm_vidioc_s_modulator, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wl1273_fm_vidioc_g_tuner, ptr @wl1273_fm_vidioc_s_tuner, ptr @wl1273_fm_vidioc_g_frequency, ptr @wl1273_fm_vidioc_s_frequency, ptr null, ptr null, ptr @wl1273_fm_vidioc_log_status, ptr @wl1273_fm_vidioc_s_hw_freq_seek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@wl1273_fm_fops_read.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.56, ptr @.str.3, ptr @.str.4, i8 1, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wl1273_fm_fops_read\00", [44 x i8] zeroinitializer }, align 32
@wl1273_fm_fops_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.56, ptr @.str.3, i32 1189, ptr @.str.58, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: RDS not on.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@wl1273_fm_fops_read._entry_ptr = internal global ptr @wl1273_fm_fops_read._entry, section ".printk_index", align 4
@wl1273_fm_fops_read._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.56, ptr @.str.3, i32 1208, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Get RDS_SYNC fails.\0A\00", [39 x i8] zeroinitializer }, align 32
@wl1273_fm_fops_read._entry_ptr.61 = internal global ptr @wl1273_fm_fops_read._entry.59, section ".printk_index", align 4
@wl1273_fm_fops_read._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.56, ptr @.str.3, i32 1211, ptr @.str.64, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"RDS_SYNC: Not synchronized\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@wl1273_fm_fops_read._entry_ptr.65 = internal global ptr @wl1273_fm_fops_read._entry.62, section ".printk_index", align 4
@wl1273_fm_fops_read.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.56, ptr @.str.3, ptr @.str.66, i8 1, i8 49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Wait for RDS data.\0A\00", [40 x i8] zeroinitializer }, align 32
@wl1273_fm_fops_read.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.56, ptr @.str.3, ptr @.str.67, i8 1, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: exit\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@wl1273_fm_fops_write.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.3, ptr @.str.4, i8 1, i8 3, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wl1273_fm_fops_write\00", [43 x i8] zeroinitializer }, align 32
@wl1273_fm_fops_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.71, ptr @.str.3, i32 1042, ptr @.str.58, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@wl1273_fm_fops_write._entry_ptr = internal global ptr @wl1273_fm_fops_write._entry, section ".printk_index", align 4
@wl1273_fm_fops_write.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.3, ptr @.str.72, i8 1, i8 11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Count: %d\0A\00", [21 x i8] zeroinitializer }, align 32
@wl1273_fm_fops_write.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.3, ptr @.str.73, i8 1, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"From user: \22%s\22\0A\00", [47 x i8] zeroinitializer }, align 32
@wl1273_fm_fops_open.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.74, ptr @.str.3, ptr @.str.4, i8 1, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wl1273_fm_fops_open\00", [44 x i8] zeroinitializer }, align 32
@wl1273_fm_fops_open.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.74, ptr @.str.3, ptr @.str.75, i8 1, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: Mode: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@wl1273_fm_fops_release.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.76, ptr @.str.3, ptr @.str.4, i8 1, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wl1273_fm_fops_release\00", [41 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_querycap.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.77, ptr @.str.3, ptr @.str.4, i8 1, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wl1273_fm_vidioc_querycap\00", [38 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TI Wl1273 FM Radio\00", [45 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_g_input.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.79, ptr @.str.3, ptr @.str.4, i8 1, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wl1273_fm_vidioc_g_input\00", [39 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_s_input.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.80, ptr @.str.3, ptr @.str.4, i8 1, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wl1273_fm_vidioc_s_input\00", [39 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_g_audio.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.3, ptr @.str.4, i8 1, i8 111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wl1273_fm_vidioc_g_audio\00", [39 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Radio\00", [26 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_s_audio.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.83, ptr @.str.3, ptr @.str.4, i8 1, i8 115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wl1273_fm_vidioc_s_audio\00", [39 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_g_modulator.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.84, ptr @.str.3, ptr @.str.4, i8 1, i8 -71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wl1273_fm_vidioc_g_modulator\00", [35 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_s_modulator.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.85, ptr @.str.3, ptr @.str.4, i8 1, i8 -81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wl1273_fm_vidioc_s_modulator\00", [35 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_s_modulator._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.85, ptr @.str.3, i32 1750, ptr @.str.58, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wl1273-fmMONO_SET fails: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_s_modulator._entry_ptr = internal global ptr @wl1273_fm_vidioc_s_modulator._entry, section ".printk_index", align 4
@wl1273_fm_set_mode.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.87, ptr @.str.3, ptr @.str.4, i8 0, i8 -83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wl1273_fm_set_mode\00", [45 x i8] zeroinitializer }, align 32
@wl1273_fm_set_mode.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.87, ptr @.str.3, ptr @.str.88, i8 0, i8 -83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Forbidden modes: 0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@wl1273_fm_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.3, i32 708, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: Cannot start.\0A\00", [45 x i8] zeroinitializer }, align 32
@wl1273_fm_set_mode._entry_ptr = internal global ptr @wl1273_fm_set_mode._entry, section ".printk_index", align 4
@wl1273_fm_set_mode._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.87, ptr @.str.3, i32 716, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"INT_MASK_SET fails.\0A\00", [43 x i8] zeroinitializer }, align 32
@wl1273_fm_set_mode._entry_ptr.92 = internal global ptr @wl1273_fm_set_mode._entry.90, section ".printk_index", align 4
@wl1273_fm_set_mode._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.87, ptr @.str.3, i32 724, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"set freq fails: %d.\0A\00", [43 x i8] zeroinitializer }, align 32
@wl1273_fm_set_mode._entry_ptr.95 = internal global ptr @wl1273_fm_set_mode._entry.93, section ".printk_index", align 4
@wl1273_fm_set_mode._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.87, ptr @.str.3, i32 730, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"set volume fails: %d.\0A\00", [41 x i8] zeroinitializer }, align 32
@wl1273_fm_set_mode._entry_ptr.98 = internal global ptr @wl1273_fm_set_mode._entry.96, section ".printk_index", align 4
@wl1273_fm_set_mode.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.87, ptr @.str.3, ptr @.str.99, i8 0, i8 -73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: Set vol: %d.\0A\00", [46 x i8] zeroinitializer }, align 32
@wl1273_fm_set_mode._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.87, ptr @.str.3, i32 739, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@wl1273_fm_set_mode._entry_ptr.101 = internal global ptr @wl1273_fm_set_mode._entry.100, section ".printk_index", align 4
@wl1273_fm_set_mode.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.87, ptr @.str.3, ptr @.str.102, i8 0, i8 -70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: Set audio mode.\0A\00", [43 x i8] zeroinitializer }, align 32
@wl1273_fm_set_mode._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.87, ptr @.str.3, i32 748, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Cannot set audio mode.\0A\00", [40 x i8] zeroinitializer }, align 32
@wl1273_fm_set_mode._entry_ptr.105 = internal global ptr @wl1273_fm_set_mode._entry.103, section ".printk_index", align 4
@wl1273_fm_set_mode._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.87, ptr @.str.3, i32 754, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: Off fails: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@wl1273_fm_set_mode._entry_ptr.108 = internal global ptr @wl1273_fm_set_mode._entry.106, section ".printk_index", align 4
@wl1273_fm_set_mode._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.87, ptr @.str.3, i32 763, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Suspend fails: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@wl1273_fm_set_mode._entry_ptr.111 = internal global ptr @wl1273_fm_set_mode._entry.109, section ".printk_index", align 4
@wl1273_fm_set_mode._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.87, ptr @.str.3, i32 770, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: Unknown mode: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@wl1273_fm_set_mode._entry_ptr.114 = internal global ptr @wl1273_fm_set_mode._entry.112, section ".printk_index", align 4
@wl1273_fm_start.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.115, ptr @.str.3, ptr @.str.116, i8 0, i8 -115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wl1273_fm_start\00", [16 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Out of reset\0A\00", [18 x i8] zeroinitializer }, align 32
@wl1273_fm_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.115, ptr @.str.3, i32 583, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: POWER_SET fails\0A\00", [43 x i8] zeroinitializer }, align 32
@wl1273_fm_start._entry_ptr = internal global ptr @wl1273_fm_start._entry, section ".printk_index", align 4
@wl1273_fm_start._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.115, ptr @.str.3, i32 600, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: PUPD_SET fails\0A\00", [44 x i8] zeroinitializer }, align 32
@wl1273_fm_start._entry_ptr.120 = internal global ptr @wl1273_fm_start._entry.118, section ".printk_index", align 4
@wl1273_fm_start._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.115, ptr @.str.3, i32 609, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: RDS_DATA_ENB ON fails\0A\00", [37 x i8] zeroinitializer }, align 32
@wl1273_fm_start._entry_ptr.123 = internal global ptr @wl1273_fm_start._entry.121, section ".printk_index", align 4
@wl1273_fm_start._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.115, ptr @.str.3, i32 616, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: RDS_DATA_ENB OFF fails\0A\00", [36 x i8] zeroinitializer }, align 32
@wl1273_fm_start._entry_ptr.126 = internal global ptr @wl1273_fm_start._entry.124, section ".printk_index", align 4
@wl1273_fm_start._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.115, ptr @.str.3, i32 621, ptr @.str.58, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: Illegal mode.\0A\00", [45 x i8] zeroinitializer }, align 32
@wl1273_fm_start._entry_ptr.129 = internal global ptr @wl1273_fm_start._entry.127, section ".printk_index", align 4
@wl1273_fm_start._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.115, ptr @.str.3, i32 627, ptr @.str.58, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Firmware upload failed.\0A\00", [39 x i8] zeroinitializer }, align 32
@wl1273_fm_start._entry_ptr.132 = internal global ptr @wl1273_fm_start._entry.130, section ".printk_index", align 4
@wl1273_fm_start._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.115, ptr @.str.3, i32 641, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@wl1273_fm_start._entry_ptr.134 = internal global ptr @wl1273_fm_start._entry.133, section ".printk_index", align 4
@wl1273_fm_start._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.115, ptr @.str.3, i32 648, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@wl1273_fm_start._entry_ptr.136 = internal global ptr @wl1273_fm_start._entry.135, section ".printk_index", align 4
@wl1273_fm_start.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.115, ptr @.str.3, ptr @.str.137, i8 0, i8 -92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.137 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: return: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"radio-wl1273-fw.bin\00", [44 x i8] zeroinitializer }, align 32
@wl1273_fm_upload_firmware_patch.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.139, ptr @.str.3, ptr @.str.140, i8 0, i8 124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.139 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"wl1273_fm_upload_firmware_patch\00", [32 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s:\0A\00", [27 x i8] zeroinitializer }, align 32
@wl1273_fm_upload_firmware_patch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.139, ptr @.str.3, i32 506, ptr @.str.64, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s - %s not found\0A\00", [45 x i8] zeroinitializer }, align 32
@wl1273_fm_upload_firmware_patch._entry_ptr = internal global ptr @wl1273_fm_upload_firmware_patch._entry, section ".printk_index", align 4
@wl1273_fm_upload_firmware_patch.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.139, ptr @.str.3, ptr @.str.142, i8 0, i8 -128, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.142 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: packets: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@wl1273_fm_upload_firmware_patch._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.139, ptr @.str.3, i32 517, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"FW upload error: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@wl1273_fm_upload_firmware_patch._entry_ptr.145 = internal global ptr @wl1273_fm_upload_firmware_patch._entry.143, section ".printk_index", align 4
@wl1273_fm_upload_firmware_patch.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.139, ptr @.str.3, ptr @.str.146, i8 0, i8 -125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.146 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s - download OK, r: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@wl1273_fm_write_fw.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.147, ptr @.str.3, ptr @.str.148, i8 0, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.147 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wl1273_fm_write_fw\00", [45 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s:len[%d]: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@wl1273_fm_write_fw.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.147, ptr @.str.3, ptr @.str.149, i8 0, i8 29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.149 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: i: %d\0A\00", [21 x i8] zeroinitializer }, align 32
@wl1273_fm_write_fw.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.147, ptr @.str.3, ptr @.str.150, i8 0, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.150 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: len + 1: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@wl1273_fm_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.3, i32 539, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: POWER_SET fails: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wl1273_fm_stop\00", [17 x i8] zeroinitializer }, align 32
@wl1273_fm_stop._entry_ptr = internal global ptr @wl1273_fm_stop._entry, section ".printk_index", align 4
@wl1273_fm_stop._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.152, ptr @.str.3, i32 545, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: PUPD_SET fails: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@wl1273_fm_stop._entry_ptr.155 = internal global ptr @wl1273_fm_stop._entry.153, section ".printk_index", align 4
@wl1273_fm_stop.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.152, ptr @.str.3, ptr @.str.156, i8 0, i8 -119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.156 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Back to reset\0A\00", [17 x i8] zeroinitializer }, align 32
@wl1273_fm_set_rx_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.158, ptr @.str.3, i32 403, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Frequency out of range: %d < %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wl1273_fm_set_rx_freq\00", [42 x i8] zeroinitializer }, align 32
@wl1273_fm_set_rx_freq._entry_ptr = internal global ptr @wl1273_fm_set_rx_freq._entry, section ".printk_index", align 4
@wl1273_fm_set_rx_freq._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.158, ptr @.str.3, i32 411, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Frequency out of range: %d > %d\0A\00", [63 x i8] zeroinitializer }, align 32
@wl1273_fm_set_rx_freq._entry_ptr.161 = internal global ptr @wl1273_fm_set_rx_freq._entry.159, section ".printk_index", align 4
@wl1273_fm_set_rx_freq.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.158, ptr @.str.3, ptr @.str.162, i8 0, i8 104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.162 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: %dkHz\0A\00", [21 x i8] zeroinitializer }, align 32
@wl1273_fm_set_rx_freq._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.158, ptr @.str.3, i32 427, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FREQ_SET fails\0A\00", [16 x i8] zeroinitializer }, align 32
@wl1273_fm_set_rx_freq._entry_ptr.165 = internal global ptr @wl1273_fm_set_rx_freq._entry.163, section ".printk_index", align 4
@wl1273_fm_set_rx_freq._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.158, ptr @.str.3, i32 433, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TUNER_MODE_SET fails\0A\00", [42 x i8] zeroinitializer }, align 32
@wl1273_fm_set_rx_freq._entry_ptr.168 = internal global ptr @wl1273_fm_set_rx_freq._entry.166, section ".printk_index", align 4
@wl1273_fm_set_rx_freq._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.158, ptr @.str.3, i32 441, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: TIMEOUT\0A\00", [19 x i8] zeroinitializer }, align 32
@wl1273_fm_set_rx_freq._entry_ptr.171 = internal global ptr @wl1273_fm_set_rx_freq._entry.169, section ".printk_index", align 4
@wl1273_fm_set_tx_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.172, ptr @.str.3, i32 343, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wl1273_fm_set_tx_freq\00", [42 x i8] zeroinitializer }, align 32
@wl1273_fm_set_tx_freq._entry_ptr = internal global ptr @wl1273_fm_set_tx_freq._entry, section ".printk_index", align 4
@wl1273_fm_set_tx_freq._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.172, ptr @.str.3, i32 350, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@wl1273_fm_set_tx_freq._entry_ptr.174 = internal global ptr @wl1273_fm_set_tx_freq._entry.173, section ".printk_index", align 4
@wl1273_fm_set_tx_freq.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.172, ptr @.str.3, ptr @.str.175, i8 0, i8 90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.175 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: freq: %d kHz\0A\00", [46 x i8] zeroinitializer }, align 32
@wl1273_fm_set_tx_freq.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.172, ptr @.str.3, ptr @.str.176, i8 0, i8 93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.176 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WL1273_CHANL_SET: %lu\0A\00", [41 x i8] zeroinitializer }, align 32
@wl1273_fm_set_tx_freq.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.172, ptr @.str.3, ptr @.str.177, i8 0, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.177 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"WL1273_POWER_ENB_SET: %lu\0A\00", [37 x i8] zeroinitializer }, align 32
@wl1273_fm_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.178, ptr @.str.3, i32 679, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wl1273_fm_suspend\00", [46 x i8] zeroinitializer }, align 32
@wl1273_fm_suspend._entry_ptr = internal global ptr @wl1273_fm_suspend._entry, section ".printk_index", align 4
@wl1273_fm_set_rds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.179, ptr @.str.3, i32 1018, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wl1273_fm_set_rds\00", [46 x i8] zeroinitializer }, align 32
@wl1273_fm_set_rds._entry_ptr = internal global ptr @wl1273_fm_set_rds._entry, section ".printk_index", align 4
@wl1273_fm_rds_off.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.180, ptr @.str.3, ptr @.str.4, i8 0, i8 -12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.180 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wl1273_fm_rds_off\00", [46 x i8] zeroinitializer }, align 32
@wl1273_fm_rds_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.180, ptr @.str.3, i32 987, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@wl1273_fm_rds_off._entry_ptr = internal global ptr @wl1273_fm_rds_off._entry, section ".printk_index", align 4
@wl1273_fm_rds_off.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.180, ptr @.str.3, ptr @.str.181, i8 0, i8 -9, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.181 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: exiting...\0A\00", [16 x i8] zeroinitializer }, align 32
@wl1273_fm_rds_on.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.182, ptr @.str.3, ptr @.str.4, i8 0, i8 -20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.182 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wl1273_fm_rds_on\00", [47 x i8] zeroinitializer }, align 32
@wl1273_fm_rds_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.182, ptr @.str.3, i32 957, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@wl1273_fm_rds_on._entry_ptr = internal global ptr @wl1273_fm_rds_on._entry, section ".printk_index", align 4
@wl1273_fm_vidioc_g_tuner.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.183, ptr @.str.3, ptr @.str.4, i8 1, i8 120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.183 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wl1273_fm_vidioc_g_tuner\00", [39 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_g_tuner.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.183, ptr @.str.3, ptr @.str.184, i8 1, i8 -126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.184 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Signal: %d\0A\00", [20 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_s_tuner.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.185, ptr @.str.3, ptr @.str.4, i8 1, i8 -121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.185 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wl1273_fm_vidioc_s_tuner\00", [39 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_s_tuner.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.185, ptr @.str.3, ptr @.str.186, i8 1, i8 -120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.186 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tuner->index: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_s_tuner.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.185, ptr @.str.3, ptr @.str.187, i8 1, i8 -120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.187 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tuner->name: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_s_tuner.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.185, ptr @.str.3, ptr @.str.188, i8 1, i8 -120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.188 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tuner->capability: 0x%04x\0A\00", [37 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_s_tuner.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.185, ptr @.str.3, ptr @.str.189, i8 1, i8 -120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.189 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tuner->rxsubchans: 0x%04x\0A\00", [37 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_s_tuner.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.185, ptr @.str.3, ptr @.str.190, i8 1, i8 -119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.190 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tuner->rangelow: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_s_tuner.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.185, ptr @.str.3, ptr @.str.191, i8 1, i8 -119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.191 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tuner->rangehigh: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_s_tuner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.185, ptr @.str.3, i32 1591, ptr @.str.58, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: RDS fails: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_s_tuner._entry_ptr = internal global ptr @wl1273_fm_vidioc_s_tuner._entry, section ".printk_index", align 4
@wl1273_fm_vidioc_s_tuner._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.185, ptr @.str.3, i32 1597, ptr @.str.58, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: MOST_MODE fails: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_s_tuner._entry_ptr.195 = internal global ptr @wl1273_fm_vidioc_s_tuner._entry.193, section ".printk_index", align 4
@wl1273_fm_vidioc_s_tuner._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.185, ptr @.str.3, i32 1605, ptr @.str.58, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_s_tuner._entry_ptr.197 = internal global ptr @wl1273_fm_vidioc_s_tuner._entry.196, section ".printk_index", align 4
@wl1273_fm_vidioc_s_tuner._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.185, ptr @.str.3, i32 1611, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: tuner->audmode: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_s_tuner._entry_ptr.200 = internal global ptr @wl1273_fm_vidioc_s_tuner._entry.198, section ".printk_index", align 4
@wl1273_fm_vidioc_g_frequency.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.201, ptr @.str.3, ptr @.str.4, i8 1, i8 -105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.201 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wl1273_fm_vidioc_g_frequency\00", [35 x i8] zeroinitializer }, align 32
@wl1273_fm_get_freq.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.202, ptr @.str.3, ptr @.str.203, i8 0, i8 116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.202 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wl1273_fm_get_freq\00", [45 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Freq get: 0x%04x\0A\00", [46 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_s_frequency.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.204, ptr @.str.3, ptr @.str.205, i8 1, i8 -100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.204 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wl1273_fm_vidioc_s_frequency\00", [35 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %d\0A\00", [24 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_s_frequency.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.204, ptr @.str.3, ptr @.str.206, i8 1, i8 -99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.206 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"freq->type != V4L2_TUNER_RADIO: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_s_frequency.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.204, ptr @.str.3, ptr @.str.207, i8 1, i8 -97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.207 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"freq: %d\0A\00", [22 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_s_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.204, ptr @.str.3, i32 1666, ptr @.str.58, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"wl1273-fm: set frequency failed with %d\0A\00", [55 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_s_frequency._entry_ptr = internal global ptr @wl1273_fm_vidioc_s_frequency._entry, section ".printk_index", align 4
@wl1273_fm_vidioc_s_frequency._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.204, ptr @.str.3, i32 1672, ptr @.str.58, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_s_frequency._entry_ptr.210 = internal global ptr @wl1273_fm_vidioc_s_frequency._entry.209, section ".printk_index", align 4
@wl1273_fm_vidioc_s_frequency.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.204, ptr @.str.3, ptr @.str.211, i8 1, i8 -93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.211 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"wl1273_vidioc_s_frequency: DONE\0A\00", [63 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.213, ptr @.str.3, i32 1807, ptr @.str.64, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Wl1273 FM Radio\00", [16 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wl1273_fm_vidioc_log_status\00", [36 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr = internal global ptr @wl1273_fm_vidioc_log_status._entry, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.213, ptr @.str.3, i32 1810, ptr @.str.64, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mode: Off\0A\00", [21 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.216 = internal global ptr @wl1273_fm_vidioc_log_status._entry.214, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.213, ptr @.str.3, i32 1815, ptr @.str.64, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Mode: Suspended\0A\00", [47 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.219 = internal global ptr @wl1273_fm_vidioc_log_status._entry.217, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.220 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.213, ptr @.str.3, i32 1821, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Get ASIC_ID fails.\0A\00", [40 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.222 = internal global ptr @wl1273_fm_vidioc_log_status._entry.220, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.213, ptr @.str.3, i32 1823, ptr @.str.64, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ASIC_ID: 0x%04x\0A\00", [47 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.225 = internal global ptr @wl1273_fm_vidioc_log_status._entry.223, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.213, ptr @.str.3, i32 1827, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Get ASIC_VER fails.\0A\00", [39 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.228 = internal global ptr @wl1273_fm_vidioc_log_status._entry.226, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.213, ptr @.str.3, i32 1829, ptr @.str.64, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ASIC Version: 0x%04x\0A\00", [42 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.231 = internal global ptr @wl1273_fm_vidioc_log_status._entry.229, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.232 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.213, ptr @.str.3, i32 1833, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Get FIRM_VER fails.\0A\00", [39 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.234 = internal global ptr @wl1273_fm_vidioc_log_status._entry.232, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.235 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.213, ptr @.str.3, i32 1835, ptr @.str.64, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"FW version: %d(0x%04x)\0A\00", [40 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.237 = internal global ptr @wl1273_fm_vidioc_log_status._entry.235, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.238 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.213, ptr @.str.3, i32 1839, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: Get BAND fails.\0A\00", [43 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.240 = internal global ptr @wl1273_fm_vidioc_log_status._entry.238, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.241 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.213, ptr @.str.3, i32 1841, ptr @.str.64, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BAND: %d\0A\00", [22 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.243 = internal global ptr @wl1273_fm_vidioc_log_status._entry.241, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.244 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.213, ptr @.str.3, i32 1846, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: Get PUPD fails.\0A\00", [43 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.246 = internal global ptr @wl1273_fm_vidioc_log_status._entry.244, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.247 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.248, ptr @.str.213, ptr @.str.3, i32 1848, ptr @.str.64, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PUPD: 0x%04x\0A\00", [18 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.249 = internal global ptr @wl1273_fm_vidioc_log_status._entry.247, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.250 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.251, ptr @.str.213, ptr @.str.3, i32 1852, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: Get CHANL fails.\0A\00", [42 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.252 = internal global ptr @wl1273_fm_vidioc_log_status._entry.250, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.253 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.254, ptr @.str.213, ptr @.str.3, i32 1854, ptr @.str.64, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Tx frequency: %dkHz\0A\00", [43 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.255 = internal global ptr @wl1273_fm_vidioc_log_status._entry.253, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.256 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.257, ptr @.str.213, ptr @.str.3, i32 1860, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: Get FREQ fails.\0A\00", [43 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.258 = internal global ptr @wl1273_fm_vidioc_log_status._entry.256, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.259 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.260, ptr @.str.213, ptr @.str.3, i32 1862, ptr @.str.64, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"RX Frequency: %dkHz\0A\00", [43 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.261 = internal global ptr @wl1273_fm_vidioc_log_status._entry.259, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.262 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.263, ptr @.str.213, ptr @.str.3, i32 1867, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Get MOST_MODE fails.\0A\00", [38 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.264 = internal global ptr @wl1273_fm_vidioc_log_status._entry.262, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.265 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.266, ptr @.str.213, ptr @.str.3, i32 1869, ptr @.str.64, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"MOST_MODE: Stereo according to blend\0A\00", [58 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.267 = internal global ptr @wl1273_fm_vidioc_log_status._entry.265, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.268 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.269, ptr @.str.213, ptr @.str.3, i32 1871, ptr @.str.64, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MOST_MODE: Force mono output\0A\00", [34 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.270 = internal global ptr @wl1273_fm_vidioc_log_status._entry.268, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.271 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.272, ptr @.str.213, ptr @.str.3, i32 1873, ptr @.str.64, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"MOST_MODE: Unexpected value: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.273 = internal global ptr @wl1273_fm_vidioc_log_status._entry.271, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.274 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.275, ptr @.str.213, ptr @.str.3, i32 1877, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Get MOST_BLEND fails.\0A\00", [37 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.276 = internal global ptr @wl1273_fm_vidioc_log_status._entry.274, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.277 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.278, ptr @.str.213, ptr @.str.3, i32 1880, ptr @.str.64, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"MOST_BLEND: Switched blend & hysteresis.\0A\00", [54 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.279 = internal global ptr @wl1273_fm_vidioc_log_status._entry.277, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.280 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.281, ptr @.str.213, ptr @.str.3, i32 1882, ptr @.str.64, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MOST_BLEND: Soft blend.\0A\00", [39 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.282 = internal global ptr @wl1273_fm_vidioc_log_status._entry.280, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.283 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.284, ptr @.str.213, ptr @.str.3, i32 1884, ptr @.str.64, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"MOST_BLEND: Unexpected val: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.285 = internal global ptr @wl1273_fm_vidioc_log_status._entry.283, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.286 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.213, ptr @.str.3, i32 1888, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Get STEREO fails.\0A\00", [41 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.288 = internal global ptr @wl1273_fm_vidioc_log_status._entry.286, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.289 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.290, ptr @.str.213, ptr @.str.3, i32 1890, ptr @.str.64, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"STEREO: Not detected\0A\00", [42 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.291 = internal global ptr @wl1273_fm_vidioc_log_status._entry.289, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.292 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.293, ptr @.str.213, ptr @.str.3, i32 1892, ptr @.str.64, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"STEREO: Detected\0A\00", [46 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.294 = internal global ptr @wl1273_fm_vidioc_log_status._entry.292, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.295 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.296, ptr @.str.213, ptr @.str.3, i32 1894, ptr @.str.64, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"STEREO: Unexpected value: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.297 = internal global ptr @wl1273_fm_vidioc_log_status._entry.295, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.298 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.299, ptr @.str.213, ptr @.str.3, i32 1898, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Get RSSI_LVL fails.\0A\00", [39 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.300 = internal global ptr @wl1273_fm_vidioc_log_status._entry.298, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.301 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.302, ptr @.str.213, ptr @.str.3, i32 1900, ptr @.str.64, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RX signal strength: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.303 = internal global ptr @wl1273_fm_vidioc_log_status._entry.301, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.304 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.305, ptr @.str.213, ptr @.str.3, i32 1904, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: Get POWER fails.\0A\00", [42 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.306 = internal global ptr @wl1273_fm_vidioc_log_status._entry.304, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.307 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.308, ptr @.str.213, ptr @.str.3, i32 1906, ptr @.str.64, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"POWER: 0x%04x\0A\00", [17 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.309 = internal global ptr @wl1273_fm_vidioc_log_status._entry.307, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.310 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.311, ptr @.str.213, ptr @.str.3, i32 1910, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Get INT_MASK fails.\0A\00", [39 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.312 = internal global ptr @wl1273_fm_vidioc_log_status._entry.310, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.313 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.314, ptr @.str.213, ptr @.str.3, i32 1912, ptr @.str.64, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"INT_MASK: 0x%04x\0A\00", [46 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.315 = internal global ptr @wl1273_fm_vidioc_log_status._entry.313, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.316 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.213, ptr @.str.3, i32 1917, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.317 = internal global ptr @wl1273_fm_vidioc_log_status._entry.316, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.318 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.213, ptr @.str.3, i32 1919, ptr @.str.64, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.319 = internal global ptr @wl1273_fm_vidioc_log_status._entry.318, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.320 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.321, ptr @.str.213, ptr @.str.3, i32 1922, ptr @.str.64, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RDS_SYNC: Synchronized\0A\00", [40 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.322 = internal global ptr @wl1273_fm_vidioc_log_status._entry.320, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.323 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.324, ptr @.str.213, ptr @.str.3, i32 1924, ptr @.str.64, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"RDS_SYNC: Unexpected value: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.325 = internal global ptr @wl1273_fm_vidioc_log_status._entry.323, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.326 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.327, ptr @.str.213, ptr @.str.3, i32 1929, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Get I2S_MODE_CONFIG fails.\0A\00", [32 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.328 = internal global ptr @wl1273_fm_vidioc_log_status._entry.326, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.329 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.330, ptr @.str.213, ptr @.str.3, i32 1931, ptr @.str.64, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"I2S_MODE_CONFIG: 0x%04x\0A\00", [39 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.331 = internal global ptr @wl1273_fm_vidioc_log_status._entry.329, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.332 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.333, ptr @.str.213, ptr @.str.3, i32 1935, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Get VOLUME fails.\0A\00", [41 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.334 = internal global ptr @wl1273_fm_vidioc_log_status._entry.332, section ".printk_index", align 4
@wl1273_fm_vidioc_log_status._entry.335 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.336, ptr @.str.213, ptr @.str.3, i32 1937, ptr @.str.64, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"VOLUME: 0x%04x\0A\00", [16 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_log_status._entry_ptr.337 = internal global ptr @wl1273_fm_vidioc_log_status._entry.335, section ".printk_index", align 4
@wl1273_fm_vidioc_s_hw_freq_seek.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.338, ptr @.str.3, ptr @.str.4, i8 1, i8 -90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.338 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"wl1273_fm_vidioc_s_hw_freq_seek\00", [32 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_s_hw_freq_seek._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.339, ptr @.str.338, ptr @.str.3, i32 1707, ptr @.str.58, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HW seek failed: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_s_hw_freq_seek._entry_ptr = internal global ptr @wl1273_fm_vidioc_s_hw_freq_seek._entry, section ".printk_index", align 4
@wl1273_fm_vidioc_s_hw_freq_seek._entry.340 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.339, ptr @.str.338, ptr @.str.3, i32 1712, ptr @.str.58, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_s_hw_freq_seek._entry_ptr.341 = internal global ptr @wl1273_fm_vidioc_s_hw_freq_seek._entry.340, section ".printk_index", align 4
@wl1273_fm_set_seek.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.342, ptr @.str.3, ptr @.str.343, i8 0, i8 -58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.342 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wl1273_fm_set_seek\00", [45 x i8] zeroinitializer }, align 32
@.str.343 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_frequency: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@wl1273_fm_set_seek.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.342, ptr @.str.3, ptr @.str.344, i8 0, i8 -54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.344 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: BUSY\0A\00", [22 x i8] zeroinitializer }, align 32
@wl1273_fm_set_seek.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.342, ptr @.str.3, ptr @.str.4, i8 0, i8 -52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@wl1273_fm_set_seek.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.342, ptr @.str.3, ptr @.str.345, i8 0, i8 -46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.345 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Wrap around in HW seek.\0A\00", [39 x i8] zeroinitializer }, align 32
@wl1273_fm_set_seek.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.342, ptr @.str.3, ptr @.str.344, i8 0, i8 -43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@wl1273_fm_set_seek.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.342, ptr @.str.3, ptr @.str.346, i8 0, i8 -40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.346 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: Err: %d\0A\00", [19 x i8] zeroinitializer }, align 32
@wl1273_fm_g_volatile_ctrl.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.347, ptr @.str.3, ptr @.str.4, i8 1, i8 88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.347 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wl1273_fm_g_volatile_ctrl\00", [38 x i8] zeroinitializer }, align 32
@wl1273_fm_g_volatile_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.348, ptr @.str.347, ptr @.str.3, i32 1390, ptr @.str.58, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Unknown IOCTL: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@wl1273_fm_g_volatile_ctrl._entry_ptr = internal global ptr @wl1273_fm_g_volatile_ctrl._entry, section ".printk_index", align 4
@wl1273_fm_get_tx_ctune._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.349, ptr @.str.350, ptr @.str.3, i32 886, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.349 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: read error: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.350 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wl1273_fm_get_tx_ctune\00", [41 x i8] zeroinitializer }, align 32
@wl1273_fm_get_tx_ctune._entry_ptr = internal global ptr @wl1273_fm_get_tx_ctune._entry, section ".printk_index", align 4
@wl1273_fm_vidioc_s_ctrl.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.351, ptr @.str.3, ptr @.str.4, i8 1, i8 98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.351 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wl1273_fm_vidioc_s_ctrl\00", [40 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_s_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.348, ptr @.str.351, ptr @.str.3, i32 1456, ptr @.str.58, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@wl1273_fm_vidioc_s_ctrl._entry_ptr = internal global ptr @wl1273_fm_vidioc_s_ctrl._entry, section ".printk_index", align 4
@wl1273_fm_vidioc_s_ctrl.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.351, ptr @.str.3, ptr @.str.4, i8 1, i8 109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@wl1273_fm_radio_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.352, ptr @.str.353, ptr @.str.3, i32 1985, ptr @.str.64, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.352 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s.\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.353 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wl1273_fm_radio_remove\00", [41 x i8] zeroinitializer }, align 32
@wl1273_fm_radio_remove._entry_ptr = internal global ptr @wl1273_fm_radio_remove._entry, section ".printk_index", align 4
@switch.table.wl1273_fm_vidioc_s_ctrl = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 1, i16 0, i16 2], [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.354 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.355 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.356 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.357 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.358 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.359 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.360 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.361 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.362 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.363 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.364 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.365 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.366 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.367 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.368 = internal global [6 x i64] [i64 4, i64 32, i64 9963781, i64 9963785, i64 10160496, i64 10160497]
@__sancov_gen_cov_switch_values.369 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.370 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.371 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@___asan_gen_.372 = private unnamed_addr constant [9 x i8] c"radio_nr\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 39, i32 12 }
@___asan_gen_.375 = private unnamed_addr constant [8 x i8] c"rds_buf\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 91, i32 21 }
@___asan_gen_.378 = private unnamed_addr constant [23 x i8] c"wl1273_fm_radio_driver\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 2148, i32 31 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 2152, i32 11 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 2004, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 2007, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 2022, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 2043, i32 20 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 2048, i32 4 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 2053, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 2058, i32 7 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 2060, i32 4 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 2065, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 2071, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 2085, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant [23 x i8] c"wl1273_viddev_template\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1968, i32 34 }
@___asan_gen_.456 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 2094, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant [16 x i8] c"wl1273_ctrl_ops\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1947, i32 35 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 2120, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 2130, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 231, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 241, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 244, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 254, i32 4 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 258, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 261, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 264, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 267, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 270, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 274, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 275, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 279, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 282, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 287, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 293, i32 5 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 315, i32 4 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 324, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 170, i32 4 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 203, i32 4 }
@___asan_gen_.546 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.550 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 87, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant [12 x i8] c"wl1273_fops\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1263, i32 42 }
@___asan_gen_.555 = private unnamed_addr constant [17 x i8] c"wl1273_ioctl_ops\00", align 1
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1952, i32 36 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1183, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1189, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1208, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1211, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1223, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1257, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 230, i32 6 }
@___asan_gen_.595 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 214, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 174, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1036, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1042, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1071, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1072, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1114, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1118, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1146, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1278, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1282, i32 28 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1294, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1306, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1469, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1474, i32 23 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1485, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1765, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1726, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1749, i32 3 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 694, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 695, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 708, i32 4 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 716, i32 4 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 724, i32 5 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 730, i32 5 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 734, i32 4 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 739, i32 5 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 744, i32 3 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 748, i32 4 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 754, i32 4 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 763, i32 4 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 770, i32 3 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 564, i32 3 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 583, i32 5 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 600, i32 5 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 608, i32 5 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 615, i32 5 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 621, i32 3 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 627, i32 4 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 641, i32 5 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 648, i32 5 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 659, i32 2 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 494, i32 24 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 499, i32 2 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 506, i32 3 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 513, i32 2 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 517, i32 3 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 524, i32 2 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 110, i32 3 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 117, i32 2 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 118, i32 2 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 538, i32 4 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 544, i32 4 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 550, i32 3 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 401, i32 3 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 409, i32 3 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 416, i32 2 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 427, i32 3 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 433, i32 3 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 441, i32 3 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 341, i32 3 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 348, i32 3 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 360, i32 2 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 374, i32 2 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 389, i32 2 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 679, i32 3 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1017, i32 3 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 979, i32 2 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 987, i32 3 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 989, i32 2 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 946, i32 2 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 957, i32 3 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1504, i32 2 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1544, i32 2 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1567, i32 2 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1568, i32 2 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1569, i32 2 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1570, i32 2 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1571, i32 2 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1572, i32 2 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1573, i32 2 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1591, i32 3 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1596, i32 4 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1604, i32 4 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1610, i32 3 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1628, i32 2 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 465, i32 3 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1648, i32 2 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1651, i32 3 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1660, i32 3 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1665, i32 4 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1671, i32 4 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1677, i32 2 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1807, i32 2 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1810, i32 3 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1815, i32 3 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1821, i32 3 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1823, i32 3 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1827, i32 3 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1829, i32 3 }
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1833, i32 3 }
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1835, i32 3 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1839, i32 3 }
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1841, i32 3 }
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1846, i32 4 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1848, i32 4 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1852, i32 4 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1854, i32 4 }
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1860, i32 4 }
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1862, i32 4 }
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1866, i32 4 }
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1869, i32 4 }
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1871, i32 4 }
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1873, i32 4 }
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1877, i32 4 }
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1879, i32 4 }
@___asan_gen_.1133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1882, i32 4 }
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1884, i32 4 }
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1888, i32 4 }
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1890, i32 4 }
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1892, i32 4 }
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1894, i32 4 }
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1898, i32 4 }
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1900, i32 4 }
@___asan_gen_.1181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1904, i32 4 }
@___asan_gen_.1187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1906, i32 4 }
@___asan_gen_.1193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1910, i32 4 }
@___asan_gen_.1199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1912, i32 4 }
@___asan_gen_.1202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1916, i32 4 }
@___asan_gen_.1205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1919, i32 4 }
@___asan_gen_.1211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1922, i32 4 }
@___asan_gen_.1217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1924, i32 4 }
@___asan_gen_.1223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1928, i32 4 }
@___asan_gen_.1229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1931, i32 4 }
@___asan_gen_.1235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1935, i32 4 }
@___asan_gen_.1241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1937, i32 4 }
@___asan_gen_.1244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1690, i32 2 }
@___asan_gen_.1250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1707, i32 3 }
@___asan_gen_.1253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1712, i32 3 }
@___asan_gen_.1259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 792, i32 2 }
@___asan_gen_.1262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 810, i32 2 }
@___asan_gen_.1265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 843, i32 2 }
@___asan_gen_.1268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 865, i32 2 }
@___asan_gen_.1271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1378, i32 2 }
@___asan_gen_.1277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1389, i32 3 }
@___asan_gen_.1286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 886, i32 3 }
@___asan_gen_.1289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1416, i32 2 }
@___asan_gen_.1292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1455, i32 3 }
@___asan_gen_.1293 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1299 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1300 = private constant [38 x i8] c"../drivers/media/radio/radio-wl1273.c\00", align 1
@___asan_gen_.1301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1300, i32 1985, i32 2 }
@___asan_gen_.1302 = private unnamed_addr constant [37 x i8] c"switch.table.wl1273_fm_vidioc_s_ctrl\00", align 1
@llvm.compiler.used = appending global [427 x ptr] [ptr @__UNIQUE_ID_alias382, ptr @__UNIQUE_ID_author378, ptr @__UNIQUE_ID_description379, ptr @__UNIQUE_ID_file380, ptr @__UNIQUE_ID_license381, ptr @__UNIQUE_ID_radio_nr293, ptr @__UNIQUE_ID_radio_nrtype292, ptr @__UNIQUE_ID_rds_buf295, ptr @__UNIQUE_ID_rds_buftype294, ptr @__exitcall_wl1273_fm_radio_driver_exit, ptr @__initcall__kmod_radio_wl1273__377_2156_wl1273_fm_radio_driver_init6, ptr @__param_radio_nr, ptr @__param_rds_buf, ptr @wl1273_fm_fops_read._entry, ptr @wl1273_fm_fops_read._entry.59, ptr @wl1273_fm_fops_read._entry.62, ptr @wl1273_fm_fops_read._entry_ptr, ptr @wl1273_fm_fops_read._entry_ptr.61, ptr @wl1273_fm_fops_read._entry_ptr.65, ptr @wl1273_fm_fops_write._entry, ptr @wl1273_fm_fops_write._entry_ptr, ptr @wl1273_fm_g_volatile_ctrl._entry, ptr @wl1273_fm_g_volatile_ctrl._entry_ptr, ptr @wl1273_fm_get_tx_ctune._entry, ptr @wl1273_fm_get_tx_ctune._entry_ptr, ptr @wl1273_fm_irq_thread_handler._entry, ptr @wl1273_fm_irq_thread_handler._entry_ptr, ptr @wl1273_fm_radio_driver_exit, ptr @wl1273_fm_radio_probe._entry, ptr @wl1273_fm_radio_probe._entry.12, ptr @wl1273_fm_radio_probe._entry.17, ptr @wl1273_fm_radio_probe._entry.20, ptr @wl1273_fm_radio_probe._entry.24, ptr @wl1273_fm_radio_probe._entry.28, ptr @wl1273_fm_radio_probe._entry.31, ptr @wl1273_fm_radio_probe._entry.8, ptr @wl1273_fm_radio_probe._entry_ptr, ptr @wl1273_fm_radio_probe._entry_ptr.10, ptr @wl1273_fm_radio_probe._entry_ptr.14, ptr @wl1273_fm_radio_probe._entry_ptr.19, ptr @wl1273_fm_radio_probe._entry_ptr.22, ptr @wl1273_fm_radio_probe._entry_ptr.26, ptr @wl1273_fm_radio_probe._entry_ptr.30, ptr @wl1273_fm_radio_probe._entry_ptr.33, ptr @wl1273_fm_radio_remove._entry, ptr @wl1273_fm_radio_remove._entry_ptr, ptr @wl1273_fm_rds._entry, ptr @wl1273_fm_rds._entry_ptr, ptr @wl1273_fm_rds_off._entry, ptr @wl1273_fm_rds_off._entry_ptr, ptr @wl1273_fm_rds_on._entry, ptr @wl1273_fm_rds_on._entry_ptr, ptr @wl1273_fm_set_mode._entry, ptr @wl1273_fm_set_mode._entry.100, ptr @wl1273_fm_set_mode._entry.103, ptr @wl1273_fm_set_mode._entry.106, ptr @wl1273_fm_set_mode._entry.109, ptr @wl1273_fm_set_mode._entry.112, ptr @wl1273_fm_set_mode._entry.90, ptr @wl1273_fm_set_mode._entry.93, ptr @wl1273_fm_set_mode._entry.96, ptr @wl1273_fm_set_mode._entry_ptr, ptr @wl1273_fm_set_mode._entry_ptr.101, ptr @wl1273_fm_set_mode._entry_ptr.105, ptr @wl1273_fm_set_mode._entry_ptr.108, ptr @wl1273_fm_set_mode._entry_ptr.111, ptr @wl1273_fm_set_mode._entry_ptr.114, ptr @wl1273_fm_set_mode._entry_ptr.92, ptr @wl1273_fm_set_mode._entry_ptr.95, ptr @wl1273_fm_set_mode._entry_ptr.98, ptr @wl1273_fm_set_rds._entry, ptr @wl1273_fm_set_rds._entry_ptr, ptr @wl1273_fm_set_rx_freq._entry, ptr @wl1273_fm_set_rx_freq._entry.159, ptr @wl1273_fm_set_rx_freq._entry.163, ptr @wl1273_fm_set_rx_freq._entry.166, ptr @wl1273_fm_set_rx_freq._entry.169, ptr @wl1273_fm_set_rx_freq._entry_ptr, ptr @wl1273_fm_set_rx_freq._entry_ptr.161, ptr @wl1273_fm_set_rx_freq._entry_ptr.165, ptr @wl1273_fm_set_rx_freq._entry_ptr.168, ptr @wl1273_fm_set_rx_freq._entry_ptr.171, ptr @wl1273_fm_set_tx_freq._entry, ptr @wl1273_fm_set_tx_freq._entry.173, ptr @wl1273_fm_set_tx_freq._entry_ptr, ptr @wl1273_fm_set_tx_freq._entry_ptr.174, ptr @wl1273_fm_start._entry, ptr @wl1273_fm_start._entry.118, ptr @wl1273_fm_start._entry.121, ptr @wl1273_fm_start._entry.124, ptr @wl1273_fm_start._entry.127, ptr @wl1273_fm_start._entry.130, ptr @wl1273_fm_start._entry.133, ptr @wl1273_fm_start._entry.135, ptr @wl1273_fm_start._entry_ptr, ptr @wl1273_fm_start._entry_ptr.120, ptr @wl1273_fm_start._entry_ptr.123, ptr @wl1273_fm_start._entry_ptr.126, ptr @wl1273_fm_start._entry_ptr.129, ptr @wl1273_fm_start._entry_ptr.132, ptr @wl1273_fm_start._entry_ptr.134, ptr @wl1273_fm_start._entry_ptr.136, ptr @wl1273_fm_stop._entry, ptr @wl1273_fm_stop._entry.153, ptr @wl1273_fm_stop._entry_ptr, ptr @wl1273_fm_stop._entry_ptr.155, ptr @wl1273_fm_suspend._entry, ptr @wl1273_fm_suspend._entry_ptr, ptr @wl1273_fm_upload_firmware_patch._entry, ptr @wl1273_fm_upload_firmware_patch._entry.143, ptr @wl1273_fm_upload_firmware_patch._entry_ptr, ptr @wl1273_fm_upload_firmware_patch._entry_ptr.145, ptr @wl1273_fm_vidioc_log_status._entry, ptr @wl1273_fm_vidioc_log_status._entry.214, ptr @wl1273_fm_vidioc_log_status._entry.217, ptr @wl1273_fm_vidioc_log_status._entry.220, ptr @wl1273_fm_vidioc_log_status._entry.223, ptr @wl1273_fm_vidioc_log_status._entry.226, ptr @wl1273_fm_vidioc_log_status._entry.229, ptr @wl1273_fm_vidioc_log_status._entry.232, ptr @wl1273_fm_vidioc_log_status._entry.235, ptr @wl1273_fm_vidioc_log_status._entry.238, ptr @wl1273_fm_vidioc_log_status._entry.241, ptr @wl1273_fm_vidioc_log_status._entry.244, ptr @wl1273_fm_vidioc_log_status._entry.247, ptr @wl1273_fm_vidioc_log_status._entry.250, ptr @wl1273_fm_vidioc_log_status._entry.253, ptr @wl1273_fm_vidioc_log_status._entry.256, ptr @wl1273_fm_vidioc_log_status._entry.259, ptr @wl1273_fm_vidioc_log_status._entry.262, ptr @wl1273_fm_vidioc_log_status._entry.265, ptr @wl1273_fm_vidioc_log_status._entry.268, ptr @wl1273_fm_vidioc_log_status._entry.271, ptr @wl1273_fm_vidioc_log_status._entry.274, ptr @wl1273_fm_vidioc_log_status._entry.277, ptr @wl1273_fm_vidioc_log_status._entry.280, ptr @wl1273_fm_vidioc_log_status._entry.283, ptr @wl1273_fm_vidioc_log_status._entry.286, ptr @wl1273_fm_vidioc_log_status._entry.289, ptr @wl1273_fm_vidioc_log_status._entry.292, ptr @wl1273_fm_vidioc_log_status._entry.295, ptr @wl1273_fm_vidioc_log_status._entry.298, ptr @wl1273_fm_vidioc_log_status._entry.301, ptr @wl1273_fm_vidioc_log_status._entry.304, ptr @wl1273_fm_vidioc_log_status._entry.307, ptr @wl1273_fm_vidioc_log_status._entry.310, ptr @wl1273_fm_vidioc_log_status._entry.313, ptr @wl1273_fm_vidioc_log_status._entry.316, ptr @wl1273_fm_vidioc_log_status._entry.318, ptr @wl1273_fm_vidioc_log_status._entry.320, ptr @wl1273_fm_vidioc_log_status._entry.323, ptr @wl1273_fm_vidioc_log_status._entry.326, ptr @wl1273_fm_vidioc_log_status._entry.329, ptr @wl1273_fm_vidioc_log_status._entry.332, ptr @wl1273_fm_vidioc_log_status._entry.335, ptr @wl1273_fm_vidioc_log_status._entry_ptr, ptr @wl1273_fm_vidioc_log_status._entry_ptr.216, ptr @wl1273_fm_vidioc_log_status._entry_ptr.219, ptr @wl1273_fm_vidioc_log_status._entry_ptr.222, ptr @wl1273_fm_vidioc_log_status._entry_ptr.225, ptr @wl1273_fm_vidioc_log_status._entry_ptr.228, ptr @wl1273_fm_vidioc_log_status._entry_ptr.231, ptr @wl1273_fm_vidioc_log_status._entry_ptr.234, ptr @wl1273_fm_vidioc_log_status._entry_ptr.237, ptr @wl1273_fm_vidioc_log_status._entry_ptr.240, ptr @wl1273_fm_vidioc_log_status._entry_ptr.243, ptr @wl1273_fm_vidioc_log_status._entry_ptr.246, ptr @wl1273_fm_vidioc_log_status._entry_ptr.249, ptr @wl1273_fm_vidioc_log_status._entry_ptr.252, ptr @wl1273_fm_vidioc_log_status._entry_ptr.255, ptr @wl1273_fm_vidioc_log_status._entry_ptr.258, ptr @wl1273_fm_vidioc_log_status._entry_ptr.261, ptr @wl1273_fm_vidioc_log_status._entry_ptr.264, ptr @wl1273_fm_vidioc_log_status._entry_ptr.267, ptr @wl1273_fm_vidioc_log_status._entry_ptr.270, ptr @wl1273_fm_vidioc_log_status._entry_ptr.273, ptr @wl1273_fm_vidioc_log_status._entry_ptr.276, ptr @wl1273_fm_vidioc_log_status._entry_ptr.279, ptr @wl1273_fm_vidioc_log_status._entry_ptr.282, ptr @wl1273_fm_vidioc_log_status._entry_ptr.285, ptr @wl1273_fm_vidioc_log_status._entry_ptr.288, ptr @wl1273_fm_vidioc_log_status._entry_ptr.291, ptr @wl1273_fm_vidioc_log_status._entry_ptr.294, ptr @wl1273_fm_vidioc_log_status._entry_ptr.297, ptr @wl1273_fm_vidioc_log_status._entry_ptr.300, ptr @wl1273_fm_vidioc_log_status._entry_ptr.303, ptr @wl1273_fm_vidioc_log_status._entry_ptr.306, ptr @wl1273_fm_vidioc_log_status._entry_ptr.309, ptr @wl1273_fm_vidioc_log_status._entry_ptr.312, ptr @wl1273_fm_vidioc_log_status._entry_ptr.315, ptr @wl1273_fm_vidioc_log_status._entry_ptr.317, ptr @wl1273_fm_vidioc_log_status._entry_ptr.319, ptr @wl1273_fm_vidioc_log_status._entry_ptr.322, ptr @wl1273_fm_vidioc_log_status._entry_ptr.325, ptr @wl1273_fm_vidioc_log_status._entry_ptr.328, ptr @wl1273_fm_vidioc_log_status._entry_ptr.331, ptr @wl1273_fm_vidioc_log_status._entry_ptr.334, ptr @wl1273_fm_vidioc_log_status._entry_ptr.337, ptr @wl1273_fm_vidioc_s_ctrl._entry, ptr @wl1273_fm_vidioc_s_ctrl._entry_ptr, ptr @wl1273_fm_vidioc_s_frequency._entry, ptr @wl1273_fm_vidioc_s_frequency._entry.209, ptr @wl1273_fm_vidioc_s_frequency._entry_ptr, ptr @wl1273_fm_vidioc_s_frequency._entry_ptr.210, ptr @wl1273_fm_vidioc_s_hw_freq_seek._entry, ptr @wl1273_fm_vidioc_s_hw_freq_seek._entry.340, ptr @wl1273_fm_vidioc_s_hw_freq_seek._entry_ptr, ptr @wl1273_fm_vidioc_s_hw_freq_seek._entry_ptr.341, ptr @wl1273_fm_vidioc_s_modulator._entry, ptr @wl1273_fm_vidioc_s_modulator._entry_ptr, ptr @wl1273_fm_vidioc_s_tuner._entry, ptr @wl1273_fm_vidioc_s_tuner._entry.193, ptr @wl1273_fm_vidioc_s_tuner._entry.196, ptr @wl1273_fm_vidioc_s_tuner._entry.198, ptr @wl1273_fm_vidioc_s_tuner._entry_ptr, ptr @wl1273_fm_vidioc_s_tuner._entry_ptr.195, ptr @wl1273_fm_vidioc_s_tuner._entry_ptr.197, ptr @wl1273_fm_vidioc_s_tuner._entry_ptr.200, ptr @radio_nr, ptr @rds_buf, ptr @wl1273_fm_radio_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @wl1273_fm_radio_probe.__key, ptr @.str.23, ptr @.str.25, ptr @wl1273_viddev_template, ptr @wl1273_fm_radio_probe._key, ptr @.str.27, ptr @wl1273_ctrl_ops, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @init_completion.__key, ptr @.str.55, ptr @wl1273_fops, ptr @wl1273_ioctl_ops, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.99, ptr @.str.102, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.119, ptr @.str.122, ptr @.str.125, ptr @.str.128, ptr @.str.131, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.144, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.154, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.160, ptr @.str.162, ptr @.str.164, ptr @.str.167, ptr @.str.170, ptr @.str.172, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.194, ptr @.str.199, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.215, ptr @.str.218, ptr @.str.221, ptr @.str.224, ptr @.str.227, ptr @.str.230, ptr @.str.233, ptr @.str.236, ptr @.str.239, ptr @.str.242, ptr @.str.245, ptr @.str.248, ptr @.str.251, ptr @.str.254, ptr @.str.257, ptr @.str.260, ptr @.str.263, ptr @.str.266, ptr @.str.269, ptr @.str.272, ptr @.str.275, ptr @.str.278, ptr @.str.281, ptr @.str.284, ptr @.str.287, ptr @.str.290, ptr @.str.293, ptr @.str.296, ptr @.str.299, ptr @.str.302, ptr @.str.305, ptr @.str.308, ptr @.str.311, ptr @.str.314, ptr @.str.321, ptr @.str.324, ptr @.str.327, ptr @.str.330, ptr @.str.333, ptr @.str.336, ptr @.str.338, ptr @.str.339, ptr @.str.342, ptr @.str.343, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.348, ptr @.str.349, ptr @.str.350, ptr @.str.351, ptr @.str.352, ptr @.str.353, ptr @switch.table.wl1273_fm_vidioc_s_ctrl], section "llvm.metadata"
@0 = internal global [311 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_nr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_buf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_radio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_radio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_radio_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_radio_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_radio_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_radio_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_radio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_radio_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_viddev_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_radio_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_radio_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_radio_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_irq_thread_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_rds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_fops_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_fops_read._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_fops_read._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_fops_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_s_modulator._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_set_mode._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_set_mode._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_set_mode._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_set_mode._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_set_mode._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_set_mode._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_set_mode._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_set_mode._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_start._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_start._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_start._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_start._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_start._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_start._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_start._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_upload_firmware_patch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_upload_firmware_patch._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_stop._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_set_rx_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_set_rx_freq._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_set_rx_freq._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_set_rx_freq._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_set_rx_freq._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_set_tx_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_set_tx_freq._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_set_rds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_rds_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_rds_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_s_tuner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_s_tuner._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_s_tuner._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_s_tuner._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_s_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_s_frequency._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.238 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.244 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.247 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.250 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.253 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.256 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.259 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.262 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.265 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.268 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.271 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.274 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.277 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.280 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.283 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.286 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.289 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.292 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.295 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.298 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.301 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.304 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.307 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.310 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.313 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.316 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.318 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.320 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.323 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.326 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.329 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.332 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_log_status._entry.335 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_s_hw_freq_seek._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_s_hw_freq_seek._entry.340 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_g_volatile_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_get_tx_ctune._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.349 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.350 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.351 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_vidioc_s_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_radio_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.352 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.353 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wl1273_fm_vidioc_s_ctrl to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1273_fm_radio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @wl1273_fm_radio_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wl1273_fm_radio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @wl1273_fm_radio_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1273_fm_radio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_radio_probe.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_radio_probe, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !730

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1273_fm_radio_probe.__UNIQUE_ID_ddebug375, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %do.end7, label %if.end9

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #11
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1960, i32 noundef 3520) #8
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %2 = load i32, ptr @rds_buf, align 4
  %mul = mul i32 %2, 3
  %buf_size = getelementptr inbounds %struct.wl1273_device, ptr %call.i, i32 0, i32 16
  %3 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mul, ptr %buf_size, align 4
  %call.i241 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %mul, i32 noundef 3520) #8
  %buffer = getelementptr inbounds %struct.wl1273_device, ptr %call.i, i32 0, i32 15
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i241, ptr %buffer, align 8
  %tobool19.not = icmp eq ptr %call.i241, null
  br i1 %tobool19.not, label %do.end23, label %if.end26

do.end23:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #11
  br label %cleanup

if.end26:                                         ; preds = %if.end14
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %core27 = getelementptr inbounds %struct.wl1273_device, ptr %call.i, i32 0, i32 25
  %7 = ptrtoint ptr %core27 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %core27, align 4
  %irq_flags = getelementptr inbounds %struct.wl1273_device, ptr %call.i, i32 0, i32 19
  %8 = ptrtoint ptr %irq_flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 2049, ptr %irq_flags, align 8
  %client = getelementptr inbounds %struct.wl1273_core, ptr %6, i32 0, i32 8
  %9 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %client, align 4
  %dev29 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  %dev30 = getelementptr inbounds %struct.wl1273_device, ptr %call.i, i32 0, i32 24
  %11 = ptrtoint ptr %dev30 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev29, ptr %dev30, align 8
  %rds_on = getelementptr inbounds %struct.wl1273_device, ptr %call.i, i32 0, i32 11
  %12 = ptrtoint ptr %rds_on to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %rds_on, align 4
  %mode = getelementptr inbounds %struct.wl1273_core, ptr %6, i32 0, i32 2
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %mode, align 4
  %tx_power = getelementptr inbounds %struct.wl1273_device, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %tx_power to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 118, ptr %tx_power, align 8
  %15 = load ptr, ptr %core27, align 4
  %audio_mode = getelementptr inbounds %struct.wl1273_core, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %audio_mode to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %audio_mode, align 8
  %band = getelementptr inbounds %struct.wl1273_device, ptr %call.i, i32 0, i32 9
  %17 = ptrtoint ptr %band to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %band, align 4
  %18 = load ptr, ptr %core27, align 4
  %i2s_mode = getelementptr inbounds %struct.wl1273_core, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %i2s_mode to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %i2s_mode, align 8
  %20 = load ptr, ptr %core27, align 4
  %channel_number = getelementptr inbounds %struct.wl1273_core, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %channel_number to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %channel_number, align 4
  %22 = load ptr, ptr %core27, align 4
  %volume = getelementptr inbounds %struct.wl1273_core, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %volume to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 30904, ptr %volume, align 4
  %rx_frequency = getelementptr inbounds %struct.wl1273_device, ptr %call.i, i32 0, i32 5
  %24 = ptrtoint ptr %rx_frequency to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 87500, ptr %rx_frequency, align 4
  %tx_frequency = getelementptr inbounds %struct.wl1273_device, ptr %call.i, i32 0, i32 6
  %25 = ptrtoint ptr %tx_frequency to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 108000, ptr %tx_frequency, align 8
  %rangelow = getelementptr inbounds %struct.wl1273_device, ptr %call.i, i32 0, i32 7
  %26 = ptrtoint ptr %rangelow to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 87500, ptr %rangelow, align 4
  %rangehigh = getelementptr inbounds %struct.wl1273_device, ptr %call.i, i32 0, i32 8
  %27 = ptrtoint ptr %rangehigh to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 108000, ptr %rangehigh, align 8
  %stereo = getelementptr inbounds %struct.wl1273_device, ptr %call.i, i32 0, i32 10
  %28 = ptrtoint ptr %stereo to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %stereo, align 8
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.11, ptr %call.i, align 8
  %30 = load ptr, ptr %core27, align 4
  %pdata = getelementptr inbounds %struct.wl1273_core, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdata, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %tobool37.not = icmp eq ptr %34, null
  br i1 %tobool37.not, label %do.end83, label %if.then38

if.then38:                                        ; preds = %if.end26
  %client43 = getelementptr inbounds %struct.wl1273_core, ptr %30, i32 0, i32 8
  %35 = ptrtoint ptr %client43 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %client43, align 4
  %call44 = tail call i32 %34(ptr noundef %36) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %do.body52, label %do.end49

do.end49:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev30, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.13) #11
  br label %cleanup

do.body52:                                        ; preds = %if.then38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_radio_probe.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_radio_probe, %if.then64)) #8
          to label %do.end70 [label %if.then64], !srcloc !730

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev30, align 8
  %41 = ptrtoint ptr %core27 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %core27, align 4
  %client67 = getelementptr inbounds %struct.wl1273_core, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %client67 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %client67, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_radio_probe.__UNIQUE_ID_ddebug376, ptr noundef %40, ptr noundef nonnull @.str.15, i32 noundef %46) #8
  br label %do.end70

do.end70:                                         ; preds = %if.then64, %do.body52
  %47 = ptrtoint ptr %core27 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %core27, align 4
  %client72 = getelementptr inbounds %struct.wl1273_core, ptr %48, i32 0, i32 8
  %49 = ptrtoint ptr %client72 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %client72, align 4
  %irq73 = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %irq73 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %irq73, align 4
  %call74 = tail call i32 @request_threaded_irq(i32 noundef %52, ptr noundef null, ptr noundef nonnull @wl1273_fm_irq_thread_handler, i32 noundef 8194, ptr noundef nonnull @.str.16, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp = icmp slt i32 %call74, 0
  br i1 %cmp, label %do.end78, label %if.end85

do.end78:                                         ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev30, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.18, i32 noundef %call74) #11
  br label %err_request_irq

do.end83:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev30, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.21) #11
  br label %cleanup

if.end85:                                         ; preds = %do.end70
  %busy = getelementptr inbounds %struct.wl1273_device, ptr %call.i, i32 0, i32 14
  %57 = ptrtoint ptr %busy to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %busy, align 4
  %wait.i = getelementptr inbounds %struct.wl1273_device, ptr %call.i, i32 0, i32 14, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.55, ptr noundef nonnull @init_completion.__key) #8
  %read_queue = getelementptr inbounds %struct.wl1273_device, ptr %call.i, i32 0, i32 12
  tail call void @__init_waitqueue_head(ptr noundef %read_queue, ptr noundef nonnull @.str.23, ptr noundef nonnull @wl1273_fm_radio_probe.__key) #8
  %call.i242 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 256, i32 noundef 3520) #8
  %write_buf = getelementptr inbounds %struct.wl1273_device, ptr %call.i, i32 0, i32 27
  %58 = ptrtoint ptr %write_buf to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i242, ptr %write_buf, align 4
  %tobool92.not = icmp eq ptr %call.i242, null
  br i1 %tobool92.not, label %if.end85.write_buf_err_crit_edge, label %if.end94

if.end85.write_buf_err_crit_edge:                 ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_buf_err

if.end94:                                         ; preds = %if.end85
  %59 = ptrtoint ptr %dev30 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %dev, ptr %dev30, align 8
  %ctrl_handler = getelementptr inbounds %struct.wl1273_device, ptr %call.i, i32 0, i32 21
  %v4l2dev = getelementptr inbounds %struct.wl1273_device, ptr %call.i, i32 0, i32 22
  %ctrl_handler97 = getelementptr inbounds %struct.wl1273_device, ptr %call.i, i32 0, i32 22, i32 6
  %60 = ptrtoint ptr %ctrl_handler97 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %ctrl_handler, ptr %ctrl_handler97, align 4
  %rds_users = getelementptr inbounds %struct.wl1273_device, ptr %call.i, i32 0, i32 28
  %61 = ptrtoint ptr %rds_users to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %rds_users, align 8
  %call100 = tail call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef %v4l2dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end107, label %do.end105

do.end105:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #11
  br label %write_buf_err

if.end107:                                        ; preds = %if.end94
  %videodev = getelementptr inbounds %struct.wl1273_device, ptr %call.i, i32 0, i32 23
  %62 = call ptr @memcpy(ptr %videodev, ptr @wl1273_viddev_template, i32 1352)
  %v4l2_dev = getelementptr inbounds %struct.wl1273_device, ptr %call.i, i32 0, i32 23, i32 7
  %63 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %v4l2dev, ptr %v4l2_dev, align 4
  %call112 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 6, ptr noundef nonnull @wl1273_fm_radio_probe._key, ptr noundef nonnull @.str.27) #8
  %call114 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @wl1273_ctrl_ops, i32 noundef 9963781, i64 noundef 0, i64 noundef 65535, i64 noundef 1, i64 noundef 30904) #8
  %call116 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @wl1273_ctrl_ops, i32 noundef 9963785, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #8
  %call118 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @wl1273_ctrl_ops, i32 noundef 10160496, i8 noundef zeroext 2, i64 noundef 3, i8 noundef zeroext 1) #8
  %call120 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @wl1273_ctrl_ops, i32 noundef 10160497, i64 noundef 91, i64 noundef 122, i64 noundef 1, i64 noundef 118) #8
  %call122 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @wl1273_ctrl_ops, i32 noundef 10160498, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 255) #8
  %tobool123.not = icmp eq ptr %call122, null
  br i1 %tobool123.not, label %if.end107.if.end125_crit_edge, label %if.then124

if.end107.if.end125_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125

if.then124:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.v4l2_ctrl, ptr %call122, i32 0, i32 20
  %64 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags, align 4
  %or = or i32 %65, 128
  store i32 %or, ptr %flags, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then124, %if.end107.if.end125_crit_edge
  %error = getelementptr inbounds %struct.wl1273_device, ptr %call.i, i32 0, i32 21, i32 9
  %66 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool127.not = icmp eq i32 %67, 0
  br i1 %tobool127.not, label %if.end135, label %if.then128

if.then128:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %67) #11
  br label %handler_init_err

if.end135:                                        ; preds = %if.end125
  %driver_data.i.i = getelementptr inbounds %struct.wl1273_device, ptr %call.i, i32 0, i32 23, i32 5, i32 8
  %68 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i243 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %69 = ptrtoint ptr %driver_data.i.i243 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i, ptr %driver_data.i.i243, align 4
  %70 = load i32, ptr @radio_nr, align 4
  %fops.i = getelementptr inbounds %struct.wl1273_device, ptr %call.i, i32 0, i32 23, i32 3
  %71 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %fops.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %call.i244 = tail call i32 @__video_register_device(ptr noundef %videodev, i32 noundef 2, i32 noundef %70, i32 noundef 1, ptr noundef %74) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i244)
  %tobool139.not = icmp eq i32 %call.i244, 0
  br i1 %tobool139.not, label %if.end135.cleanup_crit_edge, label %do.end143

if.end135.cleanup_crit_edge:                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end143:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32) #11
  br label %handler_init_err

handler_init_err:                                 ; preds = %do.end143, %if.then128
  %r.0 = phi i32 [ %67, %if.then128 ], [ %call.i244, %do.end143 ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #8
  tail call void @v4l2_device_unregister(ptr noundef %v4l2dev) #8
  br label %write_buf_err

write_buf_err:                                    ; preds = %handler_init_err, %do.end105, %if.end85.write_buf_err_crit_edge
  %r.1 = phi i32 [ %call100, %do.end105 ], [ %r.0, %handler_init_err ], [ -12, %if.end85.write_buf_err_crit_edge ]
  %75 = ptrtoint ptr %core27 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %core27, align 4
  %client149 = getelementptr inbounds %struct.wl1273_core, ptr %76, i32 0, i32 8
  %77 = ptrtoint ptr %client149 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %client149, align 4
  %irq150 = getelementptr inbounds %struct.i2c_client, ptr %78, i32 0, i32 6
  %79 = ptrtoint ptr %irq150 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %irq150, align 4
  %call151 = tail call ptr @free_irq(i32 noundef %80, ptr noundef nonnull %call.i) #8
  br label %err_request_irq

err_request_irq:                                  ; preds = %write_buf_err, %do.end78
  %r.2 = phi i32 [ %call74, %do.end78 ], [ %r.1, %write_buf_err ]
  %81 = ptrtoint ptr %core27 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %core27, align 4
  %pdata153 = getelementptr inbounds %struct.wl1273_core, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %pdata153 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pdata153, align 8
  %free_resources = getelementptr inbounds %struct.wl1273_fm_platform_data, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %free_resources to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %free_resources, align 4
  tail call void %86() #8
  br label %cleanup

cleanup:                                          ; preds = %err_request_irq, %if.end135.cleanup_crit_edge, %do.end83, %do.end49, %do.end23, %if.end9.cleanup_crit_edge, %do.end7
  %retval.0 = phi i32 [ 0, %if.end135.cleanup_crit_edge ], [ %call44, %do.end49 ], [ %r.2, %err_request_irq ], [ -22, %do.end83 ], [ -12, %do.end23 ], [ -22, %do.end7 ], [ -12, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1273_fm_radio_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %core1 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353) #11
  %client = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %1) #8
  %pdata = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdata, align 8
  %free_resources = getelementptr inbounds %struct.wl1273_fm_platform_data, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %free_resources to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %free_resources, align 4
  tail call void %11() #8
  %ctrl_handler = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 21
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #8
  %videodev = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 23
  tail call void @video_unregister_device(ptr noundef %videodev) #8
  %v4l2dev = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 22
  tail call void @v4l2_device_unregister(ptr noundef %v4l2dev) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1273_fm_irq_thread_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %flags = alloca i16, align 2
  %level = alloca i16, align 2
  %freq = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %core1 = getelementptr inbounds %struct.wl1273_device, ptr %dev_id, i32 0, i32 25
  %0 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %flags) #8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %flags, align 2, !annotation !731
  %read = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read, align 8
  %call = call i32 %4(ptr noundef %1, i8 noundef zeroext 3, ptr noundef nonnull %flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags, align 2
  %7 = and i16 %6, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool2.not = icmp eq i16 %7, 0
  br i1 %tobool2.not, label %if.end.if.end10_crit_edge, label %if.then3

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %irq_received = getelementptr inbounds %struct.wl1273_device, ptr %dev_id, i32 0, i32 20
  %8 = ptrtoint ptr %irq_received to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %6, ptr %irq_received, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_irq_thread_handler, %if.then8)) #8
          to label %if.end10 [label %if.then8], !srcloc !730

if.then8:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.wl1273_device, ptr %dev_id, i32 0, i32 24
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug300, ptr noundef %10, ptr noundef nonnull @.str.35) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then3, %if.end.if.end10_crit_edge
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %flags, align 2
  %13 = and i16 %12, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool13.not = icmp eq i16 %13, 0
  br i1 %tobool13.not, label %if.end10.if.end16_crit_edge, label %if.then14

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  call void @msleep(i32 noundef 200) #8
  call fastcc void @wl1273_fm_rds(ptr noundef %dev_id)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end10.if.end16_crit_edge
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flags, align 2
  %16 = and i16 %15, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool19.not = icmp eq i16 %16, 0
  br i1 %tobool19.not, label %if.end16.if.end38_crit_edge, label %do.body21

if.end16.if.end38_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

do.body21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_irq_thread_handler, %if.then33)) #8
          to label %if.end38 [label %if.then33], !srcloc !730

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #10
  %dev34 = getelementptr inbounds %struct.wl1273_device, ptr %dev_id, i32 0, i32 24
  %17 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev34, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug301, ptr noundef %18, ptr noundef nonnull @.str.36) #8
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %do.body21, %if.end16.if.end38_crit_edge
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags, align 2
  %21 = and i16 %20, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool41.not = icmp eq i16 %21, 0
  br i1 %tobool41.not, label %if.end38.if.end60_crit_edge, label %do.body43

if.end38.if.end60_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

do.body43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_irq_thread_handler, %if.then55)) #8
          to label %if.end60 [label %if.then55], !srcloc !730

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #10
  %dev56 = getelementptr inbounds %struct.wl1273_device, ptr %dev_id, i32 0, i32 24
  %22 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev56, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug302, ptr noundef %23, ptr noundef nonnull @.str.37) #8
  br label %if.end60

if.end60:                                         ; preds = %if.then55, %do.body43, %if.end38.if.end60_crit_edge
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %flags, align 2
  %26 = and i16 %25, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool63.not = icmp eq i16 %26, 0
  br i1 %tobool63.not, label %if.end60.if.end92_crit_edge, label %if.then64

if.end60.if.end92_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then64:                                        ; preds = %if.end60
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %level) #8
  %27 = ptrtoint ptr %level to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -1, ptr %level, align 2, !annotation !731
  %28 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read, align 8
  %call66 = call i32 %29(ptr noundef %1, i8 noundef zeroext 1, ptr noundef nonnull %level) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %cleanup.thread503

cleanup.thread503:                                ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %level) #8
  br label %out

if.end69:                                         ; preds = %if.then64
  %30 = ptrtoint ptr %level to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %level, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %31)
  %cmp = icmp ugt i16 %31, 14
  br i1 %cmp, label %do.body73, label %if.end69.cleanup.thread_crit_edge

if.end69.cleanup.thread_crit_edge:                ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

do.body73:                                        ; preds = %if.end69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_irq_thread_handler, %if.then85)) #8
          to label %cleanup [label %if.then85], !srcloc !730

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #10
  %dev86 = getelementptr inbounds %struct.wl1273_device, ptr %dev_id, i32 0, i32 24
  %32 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev86, align 8
  %34 = ptrtoint ptr %level to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %level, align 2
  %conv87 = zext i16 %35 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug303, ptr noundef %33, ptr noundef nonnull @.str.38, i32 noundef %conv87) #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then85, %if.end69.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %level) #8
  br label %if.end92

cleanup:                                          ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %level) #8
  br label %if.end92

if.end92:                                         ; preds = %cleanup, %cleanup.thread, %if.end60.if.end92_crit_edge
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %flags, align 2
  %38 = and i16 %37, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool95.not = icmp eq i16 %38, 0
  br i1 %tobool95.not, label %if.end92.if.end114_crit_edge, label %do.body97

if.end92.if.end114_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114

do.body97:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_irq_thread_handler, %if.then109)) #8
          to label %if.end114 [label %if.then109], !srcloc !730

if.then109:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #10
  %dev110 = getelementptr inbounds %struct.wl1273_device, ptr %dev_id, i32 0, i32 24
  %39 = ptrtoint ptr %dev110 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev110, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug304, ptr noundef %40, ptr noundef nonnull @.str.39) #8
  br label %if.end114

if.end114:                                        ; preds = %if.then109, %do.body97, %if.end92.if.end114_crit_edge
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %flags, align 2
  %43 = and i16 %42, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool117.not = icmp eq i16 %43, 0
  br i1 %tobool117.not, label %if.end114.if.end136_crit_edge, label %do.body119

if.end114.if.end136_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

do.body119:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_irq_thread_handler, %if.then131)) #8
          to label %if.end136 [label %if.then131], !srcloc !730

if.then131:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #10
  %dev132 = getelementptr inbounds %struct.wl1273_device, ptr %dev_id, i32 0, i32 24
  %44 = ptrtoint ptr %dev132 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev132, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug305, ptr noundef %45, ptr noundef nonnull @.str.40) #8
  br label %if.end136

if.end136:                                        ; preds = %if.then131, %do.body119, %if.end114.if.end136_crit_edge
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %flags, align 2
  %48 = and i16 %47, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool139.not = icmp eq i16 %48, 0
  br i1 %tobool139.not, label %if.end136.if.end158_crit_edge, label %do.body141

if.end136.if.end158_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

do.body141:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_irq_thread_handler, %if.then153)) #8
          to label %if.end158 [label %if.then153], !srcloc !730

if.then153:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #10
  %dev154 = getelementptr inbounds %struct.wl1273_device, ptr %dev_id, i32 0, i32 24
  %49 = ptrtoint ptr %dev154 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev154, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug306, ptr noundef %50, ptr noundef nonnull @.str.41) #8
  br label %if.end158

if.end158:                                        ; preds = %if.then153, %do.body141, %if.end136.if.end158_crit_edge
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %flags, align 2
  %53 = and i16 %52, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool161.not = icmp eq i16 %53, 0
  br i1 %tobool161.not, label %if.end158.if.end180_crit_edge, label %do.body163

if.end158.if.end180_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end180

do.body163:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_irq_thread_handler, %if.then175)) #8
          to label %if.end180 [label %if.then175], !srcloc !730

if.then175:                                       ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #10
  %dev176 = getelementptr inbounds %struct.wl1273_device, ptr %dev_id, i32 0, i32 24
  %54 = ptrtoint ptr %dev176 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev176, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug307, ptr noundef %55, ptr noundef nonnull @.str.42) #8
  br label %if.end180

if.end180:                                        ; preds = %if.then175, %do.body163, %if.end158.if.end180_crit_edge
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %flags, align 2
  %58 = and i16 %57, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool183.not = icmp eq i16 %58, 0
  br i1 %tobool183.not, label %if.end180.if.end202_crit_edge, label %do.body185

if.end180.if.end202_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end202

do.body185:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_irq_thread_handler, %if.then197)) #8
          to label %if.end202 [label %if.then197], !srcloc !730

if.then197:                                       ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #10
  %dev198 = getelementptr inbounds %struct.wl1273_device, ptr %dev_id, i32 0, i32 24
  %59 = ptrtoint ptr %dev198 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev198, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug308, ptr noundef %60, ptr noundef nonnull @.str.43) #8
  br label %if.end202

if.end202:                                        ; preds = %if.then197, %do.body185, %if.end180.if.end202_crit_edge
  %61 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %flags, align 2
  %63 = and i16 %62, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool205.not = icmp eq i16 %63, 0
  br i1 %tobool205.not, label %if.end202.if.end241_crit_edge, label %if.then206

if.end202.if.end241_crit_edge:                    ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end241

if.then206:                                       ; preds = %if.end202
  %busy = getelementptr inbounds %struct.wl1273_device, ptr %dev_id, i32 0, i32 14
  call void @complete(ptr noundef %busy) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_irq_thread_handler, %if.then219)) #8
          to label %do.body224 [label %if.then219], !srcloc !730

if.then219:                                       ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #10
  %dev220 = getelementptr inbounds %struct.wl1273_device, ptr %dev_id, i32 0, i32 24
  %64 = ptrtoint ptr %dev220 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev220, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug309, ptr noundef %65, ptr noundef nonnull @.str.44) #8
  br label %do.body224

do.body224:                                       ; preds = %if.then219, %if.then206
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_irq_thread_handler, %if.then236)) #8
          to label %if.end241 [label %if.then236], !srcloc !730

if.then236:                                       ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #10
  %dev237 = getelementptr inbounds %struct.wl1273_device, ptr %dev_id, i32 0, i32 24
  %66 = ptrtoint ptr %dev237 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev237, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug310, ptr noundef %67, ptr noundef nonnull @.str.45) #8
  br label %if.end241

if.end241:                                        ; preds = %if.then236, %do.body224, %if.end202.if.end241_crit_edge
  %68 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %flags, align 2
  %70 = and i16 %69, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool244.not = icmp eq i16 %70, 0
  br i1 %tobool244.not, label %if.end241.if.end263_crit_edge, label %do.body246

if.end241.if.end263_crit_edge:                    ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end263

do.body246:                                       ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_irq_thread_handler, %if.then258)) #8
          to label %if.end263 [label %if.then258], !srcloc !730

if.then258:                                       ; preds = %do.body246
  call void @__sanitizer_cov_trace_pc() #10
  %dev259 = getelementptr inbounds %struct.wl1273_device, ptr %dev_id, i32 0, i32 24
  %71 = ptrtoint ptr %dev259 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev259, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug311, ptr noundef %72, ptr noundef nonnull @.str.46) #8
  br label %if.end263

if.end263:                                        ; preds = %if.then258, %do.body246, %if.end241.if.end263_crit_edge
  %73 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %flags, align 2
  %75 = and i16 %74, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool266.not = icmp eq i16 %75, 0
  br i1 %tobool266.not, label %if.end263.if.end285_crit_edge, label %do.body268

if.end263.if.end285_crit_edge:                    ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end285

do.body268:                                       ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_irq_thread_handler, %if.then280)) #8
          to label %if.end285 [label %if.then280], !srcloc !730

if.then280:                                       ; preds = %do.body268
  call void @__sanitizer_cov_trace_pc() #10
  %dev281 = getelementptr inbounds %struct.wl1273_device, ptr %dev_id, i32 0, i32 24
  %76 = ptrtoint ptr %dev281 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev281, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug312, ptr noundef %77, ptr noundef nonnull @.str.47) #8
  br label %if.end285

if.end285:                                        ; preds = %if.then280, %do.body268, %if.end263.if.end285_crit_edge
  %78 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %flags, align 2
  %80 = and i16 %79, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool288.not = icmp eq i16 %80, 0
  br i1 %tobool288.not, label %if.end285.out_crit_edge, label %if.then289

if.end285.out_crit_edge:                          ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then289:                                       ; preds = %if.end285
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %freq) #8
  %81 = ptrtoint ptr %freq to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 -1, ptr %freq, align 2, !annotation !731
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_irq_thread_handler, %if.then302)) #8
          to label %do.end306 [label %if.then302], !srcloc !730

if.then302:                                       ; preds = %if.then289
  call void @__sanitizer_cov_trace_pc() #10
  %dev303 = getelementptr inbounds %struct.wl1273_device, ptr %dev_id, i32 0, i32 24
  %82 = ptrtoint ptr %dev303 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev303, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug313, ptr noundef %83, ptr noundef nonnull @.str.48) #8
  br label %do.end306

do.end306:                                        ; preds = %if.then302, %if.then289
  %mode = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 2
  %84 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %85)
  %cmp307 = icmp eq i32 %85, 1
  br i1 %cmp307, label %if.then309, label %if.else350

if.then309:                                       ; preds = %do.end306
  %write = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 10
  %86 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write, align 4
  %call310 = call i32 %87(ptr noundef %1, i8 noundef zeroext 45, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call310)
  %tobool311.not = icmp eq i32 %call310, 0
  br i1 %tobool311.not, label %if.end317, label %do.end315

do.end315:                                        ; preds = %if.then309
  call void @__sanitizer_cov_trace_pc() #10
  %dev316 = getelementptr inbounds %struct.wl1273_device, ptr %dev_id, i32 0, i32 24
  %88 = ptrtoint ptr %dev316 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev316, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.34, i32 noundef %call310) #11
  br label %cleanup392

if.end317:                                        ; preds = %if.then309
  %90 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %read, align 8
  %call319 = call i32 %91(ptr noundef %1, i8 noundef zeroext 10, ptr noundef nonnull %freq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call319)
  %tobool320.not = icmp eq i32 %call319, 0
  br i1 %tobool320.not, label %if.end322, label %if.end317.cleanup392_crit_edge

if.end317.cleanup392_crit_edge:                   ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup392

if.end322:                                        ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #10
  %band = getelementptr inbounds %struct.wl1273_device, ptr %dev_id, i32 0, i32 9
  %92 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %93)
  %cmp323 = icmp eq i32 %93, 1
  %94 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %freq, align 2
  %conv326 = zext i16 %95 to i32
  %mul = mul nuw nsw i32 %conv326, 50
  %. = select i1 %cmp323, i32 76000, i32 87500
  %add329 = add nuw nsw i32 %mul, %.
  %96 = getelementptr inbounds %struct.wl1273_device, ptr %dev_id, i32 0, i32 5
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %add329, ptr %96, align 4
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_irq_thread_handler, %if.then344)) #8
          to label %do.body375 [label %if.then344], !srcloc !730

if.then344:                                       ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #10
  %dev345 = getelementptr inbounds %struct.wl1273_device, ptr %dev_id, i32 0, i32 24
  %98 = ptrtoint ptr %dev345 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev345, align 8
  %100 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %96, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug314, ptr noundef %99, ptr noundef nonnull @.str.50, i32 noundef %101) #8
  br label %do.body375

if.else350:                                       ; preds = %do.end306
  %102 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %read, align 8
  %call352 = call i32 %103(ptr noundef %1, i8 noundef zeroext 55, ptr noundef nonnull %freq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call352)
  %tobool353.not = icmp eq i32 %call352, 0
  br i1 %tobool353.not, label %do.body356, label %if.else350.cleanup392_crit_edge

if.else350.cleanup392_crit_edge:                  ; preds = %if.else350
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup392

do.body356:                                       ; preds = %if.else350
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_irq_thread_handler, %if.then368)) #8
          to label %do.body375 [label %if.then368], !srcloc !730

if.then368:                                       ; preds = %do.body356
  call void @__sanitizer_cov_trace_pc() #10
  %dev369 = getelementptr inbounds %struct.wl1273_device, ptr %dev_id, i32 0, i32 24
  %104 = ptrtoint ptr %dev369 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev369, align 8
  %106 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %freq, align 2
  %conv370 = zext i16 %107 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug315, ptr noundef %105, ptr noundef nonnull @.str.50, i32 noundef %conv370) #8
  br label %do.body375

do.body375:                                       ; preds = %if.then368, %do.body356, %if.then344, %if.end322
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_irq_thread_handler, %if.then387)) #8
          to label %cleanup392 [label %if.then387], !srcloc !730

if.then387:                                       ; preds = %do.body375
  call void @__sanitizer_cov_trace_pc() #10
  %dev388 = getelementptr inbounds %struct.wl1273_device, ptr %dev_id, i32 0, i32 24
  %108 = ptrtoint ptr %dev388 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev388, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug316, ptr noundef %109, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.34) #8
  br label %cleanup392

cleanup392:                                       ; preds = %if.then387, %do.body375, %if.else350.cleanup392_crit_edge, %if.end317.cleanup392_crit_edge, %do.end315
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %freq) #8
  br label %out

out:                                              ; preds = %cleanup392, %if.end285.out_crit_edge, %cleanup.thread503, %entry.out_crit_edge
  %write396 = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 10
  %110 = ptrtoint ptr %write396 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %write396, align 4
  %irq_flags = getelementptr inbounds %struct.wl1273_device, ptr %dev_id, i32 0, i32 19
  %112 = ptrtoint ptr %irq_flags to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %irq_flags, align 8
  %call397 = call i32 %111(ptr noundef %1, i8 noundef zeroext 26, i16 noundef zeroext %113) #8
  %busy398 = getelementptr inbounds %struct.wl1273_device, ptr %dev_id, i32 0, i32 14
  call void @complete(ptr noundef %busy398) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %flags) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wl1273_fm_rds(ptr noundef %radio) unnamed_addr #2 align 64 {
entry:
  %val = alloca i16, align 2
  %b0 = alloca i8, align 1
  %rds = alloca %struct.v4l2_rds_data, align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %core1 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 25
  %0 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core1, align 4
  %client2 = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client2, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %val, align 2, !annotation !731
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0) #8
  %5 = ptrtoint ptr %b0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 5, ptr %b0, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %rds) #8
  %6 = call ptr @memset(ptr %rds, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #8
  %7 = getelementptr inbounds i8, ptr %msg, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %addr3 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %addr3 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr3, align 2
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %b0, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %15 = load i16, ptr %addr3, align 2
  %16 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %arrayinit.element, align 4
  %flags6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %17 = ptrtoint ptr %flags6 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags6, align 2
  %len7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %18 = ptrtoint ptr %len7 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 3, ptr %len7, align 4
  %buf8 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %19 = ptrtoint ptr %buf8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %rds, ptr %buf8, align 4
  %mode = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.not = icmp eq i32 %21, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %read = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read, align 8
  %call = call i32 %23(ptr noundef %1, i8 noundef zeroext 4, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %val, align 2
  %26 = and i16 %25, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp11 = icmp eq i16 %26, 0
  br i1 %cmp11, label %if.end10.cleanup_crit_edge, label %do.body.preheader

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.preheader:                                ; preds = %if.end10
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %dev = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 24
  %block = getelementptr inbounds %struct.v4l2_rds_data, ptr %rds, i32 0, i32 2
  %buffer = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 15
  %wr_index = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 18
  %buf_size = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 16
  %rd_index = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 17
  br label %do.body

do.body:                                          ; preds = %if.end60.do.body_crit_edge, %do.body.preheader
  %27 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter, align 8
  %call15 = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %msg, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 2
  br i1 %cmp16.not, label %do.body.if.end20_crit_edge, label %do.end

do.body.if.end20_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef %call15) #11
  br label %if.end20

if.end20:                                         ; preds = %do.end, %do.body.if.end20_crit_edge
  %31 = ptrtoint ptr %block to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %block, align 1
  %conv21 = zext i8 %32 to i32
  %and22 = and i32 %conv21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.do.end89_crit_edge, label %if.end25

if.end20.do.end89_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end89

if.end25:                                         ; preds = %if.end20
  %and27 = and i8 %32, 7
  %or = mul nuw nsw i8 %and27, 9
  %33 = ptrtoint ptr %block to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %or, ptr %block, align 1
  %and36 = and i32 %conv21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.else, label %if.end25.if.end60.sink.split_crit_edge

if.end25.if.end60.sink.split_crit_edge:           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60.sink.split

if.else:                                          ; preds = %if.end25
  %and48 = and i32 %conv21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.else.if.end60_crit_edge, label %if.else.if.end60.sink.split_crit_edge

if.else.if.end60.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60.sink.split

if.else.if.end60_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.end60.sink.split:                              ; preds = %if.else.if.end60.sink.split_crit_edge, %if.end25.if.end60.sink.split_crit_edge
  %.sink2 = phi i8 [ -128, %if.end25.if.end60.sink.split_crit_edge ], [ 64, %if.else.if.end60.sink.split_crit_edge ]
  %34 = or i8 %or, %.sink2
  %35 = ptrtoint ptr %block to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %block, align 1
  br label %if.end60

if.end60:                                         ; preds = %if.end60.sink.split, %if.else.if.end60_crit_edge
  %36 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buffer, align 8
  %38 = ptrtoint ptr %wr_index to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %wr_index, align 4
  %arrayidx = getelementptr i8, ptr %37, i32 %39
  %40 = call ptr @memcpy(ptr %arrayidx, ptr %rds, i32 3)
  %41 = load i32, ptr %wr_index, align 4
  %add = add i32 %41, 3
  %42 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %buf_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %43)
  %cmp63.not = icmp ult i32 %add, %43
  %spec.store.select = select i1 %cmp63.not, i32 %add, i32 0
  %44 = ptrtoint ptr %wr_index to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %spec.store.select, ptr %wr_index, align 4
  %45 = ptrtoint ptr %rd_index to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rd_index, align 8
  %cmp69 = icmp eq i32 %spec.store.select, %46
  br i1 %cmp69, label %do.body72, label %if.end60.do.body_crit_edge

if.end60.do.body_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body72:                                        ; preds = %if.end60
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_rds.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_rds, %if.then77)) #8
          to label %do.end81 [label %if.then77], !srcloc !730

if.then77:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_rds.__UNIQUE_ID_ddebug299, ptr noundef %48, ptr noundef nonnull @.str.54) #8
  br label %do.end81

do.end81:                                         ; preds = %if.then77, %do.body72
  %49 = ptrtoint ptr %rd_index to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %rd_index, align 8
  %50 = ptrtoint ptr %wr_index to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %wr_index, align 4
  br label %do.end89

do.end89:                                         ; preds = %do.end81, %if.end20.do.end89_crit_edge
  %51 = ptrtoint ptr %wr_index to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %wr_index, align 4
  %53 = ptrtoint ptr %rd_index to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rd_index, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp92.not = icmp eq i32 %52, %54
  br i1 %cmp92.not, label %do.end89.cleanup_crit_edge, label %if.then94

do.end89.cleanup_crit_edge:                       ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then94:                                        ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #10
  %read_queue = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 12
  call void @__wake_up(ptr noundef %read_queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then94, %do.end89.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %rds) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @wl1273_vdev_release(ptr nocapture noundef %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1273_fm_fops_read(ptr noundef %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %val = alloca i16, align 2
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %core2 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %core2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core2, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %val, align 2, !annotation !731
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_fops_read.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_fops_read, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !730

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_fops_read.__UNIQUE_ID_ddebug347, ptr noundef %6, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.56) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mode = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.not = icmp eq i32 %8, 1
  br i1 %cmp.not, label %if.end7, label %do.end.cleanup135_crit_edge

do.end.cleanup135_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup135

if.end7:                                          ; preds = %do.end
  %rds_users = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 28
  %9 = ptrtoint ptr %rds_users to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rds_users, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp8 = icmp eq i32 %10, 0
  br i1 %cmp8, label %do.end12, label %if.end14

do.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %dev13 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %11 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev13, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.56) #11
  br label %cleanup135

if.end14:                                         ; preds = %if.end7
  %lock = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 7
  %call15 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.cleanup135_crit_edge

if.end14.cleanup135_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup135

if.end18:                                         ; preds = %if.end14
  %owner = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 26
  %13 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %owner, align 8
  %tobool19.not = icmp eq ptr %14, null
  %cmp21.not = icmp eq ptr %14, %file
  %or.cond = or i1 %tobool19.not, %cmp21.not
  br i1 %or.cond, label %if.end23, label %if.end18.do.body117_crit_edge

if.end18.do.body117_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body117

if.end23:                                         ; preds = %if.end18
  %15 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %file, ptr %owner, align 8
  %read = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 9
  %16 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read, align 8
  %call25 = call i32 %17(ptr noundef %3, i8 noundef zeroext 4, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.else, label %do.end30

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %dev31 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %18 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev31, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.56) #11
  br label %do.body117

if.else:                                          ; preds = %if.end23
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %val, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp32 = icmp eq i16 %21, 0
  br i1 %cmp32, label %do.end37, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.else
  %wr_index = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 18
  %rd_index = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 17
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %dev59 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %read_queue = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 12
  br label %while.cond

do.end37:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dev38 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %22 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev38, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.63) #11
  br label %do.body117

while.cond:                                       ; preds = %if.end87.while.cond_crit_edge, %while.cond.preheader
  %24 = ptrtoint ptr %wr_index to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %wr_index, align 4
  %26 = ptrtoint ptr %rd_index to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rd_index, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp41 = icmp eq i32 %25, %27
  br i1 %cmp41, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %28 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %f_flags, align 4
  %and = and i32 %29, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool43.not = icmp eq i32 %and, 0
  br i1 %tobool43.not, label %do.body46, label %while.body.do.body117_crit_edge

while.body.do.body117_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body117

do.body46:                                        ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_fops_read.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_fops_read, %if.then58)) #8
          to label %do.end62 [label %if.then58], !srcloc !730

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev59, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_fops_read.__UNIQUE_ID_ddebug348, ptr noundef %31, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.56) #8
  br label %do.end62

do.end62:                                         ; preds = %if.then58, %do.body46
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1226) #8
  %32 = ptrtoint ptr %wr_index to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %wr_index, align 4
  %34 = ptrtoint ptr %rd_index to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rd_index, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp71.not = icmp eq i32 %33, %35
  br i1 %cmp71.not, label %if.then73, label %do.end62.if.end87_crit_edge

do.end62.if.end87_crit_edge:                      ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then73:                                        ; preds = %do.end62
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %36 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %call75204 = call i32 @prepare_to_wait_event(ptr noundef %read_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %37 = ptrtoint ptr %wr_index to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %wr_index, align 4
  %39 = ptrtoint ptr %rd_index to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rd_index, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp78.not205 = icmp eq i32 %38, %40
  br i1 %cmp78.not205, label %if.then73.if.end81_crit_edge, label %if.then73.for.end_crit_edge

if.then73.for.end_crit_edge:                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then73.if.end81_crit_edge:                     ; preds = %if.then73
  br label %if.end81

if.end81:                                         ; preds = %cleanup.if.end81_crit_edge, %if.then73.if.end81_crit_edge
  %call75206 = phi i32 [ %call75, %cleanup.if.end81_crit_edge ], [ %call75204, %if.then73.if.end81_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75206)
  %tobool82.not = icmp eq i32 %call75206, 0
  br i1 %tobool82.not, label %cleanup, label %if.end81.__out_crit_edge

if.end81.__out_crit_edge:                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %__out

cleanup:                                          ; preds = %if.end81
  call void @schedule() #8
  %call75 = call i32 @prepare_to_wait_event(ptr noundef %read_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %41 = ptrtoint ptr %wr_index to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %wr_index, align 4
  %43 = ptrtoint ptr %rd_index to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rd_index, align 8
  %cmp78.not = icmp eq i32 %42, %44
  br i1 %cmp78.not, label %cleanup.if.end81_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.if.end81_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then73.for.end_crit_edge
  call void @finish_wait(ptr noundef %read_queue, ptr noundef nonnull %__wq_entry) #8
  br label %__out

__out:                                            ; preds = %for.end, %if.end81.__out_crit_edge
  %__ret74.1190 = phi i32 [ 0, %for.end ], [ %call75206, %if.end81.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end87

if.end87:                                         ; preds = %__out, %do.end62.if.end87_crit_edge
  %__ret.0 = phi i32 [ 0, %do.end62.if.end87_crit_edge ], [ %__ret74.1190, %__out ]
  %cmp89 = icmp slt i32 %__ret.0, 0
  br i1 %cmp89, label %if.end87.do.body117_crit_edge, label %if.end87.while.cond_crit_edge

if.end87.while.cond_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

if.end87.do.body117_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body117

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %45 = icmp ult i32 %count, 3
  br i1 %45, label %while.end.do.body117_crit_edge, label %while.body96.lr.ph

while.end.do.body117_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body117

while.body96.lr.ph:                               ; preds = %while.end
  %div = udiv i32 %count, 3
  %buffer = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 15
  %buf_size = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 16
  %46 = mul nuw i32 %div, 3
  br label %while.body96

while.body96:                                     ; preds = %if.end107.while.body96_crit_edge, %while.body96.lr.ph
  %buf.addr.0210 = phi ptr [ %buf, %while.body96.lr.ph ], [ %add.ptr, %if.end107.while.body96_crit_edge ]
  %r.0209 = phi i32 [ 0, %while.body96.lr.ph ], [ %add115, %if.end107.while.body96_crit_edge ]
  %block_count.0208 = phi i32 [ 0, %while.body96.lr.ph ], [ %inc, %if.end107.while.body96_crit_edge ]
  %47 = ptrtoint ptr %rd_index to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rd_index, align 8
  %49 = ptrtoint ptr %wr_index to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %wr_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp99 = icmp eq i32 %48, %50
  br i1 %cmp99, label %while.body96.do.body117_crit_edge, label %if.end102

while.body96.do.body117_crit_edge:                ; preds = %while.body96
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body117

if.end102:                                        ; preds = %while.body96
  %51 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buffer, align 8
  %arrayidx = getelementptr i8, ptr %52, i32 %48
  call void @__might_fault(ptr noundef nonnull @.str.70, i32 noundef 174) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end102.do.body117_crit_edge, label %if.end.i.i

if.end102.do.body117_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body117

if.end.i.i:                                       ; preds = %if.end102
  %53 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0210, i32 3, i32 -1226833920) #12, !srcloc !732
  %asmresult.i.i = extractvalue { i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %copy_to_user.exit, label %if.end.i.i.do.body117_crit_edge

if.end.i.i.do.body117_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body117

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 3) #8
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %buf.addr.0210, ptr noundef %arrayidx, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool105.not = icmp eq i32 %call.i1.i.i, 0
  br i1 %tobool105.not, label %if.end107, label %copy_to_user.exit.do.body117_crit_edge

copy_to_user.exit.do.body117_crit_edge:           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body117

if.end107:                                        ; preds = %copy_to_user.exit
  %54 = ptrtoint ptr %rd_index to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rd_index, align 8
  %add = add i32 %55, 3
  %56 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %buf_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %57)
  %cmp110.not = icmp ult i32 %add, %57
  %spec.store.select = select i1 %cmp110.not, i32 %add, i32 0
  %58 = ptrtoint ptr %rd_index to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %spec.store.select, ptr %rd_index, align 8
  %inc = add nuw nsw i32 %block_count.0208, 1
  %add.ptr = getelementptr i8, ptr %buf.addr.0210, i32 3
  %add115 = add nuw i32 %r.0209, 3
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %if.end107.do.body117_crit_edge, label %if.end107.while.body96_crit_edge

if.end107.while.body96_crit_edge:                 ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body96

if.end107.do.body117_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body117

do.body117:                                       ; preds = %if.end107.do.body117_crit_edge, %copy_to_user.exit.do.body117_crit_edge, %if.end.i.i.do.body117_crit_edge, %if.end102.do.body117_crit_edge, %while.body96.do.body117_crit_edge, %while.end.do.body117_crit_edge, %if.end87.do.body117_crit_edge, %while.body.do.body117_crit_edge, %do.end37, %do.end30, %if.end18.do.body117_crit_edge
  %r.1 = phi i32 [ %call25, %do.end30 ], [ -61, %do.end37 ], [ -16, %if.end18.do.body117_crit_edge ], [ 0, %while.end.do.body117_crit_edge ], [ %46, %if.end107.do.body117_crit_edge ], [ %r.0209, %while.body96.do.body117_crit_edge ], [ %r.0209, %copy_to_user.exit.do.body117_crit_edge ], [ %r.0209, %if.end102.do.body117_crit_edge ], [ %r.0209, %if.end.i.i.do.body117_crit_edge ], [ -4, %if.end87.do.body117_crit_edge ], [ -11, %while.body.do.body117_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_fops_read.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_fops_read, %if.then129)) #8
          to label %do.end133 [label %if.then129], !srcloc !730

if.then129:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #10
  %dev130 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %59 = ptrtoint ptr %dev130 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev130, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_fops_read.__UNIQUE_ID_ddebug349, ptr noundef %60, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.56) #8
  br label %do.end133

do.end133:                                        ; preds = %if.then129, %do.body117
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup135

cleanup135:                                       ; preds = %do.end133, %if.end14.cleanup135_crit_edge, %do.end12, %do.end.cleanup135_crit_edge
  %retval.0 = phi i32 [ 0, %do.end12 ], [ %r.1, %do.end133 ], [ 0, %do.end.cleanup135_crit_edge ], [ -4, %if.end14.cleanup135_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1273_fm_fops_write(ptr noundef %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %core2 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %core2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_fops_write.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_fops_write, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !730

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_fops_write.__UNIQUE_ID_ddebug341, ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.71) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mode = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.not = icmp eq i32 %7, 2
  br i1 %cmp.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %rds_users = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 28
  %8 = ptrtoint ptr %rds_users to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rds_users, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp8 = icmp eq i32 %9, 0
  br i1 %cmp8, label %do.end12, label %if.end14

do.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %dev13 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %10 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev13, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.71) #11
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %lock = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 7
  %call15 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %owner = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 26
  %12 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %owner, align 8
  %tobool19.not = icmp eq ptr %13, null
  %cmp21.not = icmp eq ptr %13, %file
  %or.cond = or i1 %tobool19.not, %cmp21.not
  br i1 %or.cond, label %if.end23, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end23:                                         ; preds = %if.end18
  %14 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %file, ptr %owner, align 8
  %15 = tail call i32 @llvm.umin.i32(i32 %count, i32 255)
  %16 = trunc i32 %15 to i16
  %write = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 10
  %17 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write, align 4
  %call28 = tail call i32 %18(ptr noundef %3, i8 noundef zeroext 98, i16 noundef zeroext %16) #8
  %write_buf = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 27
  %19 = ptrtoint ptr %write_buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_buf, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 1
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %15, i1 noundef zeroext false) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.70, i32 noundef 156) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end23.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end23.if.end.i.i_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end23
  %21 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %15, i32 -1226833920) #12, !srcloc !733
  %asmresult.i.i = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !734

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %15) #8
  %22 = tail call i32 @llvm.read_register.i32(metadata !720) #8
  %and.i.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !735
  %and.i.i.i.i = and i32 %24, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !736
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !737
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %15) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #8, !srcloc !736
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !737
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end23.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %15, %if.end23.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %15, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body34, label %if.then11.i.i, !prof !734

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %15, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %sub.i.i
  %25 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %out

do.body34:                                        ; preds = %if.end.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_fops_write.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_fops_write, %if.then46)) #8
          to label %do.body52 [label %if.then46], !srcloc !730

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  %dev47 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %26 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev47, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_fops_write.__UNIQUE_ID_ddebug342, ptr noundef %27, ptr noundef nonnull @.str.72, i32 noundef %15) #8
  br label %do.body52

do.body52:                                        ; preds = %if.then46, %do.body34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_fops_write.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_fops_write, %if.then64)) #8
          to label %do.end69 [label %if.then64], !srcloc !730

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #10
  %dev65 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %28 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev65, align 8
  %30 = ptrtoint ptr %write_buf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_buf, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_fops_write.__UNIQUE_ID_ddebug343, ptr noundef %29, ptr noundef nonnull @.str.73, ptr noundef %31) #8
  br label %do.end69

do.end69:                                         ; preds = %if.then64, %do.body52
  %32 = ptrtoint ptr %write_buf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_buf, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 99, ptr %33, align 1
  %write_data = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 11
  %35 = ptrtoint ptr %write_data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_data, align 8
  %37 = load ptr, ptr %write_buf, align 4
  %add = add nuw nsw i16 %16, 1
  %call74 = tail call i32 %36(ptr noundef %3, ptr noundef %37, i16 noundef zeroext %add) #8
  br label %out

out:                                              ; preds = %do.end69, %if.then11.i.i, %if.end18.out_crit_edge
  %r.0 = phi i32 [ %15, %do.end69 ], [ -16, %if.end18.out_crit_edge ], [ -14, %if.then11.i.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end14.cleanup_crit_edge, %do.end12, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end12 ], [ %r.0, %out ], [ %count, %do.end.cleanup_crit_edge ], [ -4, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1273_fm_fops_poll(ptr noundef %file, ptr noundef %pts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %owner = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %owner, align 8
  %tobool.not = icmp eq ptr %3, null
  %cmp.not = icmp eq ptr %3, %file
  %or.cond = or i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %core2 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 25
  %4 = ptrtoint ptr %core2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core2, align 4
  %6 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %file, ptr %owner, align 8
  %mode = getelementptr inbounds %struct.wl1273_core, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %if.end.if.end14_crit_edge [
    i32 1, label %if.then6
    i32 2, label %if.end.cleanup_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then6:                                         ; preds = %if.end
  %read_queue = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 12
  %tobool.not.i = icmp eq ptr %pts, null
  br i1 %tobool.not.i, label %if.then6.poll_wait.exit_crit_edge, label %land.lhs.true.i

if.then6.poll_wait.exit_crit_edge:                ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %if.then6
  %10 = ptrtoint ptr %pts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pts, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  %tobool3.not.i = icmp eq ptr %read_queue, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %11(ptr noundef %file, ptr noundef nonnull %read_queue, ptr noundef nonnull %pts) #8
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %if.then6.poll_wait.exit_crit_edge
  %rd_index = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 17
  %12 = ptrtoint ptr %rd_index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rd_index, align 8
  %wr_index = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 18
  %14 = ptrtoint ptr %wr_index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wr_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp7.not = icmp eq i32 %13, %15
  br i1 %cmp7.not, label %poll_wait.exit.if.end14_crit_edge, label %poll_wait.exit.cleanup_crit_edge

poll_wait.exit.cleanup_crit_edge:                 ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

poll_wait.exit.if.end14_crit_edge:                ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end14:                                         ; preds = %poll_wait.exit.if.end14_crit_edge, %if.end.if.end14_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %poll_wait.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ 8, %entry.cleanup_crit_edge ], [ 65, %poll_wait.exit.cleanup_crit_edge ], [ 260, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1273_fm_fops_open(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %core2 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %core2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_fops_open.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_fops_open, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !730

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_fops_open.__UNIQUE_ID_ddebug344, ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.74) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mode = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %land.lhs.true, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end
  %rds_on = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %rds_on to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rds_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true7:                                   ; preds = %land.lhs.true
  %rds_users = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 28
  %10 = ptrtoint ptr %rds_users to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rds_users, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp eq i32 %11, 0
  br i1 %tobool8.not, label %do.body10, label %land.lhs.true7.cleanup_crit_edge

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body10:                                        ; preds = %land.lhs.true7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_fops_open.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_fops_open, %if.then22)) #8
          to label %do.end27 [label %if.then22], !srcloc !730

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  %dev23 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %12 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev23, align 8
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_fops_open.__UNIQUE_ID_ddebug345, ptr noundef %13, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.74, i32 noundef %15) #8
  br label %do.end27

do.end27:                                         ; preds = %if.then22, %do.body10
  %lock = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 7
  %call28 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %do.end27.cleanup_crit_edge

do.end27.cleanup_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %do.end27
  %irq_flags = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 19
  %16 = ptrtoint ptr %irq_flags to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %irq_flags, align 8
  %18 = or i16 %17, 4
  store i16 %18, ptr %irq_flags, align 8
  %write = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 10
  %19 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write, align 4
  %call34 = tail call i32 %20(ptr noundef %3, i8 noundef zeroext 26, i16 noundef zeroext %18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end38, label %if.end31.cleanup.sink.split_crit_edge

if.end31.cleanup.sink.split_crit_edge:            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %rds_users to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rds_users, align 8
  %inc = add i32 %22, 1
  store i32 %inc, ptr %rds_users, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end38, %if.end31.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end38 ], [ %call34, %if.end31.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end27.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -4, %do.end27.cleanup_crit_edge ], [ 0, %land.lhs.true7.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1273_fm_fops_release(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %core2 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %core2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_fops_release.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_fops_release, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !730

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_fops_release.__UNIQUE_ID_ddebug346, ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.76) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %rds_users = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 28
  %6 = ptrtoint ptr %rds_users to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rds_users, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %do.end.if.end24_crit_edge, label %if.then6

do.end.if.end24_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then6:                                         ; preds = %do.end
  %dec = add i32 %7, -1
  %8 = ptrtoint ptr %rds_users to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %dec, ptr %rds_users, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp9 = icmp eq i32 %dec, 0
  br i1 %cmp9, label %if.then10, label %if.then6.if.end24_crit_edge

if.then6.if.end24_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then10:                                        ; preds = %if.then6
  %lock = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %irq_flags = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %irq_flags to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %irq_flags, align 8
  %11 = and i16 %10, -5
  store i16 %11, ptr %irq_flags, align 8
  %mode = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp12 = icmp eq i32 %13, 1
  br i1 %cmp12, label %if.then14, label %if.then10.if.end21_crit_edge

if.then10.if.end21_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then14:                                        ; preds = %if.then10
  %write = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 10
  %14 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write, align 4
  %call16 = tail call i32 %15(ptr noundef %3, i8 noundef zeroext 26, i16 noundef zeroext %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then14.if.end21_crit_edge, label %if.then18

if.then14.if.end21_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %out

if.end21:                                         ; preds = %if.then14.if.end21_crit_edge, %if.then10.if.end21_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %if.end24

if.end24:                                         ; preds = %if.end21, %if.then6.if.end24_crit_edge, %do.end.if.end24_crit_edge
  %owner = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 26
  %16 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %owner, align 8
  %cmp25 = icmp eq ptr %17, %file
  br i1 %cmp25, label %if.then27, label %if.end24.out_crit_edge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %owner, align 8
  br label %out

out:                                              ; preds = %if.then27, %if.end24.out_crit_edge, %if.then18
  %r.2 = phi i32 [ %call16, %if.then18 ], [ 0, %if.then27 ], [ 0, %if.end24.out_crit_edge ]
  ret i32 %r.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

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
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1273_fm_vidioc_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %capability) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_vidioc_querycap.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_vidioc_querycap, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !730

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_vidioc_querycap.__UNIQUE_ID_ddebug350, ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.77) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call i32 @strscpy(ptr noundef %capability, ptr noundef nonnull @.str.16, i32 noundef 16) #8
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %capability, i32 0, i32 1
  %call7 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.78, i32 noundef 32) #8
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %capability, i32 0, i32 2
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %call9 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef %5, i32 noundef 32) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1273_fm_vidioc_g_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_vidioc_g_input.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_vidioc_g_input, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !730

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_vidioc_g_input.__UNIQUE_ID_ddebug351, ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.79) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1273_fm_vidioc_s_input(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_vidioc_s_input.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_vidioc_s_input, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !730

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_vidioc_s_input.__UNIQUE_ID_ddebug352, ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.80) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %cmp.not = icmp eq i32 %i, 0
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1273_fm_vidioc_g_audio(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %audio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_vidioc_g_audio.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_vidioc_g_audio, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !730

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_vidioc_g_audio.__UNIQUE_ID_ddebug356, ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.81) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %audio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp ugt i32 %5, 1
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.v4l2_audio, ptr %audio, i32 0, i32 1
  %call7 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.82, i32 noundef 32) #8
  %capability = getelementptr inbounds %struct.v4l2_audio, ptr %audio, i32 0, i32 2
  %6 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %capability, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1273_fm_vidioc_s_audio(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %audio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_vidioc_s_audio.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_vidioc_s_audio, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !730

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_vidioc_s_audio.__UNIQUE_ID_ddebug357, ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.83) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %audio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1273_fm_vidioc_g_modulator(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %modulator) #2 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %core2 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %core2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core2, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %val, align 2, !annotation !731
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_vidioc_g_modulator.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_vidioc_g_modulator, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !730

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_vidioc_g_modulator.__UNIQUE_ID_ddebug374, ptr noundef %6, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.84) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %name = getelementptr inbounds %struct.v4l2_modulator, ptr %modulator, i32 0, i32 1
  %call6 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.16, i32 noundef 32) #8
  %rangelow = getelementptr inbounds %struct.v4l2_modulator, ptr %modulator, i32 0, i32 3
  %7 = ptrtoint ptr %rangelow to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1216000, ptr %rangelow, align 4
  %rangehigh = getelementptr inbounds %struct.v4l2_modulator, ptr %modulator, i32 0, i32 4
  %8 = ptrtoint ptr %rangehigh to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1728000, ptr %rangehigh, align 4
  %capability = getelementptr inbounds %struct.v4l2_modulator, ptr %modulator, i32 0, i32 2
  %9 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 401, ptr %capability, align 4
  %mode = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.not = icmp eq i32 %11, 2
  br i1 %cmp.not, label %if.end8, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %lock = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 7
  %call9 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %read = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 9
  %12 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read, align 8
  %call13 = call i32 %13(ptr noundef %3, i8 noundef zeroext 66, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end16:                                         ; preds = %if.end12
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %val, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %15)
  %cmp17 = icmp eq i16 %15, 1
  %spec.select = select i1 %cmp17, i32 2, i32 1
  %16 = getelementptr inbounds %struct.v4l2_modulator, ptr %modulator, i32 0, i32 5
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select, ptr %16, align 4
  %rds_on = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 11
  %18 = ptrtoint ptr %rds_on to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rds_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool22.not = icmp eq i32 %19, 0
  br i1 %tobool22.not, label %if.end16.out_crit_edge, label %if.then23

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %16, align 4
  %or = or i32 %21, 16
  store i32 %or, ptr %16, align 4
  br label %out

out:                                              ; preds = %if.then23, %if.end16.out_crit_edge, %if.end12.out_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end8.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ 0, %do.end.cleanup_crit_edge ], [ -4, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1273_fm_vidioc_s_modulator(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %modulator) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %core2 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %core2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_vidioc_s_modulator.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_vidioc_s_modulator, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !730

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_vidioc_s_modulator.__UNIQUE_ID_ddebug373, ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.85) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %modulator to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %modulator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %lock = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 7
  %call8 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call12 = tail call fastcc i32 @wl1273_fm_set_mode(ptr noundef %1, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.out_crit_edge

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end15:                                         ; preds = %if.end11
  %txsubchans = getelementptr inbounds %struct.v4l2_modulator, ptr %modulator, i32 0, i32 5
  %8 = ptrtoint ptr %txsubchans to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %txsubchans, align 4
  %and = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call fastcc i32 @wl1273_fm_set_rds(ptr noundef %1, i32 noundef 1)
  br label %if.end20

if.else:                                          ; preds = %if.end15
  %10 = ptrtoint ptr %core2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %core2, align 4
  %mode.i = getelementptr inbounds %struct.wl1273_core, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.354)
  switch i32 %13, label %if.else27.i [
    i32 4, label %if.else.if.end20_crit_edge
    i32 8, label %if.else.if.end20_crit_edge57
    i32 2, label %land.lhs.true.i
    i32 1, label %if.then25.i
  ]

if.else.if.end20_crit_edge57:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

land.lhs.true.i:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %write11.i = getelementptr inbounds %struct.wl1273_core, ptr %11, i32 0, i32 10
  %15 = ptrtoint ptr %write11.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write11.i, align 4
  %call12.i = tail call i32 %16(ptr noundef %11, i8 noundef zeroext 94, i16 noundef zeroext 0) #8
  br label %if.end38.i

if.then25.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call26.i = tail call fastcc i32 @wl1273_fm_rds_off(ptr noundef %1) #8
  br label %if.end38.i

if.else27.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.179, i32 noundef 0) #11
  br label %if.end20

if.end38.i:                                       ; preds = %if.then25.i, %land.lhs.true.i
  %r.0.i = phi i32 [ %call12.i, %land.lhs.true.i ], [ %call26.i, %if.then25.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0.i)
  %tobool.not.i = icmp eq i32 %r.0.i, 0
  br i1 %tobool.not.i, label %if.then39.i, label %if.end38.i.if.end20_crit_edge

if.end38.i.if.end20_crit_edge:                    ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then39.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  %rds_on.i = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %rds_on.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %rds_on.i, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then39.i, %if.end38.i.if.end20_crit_edge, %if.else27.i, %if.else.if.end20_crit_edge, %if.else.if.end20_crit_edge57, %if.then17
  %write27 = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 10
  %20 = ptrtoint ptr %write27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write27, align 4
  %call28 = tail call i32 %21(ptr noundef %3, i8 noundef zeroext 66, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp30 = icmp slt i32 %call28, 0
  br i1 %cmp30, label %do.end34, label %if.end20.out_crit_edge

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end34:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %dev35 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %22 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev35, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.86, i32 noundef %call28) #11
  br label %out

out:                                              ; preds = %do.end34, %if.end20.out_crit_edge, %if.end11.out_crit_edge
  %r.1 = phi i32 [ %call12, %if.end11.out_crit_edge ], [ %call28, %do.end34 ], [ %call28, %if.end20.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end7.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.1, %out ], [ -22, %do.end.cleanup_crit_edge ], [ -4, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1273_fm_vidioc_g_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %tuner) #2 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %core2 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %core2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core2, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %val, align 2, !annotation !731
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_vidioc_g_tuner.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_vidioc_g_tuner, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !730

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_vidioc_g_tuner.__UNIQUE_ID_ddebug358, ptr noundef %6, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.183) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %7 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tuner, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 1
  %call8 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.16, i32 noundef 32) #8
  %type = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 2
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %type, align 4
  %rangelow = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 4
  %10 = ptrtoint ptr %rangelow to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1216000, ptr %rangelow, align 4
  %rangehigh = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 5
  %11 = ptrtoint ptr %rangehigh to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1728000, ptr %rangehigh, align 4
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 3
  %12 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 413, ptr %capability, align 4
  %stereo = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %stereo to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %stereo, align 8, !range !738
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 7
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %16, align 4
  %mode = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp13.not = icmp eq i32 %19, 1
  br i1 %cmp13.not, label %if.end15, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %lock = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 7
  %call16 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %read = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 9
  %20 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read, align 8
  %call20 = call i32 %21(ptr noundef %3, i8 noundef zeroext 0, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.out_crit_edge

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end23:                                         ; preds = %if.end19
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %val, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %23)
  %cmp24 = icmp eq i16 %23, 1
  %spec.select102 = select i1 %cmp24, i32 2, i32 1
  %24 = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 6
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %spec.select102, ptr %24, align 4
  %26 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read, align 8
  %call31 = call i32 %27(ptr noundef %3, i8 noundef zeroext 1, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end23.out_crit_edge

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end34:                                         ; preds = %if.end23
  %28 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %val, align 2
  %conv35 = sext i16 %29 to i32
  %signal = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 8
  %30 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv35, ptr %signal, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_vidioc_g_tuner.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_vidioc_g_tuner, %if.then48)) #8
          to label %do.end53 [label %if.then48], !srcloc !730

if.then48:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %dev49 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %31 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev49, align 8
  %33 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %signal, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_vidioc_g_tuner.__UNIQUE_ID_ddebug359, ptr noundef %32, ptr noundef nonnull @.str.184, i32 noundef %34) #8
  br label %do.end53

do.end53:                                         ; preds = %if.then48, %if.end34
  %afc = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 9
  %35 = ptrtoint ptr %afc to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %afc, align 4
  %36 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read, align 8
  %call55 = call i32 %37(ptr noundef %3, i8 noundef zeroext 4, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %do.end53.out_crit_edge

do.end53.out_crit_edge:                           ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end58:                                         ; preds = %do.end53
  %38 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %val, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %39)
  %cmp60 = icmp eq i16 %39, 1
  br i1 %cmp60, label %if.then62, label %if.end58.out_crit_edge

if.end58.out_crit_edge:                           ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %24, align 4
  %or = or i32 %41, 16
  store i32 %or, ptr %24, align 4
  br label %out

out:                                              ; preds = %if.then62, %if.end58.out_crit_edge, %do.end53.out_crit_edge, %if.end23.out_crit_edge, %if.end19.out_crit_edge
  %r.0 = phi i32 [ %call20, %if.end19.out_crit_edge ], [ %call31, %if.end23.out_crit_edge ], [ %call55, %do.end53.out_crit_edge ], [ 0, %if.then62 ], [ 0, %if.end58.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end15.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %out ], [ -22, %do.end.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ -4, %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1273_fm_vidioc_s_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %tuner) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %core2 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %core2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_vidioc_s_tuner.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_vidioc_s_tuner, %if.then)) #8
          to label %do.body6 [label %if.then], !srcloc !730

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_vidioc_s_tuner.__UNIQUE_ID_ddebug360, ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.185) #8
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_vidioc_s_tuner.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_vidioc_s_tuner, %if.then18)) #8
          to label %do.body23 [label %if.then18], !srcloc !730

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  %dev19 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %6 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev19, align 8
  %8 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tuner, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_vidioc_s_tuner.__UNIQUE_ID_ddebug361, ptr noundef %7, ptr noundef nonnull @.str.186, i32 noundef %9) #8
  br label %do.body23

do.body23:                                        ; preds = %if.then18, %do.body6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_vidioc_s_tuner.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_vidioc_s_tuner, %if.then35)) #8
          to label %do.body40 [label %if.then35], !srcloc !730

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  %dev36 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %10 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev36, align 8
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_vidioc_s_tuner.__UNIQUE_ID_ddebug362, ptr noundef %11, ptr noundef nonnull @.str.187, ptr noundef %name) #8
  br label %do.body40

do.body40:                                        ; preds = %if.then35, %do.body23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_vidioc_s_tuner.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_vidioc_s_tuner, %if.then52)) #8
          to label %do.body57 [label %if.then52], !srcloc !730

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  %dev53 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %12 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev53, align 8
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 3
  %14 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %capability, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_vidioc_s_tuner.__UNIQUE_ID_ddebug363, ptr noundef %13, ptr noundef nonnull @.str.188, i32 noundef %15) #8
  br label %do.body57

do.body57:                                        ; preds = %if.then52, %do.body40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_vidioc_s_tuner.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_vidioc_s_tuner, %if.then69)) #8
          to label %do.body74 [label %if.then69], !srcloc !730

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #10
  %dev70 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %16 = ptrtoint ptr %dev70 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev70, align 8
  %rxsubchans = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 6
  %18 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rxsubchans, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_vidioc_s_tuner.__UNIQUE_ID_ddebug364, ptr noundef %17, ptr noundef nonnull @.str.189, i32 noundef %19) #8
  br label %do.body74

do.body74:                                        ; preds = %if.then69, %do.body57
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_vidioc_s_tuner.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_vidioc_s_tuner, %if.then86)) #8
          to label %do.body91 [label %if.then86], !srcloc !730

if.then86:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #10
  %dev87 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %20 = ptrtoint ptr %dev87 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev87, align 8
  %rangelow = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 4
  %22 = ptrtoint ptr %rangelow to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rangelow, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_vidioc_s_tuner.__UNIQUE_ID_ddebug365, ptr noundef %21, ptr noundef nonnull @.str.190, i32 noundef %23) #8
  br label %do.body91

do.body91:                                        ; preds = %if.then86, %do.body74
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_vidioc_s_tuner.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_vidioc_s_tuner, %if.then103)) #8
          to label %do.end107 [label %if.then103], !srcloc !730

if.then103:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #10
  %dev104 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %24 = ptrtoint ptr %dev104 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev104, align 8
  %rangehigh = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 5
  %26 = ptrtoint ptr %rangehigh to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rangehigh, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_vidioc_s_tuner.__UNIQUE_ID_ddebug366, ptr noundef %25, ptr noundef nonnull @.str.191, i32 noundef %27) #8
  br label %do.end107

do.end107:                                        ; preds = %if.then103, %do.body91
  %28 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tuner, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.not = icmp eq i32 %29, 0
  br i1 %cmp.not, label %if.end110, label %do.end107.cleanup_crit_edge

do.end107.cleanup_crit_edge:                      ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end110:                                        ; preds = %do.end107
  %lock = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 7
  %call111 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end114, label %if.end110.cleanup_crit_edge

if.end110.cleanup_crit_edge:                      ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end114:                                        ; preds = %if.end110
  %call115 = tail call fastcc i32 @wl1273_fm_set_mode(ptr noundef %1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end118, label %if.end114.out_crit_edge

if.end114.out_crit_edge:                          ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end118:                                        ; preds = %if.end114
  %rxsubchans119 = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 6
  %30 = ptrtoint ptr %rxsubchans119 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rxsubchans119, align 4
  %and = and i32 %31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool120.not = icmp eq i32 %and, 0
  br i1 %tobool120.not, label %if.else, label %if.end124

if.else:                                          ; preds = %if.end118
  %32 = ptrtoint ptr %core2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %core2, align 4
  %mode.i = getelementptr inbounds %struct.wl1273_core, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mode.i, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.355)
  switch i32 %35, label %if.else27.i [
    i32 4, label %if.else.do.end129_crit_edge
    i32 8, label %if.else.do.end129_crit_edge237
    i32 2, label %land.lhs.true.i
    i32 1, label %if.then25.i
  ]

if.else.do.end129_crit_edge237:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end129

if.else.do.end129_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end129

land.lhs.true.i:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %write11.i = getelementptr inbounds %struct.wl1273_core, ptr %33, i32 0, i32 10
  %37 = ptrtoint ptr %write11.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write11.i, align 4
  %call12.i = tail call i32 %38(ptr noundef %33, i8 noundef zeroext 94, i16 noundef zeroext 0) #8
  br label %if.end38.i

if.then25.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call26.i = tail call fastcc i32 @wl1273_fm_rds_off(ptr noundef %1) #8
  br label %if.end38.i

if.else27.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.179, i32 noundef 0) #11
  br label %do.end129

if.end38.i:                                       ; preds = %if.then25.i, %land.lhs.true.i
  %r.0.i = phi i32 [ %call12.i, %land.lhs.true.i ], [ %call26.i, %if.then25.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0.i)
  %tobool.not.i = icmp eq i32 %r.0.i, 0
  br i1 %tobool.not.i, label %if.end124.thread234, label %if.end38.i.do.end129_crit_edge

if.end38.i.do.end129_crit_edge:                   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end129

if.end124.thread234:                              ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  %rds_on.i = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 11
  %41 = ptrtoint ptr %rds_on.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %rds_on.i, align 4
  br label %if.end131

if.end124:                                        ; preds = %if.end118
  %call122 = tail call fastcc i32 @wl1273_fm_set_rds(ptr noundef %1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool125.not = icmp eq i32 %call122, 0
  br i1 %tobool125.not, label %if.end124.if.end131_crit_edge, label %if.end124.do.end129_crit_edge

if.end124.do.end129_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end129

if.end124.if.end131_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end131

do.end129:                                        ; preds = %if.end124.do.end129_crit_edge, %if.end38.i.do.end129_crit_edge, %if.else27.i, %if.else.do.end129_crit_edge, %if.else.do.end129_crit_edge237
  %r.0233 = phi i32 [ %call122, %if.end124.do.end129_crit_edge ], [ -22, %if.else27.i ], [ %r.0.i, %if.end38.i.do.end129_crit_edge ], [ -1, %if.else.do.end129_crit_edge ], [ -1, %if.else.do.end129_crit_edge237 ]
  %dev130 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %42 = ptrtoint ptr %dev130 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev130, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %43, ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.185, i32 noundef %r.0233) #11
  br label %if.end131

if.end131:                                        ; preds = %do.end129, %if.end124.if.end131_crit_edge, %if.end124.thread234
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 7
  %44 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %audmode, align 4
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.356)
  switch i32 %45, label %do.end159 [
    i32 0, label %if.then133
    i32 1, label %if.then145
  ]

if.then133:                                       ; preds = %if.end131
  %write = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 10
  %47 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write, align 4
  %call134 = tail call i32 %48(ptr noundef %3, i8 noundef zeroext 12, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %cmp135 = icmp slt i32 %call134, 0
  br i1 %cmp135, label %do.end139, label %if.end141

do.end139:                                        ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #10
  %dev140 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %49 = ptrtoint ptr %dev140 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev140, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.185, i32 noundef %call134) #11
  br label %out

if.end141:                                        ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #10
  %stereo = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 10
  %51 = ptrtoint ptr %stereo to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %stereo, align 8
  br label %out

if.then145:                                       ; preds = %if.end131
  %write146 = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 10
  %52 = ptrtoint ptr %write146 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write146, align 4
  %call147 = tail call i32 %53(ptr noundef %3, i8 noundef zeroext 12, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %cmp148 = icmp slt i32 %call147, 0
  br i1 %cmp148, label %do.end152, label %if.end154

do.end152:                                        ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #10
  %dev153 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %54 = ptrtoint ptr %dev153 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev153, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %55, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.185, i32 noundef %call147) #11
  br label %out

if.end154:                                        ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #10
  %stereo155 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 10
  %56 = ptrtoint ptr %stereo155 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %stereo155, align 8
  br label %out

do.end159:                                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  %dev160 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %57 = ptrtoint ptr %dev160 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev160, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.185, i32 noundef %45) #11
  br label %out

out:                                              ; preds = %do.end159, %if.end154, %do.end152, %if.end141, %do.end139, %if.end114.out_crit_edge
  %r.1 = phi i32 [ %call115, %if.end114.out_crit_edge ], [ %call134, %do.end139 ], [ %call134, %if.end141 ], [ %call147, %do.end152 ], [ %call147, %if.end154 ], [ -22, %do.end159 ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end110.cleanup_crit_edge, %do.end107.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.1, %out ], [ -22, %do.end107.cleanup_crit_edge ], [ -4, %if.end110.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1273_fm_vidioc_g_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %freq) #2 align 64 {
entry:
  %f.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %core2 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %core2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_vidioc_g_frequency.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_vidioc_g_frequency, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !730

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_vidioc_g_frequency.__UNIQUE_ID_ddebug367, ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.201) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 7
  %call6 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %freq, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %type, align 4
  %7 = ptrtoint ptr %core2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core2, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %f.i) #8
  %9 = ptrtoint ptr %f.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %f.i, align 2, !annotation !731
  %mode.i = getelementptr inbounds %struct.wl1273_core, ptr %8, i32 0, i32 2
  %10 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp eq i32 %11, 1
  %read.i = getelementptr inbounds %struct.wl1273_core, ptr %8, i32 0, i32 9
  %12 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read.i, align 8
  br i1 %cmp.i, label %if.then.i, label %if.else17.i

if.then.i:                                        ; preds = %if.end9
  %call.i = call i32 %13(ptr noundef %8, i8 noundef zeroext 10, ptr noundef nonnull %f.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i.wl1273_fm_get_freq.exit_crit_edge

if.then.i.wl1273_fm_get_freq.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wl1273_fm_get_freq.exit

do.body.i:                                        ; preds = %if.then.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_get_freq.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_vidioc_g_frequency, %if.then7.i)) #8
          to label %do.end.i [label %if.then7.i], !srcloc !730

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 8
  %16 = ptrtoint ptr %f.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %f.i, align 2
  %conv.i = zext i16 %17 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_get_freq.__UNIQUE_ID_ddebug321, ptr noundef %15, ptr noundef nonnull @.str.203, i32 noundef %conv.i) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then7.i, %do.body.i
  %band.i = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %band.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp9.i = icmp eq i32 %19, 1
  %20 = ptrtoint ptr %f.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %f.i, align 2
  %conv12.i = zext i16 %21 to i32
  %mul.i = mul nuw nsw i32 %conv12.i, 50
  br i1 %cmp9.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add nuw nsw i32 %mul.i, 76000
  br label %wl1273_fm_get_freq.exit

if.else.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add15.i = add nuw nsw i32 %mul.i, 87500
  br label %wl1273_fm_get_freq.exit

if.else17.i:                                      ; preds = %if.end9
  %call19.i = call i32 %13(ptr noundef %8, i8 noundef zeroext 55, ptr noundef nonnull %f.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.else17.i.wl1273_fm_get_freq.exit_crit_edge

if.else17.i.wl1273_fm_get_freq.exit_crit_edge:    ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wl1273_fm_get_freq.exit

if.end22.i:                                       ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %f.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %f.i, align 2
  %conv23.i = zext i16 %23 to i32
  %mul24.i = mul nuw nsw i32 %conv23.i, 10
  br label %wl1273_fm_get_freq.exit

wl1273_fm_get_freq.exit:                          ; preds = %if.end22.i, %if.else17.i.wl1273_fm_get_freq.exit_crit_edge, %if.else.i, %if.then11.i, %if.then.i.wl1273_fm_get_freq.exit_crit_edge
  %retval.0.i17 = phi i32 [ %call.i, %if.then.i.wl1273_fm_get_freq.exit_crit_edge ], [ %call19.i, %if.else17.i.wl1273_fm_get_freq.exit_crit_edge ], [ %add.i, %if.then11.i ], [ %add15.i, %if.else.i ], [ %mul24.i, %if.end22.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %f.i) #8
  %mul = mul i32 %retval.0.i17, 10000
  %div = sdiv i32 %mul, 625
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %freq, i32 0, i32 2
  %24 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div, ptr %frequency, align 4
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %wl1273_fm_get_freq.exit, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %wl1273_fm_get_freq.exit ], [ -4, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1273_fm_vidioc_s_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %freq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %core2 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %core2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_vidioc_s_frequency.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_vidioc_s_frequency, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !730

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %freq, i32 0, i32 2
  %6 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frequency, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_vidioc_s_frequency.__UNIQUE_ID_ddebug368, ptr noundef %5, ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.204, i32 noundef %7) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %freq, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not = icmp eq i32 %9, 1
  br i1 %cmp.not, label %if.end25, label %do.body7

do.body7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_vidioc_s_frequency.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_vidioc_s_frequency, %if.then19)) #8
          to label %cleanup [label %if.then19], !srcloc !730

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %dev20 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %10 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev20, align 8
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_vidioc_s_frequency.__UNIQUE_ID_ddebug369, ptr noundef %11, ptr noundef nonnull @.str.206, i32 noundef %13) #8
  br label %cleanup

if.end25:                                         ; preds = %do.end
  %lock = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 7
  %call26 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %mode = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp30 = icmp eq i32 %15, 1
  br i1 %cmp30, label %do.body32, label %if.else

do.body32:                                        ; preds = %if.end29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_vidioc_s_frequency.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_vidioc_s_frequency, %if.then44)) #8
          to label %do.end49 [label %if.then44], !srcloc !730

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  %dev45 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %16 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev45, align 8
  %frequency46 = getelementptr inbounds %struct.v4l2_frequency, ptr %freq, i32 0, i32 2
  %18 = ptrtoint ptr %frequency46 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %frequency46, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_vidioc_s_frequency.__UNIQUE_ID_ddebug370, ptr noundef %17, ptr noundef nonnull @.str.207, i32 noundef %19) #8
  br label %do.end49

do.end49:                                         ; preds = %if.then44, %do.body32
  %frequency50 = getelementptr inbounds %struct.v4l2_frequency, ptr %freq, i32 0, i32 2
  %20 = ptrtoint ptr %frequency50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %frequency50, align 4
  %mul = mul i32 %21, 625
  %div = udiv i32 %mul, 10000
  %call51 = tail call fastcc i32 @wl1273_fm_set_rx_freq(ptr noundef %1, i32 noundef %div)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %do.end49.if.end70_crit_edge, label %do.end49.if.end70.sink.split_crit_edge

do.end49.if.end70.sink.split_crit_edge:           ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70.sink.split

do.end49.if.end70_crit_edge:                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.else:                                          ; preds = %if.end29
  %frequency59 = getelementptr inbounds %struct.v4l2_frequency, ptr %freq, i32 0, i32 2
  %22 = ptrtoint ptr %frequency59 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %frequency59, align 4
  %mul60 = mul i32 %23, 625
  %div61 = udiv i32 %mul60, 10000
  %call62 = tail call fastcc i32 @wl1273_fm_set_tx_freq(ptr noundef %1, i32 noundef %div61)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.else.if.end70_crit_edge, label %if.else.if.end70.sink.split_crit_edge

if.else.if.end70.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70.sink.split

if.else.if.end70_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.end70.sink.split:                              ; preds = %if.else.if.end70.sink.split_crit_edge, %do.end49.if.end70.sink.split_crit_edge
  %call62.sink = phi i32 [ %call51, %do.end49.if.end70.sink.split_crit_edge ], [ %call62, %if.else.if.end70.sink.split_crit_edge ]
  %dev68 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %24 = ptrtoint ptr %dev68 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev68, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.208, i32 noundef %call62.sink) #11
  br label %if.end70

if.end70:                                         ; preds = %if.end70.sink.split, %if.else.if.end70_crit_edge, %do.end49.if.end70_crit_edge
  %r.0 = phi i32 [ 0, %do.end49.if.end70_crit_edge ], [ 0, %if.else.if.end70_crit_edge ], [ %call62.sink, %if.end70.sink.split ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_vidioc_s_frequency.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_vidioc_s_frequency, %if.then84)) #8
          to label %cleanup [label %if.then84], !srcloc !730

if.then84:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  %dev85 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %26 = ptrtoint ptr %dev85 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev85, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_vidioc_s_frequency.__UNIQUE_ID_ddebug371, ptr noundef %27, ptr noundef nonnull @.str.211) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then84, %if.end70, %if.end25.cleanup_crit_edge, %if.then19, %do.body7
  %retval.0 = phi i32 [ -22, %if.then19 ], [ -4, %if.end25.cleanup_crit_edge ], [ %r.0, %if.then84 ], [ -22, %do.body7 ], [ %r.0, %if.end70 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1273_fm_vidioc_log_status(ptr noundef %file, ptr nocapture noundef readnone %priv) #2 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %core2 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %core2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core2, align 4
  %dev3 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #8
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %val, align 2, !annotation !731
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.212) #11
  %mode = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.357)
  switch i32 %8, label %if.end13 [
    i32 4, label %do.end6
    i32 8, label %do.end12
  ]

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.215) #11
  br label %cleanup

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.218) #11
  br label %cleanup

if.end13:                                         ; preds = %entry
  %read = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 9
  %10 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read, align 8
  %call14 = call i32 %11(ptr noundef %3, i8 noundef zeroext 43, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %do.end21, label %do.end18

do.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.213) #11
  br label %if.end22

do.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %val, align 2
  %conv = zext i16 %13 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.224, i32 noundef %conv) #11
  br label %if.end22

if.end22:                                         ; preds = %do.end21, %do.end18
  %14 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read, align 8
  %call24 = call i32 %15(ptr noundef %3, i8 noundef zeroext 42, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.end33, label %do.end29

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.213) #11
  br label %if.end35

do.end33:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %val, align 2
  %conv34 = zext i16 %17 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.230, i32 noundef %conv34) #11
  br label %if.end35

if.end35:                                         ; preds = %do.end33, %do.end29
  %18 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read, align 8
  %call37 = call i32 %19(ptr noundef %3, i8 noundef zeroext 41, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %do.end46, label %do.end42

do.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.213) #11
  br label %if.end49

do.end46:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %val, align 2
  %conv47 = zext i16 %21 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.236, i32 noundef %conv47, i32 noundef %conv47) #11
  br label %if.end49

if.end49:                                         ; preds = %do.end46, %do.end42
  %22 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read, align 8
  %call51 = call i32 %23(ptr noundef %3, i8 noundef zeroext 16, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %do.end60, label %do.end56

do.end56:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.213) #11
  br label %if.end62

do.end60:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %val, align 2
  %conv61 = zext i16 %25 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.242, i32 noundef %conv61) #11
  br label %if.end62

if.end62:                                         ; preds = %do.end60, %do.end56
  %26 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mode, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.358)
  switch i32 %27, label %if.end62.cleanup_crit_edge [
    i32 2, label %if.then66
    i32 1, label %if.then97
  ]

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then66:                                        ; preds = %if.end62
  %29 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read, align 8
  %call68 = call i32 %30(ptr noundef %3, i8 noundef zeroext 91, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %do.end77, label %do.end73

do.end73:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.245, ptr noundef nonnull @.str.213) #11
  br label %if.end79

do.end77:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %val, align 2
  %conv78 = zext i16 %32 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.248, i32 noundef %conv78) #11
  br label %if.end79

if.end79:                                         ; preds = %do.end77, %do.end73
  %33 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read, align 8
  %call81 = call i32 %34(ptr noundef %3, i8 noundef zeroext 55, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %do.end90, label %do.end86

do.end86:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.251, ptr noundef nonnull @.str.213) #11
  br label %cleanup

do.end90:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %val, align 2
  %conv91 = zext i16 %36 to i32
  %mul = mul nuw nsw i32 %conv91, 10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.254, i32 noundef %mul) #11
  br label %cleanup

if.then97:                                        ; preds = %if.end62
  %rangelow = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 7
  %37 = ptrtoint ptr %rangelow to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rangelow, align 4
  %39 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read, align 8
  %call99 = call i32 %40(ptr noundef %3, i8 noundef zeroext 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %do.end108, label %do.end104

do.end104:                                        ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.257, ptr noundef nonnull @.str.213) #11
  br label %if.end111

do.end108:                                        ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %val, align 2
  %conv109 = zext i16 %42 to i32
  %mul110 = mul nuw nsw i32 %conv109, 50
  %add = add i32 %mul110, %38
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.260, i32 noundef %add) #11
  br label %if.end111

if.end111:                                        ; preds = %do.end108, %do.end104
  %43 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read, align 8
  %call113 = call i32 %44(ptr noundef %3, i8 noundef zeroext 12, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.else119, label %do.end118

do.end118:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.263, ptr noundef nonnull @.str.213) #11
  br label %if.end142

if.else119:                                       ; preds = %if.end111
  %45 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %val, align 2
  %47 = zext i16 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.359)
  switch i16 %46, label %do.end138 [
    i16 0, label %do.end126
    i16 1, label %do.end134
  ]

do.end126:                                        ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.266) #11
  br label %if.end142

do.end134:                                        ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.269) #11
  br label %if.end142

do.end138:                                        ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #10
  %conv120 = zext i16 %46 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.272, i32 noundef %conv120) #11
  br label %if.end142

if.end142:                                        ; preds = %do.end138, %do.end134, %do.end126, %do.end118
  %48 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read, align 8
  %call144 = call i32 %49(ptr noundef %3, i8 noundef zeroext 13, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.else150, label %do.end149

do.end149:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.275, ptr noundef nonnull @.str.213) #11
  br label %if.end173

if.else150:                                       ; preds = %if.end142
  %50 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %val, align 2
  %52 = zext i16 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.360)
  switch i16 %51, label %do.end169 [
    i16 0, label %do.end157
    i16 1, label %do.end165
  ]

do.end157:                                        ; preds = %if.else150
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.278) #11
  br label %if.end173

do.end165:                                        ; preds = %if.else150
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.281) #11
  br label %if.end173

do.end169:                                        ; preds = %if.else150
  call void @__sanitizer_cov_trace_pc() #10
  %conv151 = zext i16 %51 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.284, i32 noundef %conv151) #11
  br label %if.end173

if.end173:                                        ; preds = %do.end169, %do.end165, %do.end157, %do.end149
  %53 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read, align 8
  %call175 = call i32 %54(ptr noundef %3, i8 noundef zeroext 0, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %if.else181, label %do.end180

do.end180:                                        ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.213) #11
  br label %if.end204

if.else181:                                       ; preds = %if.end173
  %55 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %val, align 2
  %57 = zext i16 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.361)
  switch i16 %56, label %do.end200 [
    i16 0, label %do.end188
    i16 1, label %do.end196
  ]

do.end188:                                        ; preds = %if.else181
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.290) #11
  br label %if.end204

do.end196:                                        ; preds = %if.else181
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.293) #11
  br label %if.end204

do.end200:                                        ; preds = %if.else181
  call void @__sanitizer_cov_trace_pc() #10
  %conv182 = zext i16 %56 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.296, i32 noundef %conv182) #11
  br label %if.end204

if.end204:                                        ; preds = %do.end200, %do.end196, %do.end188, %do.end180
  %58 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read, align 8
  %call206 = call i32 %59(ptr noundef %3, i8 noundef zeroext 1, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call206)
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %do.end215, label %do.end211

do.end211:                                        ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.299, ptr noundef nonnull @.str.213) #11
  br label %if.end217

do.end215:                                        ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %val, align 2
  %conv216 = sext i16 %61 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.302, i32 noundef %conv216) #11
  br label %if.end217

if.end217:                                        ; preds = %do.end215, %do.end211
  %62 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read, align 8
  %call219 = call i32 %63(ptr noundef %3, i8 noundef zeroext 32, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %tobool220.not = icmp eq i32 %call219, 0
  br i1 %tobool220.not, label %do.end228, label %do.end224

do.end224:                                        ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.305, ptr noundef nonnull @.str.213) #11
  br label %if.end230

do.end228:                                        ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %val, align 2
  %conv229 = zext i16 %65 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.308, i32 noundef %conv229) #11
  br label %if.end230

if.end230:                                        ; preds = %do.end228, %do.end224
  %66 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %read, align 8
  %call232 = call i32 %67(ptr noundef %3, i8 noundef zeroext 26, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call232)
  %tobool233.not = icmp eq i32 %call232, 0
  br i1 %tobool233.not, label %do.end241, label %do.end237

do.end237:                                        ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.311, ptr noundef nonnull @.str.213) #11
  br label %if.end243

do.end241:                                        ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %val, align 2
  %conv242 = zext i16 %69 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.314, i32 noundef %conv242) #11
  br label %if.end243

if.end243:                                        ; preds = %do.end241, %do.end237
  %70 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %read, align 8
  %call245 = call i32 %71(ptr noundef %3, i8 noundef zeroext 4, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call245)
  %tobool246.not = icmp eq i32 %call245, 0
  br i1 %tobool246.not, label %if.else251, label %do.end250

do.end250:                                        ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.213) #11
  br label %if.end274

if.else251:                                       ; preds = %if.end243
  %72 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %val, align 2
  %74 = zext i16 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.362)
  switch i16 %73, label %do.end270 [
    i16 0, label %do.end258
    i16 1, label %do.end266
  ]

do.end258:                                        ; preds = %if.else251
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.63) #11
  br label %if.end274

do.end266:                                        ; preds = %if.else251
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.321) #11
  br label %if.end274

do.end270:                                        ; preds = %if.else251
  call void @__sanitizer_cov_trace_pc() #10
  %conv252 = zext i16 %73 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.324, i32 noundef %conv252) #11
  br label %if.end274

if.end274:                                        ; preds = %do.end270, %do.end266, %do.end258, %do.end250
  %75 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %read, align 8
  %call276 = call i32 %76(ptr noundef %3, i8 noundef zeroext 31, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call276)
  %tobool277.not = icmp eq i32 %call276, 0
  br i1 %tobool277.not, label %do.end285, label %do.end281

do.end281:                                        ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.327, ptr noundef nonnull @.str.213) #11
  br label %if.end287

do.end285:                                        ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %val, align 2
  %conv286 = zext i16 %78 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.330, i32 noundef %conv286) #11
  br label %if.end287

if.end287:                                        ; preds = %do.end285, %do.end281
  %79 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %read, align 8
  %call289 = call i32 %80(ptr noundef %3, i8 noundef zeroext 28, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call289)
  %tobool290.not = icmp eq i32 %call289, 0
  br i1 %tobool290.not, label %do.end298, label %do.end294

do.end294:                                        ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.333, ptr noundef nonnull @.str.213) #11
  br label %cleanup

do.end298:                                        ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %val, align 2
  %conv299 = zext i16 %82 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.336, i32 noundef %conv299) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end298, %do.end294, %do.end90, %do.end86, %if.end62.cleanup_crit_edge, %do.end12, %do.end6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1273_fm_vidioc_s_hw_freq_seek(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %seek) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %core2 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %core2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_vidioc_s_hw_freq_seek.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_vidioc_s_hw_freq_seek, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !730

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_vidioc_s_hw_freq_seek.__UNIQUE_ID_ddebug372, ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.338) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %seek to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %seek, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %lor.lhs.false, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %type = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %seek, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp6.not = icmp eq i32 %9, 1
  br i1 %cmp6.not, label %if.end8, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %10 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f_flags, align 4
  %and = and i32 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %lock = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 7
  %call12 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %call16 = tail call fastcc i32 @wl1273_fm_set_mode(ptr noundef %1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end19:                                         ; preds = %if.end15
  %spacing = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %seek, i32 0, i32 4
  %12 = ptrtoint ptr %spacing to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %spacing, align 4
  %call20 = tail call fastcc i32 @wl1273_fm_tx_set_spacing(ptr noundef %1, i32 noundef %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end19.if.end27_crit_edge, label %do.end25

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %dev26 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %14 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev26, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.339, i32 noundef %call20) #11
  br label %if.end27

if.end27:                                         ; preds = %do.end25, %if.end19.if.end27_crit_edge
  %wrap_around = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %seek, i32 0, i32 3
  %16 = ptrtoint ptr %wrap_around to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wrap_around, align 4
  %seek_upward = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %seek, i32 0, i32 2
  %18 = ptrtoint ptr %seek_upward to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %seek_upward, align 4
  %call28 = tail call fastcc i32 @wl1273_fm_set_seek(ptr noundef %1, i32 noundef %17, i32 noundef %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end27.out_crit_edge, label %do.end33

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %dev34 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %20 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev34, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.339, i32 noundef %call28) #11
  br label %out

out:                                              ; preds = %do.end33, %if.end27.out_crit_edge, %if.end15.out_crit_edge
  %r.0 = phi i32 [ %call16, %if.end15.out_crit_edge ], [ %call28, %do.end33 ], [ 0, %if.end27.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %out ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ -11, %if.end8.cleanup_crit_edge ], [ -4, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wl1273_fm_set_mode(ptr noundef %radio, i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %core1 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 25
  %0 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core1, align 4
  %dev2 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 24
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_set_mode.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_set_mode, %if.then)) #8
          to label %do.body5 [label %if.then], !srcloc !730

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_set_mode.__UNIQUE_ID_ddebug328, ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.87) #8
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_set_mode.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_set_mode, %if.then17)) #8
          to label %do.end20 [label %if.then17], !srcloc !730

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  %forbidden = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 1
  %4 = ptrtoint ptr %forbidden to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %forbidden, align 4
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_set_mode.__UNIQUE_ID_ddebug329, ptr noundef %3, ptr noundef nonnull @.str.88, i32 noundef %conv) #8
  br label %do.end20

do.end20:                                         ; preds = %if.then17, %do.body5
  %mode21 = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %mode21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode21, align 4
  %forbidden22 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 1
  %8 = ptrtoint ptr %forbidden22 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %forbidden22, align 4
  %conv23 = zext i8 %9 to i32
  %and = and i32 %conv23, %mode
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.end26, label %do.end20.if.end134.sink.split_crit_edge

do.end20.if.end134.sink.split_crit_edge:          ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134.sink.split

if.end26:                                         ; preds = %do.end20
  %10 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.363)
  switch i32 %mode, label %do.end130 [
    i32 1, label %if.end26.sw.bb_crit_edge
    i32 2, label %if.end26.sw.bb_crit_edge208
    i32 4, label %sw.bb108
  ]

if.end26.sw.bb_crit_edge208:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end26.sw.bb_crit_edge:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %if.end26.sw.bb_crit_edge, %if.end26.sw.bb_crit_edge208
  %call27 = tail call fastcc i32 @wl1273_fm_start(ptr noundef %radio, i32 noundef %mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end34, label %do.end32

do.end32:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.87) #11
  tail call fastcc void @wl1273_fm_stop(ptr noundef %radio)
  br label %if.end134.sink.split

if.end34:                                         ; preds = %sw.bb
  %11 = ptrtoint ptr %mode21 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mode, ptr %mode21, align 4
  %write = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write, align 4
  %irq_flags = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 19
  %14 = ptrtoint ptr %irq_flags to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %irq_flags, align 8
  %call36 = tail call i32 %13(ptr noundef %1, i8 noundef zeroext 26, i16 noundef zeroext %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end42, label %do.end41

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.91) #11
  br label %if.end134.sink.split

if.end42:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  br i1 %cmp, label %if.then44, label %if.else

if.then44:                                        ; preds = %if.end42
  %rx_frequency = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 5
  %16 = ptrtoint ptr %rx_frequency to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_frequency, align 4
  %call45 = tail call fastcc i32 @wl1273_fm_set_rx_freq(ptr noundef %radio, i32 noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end51, label %do.end50

do.end50:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.94, i32 noundef %call45) #11
  br label %if.end134.sink.split

if.end51:                                         ; preds = %if.then44
  %set_volume = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 13
  %18 = ptrtoint ptr %set_volume to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_volume, align 8
  %volume = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %volume, align 4
  %call52 = tail call i32 %19(ptr noundef %1, i32 noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %do.body59, label %do.end57

do.end57:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.97, i32 noundef %call52) #11
  br label %if.end134.sink.split

do.body59:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_set_mode.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_set_mode, %if.then71)) #8
          to label %do.body84 [label %if.then71], !srcloc !730

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %volume, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_set_mode.__UNIQUE_ID_ddebug330, ptr noundef %3, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.87, i32 noundef %23) #8
  br label %do.body84

if.else:                                          ; preds = %if.end42
  %tx_frequency = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 6
  %24 = ptrtoint ptr %tx_frequency to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_frequency, align 8
  %call76 = tail call fastcc i32 @wl1273_fm_set_tx_freq(ptr noundef %radio, i32 noundef %25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.else.do.body84_crit_edge, label %do.end81

if.else.do.body84_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body84

do.end81:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.94, i32 noundef %call76) #11
  br label %if.end134.sink.split

do.body84:                                        ; preds = %if.else.do.body84_crit_edge, %if.then71, %do.body59
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_set_mode.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_set_mode, %if.then96)) #8
          to label %do.end100 [label %if.then96], !srcloc !730

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev2, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_set_mode.__UNIQUE_ID_ddebug331, ptr noundef %27, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.87) #8
  br label %do.end100

do.end100:                                        ; preds = %if.then96, %do.body84
  %set_audio = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 12
  %28 = ptrtoint ptr %set_audio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_audio, align 4
  %audio_mode = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 5
  %30 = ptrtoint ptr %audio_mode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %audio_mode, align 8
  %call101 = tail call i32 %29(ptr noundef %1, i32 noundef %31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %do.end100.if.end134_crit_edge, label %do.end106

do.end100.if.end134_crit_edge:                    ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134

do.end106:                                        ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.104) #11
  br label %if.end134.sink.split

sw.bb108:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @wl1273_fm_stop(ptr noundef %radio)
  br label %if.end134.sink.split

do.end130:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.87, i32 noundef %mode) #11
  br label %if.end134.sink.split

if.end134.sink.split:                             ; preds = %do.end130, %sw.bb108, %do.end106, %do.end81, %do.end57, %do.end50, %do.end41, %do.end32, %do.end20.if.end134.sink.split_crit_edge
  %.sink = phi i32 [ 4, %sw.bb108 ], [ %7, %do.end130 ], [ %7, %do.end32 ], [ %7, %do.end41 ], [ %7, %do.end50 ], [ %7, %do.end57 ], [ %7, %do.end106 ], [ %7, %do.end81 ], [ %7, %do.end20.if.end134.sink.split_crit_edge ]
  %r.0207.ph = phi i32 [ 0, %sw.bb108 ], [ -22, %do.end130 ], [ %call27, %do.end32 ], [ %call36, %do.end41 ], [ %call45, %do.end50 ], [ %call52, %do.end57 ], [ %call101, %do.end106 ], [ %call76, %do.end81 ], [ -1, %do.end20.if.end134.sink.split_crit_edge ]
  %32 = ptrtoint ptr %mode21 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink, ptr %mode21, align 4
  br label %if.end134

if.end134:                                        ; preds = %if.end134.sink.split, %do.end100.if.end134_crit_edge
  %r.0207 = phi i32 [ 0, %do.end100.if.end134_crit_edge ], [ %r.0207.ph, %if.end134.sink.split ]
  ret i32 %r.0207
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wl1273_fm_set_rds(ptr noundef %radio, i32 noundef %new_mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %core1 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 25
  %0 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core1, align 4
  %mode = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.364)
  switch i32 %3, label %if.else20 [
    i32 4, label %entry.cleanup_crit_edge
    i32 8, label %entry.cleanup_crit_edge88
    i32 2, label %land.lhs.true
  ]

entry.cleanup_crit_edge88:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %5 = zext i32 %new_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.365)
  switch i32 %new_mode, label %land.lhs.true.do.end_crit_edge [
    i32 0, label %if.then10
    i32 1, label %if.then17
  ]

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %write11 = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %write11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write11, align 4
  %call12 = tail call i32 %7(ptr noundef %1, i8 noundef zeroext 94, i16 noundef zeroext 0) #8
  br label %if.end38

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %write18 = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %write18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write18, align 4
  %call19 = tail call i32 %9(ptr noundef %1, i8 noundef zeroext 94, i16 noundef zeroext 1) #8
  br label %if.end38

if.else20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp22 = icmp eq i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_mode)
  %cmp24 = icmp eq i32 %new_mode, 0
  %or.cond66 = and i1 %cmp24, %cmp22
  br i1 %or.cond66, label %if.then25, label %if.else27

if.then25:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = tail call fastcc i32 @wl1273_fm_rds_off(ptr noundef %radio)
  br label %if.end38

if.else27:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %new_mode)
  %cmp1669 = icmp eq i32 %new_mode, 1
  %or.cond67 = and i1 %cmp22, %cmp1669
  br i1 %or.cond67, label %if.then32, label %if.else27.do.end_crit_edge

if.else27.do.end_crit_edge:                       ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then32:                                        ; preds = %if.else27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_rds_on.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_set_rds, %if.then.i)) #8
          to label %do.end.i [label %if.then.i], !srcloc !730

if.then.i:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 24
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_rds_on.__UNIQUE_ID_ddebug338, ptr noundef %11, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.182) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then32
  %rds_on.i = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 11
  %12 = ptrtoint ptr %rds_on.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rds_on.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool4.not.i = icmp eq i32 %13, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end.i.if.then39_crit_edge

do.end.i.if.then39_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then39

if.end6.i:                                        ; preds = %do.end.i
  %write.i = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write.i, align 4
  %call7.i = tail call i32 %15(ptr noundef %1, i8 noundef zeroext 32, i16 noundef zeroext 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end6.i.cleanup_crit_edge

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10.i:                                       ; preds = %if.end6.i
  %rx_frequency.i = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 5
  %16 = ptrtoint ptr %rx_frequency.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_frequency.i, align 4
  %call11.i = tail call fastcc i32 @wl1273_fm_set_rx_freq(ptr noundef %radio, i32 noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.then39_crit_edge, label %do.end16.i

if.end10.i.if.then39_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then39

do.end16.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev17.i = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 24
  %18 = ptrtoint ptr %dev17.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev17.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.94, i32 noundef %call11.i) #11
  br label %cleanup

do.end:                                           ; preds = %if.else27.do.end_crit_edge, %land.lhs.true.do.end_crit_edge
  %dev = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 24
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.179, i32 noundef %new_mode) #11
  br label %cleanup

if.end38:                                         ; preds = %if.then25, %if.then17, %if.then10
  %r.0 = phi i32 [ %call12, %if.then10 ], [ %call19, %if.then17 ], [ %call26, %if.then25 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0)
  %tobool.not = icmp eq i32 %r.0, 0
  br i1 %tobool.not, label %if.end38.if.then39_crit_edge, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38.if.then39_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then39

if.then39:                                        ; preds = %if.end38.if.then39_crit_edge, %if.end10.i.if.then39_crit_edge, %do.end.i.if.then39_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %new_mode)
  %cmp40 = icmp eq i32 %new_mode, 1
  %cond = zext i1 %cmp40 to i32
  %rds_on = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 11
  %22 = ptrtoint ptr %rds_on to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond, ptr %rds_on, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %if.end38.cleanup_crit_edge, %do.end, %do.end16.i, %if.end6.i.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge88
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge88 ], [ 0, %if.then39 ], [ %r.0, %if.end38.cleanup_crit_edge ], [ %call11.i, %do.end16.i ], [ %call7.i, %if.end6.i.cleanup_crit_edge ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wl1273_fm_start(ptr nocapture noundef %radio, i32 noundef %new_mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %core1 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 25
  %0 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core1, align 4
  %pdata2 = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdata2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata2, align 8
  %dev3 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 24
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3, align 8
  %enable = getelementptr inbounds %struct.wl1273_fm_platform_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %land.lhs.true

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true:                                    ; preds = %entry
  %mode = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp = icmp eq i32 %9, 4
  br i1 %cmp, label %do.body, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_start.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_start, %if.then7)) #8
          to label %do.end [label %if.then7], !srcloc !730

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_start.__UNIQUE_ID_ddebug326, ptr noundef %11, ptr noundef nonnull @.str.116) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %12 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %enable, align 4
  tail call void %13() #8
  tail call void @msleep(i32 noundef 250) #8
  br label %if.end10

if.end10:                                         ; preds = %do.end, %land.lhs.true.if.end10_crit_edge, %entry.if.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %new_mode)
  %cmp11 = icmp eq i32 %new_mode, 1
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end10
  %rds_on = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 11
  %14 = ptrtoint ptr %rds_on to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rds_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool13.not = icmp eq i32 %15, 0
  %spec.select = select i1 %tobool13.not, i16 1, i16 3
  %write = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write, align 4
  %call17 = tail call i32 %17(ptr noundef %1, i8 noundef zeroext 32, i16 noundef zeroext %spec.select) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then12.cleanup.thread_crit_edge, label %if.then19

if.then12.cleanup.thread_crit_edge:               ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.then19:                                        ; preds = %if.then12
  tail call void @msleep(i32 noundef 100) #8
  %18 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write, align 4
  %call21 = tail call i32 %19(ptr noundef %1, i8 noundef zeroext 32, i16 noundef zeroext %spec.select) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then19.cleanup.thread_crit_edge, label %if.then19.fail_crit_edge

if.then19.fail_crit_edge:                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.then19.cleanup.thread_crit_edge:               ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then19.cleanup.thread_crit_edge, %if.then12.cleanup.thread_crit_edge
  %wr_index = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 18
  %20 = ptrtoint ptr %wr_index to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %wr_index, align 4
  %rd_index = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 17
  %21 = ptrtoint ptr %rd_index to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %rd_index, align 8
  br label %if.end71

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %new_mode)
  %cmp29 = icmp eq i32 %new_mode, 2
  br i1 %cmp29, label %if.then31, label %do.end69

if.then31:                                        ; preds = %if.else
  %write32 = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 10
  %22 = ptrtoint ptr %write32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write32, align 4
  %call33 = tail call i32 %23(ptr noundef %1, i8 noundef zeroext 91, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then31.if.end44_crit_edge, label %if.then35

if.then31.if.end44_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then35:                                        ; preds = %if.then31
  tail call void @msleep(i32 noundef 100) #8
  %24 = ptrtoint ptr %write32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write32, align 4
  %call37 = tail call i32 %25(ptr noundef %1, i8 noundef zeroext 91, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then35.if.end44_crit_edge, label %if.then35.fail_crit_edge

if.then35.fail_crit_edge:                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.then35.if.end44_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.end44:                                         ; preds = %if.then35.if.end44_crit_edge, %if.then31.if.end44_crit_edge
  %rds_on45 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 11
  %26 = ptrtoint ptr %rds_on45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rds_on45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool46.not = icmp eq i32 %27, 0
  %28 = ptrtoint ptr %write32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write32, align 4
  br i1 %tobool46.not, label %if.else56, label %if.then47

if.then47:                                        ; preds = %if.end44
  %call49 = tail call i32 %29(ptr noundef %1, i8 noundef zeroext 94, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then47.if.end71_crit_edge, label %if.then47.fail_crit_edge

if.then47.fail_crit_edge:                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.then47.if.end71_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.else56:                                        ; preds = %if.end44
  %call58 = tail call i32 %29(ptr noundef %1, i8 noundef zeroext 94, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.else56.if.end71_crit_edge, label %if.else56.fail_crit_edge

if.else56.fail_crit_edge:                         ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.else56.if.end71_crit_edge:                     ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

do.end69:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.115) #11
  br label %if.end71

if.end71:                                         ; preds = %do.end69, %if.else56.if.end71_crit_edge, %if.then47.if.end71_crit_edge, %cleanup.thread
  %mode72 = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %mode72 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mode72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %31)
  %cmp73 = icmp eq i32 %31, 4
  br i1 %cmp73, label %if.then75, label %if.end71.cleanup140_crit_edge

if.end71.cleanup140_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup140

if.then75:                                        ; preds = %if.end71
  %call76 = tail call fastcc i32 @wl1273_fm_upload_firmware_patch(ptr noundef %radio)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then75.if.end82_crit_edge, label %do.end81

if.then75.if.end82_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

do.end81:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.131) #11
  br label %if.end82

if.end82:                                         ; preds = %do.end81, %if.then75.if.end82_crit_edge
  br i1 %cmp11, label %if.then85, label %if.else105

if.then85:                                        ; preds = %if.end82
  %rds_on87 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 11
  %32 = ptrtoint ptr %rds_on87 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rds_on87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool88.not = icmp eq i32 %33, 0
  %spec.select198 = select i1 %tobool88.not, i16 1, i16 3
  %write94 = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 10
  %34 = ptrtoint ptr %write94 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write94, align 4
  %call95 = tail call i32 %35(ptr noundef %1, i8 noundef zeroext 32, i16 noundef zeroext %spec.select198) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.then85.cleanup140_crit_edge, label %if.then85.fail_crit_edge

if.then85.fail_crit_edge:                         ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.then85.cleanup140_crit_edge:                   ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup140

if.else105:                                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %new_mode)
  %cmp106 = icmp eq i32 %new_mode, 2
  br i1 %cmp106, label %if.then108, label %if.else105.cleanup140_crit_edge

if.else105.cleanup140_crit_edge:                  ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup140

if.then108:                                       ; preds = %if.else105
  %write109 = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 10
  %36 = ptrtoint ptr %write109 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write109, align 4
  %call110 = tail call i32 %37(ptr noundef %1, i8 noundef zeroext 91, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.then108.cleanup140_crit_edge, label %if.then108.fail_crit_edge

if.then108.fail_crit_edge:                        ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.then108.cleanup140_crit_edge:                  ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup140

fail:                                             ; preds = %if.then108.fail_crit_edge, %if.then85.fail_crit_edge, %if.else56.fail_crit_edge, %if.then47.fail_crit_edge, %if.then35.fail_crit_edge, %if.then19.fail_crit_edge
  %.str.117.sink = phi ptr [ @.str.117, %if.then19.fail_crit_edge ], [ @.str.119, %if.then35.fail_crit_edge ], [ @.str.122, %if.then47.fail_crit_edge ], [ @.str.125, %if.else56.fail_crit_edge ], [ @.str.117, %if.then85.fail_crit_edge ], [ @.str.119, %if.then108.fail_crit_edge ]
  %r.2 = phi i32 [ %call21, %if.then19.fail_crit_edge ], [ %call37, %if.then35.fail_crit_edge ], [ %call49, %if.then47.fail_crit_edge ], [ %call58, %if.else56.fail_crit_edge ], [ %call95, %if.then85.fail_crit_edge ], [ %call110, %if.then108.fail_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull %.str.117.sink, ptr noundef nonnull @.str.115) #11
  %disable = getelementptr inbounds %struct.wl1273_fm_platform_data, ptr %3, i32 0, i32 3
  %38 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %disable, align 4
  %tobool120.not = icmp eq ptr %39, null
  br i1 %tobool120.not, label %fail.do.body124_crit_edge, label %if.then121

fail.do.body124_crit_edge:                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body124

if.then121:                                       ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %39() #8
  br label %do.body124

do.body124:                                       ; preds = %if.then121, %fail.do.body124_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_start.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_start, %if.then136)) #8
          to label %cleanup140 [label %if.then136], !srcloc !730

if.then136:                                       ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_start.__UNIQUE_ID_ddebug327, ptr noundef %5, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.115, i32 noundef %r.2) #8
  br label %cleanup140

cleanup140:                                       ; preds = %if.then136, %do.body124, %if.then108.cleanup140_crit_edge, %if.else105.cleanup140_crit_edge, %if.then85.cleanup140_crit_edge, %if.end71.cleanup140_crit_edge
  %retval.0 = phi i32 [ 0, %if.then108.cleanup140_crit_edge ], [ 0, %if.else105.cleanup140_crit_edge ], [ 0, %if.end71.cleanup140_crit_edge ], [ %r.2, %if.then136 ], [ 0, %if.then85.cleanup140_crit_edge ], [ %r.2, %do.body124 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wl1273_fm_stop(ptr nocapture noundef readonly %radio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %core1 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 25
  %0 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core1, align 4
  %mode = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.366)
  switch i32 %3, label %entry.if.end17_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then5
  ]

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then:                                          ; preds = %entry
  %write = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write, align 4
  %call = tail call i32 %6(ptr noundef %1, i8 noundef zeroext 32, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.if.end17_crit_edge, label %do.end

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 24
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.152, i32 noundef %call) #11
  br label %if.end17

if.then5:                                         ; preds = %entry
  %write7 = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %write7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write7, align 4
  %call8 = tail call i32 %10(ptr noundef %1, i8 noundef zeroext 91, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then5.if.end17_crit_edge, label %do.end13

if.then5.if.end17_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

do.end13:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %dev14 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 24
  %11 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev14, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.152, i32 noundef %call8) #11
  br label %if.end17

if.end17:                                         ; preds = %do.end13, %if.then5.if.end17_crit_edge, %do.end, %if.then.if.end17_crit_edge, %entry.if.end17_crit_edge
  %pdata = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdata, align 8
  %disable = getelementptr inbounds %struct.wl1273_fm_platform_data, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %disable, align 4
  %tobool18.not = icmp eq ptr %16, null
  br i1 %tobool18.not, label %if.end17.if.end32_crit_edge, label %if.then19

if.end17.if.end32_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %16() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_stop.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_stop, %if.then27)) #8
          to label %if.end32 [label %if.then27], !srcloc !730

if.then27:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %dev28 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 24
  %17 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev28, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_stop.__UNIQUE_ID_ddebug325, ptr noundef %18, ptr noundef nonnull @.str.156) #8
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %if.then19, %if.end17.if.end32_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wl1273_fm_set_rx_freq(ptr noundef %radio, i32 noundef %freq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %core1 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 25
  %0 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core1, align 4
  %rangelow = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 7
  %2 = ptrtoint ptr %rangelow to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rangelow, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %freq)
  %cmp = icmp ugt i32 %3, %freq
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 24
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.157, i32 noundef %freq, i32 noundef %3) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %rangehigh = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 8
  %6 = ptrtoint ptr %rangehigh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rangehigh, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %freq)
  %cmp3 = icmp ult i32 %7, %freq
  br i1 %cmp3, label %do.end7, label %do.body11

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev8 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 24
  %8 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev8, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.160, i32 noundef %freq, i32 noundef %7) #11
  br label %cleanup

do.body11:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_set_rx_freq.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_set_rx_freq, %if.then14)) #8
          to label %do.end18 [label %if.then14], !srcloc !730

if.then14:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  %dev15 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 24
  %10 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev15, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_set_rx_freq.__UNIQUE_ID_ddebug320, ptr noundef %11, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.158, i32 noundef %freq) #8
  br label %do.end18

do.end18:                                         ; preds = %if.then14, %do.body11
  %write = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write, align 4
  %irq_flags = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 19
  %14 = ptrtoint ptr %irq_flags to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %irq_flags, align 8
  %call19 = tail call i32 %13(ptr noundef %1, i8 noundef zeroext 26, i16 noundef zeroext %15) #8
  %band = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 9
  %16 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp20 = icmp eq i32 %17, 1
  %f.0.in.v = select i1 %cmp20, i32 -76000, i32 -87500
  %f.0.in = add i32 %f.0.in.v, %freq
  %f.0 = udiv i32 %f.0.in, 50
  %18 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write, align 4
  %conv = trunc i32 %f.0 to i16
  %call26 = tail call i32 %19(ptr noundef %1, i8 noundef zeroext 10, i16 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end33, label %do.end31

do.end31:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #10
  %dev32 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 24
  %20 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev32, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.164) #11
  br label %cleanup

if.end33:                                         ; preds = %do.end18
  %22 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write, align 4
  %call35 = tail call i32 %23(ptr noundef %1, i8 noundef zeroext 45, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end42, label %do.end40

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %dev41 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 24
  %24 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev41, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.167) #11
  br label %cleanup

if.end42:                                         ; preds = %if.end33
  %busy = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 14
  %26 = ptrtoint ptr %busy to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %busy, align 4
  %call45 = tail call i32 @wait_for_completion_timeout(ptr noundef %busy, i32 noundef 200) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %do.end50, label %if.end52

do.end50:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %dev51 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 24
  %27 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev51, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.158) #11
  br label %cleanup

if.end52:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %rd_index = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 17
  %29 = ptrtoint ptr %rd_index to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %rd_index, align 8
  %wr_index = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 18
  %30 = ptrtoint ptr %wr_index to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %wr_index, align 4
  %rx_frequency = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 5
  %31 = ptrtoint ptr %rx_frequency to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %freq, ptr %rx_frequency, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %do.end50, %do.end40, %do.end31, %do.end7, %do.end
  %retval.0 = phi i32 [ 0, %if.end52 ], [ -110, %do.end50 ], [ -34, %do.end ], [ -34, %do.end7 ], [ %call26, %do.end31 ], [ %call35, %do.end40 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wl1273_fm_set_tx_freq(ptr noundef %radio, i32 noundef %freq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %core1 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 25
  %0 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 76000, i32 %freq)
  %cmp = icmp ult i32 %freq, 76000
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 24
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.157, i32 noundef %freq, i32 noundef 76000) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 108000, i32 %freq)
  %cmp2 = icmp ugt i32 %freq, 108000
  br i1 %cmp2, label %do.end6, label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev7 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 24
  %4 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev7, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.160, i32 noundef %freq, i32 noundef 108000) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_set_tx_freq.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_set_tx_freq, %if.then12)) #8
          to label %do.end16 [label %if.then12], !srcloc !730

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %dev13 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 24
  %6 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev13, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_set_tx_freq.__UNIQUE_ID_ddebug317, ptr noundef %7, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.172, i32 noundef %freq) #8
  br label %do.end16

do.end16:                                         ; preds = %if.then12, %if.end8
  %write = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write, align 4
  %div = udiv i32 %freq, 10
  %conv = trunc i32 %div to i16
  %call17 = tail call i32 %9(ptr noundef %1, i8 noundef zeroext 55, i16 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %do.end16.cleanup_crit_edge

do.end16.cleanup_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %do.end16
  %busy = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 14
  %10 = ptrtoint ptr %busy to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %busy, align 4
  %call23 = tail call i32 @wait_for_completion_timeout(ptr noundef %busy, i32 noundef 200) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end20.cleanup_crit_edge, label %do.body27

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body27:                                        ; preds = %if.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_set_tx_freq.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_set_tx_freq, %if.then39)) #8
          to label %do.end43 [label %if.then39], !srcloc !730

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  %dev40 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 24
  %11 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev40, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_set_tx_freq.__UNIQUE_ID_ddebug318, ptr noundef %12, ptr noundef nonnull @.str.176, i32 noundef %call23) #8
  br label %do.end43

do.end43:                                         ; preds = %if.then39, %do.body27
  %13 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write, align 4
  %call45 = tail call i32 %14(ptr noundef %1, i8 noundef zeroext 90, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %do.end43.cleanup_crit_edge

do.end43.cleanup_crit_edge:                       ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end48:                                         ; preds = %do.end43
  %15 = ptrtoint ptr %busy to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %busy, align 4
  %call52 = tail call i32 @wait_for_completion_timeout(ptr noundef %busy, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end48.cleanup_crit_edge, label %if.end55

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end55:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %tx_frequency = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 6
  %16 = ptrtoint ptr %tx_frequency to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %freq, ptr %tx_frequency, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_set_tx_freq.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_set_tx_freq, %if.then68)) #8
          to label %cleanup [label %if.then68], !srcloc !730

if.then68:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %dev69 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 24
  %17 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev69, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_set_tx_freq.__UNIQUE_ID_ddebug319, ptr noundef %18, ptr noundef nonnull @.str.177, i32 noundef %call52) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %if.end55, %if.end48.cleanup_crit_edge, %do.end43.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %do.end16.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ -34, %do.end ], [ -34, %do.end6 ], [ %call17, %do.end16.cleanup_crit_edge ], [ -110, %if.end20.cleanup_crit_edge ], [ %call45, %do.end43.cleanup_crit_edge ], [ -110, %if.end48.cleanup_crit_edge ], [ 0, %if.then68 ], [ 0, %if.end55 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wl1273_fm_upload_firmware_patch(ptr nocapture noundef readonly %radio) unnamed_addr #2 align 64 {
entry:
  %fw_p = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %core1 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 25
  %0 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_p) #8
  %2 = ptrtoint ptr %fw_p to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_p, align 4, !annotation !731
  %dev2 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 24
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev2, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_upload_firmware_patch.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_upload_firmware_patch, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !730

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_upload_firmware_patch.__UNIQUE_ID_ddebug322, ptr noundef %4, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.139) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = call i32 @request_firmware(ptr noundef nonnull %fw_p, ptr noundef nonnull @.str.138, ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end11, label %do.end10

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.138) #11
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %5 = ptrtoint ptr %fw_p to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw_p, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %conv = zext i8 %10 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_upload_firmware_patch.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_upload_firmware_patch, %if.then24)) #8
          to label %do.end27 [label %if.then24], !srcloc !730

if.then24:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_upload_firmware_patch.__UNIQUE_ID_ddebug323, ptr noundef %4, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.139, i32 noundef %conv) #8
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %if.end11
  %add.ptr = getelementptr i8, ptr %8, i32 1
  %call28 = call fastcc i32 @wl1273_fm_write_fw(ptr noundef %1, ptr noundef %add.ptr, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end34, label %do.end33

do.end33:                                         ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.144, i32 noundef %call28) #11
  br label %out

if.end34:                                         ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #10
  %write = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write, align 4
  %call35 = call i32 %12(ptr noundef %1, i8 noundef zeroext 102, i16 noundef zeroext 0) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_upload_firmware_patch.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_upload_firmware_patch, %if.then48)) #8
          to label %out [label %if.then48], !srcloc !730

if.then48:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_upload_firmware_patch.__UNIQUE_ID_ddebug324, ptr noundef %4, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.139, i32 noundef 0) #8
  br label %out

out:                                              ; preds = %if.then48, %if.end34, %do.end33
  %13 = ptrtoint ptr %fw_p to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fw_p, align 4
  call void @release_firmware(ptr noundef %14) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end10
  %retval.0 = phi i32 [ 0, %do.end10 ], [ %call28, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_p) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wl1273_fm_write_fw(ptr nocapture noundef readonly %core, ptr noundef %fw, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.wl1273_core, ptr %core, i32 0, i32 8
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #8
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 -1, ptr %2, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr, align 2
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp.not86 = icmp slt i32 %len, 0
  br i1 %cmp.not86, label %entry.do.body19_crit_edge, label %for.body.lr.ph

entry.do.body19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19

for.body.lr.ph:                                   ; preds = %entry
  %len3 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %add14 = add nuw i32 %len, 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %fw.addr.088 = phi ptr [ %fw, %for.body.lr.ph ], [ %add.ptr6, %for.inc.for.body_crit_edge ]
  %i.087 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %fw.addr.088 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fw.addr.088, align 1
  %conv = zext i8 %9 to i16
  %10 = ptrtoint ptr %len3 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %len3, align 4
  %add.ptr = getelementptr i8, ptr %fw.addr.088, i32 1
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr, ptr %buf, align 4
  %conv5 = zext i8 %9 to i32
  %add = add nuw nsw i32 %conv5, 1
  %add.ptr6 = getelementptr i8, ptr %fw.addr.088, i32 %add
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_write_fw.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_write_fw, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !730

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %len3 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %len3, align 4
  %conv10 = zext i16 %13 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_write_fw.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.147, i32 noundef %i.087, i32 noundef %conv10) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %for.body
  %14 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter, align 8
  %call11 = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %i.087, i32 %add14)
  %cmp15 = icmp slt i32 %i.087, %add14
  %or.cond = select i1 %cmp12, i1 %cmp15, i1 false
  br i1 %or.cond, label %do.end.do.body19_crit_edge, label %for.inc

do.end.do.body19_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19

for.inc:                                          ; preds = %do.end
  %inc = add i32 %i.087, 1
  %cmp.not = icmp sgt i32 %inc, %len
  br i1 %cmp.not, label %for.inc.do.body19_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.do.body19_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19

do.body19:                                        ; preds = %for.inc.do.body19_crit_edge, %do.end.do.body19_crit_edge, %entry.do.body19_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.do.body19_crit_edge ], [ %i.087, %do.end.do.body19_crit_edge ], [ %inc, %for.inc.do.body19_crit_edge ]
  %r.1 = phi i32 [ 0, %entry.do.body19_crit_edge ], [ %call11, %do.end.do.body19_crit_edge ], [ %call11, %for.inc.do.body19_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_write_fw.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_write_fw, %if.then31)) #8
          to label %do.body36 [label %if.then31], !srcloc !730

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  %dev32 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_write_fw.__UNIQUE_ID_ddebug297, ptr noundef %dev32, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.147, i32 noundef %i.0.lcssa) #8
  br label %do.body36

do.body36:                                        ; preds = %if.then31, %do.body19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_write_fw.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_write_fw, %if.then48)) #8
          to label %do.end53 [label %if.then48], !srcloc !730

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  %dev49 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %add50 = add nsw i32 %len, 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_write_fw.__UNIQUE_ID_ddebug298, ptr noundef %dev49, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.147, i32 noundef %add50) #8
  br label %do.end53

do.end53:                                         ; preds = %if.then48, %do.body36
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %len)
  %cmp54 = icmp eq i32 %i.0.lcssa, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %r.1)
  %cmp56 = icmp eq i32 %r.1, 1
  %or.cond76 = select i1 %cmp54, i1 true, i1 %cmp56
  %r.2 = select i1 %or.cond76, i32 0, i32 %r.1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #8
  ret i32 %r.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wl1273_fm_rds_off(ptr noundef %radio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %core1 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 25
  %0 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core1, align 4
  %rds_on = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 11
  %2 = ptrtoint ptr %rds_on to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rds_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq_flags = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 19
  %4 = ptrtoint ptr %irq_flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %irq_flags, align 8
  %6 = and i16 %5, -5
  store i16 %6, ptr %irq_flags, align 8
  %write = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write, align 4
  %call = tail call i32 %8(ptr noundef %1, i8 noundef zeroext 26, i16 noundef zeroext %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.do.body26_crit_edge

if.end.do.body26_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body26

if.end6:                                          ; preds = %if.end
  %read_queue = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %read_queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_rds_off.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_rds_off, %if.then11)) #8
          to label %do.end [label %if.then11], !srcloc !730

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 24
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_rds_off.__UNIQUE_ID_ddebug339, ptr noundef %10, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.180) #8
  br label %do.end

do.end:                                           ; preds = %if.then11, %if.end6
  %11 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write, align 4
  %call14 = tail call i32 %12(ptr noundef %1, i8 noundef zeroext 32, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %do.end.do.body26_crit_edge

do.end.do.body26_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body26

if.end17:                                         ; preds = %do.end
  %rx_frequency = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 5
  %13 = ptrtoint ptr %rx_frequency to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_frequency, align 4
  %call18 = tail call fastcc i32 @wl1273_fm_set_rx_freq(ptr noundef %radio, i32 noundef %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end17.do.body26_crit_edge, label %do.end23

if.end17.do.body26_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body26

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %dev24 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 24
  %15 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev24, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.94, i32 noundef %call18) #11
  br label %do.body26

do.body26:                                        ; preds = %do.end23, %if.end17.do.body26_crit_edge, %do.end.do.body26_crit_edge, %if.end.do.body26_crit_edge
  %r.0 = phi i32 [ %call, %if.end.do.body26_crit_edge ], [ %call14, %do.end.do.body26_crit_edge ], [ %call18, %do.end23 ], [ 0, %if.end17.do.body26_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_rds_off.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_rds_off, %if.then38)) #8
          to label %cleanup [label %if.then38], !srcloc !730

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  %dev39 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 24
  %17 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev39, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_rds_off.__UNIQUE_ID_ddebug340, ptr noundef %18, ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.180) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %do.body26, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %r.0, %if.then38 ], [ %r.0, %do.body26 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wl1273_fm_tx_set_spacing(ptr nocapture noundef %radio, i32 noundef %spacing) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %core1 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 25
  %0 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spacing)
  %cmp = icmp eq i32 %spacing, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %write = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write, align 4
  %call = tail call i32 %3(ptr noundef %1, i8 noundef zeroext 56, i16 noundef zeroext 2) #8
  br label %if.end20

if.else:                                          ; preds = %entry
  %sub = add i32 %spacing, -50000
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000, i32 %sub)
  %cmp3 = icmp ult i32 %sub, 25000
  br i1 %cmp3, label %if.then4, label %if.else8

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %write5 = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %write5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write5, align 4
  %call6 = tail call i32 %5(ptr noundef %1, i8 noundef zeroext 56, i16 noundef zeroext 1) #8
  br label %if.end20

if.else8:                                         ; preds = %if.else
  %sub9 = add i32 %spacing, -100000
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000, i32 %sub9)
  %cmp10 = icmp ult i32 %sub9, 50000
  %write12 = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %write12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write12, align 4
  br i1 %cmp10, label %if.then11, label %if.else15

if.then11:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 %7(ptr noundef %1, i8 noundef zeroext 56, i16 noundef zeroext 2) #8
  br label %if.end20

if.else15:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call i32 %7(ptr noundef %1, i8 noundef zeroext 56, i16 noundef zeroext 4) #8
  br label %if.end20

if.end20:                                         ; preds = %if.else15, %if.then11, %if.then4, %if.then
  %.sink = phi i32 [ 50, %if.then4 ], [ 200, %if.else15 ], [ 100, %if.then11 ], [ 100, %if.then ]
  %r.0 = phi i32 [ %call6, %if.then4 ], [ %call17, %if.else15 ], [ %call13, %if.then11 ], [ %call, %if.then ]
  %spacing7 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 3
  %8 = ptrtoint ptr %spacing7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %spacing7, align 4
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wl1273_fm_set_seek(ptr noundef %radio, i32 noundef %wrap_around, i32 noundef %seek_upward) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %core1 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 25
  %0 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %seek_upward)
  %cmp = icmp ne i32 %seek_upward, 0
  %rx_frequency = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 5
  %2 = ptrtoint ptr %rx_frequency to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_frequency, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_set_seek.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_set_seek, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !730

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 24
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_set_seek.__UNIQUE_ID_ddebug332, ptr noundef %5, ptr noundef nonnull @.str.343, i32 noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %spacing = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 3
  %6 = ptrtoint ptr %spacing to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %spacing, align 4
  br i1 %cmp, label %land.lhs.true, label %if.else15

land.lhs.true:                                    ; preds = %do.end
  %add = add i32 %7, %3
  %rangehigh = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 8
  %8 = ptrtoint ptr %rangehigh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rangehigh, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp5.not = icmp ugt i32 %add, %9
  br i1 %cmp5.not, label %land.lhs.true11.critedge, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.lhs.true11.critedge:                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wrap_around)
  %tobool12.not = icmp eq i32 %wrap_around, 0
  br i1 %tobool12.not, label %if.else15.thread, label %if.then13

if.then13:                                        ; preds = %land.lhs.true11.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %rangelow = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 7
  %10 = ptrtoint ptr %rangelow to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rangelow, align 4
  br label %if.end31

if.else15:                                        ; preds = %do.end
  %sub = sub i32 %3, %7
  %rangelow17 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 7
  %12 = ptrtoint ptr %rangelow17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rangelow17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %13)
  %cmp18.not = icmp ult i32 %sub, %13
  br i1 %cmp18.not, label %if.else23, label %if.else15.if.end31_crit_edge

if.else15.if.end31_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.else15.thread:                                 ; preds = %land.lhs.true11.critedge
  %14 = ptrtoint ptr %spacing to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %spacing, align 4
  %sub20 = sub i32 %3, %15
  %rangelow1721 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 7
  %16 = ptrtoint ptr %rangelow1721 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rangelow1721, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub20, i32 %17)
  %cmp18.not22 = icmp ult i32 %sub20, %17
  br i1 %cmp18.not22, label %if.else15.thread.if.end38_crit_edge, label %if.else15.thread.if.end31_crit_edge

if.else15.thread.if.end31_crit_edge:              ; preds = %if.else15.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.else15.thread.if.end38_crit_edge:              ; preds = %if.else15.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.else23:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wrap_around)
  %tobool24.not = icmp eq i32 %wrap_around, 0
  br i1 %tobool24.not, label %if.else23.if.end38_crit_edge, label %if.then25

if.else23.if.end38_crit_edge:                     ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then25:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #10
  %rangehigh26 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 8
  %18 = ptrtoint ptr %rangehigh26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rangehigh26, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then25, %if.else15.thread.if.end31_crit_edge, %if.else15.if.end31_crit_edge, %if.then13, %land.lhs.true.if.end31_crit_edge
  %.sink = phi i32 [ %11, %if.then13 ], [ %19, %if.then25 ], [ %add, %land.lhs.true.if.end31_crit_edge ], [ %sub20, %if.else15.thread.if.end31_crit_edge ], [ %sub, %if.else15.if.end31_crit_edge ]
  %call14 = tail call fastcc i32 @wl1273_fm_set_rx_freq(ptr noundef %radio, i32 noundef %.sink)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool32.not = icmp eq i32 %call14, 0
  br i1 %tobool32.not, label %if.end31.if.end38_crit_edge, label %if.end31.do.body163_crit_edge

if.end31.do.body163_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body163

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.end38:                                         ; preds = %if.end31.if.end38_crit_edge, %if.else23.if.end38_crit_edge, %if.else15.thread.if.end38_crit_edge
  %busy = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 14
  %20 = ptrtoint ptr %busy to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %busy, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_set_seek.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_set_seek, %if.then51)) #8
          to label %do.end55 [label %if.then51], !srcloc !730

if.then51:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %dev52 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 24
  %21 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev52, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_set_seek.__UNIQUE_ID_ddebug333, ptr noundef %22, ptr noundef nonnull @.str.344, ptr noundef nonnull @.str.342) #8
  br label %do.end55

do.end55:                                         ; preds = %if.then51, %if.end38
  %write = getelementptr inbounds %struct.wl1273_core, ptr %1, i32 0, i32 10
  %23 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write, align 4
  %irq_flags = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 19
  %25 = ptrtoint ptr %irq_flags to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %irq_flags, align 8
  %call56 = tail call i32 %24(ptr noundef %1, i8 noundef zeroext 26, i16 noundef zeroext %26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %do.body60, label %do.end55.do.body163_crit_edge

do.end55.do.body163_crit_edge:                    ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body163

do.body60:                                        ; preds = %do.end55
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_set_seek.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_set_seek, %if.then72)) #8
          to label %do.end76 [label %if.then72], !srcloc !730

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #10
  %dev73 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 24
  %27 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev73, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_set_seek.__UNIQUE_ID_ddebug334, ptr noundef %28, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.342) #8
  br label %do.end76

do.end76:                                         ; preds = %if.then72, %do.body60
  %29 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write, align 4
  %call78 = tail call i32 %30(ptr noundef %1, i8 noundef zeroext 15, i16 noundef zeroext 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %do.end76.do.body163_crit_edge

do.end76.do.body163_crit_edge:                    ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body163

if.end81:                                         ; preds = %do.end76
  %31 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write, align 4
  %conv83 = zext i1 %cmp to i16
  %call84 = tail call i32 %32(ptr noundef %1, i8 noundef zeroext 27, i16 noundef zeroext %conv83) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %if.end81.do.body163_crit_edge

if.end81.do.body163_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body163

if.end87:                                         ; preds = %if.end81
  %33 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write, align 4
  %call89 = tail call i32 %34(ptr noundef %1, i8 noundef zeroext 45, i16 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %if.end87.do.body163_crit_edge

if.end87.do.body163_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body163

if.end92:                                         ; preds = %if.end87
  %call95 = tail call i32 @wait_for_completion_timeout(ptr noundef %busy, i32 noundef 100) #8
  %irq_received = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 20
  %35 = ptrtoint ptr %irq_received to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %irq_received, align 2
  %37 = and i16 %36, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool97.not = icmp eq i16 %37, 0
  br i1 %tobool97.not, label %if.end92.do.body163_crit_edge, label %if.end99

if.end92.do.body163_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body163

if.end99:                                         ; preds = %if.end92
  %and102 = and i16 %36, -3
  %38 = ptrtoint ptr %irq_received to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %and102, ptr %irq_received, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wrap_around)
  %tobool104.not = icmp eq i32 %wrap_around, 0
  br i1 %tobool104.not, label %if.end99.do.body163_crit_edge, label %do.body107

if.end99.do.body163_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body163

do.body107:                                       ; preds = %if.end99
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_set_seek.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_set_seek, %if.then119)) #8
          to label %do.end123 [label %if.then119], !srcloc !730

if.then119:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #10
  %dev120 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 24
  %39 = ptrtoint ptr %dev120 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev120, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_set_seek.__UNIQUE_ID_ddebug335, ptr noundef %40, ptr noundef nonnull @.str.345) #8
  br label %do.end123

do.end123:                                        ; preds = %if.then119, %do.body107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %seek_upward)
  %tobool124.not = icmp eq i32 %seek_upward, 0
  %rangelow126 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 7
  %rangehigh128 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 8
  %f.0.in = select i1 %tobool124.not, ptr %rangehigh128, ptr %rangelow126
  %41 = ptrtoint ptr %f.0.in to i32
  call void @__asan_load4_noabort(i32 %41)
  %f.0 = load i32, ptr %f.0.in, align 4
  %call130 = tail call fastcc i32 @wl1273_fm_set_rx_freq(ptr noundef %radio, i32 noundef %f.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.end133, label %do.end123.do.body163_crit_edge

do.end123.do.body163_crit_edge:                   ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body163

if.end133:                                        ; preds = %do.end123
  %42 = ptrtoint ptr %busy to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %busy, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_set_seek.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_set_seek, %if.then147)) #8
          to label %do.end151 [label %if.then147], !srcloc !730

if.then147:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  %dev148 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 24
  %43 = ptrtoint ptr %dev148 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev148, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_set_seek.__UNIQUE_ID_ddebug336, ptr noundef %44, ptr noundef nonnull @.str.344, ptr noundef nonnull @.str.342) #8
  br label %do.end151

do.end151:                                        ; preds = %if.then147, %if.end133
  %45 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write, align 4
  %call153 = tail call i32 %46(ptr noundef %1, i8 noundef zeroext 45, i16 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %if.end156, label %do.end151.do.body163_crit_edge

do.end151.do.body163_crit_edge:                   ; preds = %do.end151
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body163

if.end156:                                        ; preds = %do.end151
  call void @__sanitizer_cov_trace_pc() #10
  %call159 = tail call i32 @wait_for_completion_timeout(ptr noundef %busy, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  %spec.select = select i1 %tobool160.not, i32 -110, i32 0
  br label %do.body163

do.body163:                                       ; preds = %if.end156, %do.end151.do.body163_crit_edge, %do.end123.do.body163_crit_edge, %if.end99.do.body163_crit_edge, %if.end92.do.body163_crit_edge, %if.end87.do.body163_crit_edge, %if.end81.do.body163_crit_edge, %do.end76.do.body163_crit_edge, %do.end55.do.body163_crit_edge, %if.end31.do.body163_crit_edge
  %r.1 = phi i32 [ %call14, %if.end31.do.body163_crit_edge ], [ %call56, %do.end55.do.body163_crit_edge ], [ %call78, %do.end76.do.body163_crit_edge ], [ %call84, %if.end81.do.body163_crit_edge ], [ %call89, %if.end87.do.body163_crit_edge ], [ %call130, %do.end123.do.body163_crit_edge ], [ %call153, %do.end151.do.body163_crit_edge ], [ 0, %if.end99.do.body163_crit_edge ], [ -110, %if.end92.do.body163_crit_edge ], [ %spec.select, %if.end156 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_set_seek.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_set_seek, %if.then175)) #8
          to label %cleanup [label %if.then175], !srcloc !730

if.then175:                                       ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #10
  %dev176 = getelementptr inbounds %struct.wl1273_device, ptr %radio, i32 0, i32 24
  %47 = ptrtoint ptr %dev176 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev176, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_set_seek.__UNIQUE_ID_ddebug337, ptr noundef %48, ptr noundef nonnull @.str.346, ptr noundef nonnull @.str.342, i32 noundef %r.1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then175, %do.body163
  ret i32 %r.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1273_fm_g_volatile_ctrl(ptr nocapture noundef %ctrl) #2 align 64 {
entry:
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 21
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %core1 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_g_volatile_ctrl.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_g_volatile_ctrl, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !730

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_g_volatile_ctrl.__UNIQUE_ID_ddebug353, ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.347) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 7
  %call4 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10160498, i32 %7)
  %cond = icmp eq i32 %7, 10160498
  br i1 %cond, label %sw.bb, label %do.end11

sw.bb:                                            ; preds = %if.end7
  %8 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core1, align 4
  %dev2.i = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %10 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev2.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #8
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %val.i, align 2, !annotation !731
  %mode.i = getelementptr inbounds %struct.wl1273_core, ptr %9, i32 0, i32 2
  %13 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.367)
  switch i32 %14, label %if.end.i [
    i32 4, label %sw.bb.wl1273_fm_get_tx_ctune.exit_crit_edge
    i32 8, label %sw.bb.wl1273_fm_get_tx_ctune.exit_crit_edge25
  ]

sw.bb.wl1273_fm_get_tx_ctune.exit_crit_edge25:    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %wl1273_fm_get_tx_ctune.exit

sw.bb.wl1273_fm_get_tx_ctune.exit_crit_edge:      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %wl1273_fm_get_tx_ctune.exit

if.end.i:                                         ; preds = %sw.bb
  %read.i = getelementptr inbounds %struct.wl1273_core, ptr %9, i32 0, i32 9
  %16 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read.i, align 8
  %call.i = call i32 %17(ptr noundef %9, i8 noundef zeroext 104, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i.out.i_crit_edge, label %do.end.i

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.349, ptr noundef nonnull @.str.350, i32 noundef %call.i) #11
  br label %out.i

out.i:                                            ; preds = %do.end.i, %if.end.i.out.i_crit_edge
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %val.i, align 2
  %conv.i = zext i16 %19 to i32
  br label %wl1273_fm_get_tx_ctune.exit

wl1273_fm_get_tx_ctune.exit:                      ; preds = %out.i, %sw.bb.wl1273_fm_get_tx_ctune.exit_crit_edge, %sw.bb.wl1273_fm_get_tx_ctune.exit_crit_edge25
  %retval.0.i23 = phi i32 [ %conv.i, %out.i ], [ -1, %sw.bb.wl1273_fm_get_tx_ctune.exit_crit_edge ], [ -1, %sw.bb.wl1273_fm_get_tx_ctune.exit_crit_edge25 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %retval.0.i23, ptr %val, align 4
  br label %sw.epilog

do.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %dev12 = getelementptr inbounds %struct.wl1273_device, ptr %1, i32 0, i32 24
  %21 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev12, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.348, ptr noundef nonnull @.str.347, i32 noundef %7) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end11, %wl1273_fm_get_tx_ctune.exit
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -4, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1273_fm_vidioc_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -268
  %core1 = getelementptr i8, ptr %1, i32 1672
  %2 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_vidioc_s_ctrl.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_vidioc_s_ctrl, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !730

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr i8, ptr %1, i32 1668
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_vidioc_s_ctrl.__UNIQUE_ID_ddebug354, ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.351) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.368)
  switch i32 %7, label %do.end53 [
    i32 9963785, label %sw.bb
    i32 9963781, label %sw.bb37
    i32 10160496, label %sw.bb45
    i32 10160497, label %sw.bb48
  ]

sw.bb:                                            ; preds = %do.end
  %lock = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 7
  %call5 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %sw.bb
  %mode = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.369)
  switch i32 %10, label %if.end8.if.end35_crit_edge [
    i32 1, label %land.lhs.true
    i32 2, label %land.lhs.true20
  ]

if.end8.if.end35_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool9.not = icmp eq i32 %13, 0
  %write15 = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 10
  %14 = ptrtoint ptr %write15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write15, align 4
  br i1 %tobool9.not, label %if.then14, label %if.then10

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = tail call i32 %15(ptr noundef %3, i8 noundef zeroext 17, i16 noundef zeroext 12) #8
  br label %if.end35

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 %15(ptr noundef %3, i8 noundef zeroext 17, i16 noundef zeroext 0) #8
  br label %if.end35

land.lhs.true20:                                  ; preds = %if.end8
  %val21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %16 = ptrtoint ptr %val21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool22.not = icmp eq i32 %17, 0
  %write30 = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 10
  %18 = ptrtoint ptr %write30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write30, align 4
  br i1 %tobool22.not, label %if.then29, label %if.then23

if.then23:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  %call25 = tail call i32 %19(ptr noundef %3, i8 noundef zeroext 92, i16 noundef zeroext 1) #8
  br label %if.end35

if.then29:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  %call31 = tail call i32 %19(ptr noundef %3, i8 noundef zeroext 92, i16 noundef zeroext 0) #8
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %if.then23, %if.then14, %if.then10, %if.end8.if.end35_crit_edge
  %r.0 = phi i32 [ %call11, %if.then10 ], [ %call16, %if.then14 ], [ %call25, %if.then23 ], [ %call31, %if.then29 ], [ 0, %if.end8.if.end35_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %do.body56

sw.bb37:                                          ; preds = %do.end
  %val38 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %20 = ptrtoint ptr %val38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp39 = icmp eq i32 %21, 0
  br i1 %cmp39, label %if.then40, label %if.else42

if.then40:                                        ; preds = %sw.bb37
  %22 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %core1, align 4
  %dev2.i = getelementptr i8, ptr %1, i32 1668
  %24 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev2.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_set_mode.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_vidioc_s_ctrl, %if.then.i)) #8
          to label %do.body5.i [label %if.then.i], !srcloc !730

if.then.i:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_set_mode.__UNIQUE_ID_ddebug328, ptr noundef %25, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.87) #8
  br label %do.body5.i

do.body5.i:                                       ; preds = %if.then.i, %if.then40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_set_mode.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_vidioc_s_ctrl, %if.then17.i)) #8
          to label %do.end20.i [label %if.then17.i], !srcloc !730

if.then17.i:                                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  %forbidden.i = getelementptr i8, ptr %1, i32 -264
  %26 = ptrtoint ptr %forbidden.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %forbidden.i, align 4
  %conv.i = zext i8 %27 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_set_mode.__UNIQUE_ID_ddebug329, ptr noundef %25, ptr noundef nonnull @.str.88, i32 noundef %conv.i) #8
  br label %do.end20.i

do.end20.i:                                       ; preds = %if.then17.i, %do.body5.i
  %mode21.i = getelementptr inbounds %struct.wl1273_core, ptr %23, i32 0, i32 2
  %28 = ptrtoint ptr %mode21.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mode21.i, align 4
  %forbidden22.i = getelementptr i8, ptr %1, i32 -264
  %30 = ptrtoint ptr %forbidden22.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %forbidden22.i, align 4
  %32 = and i8 %31, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool24.not.i = icmp eq i8 %32, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %do.end20.i.wl1273_fm_set_mode.exit_crit_edge

do.end20.i.wl1273_fm_set_mode.exit_crit_edge:     ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wl1273_fm_set_mode.exit

if.end26.i:                                       ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @wl1273_fm_stop(ptr noundef %add.ptr.i) #8
  br label %wl1273_fm_set_mode.exit

wl1273_fm_set_mode.exit:                          ; preds = %if.end26.i, %do.end20.i.wl1273_fm_set_mode.exit_crit_edge
  %.sink.i = phi i32 [ 4, %if.end26.i ], [ %29, %do.end20.i.wl1273_fm_set_mode.exit_crit_edge ]
  %r.0207.ph.i = phi i32 [ 0, %if.end26.i ], [ -1, %do.end20.i.wl1273_fm_set_mode.exit_crit_edge ]
  %33 = ptrtoint ptr %mode21.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink.i, ptr %mode21.i, align 4
  br label %do.body56

if.else42:                                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #10
  %set_volume = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 13
  %34 = ptrtoint ptr %set_volume to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %set_volume, align 8
  %volume = getelementptr inbounds %struct.wl1273_core, ptr %3, i32 0, i32 4
  %36 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %volume, align 4
  %call43 = tail call i32 %35(ptr noundef %3, i32 noundef %37) #8
  br label %do.body56

sw.bb45:                                          ; preds = %do.end
  %val46 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %38 = ptrtoint ptr %val46 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val46, align 4
  %40 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %core1, align 4
  %mode.i = getelementptr inbounds %struct.wl1273_core, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mode.i, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.370)
  switch i32 %43, label %if.end.i [
    i32 4, label %sw.bb45.do.body56_crit_edge
    i32 8, label %sw.bb45.do.body56_crit_edge122
  ]

sw.bb45.do.body56_crit_edge122:                   ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body56

sw.bb45.do.body56_crit_edge:                      ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body56

if.end.i:                                         ; preds = %sw.bb45
  %lock.i = getelementptr inbounds %struct.wl1273_core, ptr %41, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %39)
  %45 = icmp ult i32 %39, 3
  br i1 %45, label %switch.lookup, label %if.end.i.out.i_crit_edge

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

switch.lookup:                                    ; preds = %if.end.i
  %switch.gep = getelementptr inbounds [3 x i16], ptr @switch.table.wl1273_fm_vidioc_s_ctrl, i32 0, i32 %39
  %46 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %46)
  %switch.load = load i16, ptr %switch.gep, align 2
  %write.i = getelementptr inbounds %struct.wl1273_core, ptr %41, i32 0, i32 10
  %47 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write.i, align 4
  %call.i = tail call i32 %48(ptr noundef %41, i8 noundef zeroext 64, i16 noundef zeroext %switch.load) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %switch.lookup.out.i_crit_edge

switch.lookup.out.i_crit_edge:                    ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end7.i:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %preemphasis8.i = getelementptr i8, ptr %1, i32 -260
  %49 = ptrtoint ptr %preemphasis8.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %39, ptr %preemphasis8.i, align 8
  br label %out.i

out.i:                                            ; preds = %if.end7.i, %switch.lookup.out.i_crit_edge, %if.end.i.out.i_crit_edge
  %r.0.i = phi i32 [ %call.i, %switch.lookup.out.i_crit_edge ], [ 0, %if.end7.i ], [ -22, %if.end.i.out.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  br label %do.body56

sw.bb48:                                          ; preds = %do.end
  %val49 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %50 = ptrtoint ptr %val49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val49, align 4
  %52 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %core1, align 4
  %mode.i110 = getelementptr inbounds %struct.wl1273_core, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %mode.i110 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mode.i110, align 4
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.371)
  switch i32 %55, label %if.end.i115 [
    i32 4, label %sw.bb48.do.body56_crit_edge
    i32 8, label %sw.bb48.do.body56_crit_edge123
  ]

sw.bb48.do.body56_crit_edge123:                   ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body56

sw.bb48.do.body56_crit_edge:                      ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body56

if.end.i115:                                      ; preds = %sw.bb48
  %conv = trunc i32 %51 to i16
  %lock.i111 = getelementptr inbounds %struct.wl1273_core, ptr %53, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock.i111, i32 noundef 0) #8
  %write.i112 = getelementptr inbounds %struct.wl1273_core, ptr %53, i32 0, i32 10
  %57 = ptrtoint ptr %write.i112 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write.i112, align 4
  %sub.i = sub i16 122, %conv
  %call.i113 = tail call i32 %58(ptr noundef %53, i8 noundef zeroext 59, i16 noundef zeroext %sub.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %tobool.not.i114 = icmp eq i32 %call.i113, 0
  br i1 %tobool.not.i114, label %if.end6.i, label %if.end.i115.out.i117_crit_edge

if.end.i115.out.i117_crit_edge:                   ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i117

if.end6.i:                                        ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i116 = and i32 %51, 65535
  %tx_power.i = getelementptr i8, ptr %1, i32 -252
  %59 = ptrtoint ptr %tx_power.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv.i116, ptr %tx_power.i, align 8
  br label %out.i117

out.i117:                                         ; preds = %if.end6.i, %if.end.i115.out.i117_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i111) #8
  br label %do.body56

do.end53:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev54 = getelementptr i8, ptr %1, i32 1668
  %60 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev54, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %61, ptr noundef nonnull @.str.348, ptr noundef nonnull @.str.351, i32 noundef %7) #11
  br label %do.body56

do.body56:                                        ; preds = %do.end53, %out.i117, %sw.bb48.do.body56_crit_edge, %sw.bb48.do.body56_crit_edge123, %out.i, %sw.bb45.do.body56_crit_edge, %sw.bb45.do.body56_crit_edge122, %if.else42, %wl1273_fm_set_mode.exit, %if.end35
  %r.1 = phi i32 [ 0, %do.end53 ], [ %r.0207.ph.i, %wl1273_fm_set_mode.exit ], [ %call43, %if.else42 ], [ %r.0, %if.end35 ], [ %r.0.i, %out.i ], [ -1, %sw.bb45.do.body56_crit_edge ], [ -1, %sw.bb45.do.body56_crit_edge122 ], [ %call.i113, %out.i117 ], [ -1, %sw.bb48.do.body56_crit_edge ], [ -1, %sw.bb48.do.body56_crit_edge123 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_fm_vidioc_s_ctrl.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_fm_vidioc_s_ctrl, %if.then68)) #8
          to label %cleanup [label %if.then68], !srcloc !730

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #10
  %dev69 = getelementptr i8, ptr %1, i32 1668
  %62 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev69, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_fm_vidioc_s_ctrl.__UNIQUE_ID_ddebug355, ptr noundef %63, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.351) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %do.body56, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -4, %sw.bb.cleanup_crit_edge ], [ %r.1, %if.then68 ], [ %r.1, %do.body56 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 311)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 311)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !20, !22, !24, !25, !26, !28, !30, !32, !34, !35, !36, !37, !38, !40, !41, !42, !43, !44, !46, !47, !48, !50, !52, !53, !54, !56, !57, !59, !61, !62, !63, !65, !66, !67, !69, !70, !72, !73, !74, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !130, !131, !132, !134, !135, !137, !139, !140, !142, !143, !144, !145, !147, !148, !150, !151, !153, !155, !157, !158, !160, !161, !162, !163, !165, !166, !167, !169, !170, !171, !172, !174, !175, !177, !178, !180, !181, !183, !185, !187, !188, !190, !191, !193, !194, !196, !197, !199, !200, !202, !203, !205, !206, !208, !210, !211, !213, !215, !216, !218, !219, !221, !222, !224, !226, !227, !229, !230, !232, !233, !235, !236, !237, !239, !240, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !255, !257, !258, !259, !261, !262, !264, !265, !267, !268, !270, !271, !272, !274, !275, !276, !278, !279, !280, !282, !283, !284, !286, !287, !288, !290, !291, !292, !294, !295, !296, !298, !299, !300, !302, !303, !304, !306, !307, !308, !310, !311, !312, !314, !315, !317, !318, !320, !321, !323, !325, !326, !327, !329, !330, !331, !333, !334, !336, !337, !338, !340, !341, !343, !344, !345, !347, !348, !350, !351, !353, !354, !355, !356, !358, !359, !360, !362, !363, !365, !366, !367, !368, !370, !371, !372, !374, !375, !377, !378, !379, !381, !382, !383, !385, !386, !387, !389, !390, !391, !393, !394, !396, !397, !399, !400, !402, !403, !405, !406, !407, !409, !410, !411, !413, !414, !416, !417, !419, !420, !422, !423, !425, !426, !428, !429, !431, !432, !434, !435, !437, !438, !440, !441, !443, !444, !446, !447, !449, !450, !452, !453, !455, !456, !457, !459, !460, !461, !463, !464, !466, !467, !468, !470, !471, !473, !474, !475, !477, !478, !479, !481, !482, !484, !485, !487, !488, !489, !491, !492, !494, !495, !497, !498, !499, !500, !502, !503, !504, !506, !507, !508, !510, !511, !512, !514, !515, !516, !518, !519, !520, !522, !523, !524, !526, !527, !528, !530, !531, !532, !534, !535, !536, !538, !539, !540, !542, !543, !544, !546, !547, !548, !550, !551, !552, !554, !555, !556, !558, !559, !560, !562, !563, !564, !566, !567, !568, !570, !571, !572, !574, !575, !576, !578, !579, !580, !582, !583, !584, !586, !587, !588, !590, !591, !592, !594, !595, !596, !598, !599, !600, !602, !603, !604, !606, !607, !608, !610, !611, !612, !614, !615, !616, !618, !619, !620, !622, !623, !624, !626, !627, !628, !630, !631, !632, !634, !635, !636, !638, !639, !641, !642, !644, !645, !646, !648, !649, !650, !652, !653, !654, !656, !657, !658, !660, !661, !662, !664, !665, !666, !668, !669, !671, !672, !673, !675, !676, !678, !679, !680, !682, !683, !685, !687, !688, !690, !692, !693, !695, !697, !698, !700, !701, !702, !704, !705, !706, !707, !709, !710, !712, !713, !715, !717, !718, !719}
!llvm.named.register.sp = !{!720}
!llvm.module.flags = !{!721, !722, !723, !724, !725, !726, !727, !728}
!llvm.ident = !{!729}

!0 = !{ptr @__param_radio_nr, !1, !"__param_radio_nr", i1 false, i1 false}
!1 = !{!"../drivers/media/radio/radio-wl1273.c", i32 40, i32 1}
!2 = !{ptr @__UNIQUE_ID_radio_nrtype292, !1, !"__UNIQUE_ID_radio_nrtype292", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_radio_nr293, !4, !"__UNIQUE_ID_radio_nr293", i1 false, i1 false}
!4 = !{!"../drivers/media/radio/radio-wl1273.c", i32 41, i32 1}
!5 = !{ptr @__param_rds_buf, !6, !"__param_rds_buf", i1 false, i1 false}
!6 = !{!"../drivers/media/radio/radio-wl1273.c", i32 92, i32 1}
!7 = !{ptr @__UNIQUE_ID_rds_buftype294, !6, !"__UNIQUE_ID_rds_buftype294", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_rds_buf295, !9, !"__UNIQUE_ID_rds_buf295", i1 false, i1 false}
!9 = !{!"../drivers/media/radio/radio-wl1273.c", i32 93, i32 1}
!10 = !{ptr @__initcall__kmod_radio_wl1273__377_2156_wl1273_fm_radio_driver_init6, !11, !"__initcall__kmod_radio_wl1273__377_2156_wl1273_fm_radio_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/media/radio/radio-wl1273.c", i32 2156, i32 1}
!12 = !{ptr @__exitcall_wl1273_fm_radio_driver_exit, !11, !"__exitcall_wl1273_fm_radio_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author378, !14, !"__UNIQUE_ID_author378", i1 false, i1 false}
!14 = !{!"../drivers/media/radio/radio-wl1273.c", i32 2158, i32 1}
!15 = !{ptr @__UNIQUE_ID_description379, !16, !"__UNIQUE_ID_description379", i1 false, i1 false}
!16 = !{!"../drivers/media/radio/radio-wl1273.c", i32 2159, i32 1}
!17 = !{ptr @__UNIQUE_ID_file380, !18, !"__UNIQUE_ID_file380", i1 false, i1 false}
!18 = !{!"../drivers/media/radio/radio-wl1273.c", i32 2160, i32 1}
!19 = !{ptr @__UNIQUE_ID_license381, !18, !"__UNIQUE_ID_license381", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_alias382, !21, !"__UNIQUE_ID_alias382", i1 false, i1 false}
!21 = !{!"../drivers/media/radio/radio-wl1273.c", i32 2161, i32 1}
!22 = !{ptr @radio_nr, !23, !"radio_nr", i1 false, i1 false}
!23 = !{!"../drivers/media/radio/radio-wl1273.c", i32 39, i32 12}
!24 = !{ptr @__param_str_radio_nr, !1, !"__param_str_radio_nr", i1 false, i1 false}
!25 = !{ptr @__param_str_rds_buf, !6, !"__param_str_rds_buf", i1 false, i1 false}
!26 = !{ptr @rds_buf, !27, !"rds_buf", i1 false, i1 false}
!27 = !{!"../drivers/media/radio/radio-wl1273.c", i32 91, i32 21}
!28 = !{ptr @.str, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/radio/radio-wl1273.c", i32 2152, i32 11}
!30 = !{ptr @wl1273_fm_radio_driver, !31, !"wl1273_fm_radio_driver", i1 false, i1 false}
!31 = !{!"../drivers/media/radio/radio-wl1273.c", i32 2148, i32 31}
!32 = !{ptr @.str.1, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/radio/radio-wl1273.c", i32 2004, i32 2}
!34 = !{ptr @.str.2, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @wl1273_fm_radio_probe.__UNIQUE_ID_ddebug375, !33, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!38 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/radio/radio-wl1273.c", i32 2007, i32 3}
!40 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @wl1273_fm_radio_probe._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @wl1273_fm_radio_probe._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/radio/radio-wl1273.c", i32 2022, i32 3}
!46 = !{ptr @wl1273_fm_radio_probe._entry.8, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @wl1273_fm_radio_probe._entry_ptr.10, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/radio/radio-wl1273.c", i32 2043, i32 20}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/radio/radio-wl1273.c", i32 2048, i32 4}
!52 = !{ptr @wl1273_fm_radio_probe._entry.12, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @wl1273_fm_radio_probe._entry_ptr.14, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/radio/radio-wl1273.c", i32 2053, i32 3}
!56 = !{ptr @wl1273_fm_radio_probe.__UNIQUE_ID_ddebug376, !55, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/radio/radio-wl1273.c", i32 2058, i32 7}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/radio/radio-wl1273.c", i32 2060, i32 4}
!61 = !{ptr @wl1273_fm_radio_probe._entry.17, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @wl1273_fm_radio_probe._entry_ptr.19, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/radio/radio-wl1273.c", i32 2065, i32 3}
!65 = !{ptr @wl1273_fm_radio_probe._entry.20, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @wl1273_fm_radio_probe._entry_ptr.22, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @wl1273_fm_radio_probe.__key, !68, !"__key", i1 false, i1 false}
!68 = !{!"../drivers/media/radio/radio-wl1273.c", i32 2071, i32 2}
!69 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/radio/radio-wl1273.c", i32 2085, i32 3}
!72 = !{ptr @wl1273_fm_radio_probe._entry.24, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @wl1273_fm_radio_probe._entry_ptr.26, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @wl1273_fm_radio_probe._key, !75, !"_key", i1 false, i1 false}
!75 = !{!"../drivers/media/radio/radio-wl1273.c", i32 2094, i32 2}
!76 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/radio/radio-wl1273.c", i32 2120, i32 3}
!79 = !{ptr @wl1273_fm_radio_probe._entry.28, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @wl1273_fm_radio_probe._entry_ptr.30, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/radio/radio-wl1273.c", i32 2130, i32 3}
!83 = !{ptr @wl1273_fm_radio_probe._entry.31, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @wl1273_fm_radio_probe._entry_ptr.33, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/radio/radio-wl1273.c", i32 231, i32 3}
!87 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug300, !86, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/radio/radio-wl1273.c", i32 241, i32 3}
!91 = !{ptr @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug301, !90, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/radio/radio-wl1273.c", i32 244, i32 3}
!94 = !{ptr @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug302, !93, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/radio/radio-wl1273.c", i32 254, i32 4}
!97 = !{ptr @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug303, !96, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/radio/radio-wl1273.c", i32 258, i32 3}
!100 = !{ptr @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug304, !99, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!101 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/radio/radio-wl1273.c", i32 261, i32 3}
!103 = !{ptr @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug305, !102, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!104 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/radio/radio-wl1273.c", i32 264, i32 3}
!106 = !{ptr @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug306, !105, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!107 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/radio/radio-wl1273.c", i32 267, i32 3}
!109 = !{ptr @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug307, !108, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!110 = !{ptr @.str.43, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/radio/radio-wl1273.c", i32 270, i32 3}
!112 = !{ptr @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug308, !111, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!113 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/radio/radio-wl1273.c", i32 274, i32 3}
!115 = !{ptr @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug309, !114, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!116 = !{ptr @.str.45, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/radio/radio-wl1273.c", i32 275, i32 3}
!118 = !{ptr @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug310, !117, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!119 = !{ptr @.str.46, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/radio/radio-wl1273.c", i32 279, i32 3}
!121 = !{ptr @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug311, !120, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!122 = !{ptr @.str.47, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/radio/radio-wl1273.c", i32 282, i32 3}
!124 = !{ptr @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug312, !123, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!125 = !{ptr @.str.48, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/radio/radio-wl1273.c", i32 287, i32 3}
!127 = !{ptr @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug313, !126, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!128 = !{ptr @.str.49, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/radio/radio-wl1273.c", i32 293, i32 5}
!130 = !{ptr @wl1273_fm_irq_thread_handler._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @wl1273_fm_irq_thread_handler._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.50, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/radio/radio-wl1273.c", i32 315, i32 4}
!134 = !{ptr @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug314, !133, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!135 = !{ptr @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug315, !136, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!136 = !{!"../drivers/media/radio/radio-wl1273.c", i32 322, i32 4}
!137 = !{ptr @.str.51, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/radio/radio-wl1273.c", i32 324, i32 3}
!139 = !{ptr @wl1273_fm_irq_thread_handler.__UNIQUE_ID_ddebug316, !138, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!140 = !{ptr @.str.52, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/radio/radio-wl1273.c", i32 170, i32 4}
!142 = !{ptr @.str.53, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @wl1273_fm_rds._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @wl1273_fm_rds._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.54, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/radio/radio-wl1273.c", i32 203, i32 4}
!147 = !{ptr @wl1273_fm_rds.__UNIQUE_ID_ddebug299, !146, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!148 = !{ptr @init_completion.__key, !149, !"__key", i1 false, i1 false}
!149 = !{!"../include/linux/completion.h", i32 87, i32 2}
!150 = !{ptr @.str.55, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @wl1273_viddev_template, !152, !"wl1273_viddev_template", i1 false, i1 false}
!152 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1968, i32 34}
!153 = !{ptr @wl1273_fops, !154, !"wl1273_fops", i1 false, i1 false}
!154 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1263, i32 42}
!155 = !{ptr @.str.56, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1183, i32 2}
!157 = !{ptr @wl1273_fm_fops_read.__UNIQUE_ID_ddebug347, !156, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!158 = !{ptr @.str.57, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1189, i32 3}
!160 = !{ptr @.str.58, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @wl1273_fm_fops_read._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @wl1273_fm_fops_read._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.60, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1208, i32 3}
!165 = !{ptr @wl1273_fm_fops_read._entry.59, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @wl1273_fm_fops_read._entry_ptr.61, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.63, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1211, i32 3}
!169 = !{ptr @.str.64, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @wl1273_fm_fops_read._entry.62, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @wl1273_fm_fops_read._entry_ptr.65, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.66, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1223, i32 3}
!174 = !{ptr @wl1273_fm_fops_read.__UNIQUE_ID_ddebug348, !173, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!175 = !{ptr @.str.67, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1257, i32 2}
!177 = !{ptr @wl1273_fm_fops_read.__UNIQUE_ID_ddebug349, !176, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!178 = distinct !{null, !179, !"__already_done", i1 false, i1 false}
!179 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!180 = !{ptr @.str.68, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.69, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!183 = !{ptr @.str.70, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!185 = !{ptr @.str.71, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1036, i32 2}
!187 = !{ptr @wl1273_fm_fops_write.__UNIQUE_ID_ddebug341, !186, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!188 = !{ptr @wl1273_fm_fops_write._entry, !189, !"_entry", i1 false, i1 false}
!189 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1042, i32 3}
!190 = !{ptr @wl1273_fm_fops_write._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.72, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1071, i32 2}
!193 = !{ptr @wl1273_fm_fops_write.__UNIQUE_ID_ddebug342, !192, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!194 = !{ptr @.str.73, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1072, i32 2}
!196 = !{ptr @wl1273_fm_fops_write.__UNIQUE_ID_ddebug343, !195, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!197 = !{ptr @.str.74, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1114, i32 2}
!199 = !{ptr @wl1273_fm_fops_open.__UNIQUE_ID_ddebug344, !198, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!200 = !{ptr @.str.75, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1118, i32 3}
!202 = !{ptr @wl1273_fm_fops_open.__UNIQUE_ID_ddebug345, !201, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!203 = !{ptr @.str.76, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1146, i32 2}
!205 = !{ptr @wl1273_fm_fops_release.__UNIQUE_ID_ddebug346, !204, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!206 = !{ptr @wl1273_ioctl_ops, !207, !"wl1273_ioctl_ops", i1 false, i1 false}
!207 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1952, i32 36}
!208 = !{ptr @.str.77, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1278, i32 2}
!210 = !{ptr @wl1273_fm_vidioc_querycap.__UNIQUE_ID_ddebug350, !209, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!211 = !{ptr @.str.78, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1282, i32 28}
!213 = !{ptr @.str.79, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1294, i32 2}
!215 = !{ptr @wl1273_fm_vidioc_g_input.__UNIQUE_ID_ddebug351, !214, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!216 = !{ptr @.str.80, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1306, i32 2}
!218 = !{ptr @wl1273_fm_vidioc_s_input.__UNIQUE_ID_ddebug352, !217, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!219 = !{ptr @.str.81, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1469, i32 2}
!221 = !{ptr @wl1273_fm_vidioc_g_audio.__UNIQUE_ID_ddebug356, !220, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!222 = !{ptr @.str.82, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1474, i32 23}
!224 = !{ptr @.str.83, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1485, i32 2}
!226 = !{ptr @wl1273_fm_vidioc_s_audio.__UNIQUE_ID_ddebug357, !225, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!227 = !{ptr @.str.84, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1765, i32 2}
!229 = !{ptr @wl1273_fm_vidioc_g_modulator.__UNIQUE_ID_ddebug374, !228, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!230 = !{ptr @.str.85, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1726, i32 2}
!232 = !{ptr @wl1273_fm_vidioc_s_modulator.__UNIQUE_ID_ddebug373, !231, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!233 = !{ptr @.str.86, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1749, i32 3}
!235 = !{ptr @wl1273_fm_vidioc_s_modulator._entry, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @wl1273_fm_vidioc_s_modulator._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.87, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/media/radio/radio-wl1273.c", i32 694, i32 2}
!239 = !{ptr @wl1273_fm_set_mode.__UNIQUE_ID_ddebug328, !238, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!240 = !{ptr @.str.88, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/media/radio/radio-wl1273.c", i32 695, i32 2}
!242 = !{ptr @wl1273_fm_set_mode.__UNIQUE_ID_ddebug329, !241, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!243 = !{ptr @.str.89, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/media/radio/radio-wl1273.c", i32 708, i32 4}
!245 = !{ptr @wl1273_fm_set_mode._entry, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @wl1273_fm_set_mode._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.91, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/media/radio/radio-wl1273.c", i32 716, i32 4}
!249 = !{ptr @wl1273_fm_set_mode._entry.90, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @wl1273_fm_set_mode._entry_ptr.92, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.94, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/media/radio/radio-wl1273.c", i32 724, i32 5}
!253 = !{ptr @wl1273_fm_set_mode._entry.93, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @wl1273_fm_set_mode._entry_ptr.95, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.97, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/radio/radio-wl1273.c", i32 730, i32 5}
!257 = !{ptr @wl1273_fm_set_mode._entry.96, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @wl1273_fm_set_mode._entry_ptr.98, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.99, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/radio/radio-wl1273.c", i32 734, i32 4}
!261 = !{ptr @wl1273_fm_set_mode.__UNIQUE_ID_ddebug330, !260, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!262 = !{ptr @wl1273_fm_set_mode._entry.100, !263, !"_entry", i1 false, i1 false}
!263 = !{!"../drivers/media/radio/radio-wl1273.c", i32 739, i32 5}
!264 = !{ptr @wl1273_fm_set_mode._entry_ptr.101, !263, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.102, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/media/radio/radio-wl1273.c", i32 744, i32 3}
!267 = !{ptr @wl1273_fm_set_mode.__UNIQUE_ID_ddebug331, !266, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!268 = !{ptr @.str.104, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/media/radio/radio-wl1273.c", i32 748, i32 4}
!270 = !{ptr @wl1273_fm_set_mode._entry.103, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @wl1273_fm_set_mode._entry_ptr.105, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.107, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/media/radio/radio-wl1273.c", i32 754, i32 4}
!274 = !{ptr @wl1273_fm_set_mode._entry.106, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @wl1273_fm_set_mode._entry_ptr.108, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.110, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/media/radio/radio-wl1273.c", i32 763, i32 4}
!278 = !{ptr @wl1273_fm_set_mode._entry.109, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @wl1273_fm_set_mode._entry_ptr.111, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.113, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/media/radio/radio-wl1273.c", i32 770, i32 3}
!282 = !{ptr @wl1273_fm_set_mode._entry.112, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @wl1273_fm_set_mode._entry_ptr.114, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.115, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/media/radio/radio-wl1273.c", i32 564, i32 3}
!286 = !{ptr @.str.116, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @wl1273_fm_start.__UNIQUE_ID_ddebug326, !285, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!288 = !{ptr @.str.117, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/media/radio/radio-wl1273.c", i32 583, i32 5}
!290 = !{ptr @wl1273_fm_start._entry, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @wl1273_fm_start._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.119, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/media/radio/radio-wl1273.c", i32 600, i32 5}
!294 = !{ptr @wl1273_fm_start._entry.118, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @wl1273_fm_start._entry_ptr.120, !293, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.122, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/media/radio/radio-wl1273.c", i32 608, i32 5}
!298 = !{ptr @wl1273_fm_start._entry.121, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @wl1273_fm_start._entry_ptr.123, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.125, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/media/radio/radio-wl1273.c", i32 615, i32 5}
!302 = !{ptr @wl1273_fm_start._entry.124, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @wl1273_fm_start._entry_ptr.126, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.128, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/media/radio/radio-wl1273.c", i32 621, i32 3}
!306 = !{ptr @wl1273_fm_start._entry.127, !305, !"_entry", i1 false, i1 false}
!307 = !{ptr @wl1273_fm_start._entry_ptr.129, !305, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.131, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/media/radio/radio-wl1273.c", i32 627, i32 4}
!310 = !{ptr @wl1273_fm_start._entry.130, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @wl1273_fm_start._entry_ptr.132, !309, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @wl1273_fm_start._entry.133, !313, !"_entry", i1 false, i1 false}
!313 = !{!"../drivers/media/radio/radio-wl1273.c", i32 641, i32 5}
!314 = !{ptr @wl1273_fm_start._entry_ptr.134, !313, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @wl1273_fm_start._entry.135, !316, !"_entry", i1 false, i1 false}
!316 = !{!"../drivers/media/radio/radio-wl1273.c", i32 648, i32 5}
!317 = !{ptr @wl1273_fm_start._entry_ptr.136, !316, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.137, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/media/radio/radio-wl1273.c", i32 659, i32 2}
!320 = !{ptr @wl1273_fm_start.__UNIQUE_ID_ddebug327, !319, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!321 = !{ptr @.str.138, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/media/radio/radio-wl1273.c", i32 494, i32 24}
!323 = !{ptr @.str.139, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/media/radio/radio-wl1273.c", i32 499, i32 2}
!325 = !{ptr @.str.140, !324, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @wl1273_fm_upload_firmware_patch.__UNIQUE_ID_ddebug322, !324, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!327 = !{ptr @.str.141, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/media/radio/radio-wl1273.c", i32 506, i32 3}
!329 = !{ptr @wl1273_fm_upload_firmware_patch._entry, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @wl1273_fm_upload_firmware_patch._entry_ptr, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.142, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/media/radio/radio-wl1273.c", i32 513, i32 2}
!333 = !{ptr @wl1273_fm_upload_firmware_patch.__UNIQUE_ID_ddebug323, !332, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!334 = !{ptr @.str.144, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/media/radio/radio-wl1273.c", i32 517, i32 3}
!336 = !{ptr @wl1273_fm_upload_firmware_patch._entry.143, !335, !"_entry", i1 false, i1 false}
!337 = !{ptr @wl1273_fm_upload_firmware_patch._entry_ptr.145, !335, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.146, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/media/radio/radio-wl1273.c", i32 524, i32 2}
!340 = !{ptr @wl1273_fm_upload_firmware_patch.__UNIQUE_ID_ddebug324, !339, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!341 = !{ptr @.str.147, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/media/radio/radio-wl1273.c", i32 110, i32 3}
!343 = !{ptr @.str.148, !342, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @wl1273_fm_write_fw.__UNIQUE_ID_ddebug296, !342, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!345 = !{ptr @.str.149, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/media/radio/radio-wl1273.c", i32 117, i32 2}
!347 = !{ptr @wl1273_fm_write_fw.__UNIQUE_ID_ddebug297, !346, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!348 = !{ptr @.str.150, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/media/radio/radio-wl1273.c", i32 118, i32 2}
!350 = !{ptr @wl1273_fm_write_fw.__UNIQUE_ID_ddebug298, !349, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!351 = !{ptr @.str.151, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/media/radio/radio-wl1273.c", i32 538, i32 4}
!353 = !{ptr @.str.152, !352, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @wl1273_fm_stop._entry, !352, !"_entry", i1 false, i1 false}
!355 = !{ptr @wl1273_fm_stop._entry_ptr, !352, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @.str.154, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/media/radio/radio-wl1273.c", i32 544, i32 4}
!358 = !{ptr @wl1273_fm_stop._entry.153, !357, !"_entry", i1 false, i1 false}
!359 = !{ptr @wl1273_fm_stop._entry_ptr.155, !357, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.156, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/media/radio/radio-wl1273.c", i32 550, i32 3}
!362 = !{ptr @wl1273_fm_stop.__UNIQUE_ID_ddebug325, !361, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!363 = !{ptr @.str.157, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/media/radio/radio-wl1273.c", i32 401, i32 3}
!365 = !{ptr @.str.158, !364, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @wl1273_fm_set_rx_freq._entry, !364, !"_entry", i1 false, i1 false}
!367 = !{ptr @wl1273_fm_set_rx_freq._entry_ptr, !364, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.160, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/media/radio/radio-wl1273.c", i32 409, i32 3}
!370 = !{ptr @wl1273_fm_set_rx_freq._entry.159, !369, !"_entry", i1 false, i1 false}
!371 = !{ptr @wl1273_fm_set_rx_freq._entry_ptr.161, !369, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @.str.162, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/media/radio/radio-wl1273.c", i32 416, i32 2}
!374 = !{ptr @wl1273_fm_set_rx_freq.__UNIQUE_ID_ddebug320, !373, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!375 = !{ptr @.str.164, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/media/radio/radio-wl1273.c", i32 427, i32 3}
!377 = !{ptr @wl1273_fm_set_rx_freq._entry.163, !376, !"_entry", i1 false, i1 false}
!378 = !{ptr @wl1273_fm_set_rx_freq._entry_ptr.165, !376, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @.str.167, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/media/radio/radio-wl1273.c", i32 433, i32 3}
!381 = !{ptr @wl1273_fm_set_rx_freq._entry.166, !380, !"_entry", i1 false, i1 false}
!382 = !{ptr @wl1273_fm_set_rx_freq._entry_ptr.168, !380, !"_entry_ptr", i1 false, i1 false}
!383 = !{ptr @.str.170, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/media/radio/radio-wl1273.c", i32 441, i32 3}
!385 = !{ptr @wl1273_fm_set_rx_freq._entry.169, !384, !"_entry", i1 false, i1 false}
!386 = !{ptr @wl1273_fm_set_rx_freq._entry_ptr.171, !384, !"_entry_ptr", i1 false, i1 false}
!387 = !{ptr @.str.172, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/media/radio/radio-wl1273.c", i32 341, i32 3}
!389 = !{ptr @wl1273_fm_set_tx_freq._entry, !388, !"_entry", i1 false, i1 false}
!390 = !{ptr @wl1273_fm_set_tx_freq._entry_ptr, !388, !"_entry_ptr", i1 false, i1 false}
!391 = !{ptr @wl1273_fm_set_tx_freq._entry.173, !392, !"_entry", i1 false, i1 false}
!392 = !{!"../drivers/media/radio/radio-wl1273.c", i32 348, i32 3}
!393 = !{ptr @wl1273_fm_set_tx_freq._entry_ptr.174, !392, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @.str.175, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/media/radio/radio-wl1273.c", i32 360, i32 2}
!396 = !{ptr @wl1273_fm_set_tx_freq.__UNIQUE_ID_ddebug317, !395, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!397 = !{ptr @.str.176, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/media/radio/radio-wl1273.c", i32 374, i32 2}
!399 = !{ptr @wl1273_fm_set_tx_freq.__UNIQUE_ID_ddebug318, !398, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!400 = !{ptr @.str.177, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/media/radio/radio-wl1273.c", i32 389, i32 2}
!402 = !{ptr @wl1273_fm_set_tx_freq.__UNIQUE_ID_ddebug319, !401, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!403 = !{ptr @.str.178, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/media/radio/radio-wl1273.c", i32 679, i32 3}
!405 = !{ptr @wl1273_fm_suspend._entry, !404, !"_entry", i1 false, i1 false}
!406 = !{ptr @wl1273_fm_suspend._entry_ptr, !404, !"_entry_ptr", i1 false, i1 false}
!407 = !{ptr @.str.179, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1017, i32 3}
!409 = !{ptr @wl1273_fm_set_rds._entry, !408, !"_entry", i1 false, i1 false}
!410 = !{ptr @wl1273_fm_set_rds._entry_ptr, !408, !"_entry_ptr", i1 false, i1 false}
!411 = !{ptr @.str.180, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/media/radio/radio-wl1273.c", i32 979, i32 2}
!413 = !{ptr @wl1273_fm_rds_off.__UNIQUE_ID_ddebug339, !412, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!414 = !{ptr @wl1273_fm_rds_off._entry, !415, !"_entry", i1 false, i1 false}
!415 = !{!"../drivers/media/radio/radio-wl1273.c", i32 987, i32 3}
!416 = !{ptr @wl1273_fm_rds_off._entry_ptr, !415, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @.str.181, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/media/radio/radio-wl1273.c", i32 989, i32 2}
!419 = !{ptr @wl1273_fm_rds_off.__UNIQUE_ID_ddebug340, !418, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!420 = !{ptr @.str.182, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/media/radio/radio-wl1273.c", i32 946, i32 2}
!422 = !{ptr @wl1273_fm_rds_on.__UNIQUE_ID_ddebug338, !421, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!423 = !{ptr @wl1273_fm_rds_on._entry, !424, !"_entry", i1 false, i1 false}
!424 = !{!"../drivers/media/radio/radio-wl1273.c", i32 957, i32 3}
!425 = !{ptr @wl1273_fm_rds_on._entry_ptr, !424, !"_entry_ptr", i1 false, i1 false}
!426 = !{ptr @.str.183, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1504, i32 2}
!428 = !{ptr @wl1273_fm_vidioc_g_tuner.__UNIQUE_ID_ddebug358, !427, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!429 = !{ptr @.str.184, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1544, i32 2}
!431 = !{ptr @wl1273_fm_vidioc_g_tuner.__UNIQUE_ID_ddebug359, !430, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!432 = !{ptr @.str.185, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1567, i32 2}
!434 = !{ptr @wl1273_fm_vidioc_s_tuner.__UNIQUE_ID_ddebug360, !433, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!435 = !{ptr @.str.186, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1568, i32 2}
!437 = !{ptr @wl1273_fm_vidioc_s_tuner.__UNIQUE_ID_ddebug361, !436, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!438 = !{ptr @.str.187, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1569, i32 2}
!440 = !{ptr @wl1273_fm_vidioc_s_tuner.__UNIQUE_ID_ddebug362, !439, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!441 = !{ptr @.str.188, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1570, i32 2}
!443 = !{ptr @wl1273_fm_vidioc_s_tuner.__UNIQUE_ID_ddebug363, !442, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!444 = !{ptr @.str.189, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1571, i32 2}
!446 = !{ptr @wl1273_fm_vidioc_s_tuner.__UNIQUE_ID_ddebug364, !445, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!447 = !{ptr @.str.190, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1572, i32 2}
!449 = !{ptr @wl1273_fm_vidioc_s_tuner.__UNIQUE_ID_ddebug365, !448, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!450 = !{ptr @.str.191, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1573, i32 2}
!452 = !{ptr @wl1273_fm_vidioc_s_tuner.__UNIQUE_ID_ddebug366, !451, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!453 = !{ptr @.str.192, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1591, i32 3}
!455 = !{ptr @wl1273_fm_vidioc_s_tuner._entry, !454, !"_entry", i1 false, i1 false}
!456 = !{ptr @wl1273_fm_vidioc_s_tuner._entry_ptr, !454, !"_entry_ptr", i1 false, i1 false}
!457 = !{ptr @.str.194, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1596, i32 4}
!459 = !{ptr @wl1273_fm_vidioc_s_tuner._entry.193, !458, !"_entry", i1 false, i1 false}
!460 = !{ptr @wl1273_fm_vidioc_s_tuner._entry_ptr.195, !458, !"_entry_ptr", i1 false, i1 false}
!461 = !{ptr @wl1273_fm_vidioc_s_tuner._entry.196, !462, !"_entry", i1 false, i1 false}
!462 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1604, i32 4}
!463 = !{ptr @wl1273_fm_vidioc_s_tuner._entry_ptr.197, !462, !"_entry_ptr", i1 false, i1 false}
!464 = !{ptr @.str.199, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1610, i32 3}
!466 = !{ptr @wl1273_fm_vidioc_s_tuner._entry.198, !465, !"_entry", i1 false, i1 false}
!467 = !{ptr @wl1273_fm_vidioc_s_tuner._entry_ptr.200, !465, !"_entry_ptr", i1 false, i1 false}
!468 = !{ptr @.str.201, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1628, i32 2}
!470 = !{ptr @wl1273_fm_vidioc_g_frequency.__UNIQUE_ID_ddebug367, !469, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!471 = !{ptr @.str.202, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/media/radio/radio-wl1273.c", i32 465, i32 3}
!473 = !{ptr @.str.203, !472, !"<string literal>", i1 false, i1 false}
!474 = !{ptr @wl1273_fm_get_freq.__UNIQUE_ID_ddebug321, !472, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!475 = !{ptr @.str.204, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1648, i32 2}
!477 = !{ptr @.str.205, !476, !"<string literal>", i1 false, i1 false}
!478 = !{ptr @wl1273_fm_vidioc_s_frequency.__UNIQUE_ID_ddebug368, !476, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!479 = !{ptr @.str.206, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1651, i32 3}
!481 = !{ptr @wl1273_fm_vidioc_s_frequency.__UNIQUE_ID_ddebug369, !480, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!482 = !{ptr @.str.207, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1660, i32 3}
!484 = !{ptr @wl1273_fm_vidioc_s_frequency.__UNIQUE_ID_ddebug370, !483, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!485 = !{ptr @.str.208, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1665, i32 4}
!487 = !{ptr @wl1273_fm_vidioc_s_frequency._entry, !486, !"_entry", i1 false, i1 false}
!488 = !{ptr @wl1273_fm_vidioc_s_frequency._entry_ptr, !486, !"_entry_ptr", i1 false, i1 false}
!489 = !{ptr @wl1273_fm_vidioc_s_frequency._entry.209, !490, !"_entry", i1 false, i1 false}
!490 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1671, i32 4}
!491 = !{ptr @wl1273_fm_vidioc_s_frequency._entry_ptr.210, !490, !"_entry_ptr", i1 false, i1 false}
!492 = !{ptr @.str.211, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1677, i32 2}
!494 = !{ptr @wl1273_fm_vidioc_s_frequency.__UNIQUE_ID_ddebug371, !493, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!495 = !{ptr @.str.212, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1807, i32 2}
!497 = !{ptr @.str.213, !496, !"<string literal>", i1 false, i1 false}
!498 = !{ptr @wl1273_fm_vidioc_log_status._entry, !496, !"_entry", i1 false, i1 false}
!499 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr, !496, !"_entry_ptr", i1 false, i1 false}
!500 = !{ptr @.str.215, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1810, i32 3}
!502 = !{ptr @wl1273_fm_vidioc_log_status._entry.214, !501, !"_entry", i1 false, i1 false}
!503 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.216, !501, !"_entry_ptr", i1 false, i1 false}
!504 = !{ptr @.str.218, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1815, i32 3}
!506 = !{ptr @wl1273_fm_vidioc_log_status._entry.217, !505, !"_entry", i1 false, i1 false}
!507 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.219, !505, !"_entry_ptr", i1 false, i1 false}
!508 = !{ptr @.str.221, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1821, i32 3}
!510 = !{ptr @wl1273_fm_vidioc_log_status._entry.220, !509, !"_entry", i1 false, i1 false}
!511 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.222, !509, !"_entry_ptr", i1 false, i1 false}
!512 = !{ptr @.str.224, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1823, i32 3}
!514 = !{ptr @wl1273_fm_vidioc_log_status._entry.223, !513, !"_entry", i1 false, i1 false}
!515 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.225, !513, !"_entry_ptr", i1 false, i1 false}
!516 = !{ptr @.str.227, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1827, i32 3}
!518 = !{ptr @wl1273_fm_vidioc_log_status._entry.226, !517, !"_entry", i1 false, i1 false}
!519 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.228, !517, !"_entry_ptr", i1 false, i1 false}
!520 = !{ptr @.str.230, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1829, i32 3}
!522 = !{ptr @wl1273_fm_vidioc_log_status._entry.229, !521, !"_entry", i1 false, i1 false}
!523 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.231, !521, !"_entry_ptr", i1 false, i1 false}
!524 = !{ptr @.str.233, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1833, i32 3}
!526 = !{ptr @wl1273_fm_vidioc_log_status._entry.232, !525, !"_entry", i1 false, i1 false}
!527 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.234, !525, !"_entry_ptr", i1 false, i1 false}
!528 = !{ptr @.str.236, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1835, i32 3}
!530 = !{ptr @wl1273_fm_vidioc_log_status._entry.235, !529, !"_entry", i1 false, i1 false}
!531 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.237, !529, !"_entry_ptr", i1 false, i1 false}
!532 = !{ptr @.str.239, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1839, i32 3}
!534 = !{ptr @wl1273_fm_vidioc_log_status._entry.238, !533, !"_entry", i1 false, i1 false}
!535 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.240, !533, !"_entry_ptr", i1 false, i1 false}
!536 = !{ptr @.str.242, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1841, i32 3}
!538 = !{ptr @wl1273_fm_vidioc_log_status._entry.241, !537, !"_entry", i1 false, i1 false}
!539 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.243, !537, !"_entry_ptr", i1 false, i1 false}
!540 = !{ptr @.str.245, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1846, i32 4}
!542 = !{ptr @wl1273_fm_vidioc_log_status._entry.244, !541, !"_entry", i1 false, i1 false}
!543 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.246, !541, !"_entry_ptr", i1 false, i1 false}
!544 = !{ptr @.str.248, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1848, i32 4}
!546 = !{ptr @wl1273_fm_vidioc_log_status._entry.247, !545, !"_entry", i1 false, i1 false}
!547 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.249, !545, !"_entry_ptr", i1 false, i1 false}
!548 = !{ptr @.str.251, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1852, i32 4}
!550 = !{ptr @wl1273_fm_vidioc_log_status._entry.250, !549, !"_entry", i1 false, i1 false}
!551 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.252, !549, !"_entry_ptr", i1 false, i1 false}
!552 = !{ptr @.str.254, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1854, i32 4}
!554 = !{ptr @wl1273_fm_vidioc_log_status._entry.253, !553, !"_entry", i1 false, i1 false}
!555 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.255, !553, !"_entry_ptr", i1 false, i1 false}
!556 = !{ptr @.str.257, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1860, i32 4}
!558 = !{ptr @wl1273_fm_vidioc_log_status._entry.256, !557, !"_entry", i1 false, i1 false}
!559 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.258, !557, !"_entry_ptr", i1 false, i1 false}
!560 = !{ptr @.str.260, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1862, i32 4}
!562 = !{ptr @wl1273_fm_vidioc_log_status._entry.259, !561, !"_entry", i1 false, i1 false}
!563 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.261, !561, !"_entry_ptr", i1 false, i1 false}
!564 = !{ptr @.str.263, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1866, i32 4}
!566 = !{ptr @wl1273_fm_vidioc_log_status._entry.262, !565, !"_entry", i1 false, i1 false}
!567 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.264, !565, !"_entry_ptr", i1 false, i1 false}
!568 = !{ptr @.str.266, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1869, i32 4}
!570 = !{ptr @wl1273_fm_vidioc_log_status._entry.265, !569, !"_entry", i1 false, i1 false}
!571 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.267, !569, !"_entry_ptr", i1 false, i1 false}
!572 = !{ptr @.str.269, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1871, i32 4}
!574 = !{ptr @wl1273_fm_vidioc_log_status._entry.268, !573, !"_entry", i1 false, i1 false}
!575 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.270, !573, !"_entry_ptr", i1 false, i1 false}
!576 = !{ptr @.str.272, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1873, i32 4}
!578 = !{ptr @wl1273_fm_vidioc_log_status._entry.271, !577, !"_entry", i1 false, i1 false}
!579 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.273, !577, !"_entry_ptr", i1 false, i1 false}
!580 = !{ptr @.str.275, !581, !"<string literal>", i1 false, i1 false}
!581 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1877, i32 4}
!582 = !{ptr @wl1273_fm_vidioc_log_status._entry.274, !581, !"_entry", i1 false, i1 false}
!583 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.276, !581, !"_entry_ptr", i1 false, i1 false}
!584 = !{ptr @.str.278, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1879, i32 4}
!586 = !{ptr @wl1273_fm_vidioc_log_status._entry.277, !585, !"_entry", i1 false, i1 false}
!587 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.279, !585, !"_entry_ptr", i1 false, i1 false}
!588 = !{ptr @.str.281, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1882, i32 4}
!590 = !{ptr @wl1273_fm_vidioc_log_status._entry.280, !589, !"_entry", i1 false, i1 false}
!591 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.282, !589, !"_entry_ptr", i1 false, i1 false}
!592 = !{ptr @.str.284, !593, !"<string literal>", i1 false, i1 false}
!593 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1884, i32 4}
!594 = !{ptr @wl1273_fm_vidioc_log_status._entry.283, !593, !"_entry", i1 false, i1 false}
!595 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.285, !593, !"_entry_ptr", i1 false, i1 false}
!596 = !{ptr @.str.287, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1888, i32 4}
!598 = !{ptr @wl1273_fm_vidioc_log_status._entry.286, !597, !"_entry", i1 false, i1 false}
!599 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.288, !597, !"_entry_ptr", i1 false, i1 false}
!600 = !{ptr @.str.290, !601, !"<string literal>", i1 false, i1 false}
!601 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1890, i32 4}
!602 = !{ptr @wl1273_fm_vidioc_log_status._entry.289, !601, !"_entry", i1 false, i1 false}
!603 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.291, !601, !"_entry_ptr", i1 false, i1 false}
!604 = !{ptr @.str.293, !605, !"<string literal>", i1 false, i1 false}
!605 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1892, i32 4}
!606 = !{ptr @wl1273_fm_vidioc_log_status._entry.292, !605, !"_entry", i1 false, i1 false}
!607 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.294, !605, !"_entry_ptr", i1 false, i1 false}
!608 = !{ptr @.str.296, !609, !"<string literal>", i1 false, i1 false}
!609 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1894, i32 4}
!610 = !{ptr @wl1273_fm_vidioc_log_status._entry.295, !609, !"_entry", i1 false, i1 false}
!611 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.297, !609, !"_entry_ptr", i1 false, i1 false}
!612 = !{ptr @.str.299, !613, !"<string literal>", i1 false, i1 false}
!613 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1898, i32 4}
!614 = !{ptr @wl1273_fm_vidioc_log_status._entry.298, !613, !"_entry", i1 false, i1 false}
!615 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.300, !613, !"_entry_ptr", i1 false, i1 false}
!616 = !{ptr @.str.302, !617, !"<string literal>", i1 false, i1 false}
!617 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1900, i32 4}
!618 = !{ptr @wl1273_fm_vidioc_log_status._entry.301, !617, !"_entry", i1 false, i1 false}
!619 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.303, !617, !"_entry_ptr", i1 false, i1 false}
!620 = !{ptr @.str.305, !621, !"<string literal>", i1 false, i1 false}
!621 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1904, i32 4}
!622 = !{ptr @wl1273_fm_vidioc_log_status._entry.304, !621, !"_entry", i1 false, i1 false}
!623 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.306, !621, !"_entry_ptr", i1 false, i1 false}
!624 = !{ptr @.str.308, !625, !"<string literal>", i1 false, i1 false}
!625 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1906, i32 4}
!626 = !{ptr @wl1273_fm_vidioc_log_status._entry.307, !625, !"_entry", i1 false, i1 false}
!627 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.309, !625, !"_entry_ptr", i1 false, i1 false}
!628 = !{ptr @.str.311, !629, !"<string literal>", i1 false, i1 false}
!629 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1910, i32 4}
!630 = !{ptr @wl1273_fm_vidioc_log_status._entry.310, !629, !"_entry", i1 false, i1 false}
!631 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.312, !629, !"_entry_ptr", i1 false, i1 false}
!632 = !{ptr @.str.314, !633, !"<string literal>", i1 false, i1 false}
!633 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1912, i32 4}
!634 = !{ptr @wl1273_fm_vidioc_log_status._entry.313, !633, !"_entry", i1 false, i1 false}
!635 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.315, !633, !"_entry_ptr", i1 false, i1 false}
!636 = !{ptr @wl1273_fm_vidioc_log_status._entry.316, !637, !"_entry", i1 false, i1 false}
!637 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1916, i32 4}
!638 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.317, !637, !"_entry_ptr", i1 false, i1 false}
!639 = !{ptr @wl1273_fm_vidioc_log_status._entry.318, !640, !"_entry", i1 false, i1 false}
!640 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1919, i32 4}
!641 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.319, !640, !"_entry_ptr", i1 false, i1 false}
!642 = !{ptr @.str.321, !643, !"<string literal>", i1 false, i1 false}
!643 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1922, i32 4}
!644 = !{ptr @wl1273_fm_vidioc_log_status._entry.320, !643, !"_entry", i1 false, i1 false}
!645 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.322, !643, !"_entry_ptr", i1 false, i1 false}
!646 = !{ptr @.str.324, !647, !"<string literal>", i1 false, i1 false}
!647 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1924, i32 4}
!648 = !{ptr @wl1273_fm_vidioc_log_status._entry.323, !647, !"_entry", i1 false, i1 false}
!649 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.325, !647, !"_entry_ptr", i1 false, i1 false}
!650 = !{ptr @.str.327, !651, !"<string literal>", i1 false, i1 false}
!651 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1928, i32 4}
!652 = !{ptr @wl1273_fm_vidioc_log_status._entry.326, !651, !"_entry", i1 false, i1 false}
!653 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.328, !651, !"_entry_ptr", i1 false, i1 false}
!654 = !{ptr @.str.330, !655, !"<string literal>", i1 false, i1 false}
!655 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1931, i32 4}
!656 = !{ptr @wl1273_fm_vidioc_log_status._entry.329, !655, !"_entry", i1 false, i1 false}
!657 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.331, !655, !"_entry_ptr", i1 false, i1 false}
!658 = !{ptr @.str.333, !659, !"<string literal>", i1 false, i1 false}
!659 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1935, i32 4}
!660 = !{ptr @wl1273_fm_vidioc_log_status._entry.332, !659, !"_entry", i1 false, i1 false}
!661 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.334, !659, !"_entry_ptr", i1 false, i1 false}
!662 = !{ptr @.str.336, !663, !"<string literal>", i1 false, i1 false}
!663 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1937, i32 4}
!664 = !{ptr @wl1273_fm_vidioc_log_status._entry.335, !663, !"_entry", i1 false, i1 false}
!665 = !{ptr @wl1273_fm_vidioc_log_status._entry_ptr.337, !663, !"_entry_ptr", i1 false, i1 false}
!666 = !{ptr @.str.338, !667, !"<string literal>", i1 false, i1 false}
!667 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1690, i32 2}
!668 = !{ptr @wl1273_fm_vidioc_s_hw_freq_seek.__UNIQUE_ID_ddebug372, !667, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!669 = !{ptr @.str.339, !670, !"<string literal>", i1 false, i1 false}
!670 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1707, i32 3}
!671 = !{ptr @wl1273_fm_vidioc_s_hw_freq_seek._entry, !670, !"_entry", i1 false, i1 false}
!672 = !{ptr @wl1273_fm_vidioc_s_hw_freq_seek._entry_ptr, !670, !"_entry_ptr", i1 false, i1 false}
!673 = !{ptr @wl1273_fm_vidioc_s_hw_freq_seek._entry.340, !674, !"_entry", i1 false, i1 false}
!674 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1712, i32 3}
!675 = !{ptr @wl1273_fm_vidioc_s_hw_freq_seek._entry_ptr.341, !674, !"_entry_ptr", i1 false, i1 false}
!676 = !{ptr @.str.342, !677, !"<string literal>", i1 false, i1 false}
!677 = !{!"../drivers/media/radio/radio-wl1273.c", i32 792, i32 2}
!678 = !{ptr @.str.343, !677, !"<string literal>", i1 false, i1 false}
!679 = !{ptr @wl1273_fm_set_seek.__UNIQUE_ID_ddebug332, !677, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!680 = !{ptr @.str.344, !681, !"<string literal>", i1 false, i1 false}
!681 = !{!"../drivers/media/radio/radio-wl1273.c", i32 810, i32 2}
!682 = !{ptr @wl1273_fm_set_seek.__UNIQUE_ID_ddebug333, !681, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!683 = !{ptr @wl1273_fm_set_seek.__UNIQUE_ID_ddebug334, !684, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!684 = !{!"../drivers/media/radio/radio-wl1273.c", i32 816, i32 2}
!685 = !{ptr @.str.345, !686, !"<string literal>", i1 false, i1 false}
!686 = !{!"../drivers/media/radio/radio-wl1273.c", i32 843, i32 2}
!687 = !{ptr @wl1273_fm_set_seek.__UNIQUE_ID_ddebug335, !686, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!688 = !{ptr @wl1273_fm_set_seek.__UNIQUE_ID_ddebug336, !689, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!689 = !{!"../drivers/media/radio/radio-wl1273.c", i32 855, i32 2}
!690 = !{ptr @.str.346, !691, !"<string literal>", i1 false, i1 false}
!691 = !{!"../drivers/media/radio/radio-wl1273.c", i32 865, i32 2}
!692 = !{ptr @wl1273_fm_set_seek.__UNIQUE_ID_ddebug337, !691, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!693 = !{ptr @wl1273_ctrl_ops, !694, !"wl1273_ctrl_ops", i1 false, i1 false}
!694 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1947, i32 35}
!695 = !{ptr @.str.347, !696, !"<string literal>", i1 false, i1 false}
!696 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1378, i32 2}
!697 = !{ptr @wl1273_fm_g_volatile_ctrl.__UNIQUE_ID_ddebug353, !696, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!698 = !{ptr @.str.348, !699, !"<string literal>", i1 false, i1 false}
!699 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1389, i32 3}
!700 = !{ptr @wl1273_fm_g_volatile_ctrl._entry, !699, !"_entry", i1 false, i1 false}
!701 = !{ptr @wl1273_fm_g_volatile_ctrl._entry_ptr, !699, !"_entry_ptr", i1 false, i1 false}
!702 = !{ptr @.str.349, !703, !"<string literal>", i1 false, i1 false}
!703 = !{!"../drivers/media/radio/radio-wl1273.c", i32 886, i32 3}
!704 = !{ptr @.str.350, !703, !"<string literal>", i1 false, i1 false}
!705 = !{ptr @wl1273_fm_get_tx_ctune._entry, !703, !"_entry", i1 false, i1 false}
!706 = !{ptr @wl1273_fm_get_tx_ctune._entry_ptr, !703, !"_entry_ptr", i1 false, i1 false}
!707 = !{ptr @.str.351, !708, !"<string literal>", i1 false, i1 false}
!708 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1416, i32 2}
!709 = !{ptr @wl1273_fm_vidioc_s_ctrl.__UNIQUE_ID_ddebug354, !708, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!710 = !{ptr @wl1273_fm_vidioc_s_ctrl._entry, !711, !"_entry", i1 false, i1 false}
!711 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1455, i32 3}
!712 = !{ptr @wl1273_fm_vidioc_s_ctrl._entry_ptr, !711, !"_entry_ptr", i1 false, i1 false}
!713 = !{ptr @wl1273_fm_vidioc_s_ctrl.__UNIQUE_ID_ddebug355, !714, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!714 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1460, i32 2}
!715 = !{ptr @.str.352, !716, !"<string literal>", i1 false, i1 false}
!716 = !{!"../drivers/media/radio/radio-wl1273.c", i32 1985, i32 2}
!717 = !{ptr @.str.353, !716, !"<string literal>", i1 false, i1 false}
!718 = !{ptr @wl1273_fm_radio_remove._entry, !716, !"_entry", i1 false, i1 false}
!719 = !{ptr @wl1273_fm_radio_remove._entry_ptr, !716, !"_entry_ptr", i1 false, i1 false}
!720 = !{!"sp"}
!721 = !{i32 1, !"wchar_size", i32 2}
!722 = !{i32 1, !"min_enum_size", i32 4}
!723 = !{i32 8, !"branch-target-enforcement", i32 0}
!724 = !{i32 8, !"sign-return-address", i32 0}
!725 = !{i32 8, !"sign-return-address-all", i32 0}
!726 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!727 = !{i32 7, !"uwtable", i32 1}
!728 = !{i32 7, !"frame-pointer", i32 2}
!729 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!730 = !{i64 2148805922, i64 2148805927, i64 2148805940, i64 2148805984, i64 2148806018, i64 2148806039}
!731 = !{!"auto-init"}
!732 = !{i64 2154219657, i64 2154219682}
!733 = !{i64 2154218976, i64 2154219001}
!734 = !{!"branch_weights", i32 2000, i32 1}
!735 = !{i64 6714531}
!736 = !{i64 6714728}
!737 = !{i64 2154199961}
!738 = !{i8 0, i8 2}
