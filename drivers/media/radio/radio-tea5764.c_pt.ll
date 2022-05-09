; ModuleID = '/llk/IR_all_yes/drivers/media/radio/radio-tea5764.c_pt.bc'
source_filename = "../drivers/media/radio/radio-tea5764.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
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
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.tea5764_device = type { %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, %struct.video_device, %struct.tea5764_regs, %struct.mutex }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.tea5764_regs = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.tea5764_write_regs = type <{ i8, i16, i16, i16, i16, i16 }>
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.92, %union.anon.93, i32, ptr, i32, %struct.anon.94, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.92 = type { i64 }
%union.anon.93 = type { ptr }
%struct.anon.94 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }

@__initcall__kmod_radio_tea5764__296_521_tea5764_i2c_driver_init6 = internal global ptr @tea5764_i2c_driver_init, section ".initcall6.init", align 4
@tea5764_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tea5764_i2c_probe, ptr @tea5764_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tea5764_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tea5764_i2c_driver_exit = internal global ptr @tea5764_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author297 = internal constant [61 x i8] c"radio_tea5764.author=Fabio Belavenuto <belavenuto@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [78 x i8] c"radio_tea5764.description=A driver for the TEA5764 radio chip for EZX Phones.\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [53 x i8] c"radio_tea5764.file=drivers/media/radio/radio-tea5764\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [26 x i8] c"radio_tea5764.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version301 = internal constant [28 x i8] c"radio_tea5764.version=0.0.2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"radio_tea5764\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.0.2\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_use_xtal = internal constant [23 x i8] c"radio_tea5764.use_xtal\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@use_xtal = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_use_xtal = internal constant %struct.kernel_param { ptr @__param_str_use_xtal, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @use_xtal } }, section "__param", align 4
@__UNIQUE_ID_use_xtaltype302 = internal constant [36 x i8] c"radio_tea5764.parmtype=use_xtal:int\00", section ".modinfo", align 1
@__UNIQUE_ID_use_xtal303 = internal constant [64 x i8] c"radio_tea5764.parm=use_xtal:Chip have a xtal connected in board\00", section ".modinfo", align 1
@__param_str_radio_nr = internal constant [23 x i8] c"radio_tea5764.radio_nr\00", align 1
@radio_nr = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_radio_nr = internal constant %struct.kernel_param { ptr @__param_str_radio_nr, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @radio_nr } }, section "__param", align 4
@__UNIQUE_ID_radio_nrtype304 = internal constant [36 x i8] c"radio_tea5764.parmtype=radio_nr:int\00", section ".modinfo", align 1
@__UNIQUE_ID_radio_nr305 = internal constant [61 x i8] c"radio_tea5764.parm=radio_nr:video4linux device number to use\00", section ".modinfo", align 1
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"radio-tea5764\00", [18 x i8] zeroinitializer }, align 32
@tea5764_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"radio-tea5764\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tea5764_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017radio_tea5764: 0.0.2: probe\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tea5764_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/radio/radio-tea5764.c\00", [60 x i8] zeroinitializer }, align 32
@tea5764_i2c_probe._entry_ptr = internal global ptr @tea5764_i2c_probe._entry, section ".printk_index", align 4
@tea5764_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: could not register v4l2_device\0A\00", [58 x i8] zeroinitializer }, align 32
@tea5764_i2c_probe._entry_ptr.9 = internal global ptr @tea5764_i2c_probe._entry.7, section ".printk_index", align 4
@tea5764_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"radio_tea5764:436:(hdl)->_lock\00", [33 x i8] zeroinitializer }, align 32
@tea5764_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @tea5764_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@tea5764_i2c_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str.6, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Could not register controls\0A\00", [61 x i8] zeroinitializer }, align 32
@tea5764_i2c_probe._entry_ptr.13 = internal global ptr @tea5764_i2c_probe._entry.11, section ".printk_index", align 4
@tea5764_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&radio->mutex\00", [18 x i8] zeroinitializer }, align 32
@tea5764_i2c_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.6, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017radio_tea5764: 0.0.2: chipid = %04X, manid = %04X\0A\00", [43 x i8] zeroinitializer }, align 32
@tea5764_i2c_probe._entry_ptr.17 = internal global ptr @tea5764_i2c_probe._entry.15, section ".printk_index", align 4
@tea5764_i2c_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.6, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014radio_tea5764: 0.0.2: This chip is not a TEA5764!\0A\00", [43 x i8] zeroinitializer }, align 32
@tea5764_i2c_probe._entry_ptr.20 = internal global ptr @tea5764_i2c_probe._entry.18, section ".printk_index", align 4
@tea5764_radio_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @tea5764_fops, i32 0, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"TEA5764 FM-Radio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release_empty, ptr @tea5764_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@tea5764_i2c_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.5, ptr @.str.6, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014radio_tea5764: 0.0.2: Could not register video device!\0A\00", [38 x i8] zeroinitializer }, align 32
@tea5764_i2c_probe._entry_ptr.23 = internal global ptr @tea5764_i2c_probe._entry.21, section ".printk_index", align 4
@tea5764_i2c_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.5, ptr @.str.6, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016radio_tea5764: 0.0.2: registered.\0A\00", [59 x i8] zeroinitializer }, align 32
@tea5764_i2c_probe._entry_ptr.26 = internal global ptr @tea5764_i2c_probe._entry.24, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tea5764_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_ctrl_poll, ptr @video_ioctl2, ptr null, ptr null, ptr @v4l2_fh_open, ptr @v4l2_fh_release }, [60 x i8] zeroinitializer }, align 32
@tea5764_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_tuner, ptr @vidioc_s_tuner, ptr @vidioc_g_frequency, ptr @vidioc_s_frequency, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"I2C:%s\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"FM\00", [29 x i8] zeroinitializer }, align 32
@tea5764_tune._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.6, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014radio_tea5764: 0.0.2: Could not set frequency!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tea5764_tune\00", [19 x i8] zeroinitializer }, align 32
@tea5764_tune._entry_ptr = internal global ptr @tea5764_tune._entry, section ".printk_index", align 4
@tea5764_i2c_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.6, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017radio_tea5764: 0.0.2: remove\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tea5764_i2c_remove\00", [45 x i8] zeroinitializer }, align 32
@tea5764_i2c_remove._entry_ptr = internal global ptr @tea5764_i2c_remove._entry, section ".printk_index", align 4
@___asan_gen_.33 = private unnamed_addr constant [19 x i8] c"tea5764_i2c_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 512, i32 26 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 526, i32 1 }
@___asan_gen_.45 = private unnamed_addr constant [9 x i8] c"use_xtal\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 128, i32 12 }
@___asan_gen_.48 = private unnamed_addr constant [9 x i8] c"radio_nr\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 127, i32 12 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 514, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [11 x i8] c"tea5764_id\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 506, i32 35 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 423, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 431, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 436, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"tea5764_ctrl_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 381, i32 35 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 442, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 446, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 452, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 455, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [23 x i8] c"tea5764_radio_template\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 406, i32 34 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 476, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 480, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [13 x i8] c"tea5764_fops\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 386, i32 42 }
@___asan_gen_.126 = private unnamed_addr constant [18 x i8] c"tea5764_ioctl_ops\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 394, i32 36 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 284, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 297, i32 19 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 235, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.151 = private constant [39 x i8] c"../drivers/media/radio/radio-tea5764.c\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 494, i32 2 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__UNIQUE_ID_radio_nr305, ptr @__UNIQUE_ID_radio_nrtype304, ptr @__UNIQUE_ID_use_xtal303, ptr @__UNIQUE_ID_use_xtaltype302, ptr @__UNIQUE_ID_version301, ptr @__exitcall_tea5764_i2c_driver_exit, ptr @__initcall__kmod_radio_tea5764__296_521_tea5764_i2c_driver_init6, ptr @__modver_attr, ptr @__param_radio_nr, ptr @__param_use_xtal, ptr @tea5764_i2c_driver_exit, ptr @tea5764_i2c_probe._entry, ptr @tea5764_i2c_probe._entry.11, ptr @tea5764_i2c_probe._entry.15, ptr @tea5764_i2c_probe._entry.18, ptr @tea5764_i2c_probe._entry.21, ptr @tea5764_i2c_probe._entry.24, ptr @tea5764_i2c_probe._entry.7, ptr @tea5764_i2c_probe._entry_ptr, ptr @tea5764_i2c_probe._entry_ptr.13, ptr @tea5764_i2c_probe._entry_ptr.17, ptr @tea5764_i2c_probe._entry_ptr.20, ptr @tea5764_i2c_probe._entry_ptr.23, ptr @tea5764_i2c_probe._entry_ptr.26, ptr @tea5764_i2c_probe._entry_ptr.9, ptr @tea5764_i2c_remove._entry, ptr @tea5764_i2c_remove._entry_ptr, ptr @tea5764_tune._entry, ptr @tea5764_tune._entry_ptr, ptr @tea5764_i2c_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @use_xtal, ptr @radio_nr, ptr @.str.3, ptr @tea5764_id, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @tea5764_i2c_probe._key, ptr @.str.10, ptr @tea5764_ctrl_ops, ptr @.str.12, ptr @tea5764_i2c_probe.__key, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @tea5764_radio_template, ptr @.str.22, ptr @.str.25, ptr @tea5764_fops, ptr @tea5764_ioctl_ops, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5764_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_xtal to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_nr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5764_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5764_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5764_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5764_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5764_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5764_i2c_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5764_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5764_i2c_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5764_i2c_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5764_radio_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5764_i2c_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5764_i2c_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5764_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5764_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5764_tune._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5764_i2c_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tea5764_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tea5764_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tea5764_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @tea5764_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tea5764_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %msgs.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1792) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call3 = tail call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.v4l2_device, ptr %call7.i.i, i32 0, i32 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name) #11
  br label %errfr

if.end10:                                         ; preds = %if.end
  %ctrl_handler = getelementptr inbounds %struct.tea5764_device, ptr %call7.i.i, i32 0, i32 1
  %call12 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 1, ptr noundef nonnull @tea5764_i2c_probe._key, ptr noundef nonnull @.str.10) #8
  %call13 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @tea5764_ctrl_ops, i32 noundef 9963785, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #8
  %ctrl_handler14 = getelementptr inbounds %struct.v4l2_device, ptr %call7.i.i, i32 0, i32 6
  %1 = ptrtoint ptr %ctrl_handler14 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ctrl_handler, ptr %ctrl_handler14, align 4
  %error = getelementptr inbounds %struct.tea5764_device, ptr %call7.i.i, i32 0, i32 1, i32 9
  %2 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool15.not = icmp eq i32 %3, 0
  br i1 %tobool15.not, label %do.body26, label %if.then16

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %name22 = getelementptr inbounds %struct.v4l2_device, ptr %call7.i.i, i32 0, i32 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name22) #11
  br label %errunreg

do.body26:                                        ; preds = %if.end10
  %mutex = getelementptr inbounds %struct.tea5764_device, ptr %call7.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.14, ptr noundef nonnull @tea5764_i2c_probe.__key) #8
  %i2c_client = getelementptr inbounds %struct.tea5764_device, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %i2c_client to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %client, ptr %i2c_client, align 8
  %regs.i = getelementptr inbounds %struct.tea5764_device, ptr %call7.i.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i) #8
  %5 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1900543, ptr %5, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %7 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr1.i, align 2
  %9 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %regs.i, ptr %buf.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %12 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %msgs.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i) #8
  br i1 %cmp.not.i, label %if.end32, label %do.body26.errunreg_crit_edge

do.body26.errunreg_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  br label %errunreg

if.end32:                                         ; preds = %do.body26
  %chipid = getelementptr inbounds %struct.tea5764_device, ptr %call7.i.i, i32 0, i32 4, i32 13
  %14 = ptrtoint ptr %chipid to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %chipid, align 2
  %conv = zext i16 %15 to i32
  %manid = getelementptr inbounds %struct.tea5764_device, ptr %call7.i.i, i32 0, i32 4, i32 12
  %16 = ptrtoint ptr %manid to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %manid, align 8
  %conv37 = zext i16 %17 to i32
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv, i32 noundef %conv37) #11
  %18 = ptrtoint ptr %chipid to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %chipid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 22372, i16 %19)
  %cmp41.not = icmp eq i16 %19, 22372
  br i1 %cmp41.not, label %lor.lhs.false, label %if.end32.do.end50_crit_edge

if.end32.do.end50_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end50

lor.lhs.false:                                    ; preds = %if.end32
  %20 = ptrtoint ptr %manid to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %manid, align 8
  %22 = and i16 %21, 4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 43, i16 %22)
  %cmp45.not = icmp eq i16 %22, 43
  br i1 %cmp45.not, label %if.end53, label %lor.lhs.false.do.end50_crit_edge

lor.lhs.false.do.end50_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end50

do.end50:                                         ; preds = %lor.lhs.false.do.end50_crit_edge, %if.end32.do.end50_crit_edge
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #11
  br label %errunreg

if.end53:                                         ; preds = %lor.lhs.false
  %vdev = getelementptr inbounds %struct.tea5764_device, ptr %call7.i.i, i32 0, i32 3
  %23 = call ptr @memcpy(ptr %vdev, ptr @tea5764_radio_template, i32 1352)
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i119 = getelementptr inbounds %struct.tea5764_device, ptr %call7.i.i, i32 0, i32 3, i32 5, i32 8
  %25 = ptrtoint ptr %driver_data.i.i119 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i, ptr %driver_data.i.i119, align 4
  %lock = getelementptr inbounds %struct.tea5764_device, ptr %call7.i.i, i32 0, i32 3, i32 26
  %26 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %mutex, ptr %lock, align 8
  %v4l2_dev58 = getelementptr inbounds %struct.tea5764_device, ptr %call7.i.i, i32 0, i32 3, i32 7
  %27 = ptrtoint ptr %v4l2_dev58 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i, ptr %v4l2_dev58, align 4
  %device_caps = getelementptr inbounds %struct.tea5764_device, ptr %call7.i.i, i32 0, i32 3, i32 4
  %28 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 327680, ptr %device_caps, align 8
  %call60 = call fastcc i32 @tea5764_i2c_read(ptr noundef nonnull %call7.i.i)
  call fastcc void @tea5764_set_audout_mode(ptr noundef nonnull %call7.i.i, i32 noundef 1)
  call fastcc void @tea5764_mute(ptr noundef nonnull %call7.i.i, i32 noundef 1)
  call fastcc void @tea5764_power_down(ptr noundef nonnull %call7.i.i)
  %29 = load i32, ptr @radio_nr, align 4
  %fops.i = getelementptr inbounds %struct.tea5764_device, ptr %call7.i.i, i32 0, i32 3, i32 3
  %30 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fops.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %call.i120 = call i32 @__video_register_device(ptr noundef %vdev, i32 noundef 2, i32 noundef %29, i32 noundef 1, ptr noundef %33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %cmp63 = icmp slt i32 %call.i120, 0
  br i1 %cmp63, label %do.end68, label %do.end74

do.end68:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #11
  br label %errunreg

do.end74:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #11
  br label %cleanup

errunreg:                                         ; preds = %do.end68, %do.end50, %do.body26.errunreg_crit_edge, %if.then16
  %ret.0 = phi i32 [ %3, %if.then16 ], [ -5, %do.body26.errunreg_crit_edge ], [ -22, %do.end50 ], [ %call.i120, %do.end68 ]
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #8
  call void @v4l2_device_unregister(ptr noundef nonnull %call7.i.i) #8
  br label %errfr

errfr:                                            ; preds = %errunreg, %do.end7
  %ret.1 = phi i32 [ %call3, %do.end7 ], [ %ret.0, %errunreg ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %errfr, %do.end74, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %errfr ], [ 0, %do.end74 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tea5764_i2c_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  %wr.i.i = alloca %struct.tea5764_write_regs, align 1
  %msgs.i.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #11
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %tnctrl.i = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %tnctrl.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %tnctrl.i, align 1
  %4 = and i16 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.i = icmp eq i16 %4, 0
  br i1 %tobool.not.i, label %if.then.tea5764_power_down.exit_crit_edge, label %if.then.i

if.then.tea5764_power_down.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %tea5764_power_down.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %and3.i = and i16 %3, -16385
  %5 = ptrtoint ptr %tnctrl.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %and3.i, ptr %tnctrl.i, align 1
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %wr.i.i) #8
  %6 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i.i, i32 0, i32 2
  %8 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i.i, i32 0, i32 3
  %9 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i.i, i32 0, i32 4
  %10 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i.i, i32 0, i32 5
  %regs.i.i = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i.i) #8
  %11 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 786431, ptr %11, align 4
  %i2c_client.i.i = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_client.i.i, align 8
  %addr1.i.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr1.i.i, align 2
  %17 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %wr.i.i, ptr %buf.i.i, align 4
  %20 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %regs.i.i, align 1
  %conv2.i.i = trunc i16 %21 to i8
  %22 = ptrtoint ptr %wr.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv2.i.i, ptr %wr.i.i, align 1
  %frqset.i.i = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %frqset.i.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %frqset.i.i, align 1
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %24, ptr %6, align 1
  %26 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %and3.i, ptr %7, align 1
  %testreg.i.i = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 4, i32 5
  %27 = ptrtoint ptr %testreg.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %testreg.i.i, align 1
  %29 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %8, align 1
  %rdsctrl.i.i = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 4, i32 10
  %30 = ptrtoint ptr %rdsctrl.i.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %rdsctrl.i.i, align 1
  %32 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %31, ptr %9, align 1
  %rdsbbl.i.i = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 4, i32 11
  %33 = ptrtoint ptr %rdsbbl.i.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %rdsbbl.i.i, align 1
  %35 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %34, ptr %10, align 1
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 3
  %36 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %msgs.i.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i.i) #8
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %wr.i.i) #8
  br label %tea5764_power_down.exit

tea5764_power_down.exit:                          ; preds = %if.then.i, %if.then.tea5764_power_down.exit_crit_edge
  %vdev = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 3
  call void @video_unregister_device(ptr noundef %vdev) #8
  %ctrl_handler = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 1
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #8
  call void @v4l2_device_unregister(ptr noundef nonnull %1) #8
  call void @kfree(ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %tea5764_power_down.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tea5764_i2c_read(ptr noundef %radio) unnamed_addr #2 align 64 {
entry:
  %msgs = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.tea5764_device, ptr %radio, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs) #8
  %0 = getelementptr inbounds i8, ptr %msgs, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %i2c_client = getelementptr inbounds %struct.tea5764_device, ptr %radio, i32 0, i32 2
  %2 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_client, align 8
  %addr1 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr1, align 2
  %6 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %msgs, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 28, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %regs, ptr %buf, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %11, ptr noundef nonnull %msgs, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  %spec.select = select i1 %cmp.not, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs) #8
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tea5764_set_audout_mode(ptr nocapture noundef %radio, i32 noundef %audmode) unnamed_addr #2 align 64 {
entry:
  %wr.i = alloca %struct.tea5764_write_regs, align 1
  %msgs.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tnctrl1 = getelementptr inbounds %struct.tea5764_device, ptr %radio, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %tnctrl1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %tnctrl1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %audmode)
  %cmp = icmp eq i32 %audmode, 0
  %and = and i16 %1, -9
  %masksel = select i1 %cmp, i16 8, i16 0
  %storemerge = or i16 %and, %masksel
  %2 = ptrtoint ptr %tnctrl1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 %storemerge, ptr %tnctrl1, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %storemerge)
  %cmp11.not = icmp eq i16 %1, %storemerge
  br i1 %cmp11.not, label %entry.if.end14_crit_edge, label %if.then13

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %wr.i) #8
  %3 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i, i32 0, i32 1
  %4 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i, i32 0, i32 2
  %5 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i, i32 0, i32 3
  %6 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i, i32 0, i32 4
  %7 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i, i32 0, i32 5
  %regs.i = getelementptr inbounds %struct.tea5764_device, ptr %radio, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i) #8
  %8 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 786431, ptr %8, align 4
  %i2c_client.i = getelementptr inbounds %struct.tea5764_device, ptr %radio, i32 0, i32 2
  %10 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_client.i, align 8
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr1.i, align 2
  %14 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %wr.i, ptr %buf.i, align 4
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %regs.i, align 1
  %conv2.i = trunc i16 %18 to i8
  %19 = ptrtoint ptr %wr.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv2.i, ptr %wr.i, align 1
  %frqset.i = getelementptr inbounds %struct.tea5764_device, ptr %radio, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %frqset.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %frqset.i, align 1
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 %21, ptr %3, align 1
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %storemerge, ptr %4, align 1
  %testreg.i = getelementptr inbounds %struct.tea5764_device, ptr %radio, i32 0, i32 4, i32 5
  %24 = ptrtoint ptr %testreg.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %testreg.i, align 1
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %25, ptr %5, align 1
  %rdsctrl.i = getelementptr inbounds %struct.tea5764_device, ptr %radio, i32 0, i32 4, i32 10
  %27 = ptrtoint ptr %rdsctrl.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %rdsctrl.i, align 1
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %6, align 1
  %rdsbbl.i = getelementptr inbounds %struct.tea5764_device, ptr %radio, i32 0, i32 4, i32 11
  %30 = ptrtoint ptr %rdsbbl.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %rdsbbl.i, align 1
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %31, ptr %7, align 1
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 3
  %33 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %msgs.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i) #8
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %wr.i) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %entry.if.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tea5764_mute(ptr nocapture noundef %radio, i32 noundef %on) unnamed_addr #2 align 64 {
entry:
  %wr.i = alloca %struct.tea5764_write_regs, align 1
  %msgs.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tnctrl1 = getelementptr inbounds %struct.tea5764_device, ptr %radio, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %tnctrl1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %tnctrl1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %and = and i16 %1, -129
  %masksel = select i1 %tobool.not, i16 0, i16 128
  %storemerge = or i16 %and, %masksel
  %2 = ptrtoint ptr %tnctrl1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 %storemerge, ptr %tnctrl1, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %storemerge)
  %cmp.not = icmp eq i16 %1, %storemerge
  br i1 %cmp.not, label %entry.if.end12_crit_edge, label %if.then11

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %wr.i) #8
  %3 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i, i32 0, i32 1
  %4 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i, i32 0, i32 2
  %5 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i, i32 0, i32 3
  %6 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i, i32 0, i32 4
  %7 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i, i32 0, i32 5
  %regs.i = getelementptr inbounds %struct.tea5764_device, ptr %radio, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i) #8
  %8 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 786431, ptr %8, align 4
  %i2c_client.i = getelementptr inbounds %struct.tea5764_device, ptr %radio, i32 0, i32 2
  %10 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_client.i, align 8
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr1.i, align 2
  %14 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %wr.i, ptr %buf.i, align 4
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %regs.i, align 1
  %conv2.i = trunc i16 %18 to i8
  %19 = ptrtoint ptr %wr.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv2.i, ptr %wr.i, align 1
  %frqset.i = getelementptr inbounds %struct.tea5764_device, ptr %radio, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %frqset.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %frqset.i, align 1
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 %21, ptr %3, align 1
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %storemerge, ptr %4, align 1
  %testreg.i = getelementptr inbounds %struct.tea5764_device, ptr %radio, i32 0, i32 4, i32 5
  %24 = ptrtoint ptr %testreg.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %testreg.i, align 1
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %25, ptr %5, align 1
  %rdsctrl.i = getelementptr inbounds %struct.tea5764_device, ptr %radio, i32 0, i32 4, i32 10
  %27 = ptrtoint ptr %rdsctrl.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %rdsctrl.i, align 1
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %6, align 1
  %rdsbbl.i = getelementptr inbounds %struct.tea5764_device, ptr %radio, i32 0, i32 4, i32 11
  %30 = ptrtoint ptr %rdsbbl.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %rdsbbl.i, align 1
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %31, ptr %7, align 1
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 3
  %33 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %msgs.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i) #8
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %wr.i) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tea5764_power_down(ptr nocapture noundef %radio) unnamed_addr #2 align 64 {
entry:
  %wr.i = alloca %struct.tea5764_write_regs, align 1
  %msgs.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tnctrl = getelementptr inbounds %struct.tea5764_device, ptr %radio, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %tnctrl to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %tnctrl, align 1
  %2 = and i16 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and3 = and i16 %1, -16385
  %3 = ptrtoint ptr %tnctrl to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 %and3, ptr %tnctrl, align 1
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %wr.i) #8
  %4 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i, i32 0, i32 2
  %6 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i, i32 0, i32 3
  %7 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i, i32 0, i32 4
  %8 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i, i32 0, i32 5
  %regs.i = getelementptr inbounds %struct.tea5764_device, ptr %radio, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i) #8
  %9 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 786431, ptr %9, align 4
  %i2c_client.i = getelementptr inbounds %struct.tea5764_device, ptr %radio, i32 0, i32 2
  %11 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c_client.i, align 8
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr1.i, align 2
  %15 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %wr.i, ptr %buf.i, align 4
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %regs.i, align 1
  %conv2.i = trunc i16 %19 to i8
  %20 = ptrtoint ptr %wr.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv2.i, ptr %wr.i, align 1
  %frqset.i = getelementptr inbounds %struct.tea5764_device, ptr %radio, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %frqset.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %frqset.i, align 1
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %22, ptr %4, align 1
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %and3, ptr %5, align 1
  %testreg.i = getelementptr inbounds %struct.tea5764_device, ptr %radio, i32 0, i32 4, i32 5
  %25 = ptrtoint ptr %testreg.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %testreg.i, align 1
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %26, ptr %6, align 1
  %rdsctrl.i = getelementptr inbounds %struct.tea5764_device, ptr %radio, i32 0, i32 4, i32 10
  %28 = ptrtoint ptr %rdsctrl.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %rdsctrl.i, align 1
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 %29, ptr %7, align 1
  %rdsbbl.i = getelementptr inbounds %struct.tea5764_device, ptr %radio, i32 0, i32 4, i32 11
  %31 = ptrtoint ptr %rdsbbl.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %rdsbbl.i, align 1
  %33 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 %32, ptr %8, align 1
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 3
  %34 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msgs.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i) #8
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %wr.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tea5764_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %wr.i.i = alloca %struct.tea5764_write_regs, align 1
  %msgs.i.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963785, i32 %1)
  %cond = icmp eq i32 %1, 9963785
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %tnctrl1.i = getelementptr i8, ptr %3, i32 1548
  %6 = ptrtoint ptr %tnctrl1.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %tnctrl1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  %and.i = and i16 %7, -129
  %masksel.i = select i1 %tobool.not.i, i16 0, i16 128
  %storemerge.i = or i16 %and.i, %masksel.i
  %8 = ptrtoint ptr %tnctrl1.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %storemerge.i, ptr %tnctrl1.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %storemerge.i)
  %cmp.not.i = icmp eq i16 %7, %storemerge.i
  br i1 %cmp.not.i, label %sw.bb.cleanup_crit_edge, label %if.then11.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %wr.i.i) #8
  %9 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i.i, i32 0, i32 2
  %11 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i.i, i32 0, i32 3
  %12 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i.i, i32 0, i32 4
  %13 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i.i, i32 0, i32 5
  %regs.i.i = getelementptr i8, ptr %3, i32 1544
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i.i) #8
  %14 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 786431, ptr %14, align 4
  %i2c_client.i.i = getelementptr i8, ptr %3, i32 184
  %16 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_client.i.i, align 8
  %addr1.i.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %addr1.i.i, align 2
  %20 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %wr.i.i, ptr %buf.i.i, align 4
  %23 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %regs.i.i, align 1
  %conv2.i.i = trunc i16 %24 to i8
  %25 = ptrtoint ptr %wr.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv2.i.i, ptr %wr.i.i, align 1
  %frqset.i.i = getelementptr i8, ptr %3, i32 1546
  %26 = ptrtoint ptr %frqset.i.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %frqset.i.i, align 1
  %28 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %27, ptr %9, align 1
  %29 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %storemerge.i, ptr %10, align 1
  %testreg.i.i = getelementptr i8, ptr %3, i32 1554
  %30 = ptrtoint ptr %testreg.i.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %testreg.i.i, align 1
  %32 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %31, ptr %11, align 1
  %rdsctrl.i.i = getelementptr i8, ptr %3, i32 1564
  %33 = ptrtoint ptr %rdsctrl.i.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %rdsctrl.i.i, align 1
  %35 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %34, ptr %12, align 1
  %rdsbbl.i.i = getelementptr i8, ptr %3, i32 1566
  %36 = ptrtoint ptr %rdsbbl.i.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %rdsbbl.i.i, align 1
  %38 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 %37, ptr %13, align 1
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 3
  %39 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %msgs.i.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i.i) #8
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %wr.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then11.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.then11.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %driver2 = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 3, i32 5, i32 6
  %2 = ptrtoint ptr %driver2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call3 = tail call i32 @strscpy(ptr noundef %v, ptr noundef %5, i32 noundef 16) #8
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %v, i32 0, i32 1
  %name5 = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 3, i32 12
  %call7 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %name5, i32 noundef 32) #8
  %init_name.i = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 3, i32 5, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev1 = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 3, i32 5
  %8 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %v, i32 0, i32 2
  %call11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.27, ptr noundef %retval.0.i)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %v) #2 align 64 {
entry:
  %msgs.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %0 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 1
  %call1 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.28, i32 noundef 32) #8
  %type = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %type, align 4
  %regs.i = getelementptr inbounds %struct.tea5764_device, ptr %3, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i) #8
  %5 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1900543, ptr %5, align 4
  %i2c_client.i = getelementptr inbounds %struct.tea5764_device, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c_client.i, align 8
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr1.i, align 2
  %11 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %regs.i, ptr %buf.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 3
  %14 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter.i, align 8
  %call.i29 = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msgs.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i) #8
  %rangelow = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 4
  %16 = ptrtoint ptr %rangelow to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1400000, ptr %rangelow, align 4
  %rangehigh = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 5
  %17 = ptrtoint ptr %rangehigh to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1728000, ptr %rangehigh, align 4
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 3
  %18 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 17, ptr %capability, align 4
  %tunchk = getelementptr inbounds %struct.tea5764_device, ptr %3, i32 0, i32 4, i32 4
  %19 = ptrtoint ptr %tunchk to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %tunchk, align 1
  %21 = and i16 %20, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not = icmp eq i16 %21, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 2
  %22 = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 6
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %spec.select, ptr %22, align 4
  %tnctrl.i = getelementptr inbounds %struct.tea5764_device, ptr %3, i32 0, i32 4, i32 2
  %24 = ptrtoint ptr %tnctrl.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %tnctrl.i, align 1
  %26 = lshr i16 %25, 3
  %.lobit.i = and i16 %26, 1
  %27 = xor i16 %.lobit.i, 1
  %28 = zext i16 %27 to i32
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 7
  %29 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %audmode, align 4
  %30 = ptrtoint ptr %tunchk to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %tunchk, align 1
  %32 = lshr i16 %31, 4
  %33 = and i16 %32, 15
  %narrow = mul nuw i16 %33, 4369
  %div = zext i16 %narrow to i32
  %signal = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 8
  %34 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %div, ptr %signal, align 4
  %35 = load i16, ptr %tunchk, align 1
  %36 = lshr i16 %35, 9
  %37 = zext i16 %36 to i32
  %afc = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 9
  %38 = ptrtoint ptr %afc to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %afc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %v) #2 align 64 {
entry:
  %wr.i.i = alloca %struct.tea5764_write_regs, align 1
  %msgs.i.i = alloca [1 x %struct.i2c_msg], align 4
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
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 7
  %4 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %audmode, align 4
  %tnctrl1.i = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %tnctrl1.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %tnctrl1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  %and.i = and i16 %7, -9
  %masksel.i = select i1 %cmp.i, i16 8, i16 0
  %storemerge.i = or i16 %and.i, %masksel.i
  %8 = ptrtoint ptr %tnctrl1.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %storemerge.i, ptr %tnctrl1.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %storemerge.i)
  %cmp11.not.i = icmp eq i16 %7, %storemerge.i
  br i1 %cmp11.not.i, label %if.end.cleanup_crit_edge, label %if.then13.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %wr.i.i) #8
  %9 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i.i, i32 0, i32 2
  %11 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i.i, i32 0, i32 3
  %12 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i.i, i32 0, i32 4
  %13 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i.i, i32 0, i32 5
  %regs.i.i = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i.i) #8
  %14 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 786431, ptr %14, align 4
  %i2c_client.i.i = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_client.i.i, align 8
  %addr1.i.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %addr1.i.i, align 2
  %20 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %wr.i.i, ptr %buf.i.i, align 4
  %23 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %regs.i.i, align 1
  %conv2.i.i = trunc i16 %24 to i8
  %25 = ptrtoint ptr %wr.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv2.i.i, ptr %wr.i.i, align 1
  %frqset.i.i = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %frqset.i.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %frqset.i.i, align 1
  %28 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %27, ptr %9, align 1
  %29 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %storemerge.i, ptr %10, align 1
  %testreg.i.i = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 4, i32 5
  %30 = ptrtoint ptr %testreg.i.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %testreg.i.i, align 1
  %32 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %31, ptr %11, align 1
  %rdsctrl.i.i = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 4, i32 10
  %33 = ptrtoint ptr %rdsctrl.i.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %rdsctrl.i.i, align 1
  %35 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %34, ptr %12, align 1
  %rdsbbl.i.i = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 4, i32 11
  %36 = ptrtoint ptr %rdsbbl.i.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %rdsbbl.i.i, align 1
  %38 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 %37, ptr %13, align 1
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 3
  %39 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %msgs.i.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i.i) #8
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %wr.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then13.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then13.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  %msgs.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %regs.i = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i) #8
  %4 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1900543, ptr %4, align 4
  %i2c_client.i = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_client.i, align 8
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr1.i, align 2
  %10 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %regs.i, ptr %buf.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 3
  %13 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter.i, align 8
  %call.i12 = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msgs.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i) #8
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %15 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %type, align 4
  %tnctrl = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %tnctrl to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %tnctrl, align 1
  %18 = and i16 %17, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not = icmp eq i16 %18, 0
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.then2

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %19 = and i16 %17, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not.i = icmp eq i16 %19, 0
  %frqchk2.i = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 4, i32 3
  %20 = ptrtoint ptr %frqchk2.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %frqchk2.i, align 1
  %conv3.i = zext i16 %21 to i32
  %mul4.i = shl nuw nsw i32 %conv3.i, 13
  %..i = select i1 %tobool.not.i, i32 225000, i32 -225000
  %add.i = add nsw i32 %mul4.i, %..i
  %mul = shl nsw i32 %add.i, 1
  %div = sdiv i32 %mul, 125
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then2, %if.end.cleanup.sink.split_crit_edge
  %div.sink = phi i32 [ %div, %if.then2 ], [ 0, %if.end.cleanup.sink.split_crit_edge ]
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %22 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div.sink, ptr %frequency, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %f) #2 align 64 {
entry:
  %wr.i.i42 = alloca %struct.tea5764_write_regs, align 1
  %msgs.i.i43 = alloca [1 x %struct.i2c_msg], align 4
  %wr.i.i24 = alloca %struct.tea5764_write_regs, align 1
  %msgs.i.i25 = alloca [1 x %struct.i2c_msg], align 4
  %wr.i.i = alloca %struct.tea5764_write_regs, align 1
  %msgs.i.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %2 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency, align 4
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp1.not = icmp eq i32 %7, 1
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %tnctrl.i = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %tnctrl.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %tnctrl.i, align 1
  %10 = and i16 %9, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i = icmp eq i16 %10, 0
  br i1 %tobool.not.i, label %if.then3.cleanup_crit_edge, label %if.then.i

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %and3.i = and i16 %9, -16385
  %11 = ptrtoint ptr %tnctrl.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %and3.i, ptr %tnctrl.i, align 1
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %wr.i.i) #8
  %12 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i.i, i32 0, i32 1
  %13 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i.i, i32 0, i32 2
  %14 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i.i, i32 0, i32 3
  %15 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i.i, i32 0, i32 4
  %16 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i.i, i32 0, i32 5
  %regs.i.i = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i.i) #8
  %17 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 786431, ptr %17, align 4
  %i2c_client.i.i = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_client.i.i, align 8
  %addr1.i.i = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %addr1.i.i, align 2
  %23 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %wr.i.i, ptr %buf.i.i, align 4
  %26 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %regs.i.i, align 1
  %conv2.i.i = trunc i16 %27 to i8
  %28 = ptrtoint ptr %wr.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv2.i.i, ptr %wr.i.i, align 1
  %frqset.i.i = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %frqset.i.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %frqset.i.i, align 1
  %31 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %30, ptr %12, align 1
  %32 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %and3.i, ptr %13, align 1
  %testreg.i.i = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 4, i32 5
  %33 = ptrtoint ptr %testreg.i.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %testreg.i.i, align 1
  %35 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %34, ptr %14, align 1
  %rdsctrl.i.i = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 4, i32 10
  %36 = ptrtoint ptr %rdsctrl.i.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %rdsctrl.i.i, align 1
  %38 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 %37, ptr %15, align 1
  %rdsbbl.i.i = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 4, i32 11
  %39 = ptrtoint ptr %rdsbbl.i.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %rdsbbl.i.i, align 1
  %41 = ptrtoint ptr %16 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %40, ptr %16, align 1
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 3
  %42 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %msgs.i.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i.i) #8
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %wr.i.i) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %44 = tail call i32 @llvm.umax.i32(i32 %3, i32 1400000)
  %45 = tail call i32 @llvm.umin.i32(i32 %44, i32 1728000)
  %tnctrl.i26 = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 4, i32 2
  %46 = ptrtoint ptr %tnctrl.i26 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %tnctrl.i26, align 1
  %48 = and i16 %47, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool.not.i27 = icmp eq i16 %48, 0
  br i1 %tobool.not.i27, label %if.then.i41, label %if.end4.tea5764_power_up.exit_crit_edge

if.end4.tea5764_power_up.exit_crit_edge:          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %tea5764_power_up.exit

if.then.i41:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %and3.i28 = and i16 %47, -17553
  %49 = load i32, ptr @use_xtal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool5.not.i = icmp eq i32 %49, 0
  %testreg.i = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 4, i32 5
  %50 = ptrtoint ptr %testreg.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %testreg.i, align 1
  %52 = and i16 %51, -2049
  %masksel.i = select i1 %tobool5.not.i, i16 2048, i16 0
  %.sink.i = or i16 %52, %masksel.i
  store i16 %.sink.i, ptr %testreg.i, align 1
  %53 = or i16 %and3.i28, 16384
  %54 = ptrtoint ptr %tnctrl.i26 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 2)
  store i16 %53, ptr %tnctrl.i26, align 1
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %wr.i.i24) #8
  %55 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i.i24, i32 0, i32 1
  %56 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i.i24, i32 0, i32 2
  %57 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i.i24, i32 0, i32 3
  %58 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i.i24, i32 0, i32 4
  %59 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i.i24, i32 0, i32 5
  %regs.i.i29 = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i.i25) #8
  %60 = getelementptr inbounds i8, ptr %msgs.i.i25, i32 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 786431, ptr %60, align 4
  %i2c_client.i.i30 = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 2
  %62 = ptrtoint ptr %i2c_client.i.i30 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i2c_client.i.i30, align 8
  %addr1.i.i31 = getelementptr inbounds %struct.i2c_client, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %addr1.i.i31 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %addr1.i.i31, align 2
  %66 = ptrtoint ptr %msgs.i.i25 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %msgs.i.i25, align 4
  %flags.i.i32 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i25, i32 0, i32 1
  %67 = ptrtoint ptr %flags.i.i32 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 0, ptr %flags.i.i32, align 2
  %buf.i.i33 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i25, i32 0, i32 3
  %68 = ptrtoint ptr %buf.i.i33 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %wr.i.i24, ptr %buf.i.i33, align 4
  %69 = ptrtoint ptr %regs.i.i29 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %70 = load i16, ptr %regs.i.i29, align 1
  %conv2.i.i34 = trunc i16 %70 to i8
  %71 = ptrtoint ptr %wr.i.i24 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv2.i.i34, ptr %wr.i.i24, align 1
  %frqset.i.i35 = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 4, i32 1
  %72 = ptrtoint ptr %frqset.i.i35 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %73 = load i16, ptr %frqset.i.i35, align 1
  %74 = ptrtoint ptr %55 to i32
  call void @__asan_storeN_noabort(i32 %74, i32 2)
  store i16 %73, ptr %55, align 1
  %75 = ptrtoint ptr %56 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 2)
  store i16 %53, ptr %56, align 1
  %76 = ptrtoint ptr %57 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 2)
  store i16 %.sink.i, ptr %57, align 1
  %rdsctrl.i.i37 = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 4, i32 10
  %77 = ptrtoint ptr %rdsctrl.i.i37 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 2)
  %78 = load i16, ptr %rdsctrl.i.i37, align 1
  %79 = ptrtoint ptr %58 to i32
  call void @__asan_storeN_noabort(i32 %79, i32 2)
  store i16 %78, ptr %58, align 1
  %rdsbbl.i.i38 = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 4, i32 11
  %80 = ptrtoint ptr %rdsbbl.i.i38 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 2)
  %81 = load i16, ptr %rdsbbl.i.i38, align 1
  %82 = ptrtoint ptr %59 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 2)
  store i16 %81, ptr %59, align 1
  %adapter.i.i39 = getelementptr inbounds %struct.i2c_client, ptr %63, i32 0, i32 3
  %83 = ptrtoint ptr %adapter.i.i39 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %adapter.i.i39, align 8
  %call.i.i40 = call i32 @i2c_transfer(ptr noundef %84, ptr noundef nonnull %msgs.i.i25, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i.i25) #8
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %wr.i.i24) #8
  br label %tea5764_power_up.exit

tea5764_power_up.exit:                            ; preds = %if.then.i41, %if.end4.tea5764_power_up.exit_crit_edge
  %mul = mul nuw nsw i32 %45, 125
  %div23 = lshr i32 %mul, 1
  %85 = ptrtoint ptr %tnctrl.i26 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 2)
  %86 = load i16, ptr %tnctrl.i26, align 1
  %87 = and i16 %86, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %tobool.not.i.i = icmp eq i16 %87, 0
  %..i.i = select i1 %tobool.not.i.i, i32 536645912, i32 225000
  %sub.i.i = add nuw nsw i32 %..i.i, %div23
  %conv1.sink.in.i.i5556 = lshr i32 %sub.i.i, 13
  %conv1.sink.i.i = trunc i32 %conv1.sink.in.i.i5556 to i16
  %88 = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 4, i32 1
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_storeN_noabort(i32 %89, i32 2)
  store i16 %conv1.sink.i.i, ptr %88, align 1
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %wr.i.i42) #8
  %90 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i.i42, i32 0, i32 1
  %91 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i.i42, i32 0, i32 2
  %92 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i.i42, i32 0, i32 3
  %93 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i.i42, i32 0, i32 4
  %94 = getelementptr inbounds %struct.tea5764_write_regs, ptr %wr.i.i42, i32 0, i32 5
  %regs.i.i44 = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i.i43) #8
  %95 = getelementptr inbounds i8, ptr %msgs.i.i43, i32 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 786431, ptr %95, align 4
  %i2c_client.i.i45 = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 2
  %97 = ptrtoint ptr %i2c_client.i.i45 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %i2c_client.i.i45, align 8
  %addr1.i.i46 = getelementptr inbounds %struct.i2c_client, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %addr1.i.i46 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %addr1.i.i46, align 2
  %101 = ptrtoint ptr %msgs.i.i43 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %100, ptr %msgs.i.i43, align 4
  %flags.i.i47 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i43, i32 0, i32 1
  %102 = ptrtoint ptr %flags.i.i47 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 0, ptr %flags.i.i47, align 2
  %buf.i.i48 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i43, i32 0, i32 3
  %103 = ptrtoint ptr %buf.i.i48 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %wr.i.i42, ptr %buf.i.i48, align 4
  %104 = ptrtoint ptr %regs.i.i44 to i32
  call void @__asan_loadN_noabort(i32 %104, i32 2)
  %105 = load i16, ptr %regs.i.i44, align 1
  %conv2.i.i49 = trunc i16 %105 to i8
  %106 = ptrtoint ptr %wr.i.i42 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv2.i.i49, ptr %wr.i.i42, align 1
  %107 = ptrtoint ptr %90 to i32
  call void @__asan_storeN_noabort(i32 %107, i32 2)
  store i16 %conv1.sink.i.i, ptr %90, align 1
  %108 = ptrtoint ptr %91 to i32
  call void @__asan_storeN_noabort(i32 %108, i32 2)
  store i16 %86, ptr %91, align 1
  %testreg.i.i50 = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 4, i32 5
  %109 = ptrtoint ptr %testreg.i.i50 to i32
  call void @__asan_loadN_noabort(i32 %109, i32 2)
  %110 = load i16, ptr %testreg.i.i50, align 1
  %111 = ptrtoint ptr %92 to i32
  call void @__asan_storeN_noabort(i32 %111, i32 2)
  store i16 %110, ptr %92, align 1
  %rdsctrl.i.i51 = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 4, i32 10
  %112 = ptrtoint ptr %rdsctrl.i.i51 to i32
  call void @__asan_loadN_noabort(i32 %112, i32 2)
  %113 = load i16, ptr %rdsctrl.i.i51, align 1
  %114 = ptrtoint ptr %93 to i32
  call void @__asan_storeN_noabort(i32 %114, i32 2)
  store i16 %113, ptr %93, align 1
  %rdsbbl.i.i52 = getelementptr inbounds %struct.tea5764_device, ptr %1, i32 0, i32 4, i32 11
  %115 = ptrtoint ptr %rdsbbl.i.i52 to i32
  call void @__asan_loadN_noabort(i32 %115, i32 2)
  %116 = load i16, ptr %rdsbbl.i.i52, align 1
  %117 = ptrtoint ptr %94 to i32
  call void @__asan_storeN_noabort(i32 %117, i32 2)
  store i16 %116, ptr %94, align 1
  %adapter.i.i53 = getelementptr inbounds %struct.i2c_client, ptr %98, i32 0, i32 3
  %118 = ptrtoint ptr %adapter.i.i53 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %adapter.i.i53, align 8
  %call.i.i54 = call i32 @i2c_transfer(ptr noundef %119, ptr noundef nonnull %msgs.i.i43, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i54)
  %cmp.not.i.i = icmp eq i32 %call.i.i54, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i.i43) #8
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %wr.i.i42) #8
  br i1 %cmp.not.i.i, label %tea5764_power_up.exit.cleanup_crit_edge, label %do.end.i

tea5764_power_up.exit.cleanup_crit_edge:          ; preds = %tea5764_power_up.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i:                                         ; preds = %tea5764_power_up.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %tea5764_power_up.exit.cleanup_crit_edge, %if.then.i, %if.then3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then3.cleanup_crit_edge ], [ -22, %if.then.i ], [ 0, %tea5764_power_up.exit.cleanup_crit_edge ], [ 0, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !19, !21, !23, !24, !26, !28, !30, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !47, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !93, !94}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @__initcall__kmod_radio_tea5764__296_521_tea5764_i2c_driver_init6, !1, !"__initcall__kmod_radio_tea5764__296_521_tea5764_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/radio/radio-tea5764.c", i32 521, i32 1}
!2 = !{ptr @__exitcall_tea5764_i2c_driver_exit, !1, !"__exitcall_tea5764_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author297, !4, !"__UNIQUE_ID_author297", i1 false, i1 false}
!4 = !{!"../drivers/media/radio/radio-tea5764.c", i32 523, i32 1}
!5 = !{ptr @__UNIQUE_ID_description298, !6, !"__UNIQUE_ID_description298", i1 false, i1 false}
!6 = !{!"../drivers/media/radio/radio-tea5764.c", i32 524, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../drivers/media/radio/radio-tea5764.c", i32 525, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version301, !11, !"__UNIQUE_ID_version301", i1 false, i1 false}
!11 = !{!"../drivers/media/radio/radio-tea5764.c", i32 526, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @__param_use_xtal, !17, !"__param_use_xtal", i1 false, i1 false}
!17 = !{!"../drivers/media/radio/radio-tea5764.c", i32 528, i32 1}
!18 = !{ptr @__UNIQUE_ID_use_xtaltype302, !17, !"__UNIQUE_ID_use_xtaltype302", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_use_xtal303, !20, !"__UNIQUE_ID_use_xtal303", i1 false, i1 false}
!20 = !{!"../drivers/media/radio/radio-tea5764.c", i32 529, i32 1}
!21 = !{ptr @__param_radio_nr, !22, !"__param_radio_nr", i1 false, i1 false}
!22 = !{!"../drivers/media/radio/radio-tea5764.c", i32 530, i32 1}
!23 = !{ptr @__UNIQUE_ID_radio_nrtype304, !22, !"__UNIQUE_ID_radio_nrtype304", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_radio_nr305, !25, !"__UNIQUE_ID_radio_nr305", i1 false, i1 false}
!25 = !{!"../drivers/media/radio/radio-tea5764.c", i32 531, i32 1}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/radio/radio-tea5764.c", i32 514, i32 11}
!28 = !{ptr @tea5764_i2c_driver, !29, !"tea5764_i2c_driver", i1 false, i1 false}
!29 = !{!"../drivers/media/radio/radio-tea5764.c", i32 512, i32 26}
!30 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/radio/radio-tea5764.c", i32 423, i32 2}
!32 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @tea5764_i2c_probe._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @tea5764_i2c_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/radio/radio-tea5764.c", i32 431, i32 3}
!38 = !{ptr @tea5764_i2c_probe._entry.7, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @tea5764_i2c_probe._entry_ptr.9, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @tea5764_i2c_probe._key, !41, !"_key", i1 false, i1 false}
!41 = !{!"../drivers/media/radio/radio-tea5764.c", i32 436, i32 2}
!42 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/radio/radio-tea5764.c", i32 442, i32 3}
!45 = !{ptr @tea5764_i2c_probe._entry.11, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @tea5764_i2c_probe._entry_ptr.13, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @tea5764_i2c_probe.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/media/radio/radio-tea5764.c", i32 446, i32 2}
!49 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/radio/radio-tea5764.c", i32 452, i32 2}
!52 = !{ptr @tea5764_i2c_probe._entry.15, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @tea5764_i2c_probe._entry_ptr.17, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/radio/radio-tea5764.c", i32 455, i32 3}
!56 = !{ptr @tea5764_i2c_probe._entry.18, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @tea5764_i2c_probe._entry_ptr.20, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/radio/radio-tea5764.c", i32 476, i32 3}
!60 = !{ptr @tea5764_i2c_probe._entry.21, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @tea5764_i2c_probe._entry_ptr.23, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/radio/radio-tea5764.c", i32 480, i32 2}
!64 = !{ptr @tea5764_i2c_probe._entry.24, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @tea5764_i2c_probe._entry_ptr.26, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @tea5764_ctrl_ops, !67, !"tea5764_ctrl_ops", i1 false, i1 false}
!67 = !{!"../drivers/media/radio/radio-tea5764.c", i32 381, i32 35}
!68 = !{ptr @tea5764_radio_template, !69, !"tea5764_radio_template", i1 false, i1 false}
!69 = !{!"../drivers/media/radio/radio-tea5764.c", i32 406, i32 34}
!70 = !{ptr @tea5764_fops, !71, !"tea5764_fops", i1 false, i1 false}
!71 = !{!"../drivers/media/radio/radio-tea5764.c", i32 386, i32 42}
!72 = !{ptr @tea5764_ioctl_ops, !73, !"tea5764_ioctl_ops", i1 false, i1 false}
!73 = !{!"../drivers/media/radio/radio-tea5764.c", i32 394, i32 36}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/radio/radio-tea5764.c", i32 284, i32 4}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/radio/radio-tea5764.c", i32 297, i32 19}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/radio/radio-tea5764.c", i32 235, i32 3}
!80 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @tea5764_tune._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @tea5764_tune._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/radio/radio-tea5764.c", i32 494, i32 2}
!85 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @tea5764_i2c_remove._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @tea5764_i2c_remove._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @tea5764_id, !89, !"tea5764_id", i1 false, i1 false}
!89 = !{!"../drivers/media/radio/radio-tea5764.c", i32 506, i32 35}
!90 = !{ptr @__param_str_use_xtal, !17, !"__param_str_use_xtal", i1 false, i1 false}
!91 = !{ptr @use_xtal, !92, !"use_xtal", i1 false, i1 false}
!92 = !{!"../drivers/media/radio/radio-tea5764.c", i32 128, i32 12}
!93 = !{ptr @__param_str_radio_nr, !22, !"__param_str_radio_nr", i1 false, i1 false}
!94 = !{ptr @radio_nr, !95, !"radio_nr", i1 false, i1 false}
!95 = !{!"../drivers/media/radio/radio-tea5764.c", i32 127, i32 12}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
