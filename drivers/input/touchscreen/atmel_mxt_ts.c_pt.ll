; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/atmel_mxt_ts.c_pt.bc'
source_filename = "../drivers/input/touchscreen/atmel_mxt_ts.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.90 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.90 = type { %struct.anon.91 }
%struct.anon.91 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.87], %struct.media_entity_enum, i32 }
%struct.anon.87 = type { ptr, ptr }
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
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.mxt_data = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i32, i32, i8, ptr, i8, i8, i8, i8, i8, %struct.t7_config, %struct.mxt_dbg, [2 x %struct.regulator_bulk_data], ptr, ptr, i8, i16, i8, i8, i16, i16, i16, i8, i8, i16, i8, i16, i8, i8, %struct.completion, %struct.completion, %struct.completion, ptr, i32, i32, i32 }
%struct.t7_config = type { i8, i8 }
%struct.mxt_dbg = type { i16, i16, ptr, i32, i32, %struct.v4l2_device, %struct.v4l2_pix_format, %struct.video_device, %struct.vb2_queue, %struct.mutex, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.97, i32, i32 }
%union.anon.97 = type { i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.mxt_info = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.t9_range = type { i16, i16 }
%struct.mxt_object = type <{ i8, i16, i8, i8, i8 }>
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.mxt_cfg = type { ptr, i32, i32, ptr, i32, i32, %struct.mxt_info }
%struct.firmware = type { i32, ptr, ptr }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.95, i32 }
%union.anon.95 = type { i32 }
%struct.t37_debug = type { i8, i8, [128 x i8] }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.96 }
%union.anon.96 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.98, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.98 = type { i8 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_streamparm = type { i32, %union.anon.112 }
%union.anon.112 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_fract = type { i32, i32 }

@__initcall__kmod_atmel_mxt_ts__318_3387_mxt_driver_init6 = internal global ptr @mxt_driver_init, section ".initcall6.init", align 4
@mxt_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @mxt_probe, ptr @mxt_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mxt_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mxt_pm_ops, ptr null, ptr null }, ptr @mxt_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mxt_driver_exit = internal global ptr @mxt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author319 = internal constant [61 x i8] c"atmel_mxt_ts.author=Joonyoung Shim <jy0922.shim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description320 = internal constant [59 x i8] c"atmel_mxt_ts.description=Atmel maXTouch Touchscreen driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file321 = internal constant [57 x i8] c"atmel_mxt_ts.file=drivers/input/touchscreen/atmel_mxt_ts\00", section ".modinfo", align 1
@__UNIQUE_ID_license322 = internal constant [25 x i8] c"atmel_mxt_ts.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atmel_mxt_ts\00", [19 x i8] zeroinitializer }, align 32
@mxt_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,maxtouch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,qt602240_ts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,atmel_mxt_ts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,atmel_mxt_tp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,mXT224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@mxt_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mxt_suspend, ptr @mxt_resume, ptr @mxt_suspend, ptr @mxt_resume, ptr @mxt_suspend, ptr @mxt_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mxt_id = internal constant { [6 x %struct.i2c_device_id], [48 x i8] } { [6 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"qt602240_ts\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"atmel_mxt_ts\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"atmel_mxt_tp\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"maxtouch\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"mXT224\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compatible\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"i2c-%u-%04x/input0\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdda\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@mxt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 3195, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get regulators %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mxt_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/input/touchscreen/atmel_mxt_ts.c\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mxt_probe._entry_ptr = internal global ptr @mxt_probe._entry, section ".printk_index", align 4
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@mxt_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.7, i32 3204, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get reset gpio: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@mxt_probe._entry_ptr.13 = internal global ptr @mxt_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wake\00", [27 x i8] zeroinitializer }, align 32
@mxt_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.6, ptr @.str.7, i32 3213, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get wake gpio: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mxt_probe._entry_ptr.17 = internal global ptr @mxt_probe._entry.15, section ".printk_index", align 4
@mxt_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.6, ptr @.str.7, i32 3222, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register interrupt\0A\00", [34 x i8] zeroinitializer }, align 32
@mxt_probe._entry_ptr.20 = internal global ptr @mxt_probe._entry.18, section ".printk_index", align 4
@mxt_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.6, ptr @.str.7, i32 3230, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable regulators: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@mxt_probe._entry_ptr.23 = internal global ptr @mxt_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmel,wakeup-method\00", [44 x i8] zeroinitializer }, align 32
@mxt_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mxt_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@mxt_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.6, ptr @.str.7, i32 3272, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failure %d creating sysfs group\0A\00", [63 x i8] zeroinitializer }, align 32
@mxt_probe._entry_ptr.27 = internal global ptr @mxt_probe._entry.25, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@mxt_parse_device_properties.keymap_property = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"linux,gpio-keymap\00", [46 x i8] zeroinitializer }, align 32
@mxt_parse_device_properties._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.7, i32 3093, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"invalid/malformed '%s' property: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxt_parse_device_properties\00", [36 x i8] zeroinitializer }, align 32
@mxt_parse_device_properties._entry_ptr = internal global ptr @mxt_parse_device_properties._entry, section ".printk_index", align 4
@mxt_parse_device_properties._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.7, i32 3106, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to parse '%s' property: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@mxt_parse_device_properties._entry_ptr.33 = internal global ptr @mxt_parse_device_properties._entry.31, section ".printk_index", align 4
@mxt_process_messages_t44._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.7, i32 1074, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read T44 and T5 (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mxt_process_messages_t44\00", [39 x i8] zeroinitializer }, align 32
@mxt_process_messages_t44._entry_ptr = internal global ptr @mxt_process_messages_t44._entry, section ".printk_index", align 4
@mxt_process_messages_t44._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.7, i32 1088, ptr @.str.38, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"T44 count %d exceeded max report id\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mxt_process_messages_t44._entry_ptr.39 = internal global ptr @mxt_process_messages_t44._entry.36, section ".printk_index", align 4
@mxt_process_messages_t44._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.35, ptr @.str.7, i32 1095, ptr @.str.38, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unexpected invalid message\0A\00", [36 x i8] zeroinitializer }, align 32
@mxt_process_messages_t44._entry_ptr.42 = internal global ptr @mxt_process_messages_t44._entry.40, section ".printk_index", align 4
@mxt_process_messages_t44._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.35, ptr @.str.7, i32 1107, ptr @.str.38, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@mxt_process_messages_t44._entry_ptr.44 = internal global ptr @mxt_process_messages_t44._entry.43, section ".printk_index", align 4
@__mxt_read_reg._entry = internal constant %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.7, i32 694, ptr @.str.8, ptr @.str.9 }, align 1
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: i2c transfer failed (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__mxt_read_reg\00", [17 x i8] zeroinitializer }, align 32
@__mxt_read_reg._entry_ptr = internal global ptr @__mxt_read_reg._entry, section ".printk_index", align 4
@mxt_wakeup_toggle.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.7, ptr @.str.48, i8 0, i8 -93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mxt_wakeup_toggle\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"waking up controller\0A\00", [42 x i8] zeroinitializer }, align 32
@mxt_proc_t6_messages.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.7, ptr @.str.50, i8 0, i8 -65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mxt_proc_t6_messages\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"T6 Config Checksum: 0x%06X\0A\00", [36 x i8] zeroinitializer }, align 32
@mxt_proc_t6_messages.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.7, ptr @.str.51, i8 0, i8 -61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"T6 Status 0x%02X%s%s%s%s%s%s%s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" OK\00", [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" RESET\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" OFL\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" SIGERR\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" CAL\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" CFGERR\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" COMSERR\00", [23 x i8] zeroinitializer }, align 32
@mxt_dump_message.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.7, ptr @.str.61, i8 0, i8 101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mxt_dump_message\00", [47 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"message: %*ph\0A\00", [17 x i8] zeroinitializer }, align 32
@mxt_proc_t9_message.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.7, ptr @.str.63, i8 0, i8 -41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mxt_proc_t9_message\00", [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[%u] %c%c%c%c%c%c%c%c x: %5u y: %5u area: %3u amp: %3u\0A\00", [40 x i8] zeroinitializer }, align 32
@mxt_proc_t100_message.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.7, ptr @.str.65, i8 0, i8 -15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mxt_proc_t100_message\00", [42 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unexpected T100 type\0A\00", [42 x i8] zeroinitializer }, align 32
@mxt_proc_t100_message.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.7, ptr @.str.66, i8 0, i8 -11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[%u] type:%u x:%u y:%u a:%02X p:%02X v:%02X\0A\00", [51 x i8] zeroinitializer }, align 32
@mxt_proc_t100_message.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.7, ptr @.str.67, i8 0, i8 -8, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"[%u] release\0A\00", [18 x i8] zeroinitializer }, align 32
@mxt_read_and_process_messages._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.7, i32 1048, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to read %u messages (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mxt_read_and_process_messages\00", [34 x i8] zeroinitializer }, align 32
@mxt_read_and_process_messages._entry_ptr = internal global ptr @mxt_read_and_process_messages._entry, section ".printk_index", align 4
@mxt_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.7, i32 2205, ptr @.str.72, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Trying alternate bootloader address\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mxt_initialize\00", [17 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mxt_initialize._entry_ptr = internal global ptr @mxt_initialize._entry, section ".printk_index", align 4
@mxt_initialize._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.71, ptr @.str.7, i32 2215, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Could not recover from bootloader mode\0A\00", [56 x i8] zeroinitializer }, align 32
@mxt_initialize._entry_ptr.75 = internal global ptr @mxt_initialize._entry.73, section ".printk_index", align 4
@.str.76 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"maxtouch.cfg\00", [19 x i8] zeroinitializer }, align 32
@mxt_initialize._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.71, ptr @.str.7, i32 2242, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to invoke firmware loader: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@mxt_initialize._entry_ptr.79 = internal global ptr @mxt_initialize._entry.77, section ".printk_index", align 4
@mxt_read_info_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.7, i32 1866, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Info Block CRC error calculated=0x%06X read=0x%06X\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mxt_read_info_block\00", [44 x i8] zeroinitializer }, align 32
@mxt_read_info_block._entry_ptr = internal global ptr @mxt_read_info_block._entry, section ".printk_index", align 4
@mxt_read_info_block._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.7, i32 1878, ptr @.str.72, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Family: %u Variant: %u Firmware V%u.%u.%02X Objects: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@mxt_read_info_block._entry_ptr.84 = internal global ptr @mxt_read_info_block._entry.82, section ".printk_index", align 4
@mxt_read_info_block._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.81, ptr @.str.7, i32 1883, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error %d parsing object table\0A\00", [33 x i8] zeroinitializer }, align 32
@mxt_read_info_block._entry_ptr.87 = internal global ptr @mxt_read_info_block._entry.85, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mxt_parse_object_table.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.7, ptr @.str.89, i8 1, i8 -80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxt_parse_object_table\00", [41 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"T%u Start:%u Size:%zu Instances:%zu Report IDs:%u-%u\0A\00", [42 x i8] zeroinitializer }, align 32
@mxt_parse_object_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.7, i32 1797, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid T44 position\0A\00", [42 x i8] zeroinitializer }, align 32
@mxt_parse_object_table._entry_ptr = internal global ptr @mxt_parse_object_table._entry, section ".printk_index", align 4
@mxt_probe_bootloader._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.7, i32 525, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Detected bootloader, status:%02X%s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mxt_probe_bootloader\00", [43 x i8] zeroinitializer }, align 32
@mxt_probe_bootloader._entry_ptr = internal global ptr @mxt_probe_bootloader._entry, section ".printk_index", align 4
@.str.93 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c", APP_CRC_FAIL\00", [17 x i8] zeroinitializer }, align 32
@mxt_lookup_bootloader_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.7, i32 498, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Appmode i2c address 0x%02x not found\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mxt_lookup_bootloader_address\00", [34 x i8] zeroinitializer }, align 32
@mxt_lookup_bootloader_address._entry_ptr = internal global ptr @mxt_lookup_bootloader_address._entry, section ".printk_index", align 4
@mxt_bootloader_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.7, i32 444, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: i2c recv failed (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mxt_bootloader_read\00", [44 x i8] zeroinitializer }, align 32
@mxt_bootloader_read._entry_ptr = internal global ptr @mxt_bootloader_read._entry, section ".printk_index", align 4
@mxt_bootloader_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.7, i32 467, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: i2c send failed (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mxt_bootloader_write\00", [43 x i8] zeroinitializer }, align 32
@mxt_bootloader_write._entry_ptr = internal global ptr @mxt_bootloader_write._entry, section ".printk_index", align 4
@mxt_check_retrigen._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.7, i32 1361, ptr @.str.38, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Enabling RETRIGEN workaround\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mxt_check_retrigen\00", [45 x i8] zeroinitializer }, align 32
@mxt_check_retrigen._entry_ptr = internal global ptr @mxt_check_retrigen._entry, section ".printk_index", align 4
@mxt_process_messages_until_invalid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.7, i32 1139, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CHG pin isn't cleared\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mxt_process_messages_until_invalid\00", [61 x i8] zeroinitializer }, align 32
@mxt_process_messages_until_invalid._entry_ptr = internal global ptr @mxt_process_messages_until_invalid._entry, section ".printk_index", align 4
@mxt_configure_objects._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.7, i32 2735, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to initialize power cfg\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mxt_configure_objects\00", [42 x i8] zeroinitializer }, align 32
@mxt_configure_objects._entry_ptr = internal global ptr @mxt_configure_objects._entry, section ".printk_index", align 4
@mxt_configure_objects._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.7, i32 2742, ptr @.str.38, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error %d updating config\0A\00", [38 x i8] zeroinitializer }, align 32
@mxt_configure_objects._entry_ptr.108 = internal global ptr @mxt_configure_objects._entry.106, section ".printk_index", align 4
@mxt_configure_objects._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.105, ptr @.str.7, i32 2750, ptr @.str.38, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No touch object detected\0A\00", [38 x i8] zeroinitializer }, align 32
@mxt_configure_objects._entry_ptr.111 = internal global ptr @mxt_configure_objects._entry.109, section ".printk_index", align 4
@mxt_init_t7_power_cfg.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.112, ptr @.str.7, ptr @.str.113, i8 2, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mxt_init_t7_power_cfg\00", [42 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"T7 cfg zero, resetting\0A\00", [40 x i8] zeroinitializer }, align 32
@mxt_init_t7_power_cfg.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.112, ptr @.str.7, ptr @.str.114, i8 2, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"T7 cfg zero after reset, overriding\0A\00", [59 x i8] zeroinitializer }, align 32
@mxt_init_t7_power_cfg.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.112, ptr @.str.7, ptr @.str.115, i8 2, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Initialized power cfg: ACTV %d, IDLE %d\0A\00", [55 x i8] zeroinitializer }, align 32
@mxt_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.7, i32 1254, ptr @.str.72, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Resetting device\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mxt_soft_reset\00", [17 x i8] zeroinitializer }, align 32
@mxt_soft_reset._entry_ptr = internal global ptr @mxt_soft_reset._entry, section ".printk_index", align 4
@mxt_t6_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.7, i32 1227, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Command failed!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mxt_t6_command\00", [17 x i8] zeroinitializer }, align 32
@mxt_t6_command._entry_ptr = internal global ptr @mxt_t6_command._entry, section ".printk_index", align 4
@__mxt_write_reg._entry = internal constant %struct.pi_entry { ptr @.str.98, ptr @.str.120, ptr @.str.7, i32 728, ptr @.str.8, ptr @.str.9 }, align 1
@.str.120 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__mxt_write_reg\00", [16 x i8] zeroinitializer }, align 32
@__mxt_write_reg._entry_ptr = internal global ptr @__mxt_write_reg._entry, section ".printk_index", align 4
@mxt_wait_for_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.7, i32 420, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Wait for completion timed out.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxt_wait_for_completion\00", [40 x i8] zeroinitializer }, align 32
@mxt_wait_for_completion._entry_ptr = internal global ptr @mxt_wait_for_completion._entry, section ".printk_index", align 4
@mxt_set_t7_power_cfg.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.7, ptr @.str.124, i8 2, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mxt_set_t7_power_cfg\00", [43 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Set T7 ACTV:%d IDLE:%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"OBP_RAW V1\00", [21 x i8] zeroinitializer }, align 32
@mxt_update_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.7, i32 1532, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unrecognised config file\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mxt_update_cfg\00", [17 x i8] zeroinitializer }, align 32
@mxt_update_cfg._entry_ptr = internal global ptr @mxt_update_cfg._entry, section ".printk_index", align 4
@.str.128 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%hhx%n\00", [25 x i8] zeroinitializer }, align 32
@mxt_update_cfg._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.127, ptr @.str.7, i32 1545, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Bad format\0A\00", [20 x i8] zeroinitializer }, align 32
@mxt_update_cfg._entry_ptr.131 = internal global ptr @mxt_update_cfg._entry.129, section ".printk_index", align 4
@mxt_update_cfg._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.127, ptr @.str.7, i32 1554, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Family ID mismatch!\0A\00", [43 x i8] zeroinitializer }, align 32
@mxt_update_cfg._entry_ptr.134 = internal global ptr @mxt_update_cfg._entry.132, section ".printk_index", align 4
@mxt_update_cfg._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.127, ptr @.str.7, i32 1560, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Variant ID mismatch!\0A\00", [42 x i8] zeroinitializer }, align 32
@mxt_update_cfg._entry_ptr.137 = internal global ptr @mxt_update_cfg._entry.135, section ".printk_index", align 4
@.str.138 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%x%n\00", [27 x i8] zeroinitializer }, align 32
@mxt_update_cfg._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.127, ptr @.str.7, i32 1568, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Bad format: failed to parse Info CRC\0A\00", [58 x i8] zeroinitializer }, align 32
@mxt_update_cfg._entry_ptr.141 = internal global ptr @mxt_update_cfg._entry.139, section ".printk_index", align 4
@mxt_update_cfg._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.127, ptr @.str.7, i32 1576, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Bad format: failed to parse Config CRC\0A\00", [56 x i8] zeroinitializer }, align 32
@mxt_update_cfg._entry_ptr.144 = internal global ptr @mxt_update_cfg._entry.142, section ".printk_index", align 4
@mxt_update_cfg._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.127, ptr @.str.7, i32 1590, ptr @.str.72, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"CRC zero, attempting to apply config\0A\00", [58 x i8] zeroinitializer }, align 32
@mxt_update_cfg._entry_ptr.147 = internal global ptr @mxt_update_cfg._entry.145, section ".printk_index", align 4
@mxt_update_cfg.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.127, ptr @.str.7, ptr @.str.148, i8 1, i8 -114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.148 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Config CRC 0x%06X: OK\0A\00", [41 x i8] zeroinitializer }, align 32
@mxt_update_cfg._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.127, ptr @.str.7, i32 1598, ptr @.str.72, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Config CRC 0x%06X: does not match file 0x%06X\0A\00", [49 x i8] zeroinitializer }, align 32
@mxt_update_cfg._entry_ptr.151 = internal global ptr @mxt_update_cfg._entry.149, section ".printk_index", align 4
@mxt_update_cfg._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.127, ptr @.str.7, i32 1603, ptr @.str.38, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Warning: Info CRC error - device=0x%06X file=0x%06X\0A\00", [43 x i8] zeroinitializer }, align 32
@mxt_update_cfg._entry_ptr.154 = internal global ptr @mxt_update_cfg._entry.152, section ".printk_index", align 4
@mxt_update_cfg._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.127, ptr @.str.7, i32 1627, ptr @.str.38, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Could not find CRC start\0A\00", [38 x i8] zeroinitializer }, align 32
@mxt_update_cfg._entry_ptr.157 = internal global ptr @mxt_update_cfg._entry.155, section ".printk_index", align 4
@mxt_update_cfg._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.127, ptr @.str.7, i32 1636, ptr @.str.38, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Config CRC in file inconsistent, calculated=%06X, file=%06X\0A\00", [35 x i8] zeroinitializer }, align 32
@mxt_update_cfg._entry_ptr.160 = internal global ptr @mxt_update_cfg._entry.158, section ".printk_index", align 4
@mxt_update_cfg._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.127, ptr @.str.7, i32 1653, ptr @.str.72, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Config successfully updated\0A\00", [35 x i8] zeroinitializer }, align 32
@mxt_update_cfg._entry_ptr.163 = internal global ptr @mxt_update_cfg._entry.161, section ".printk_index", align 4
@.str.164 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%x %x %x%n\00", [21 x i8] zeroinitializer }, align 32
@mxt_prepare_cfg_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.166, ptr @.str.7, i32 1385, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Bad format: failed to parse object\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mxt_prepare_cfg_mem\00", [44 x i8] zeroinitializer }, align 32
@mxt_prepare_cfg_mem._entry_ptr = internal global ptr @mxt_prepare_cfg_mem._entry, section ".printk_index", align 4
@mxt_prepare_cfg_mem._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.166, ptr @.str.7, i32 1398, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Bad format in T%d at %d\0A\00", [39 x i8] zeroinitializer }, align 32
@mxt_prepare_cfg_mem._entry_ptr.169 = internal global ptr @mxt_prepare_cfg_mem._entry.167, section ".printk_index", align 4
@mxt_prepare_cfg_mem._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.166, ptr @.str.7, i32 1413, ptr @.str.38, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Discarding %zu byte(s) in T%u\0A\00", [33 x i8] zeroinitializer }, align 32
@mxt_prepare_cfg_mem._entry_ptr.172 = internal global ptr @mxt_prepare_cfg_mem._entry.170, section ".printk_index", align 4
@mxt_prepare_cfg_mem._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.166, ptr @.str.7, i32 1425, ptr @.str.38, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Zeroing %zu byte(s) in T%d\0A\00", [36 x i8] zeroinitializer }, align 32
@mxt_prepare_cfg_mem._entry_ptr.175 = internal global ptr @mxt_prepare_cfg_mem._entry.173, section ".printk_index", align 4
@mxt_prepare_cfg_mem._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.166, ptr @.str.7, i32 1429, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Object instances exceeded!\0A\00", [36 x i8] zeroinitializer }, align 32
@mxt_prepare_cfg_mem._entry_ptr.178 = internal global ptr @mxt_prepare_cfg_mem._entry.176, section ".printk_index", align 4
@mxt_prepare_cfg_mem._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.166, ptr @.str.7, i32 1441, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@mxt_prepare_cfg_mem._entry_ptr.180 = internal global ptr @mxt_prepare_cfg_mem._entry.179, section ".printk_index", align 4
@mxt_prepare_cfg_mem._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.166, ptr @.str.7, i32 1455, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Bad object: reg:%d, T%d, ofs=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@mxt_prepare_cfg_mem._entry_ptr.183 = internal global ptr @mxt_prepare_cfg_mem._entry.181, section ".printk_index", align 4
@mxt_get_object._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.185, ptr @.str.7, i32 752, ptr @.str.38, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid object type T%u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mxt_get_object\00", [17 x i8] zeroinitializer }, align 32
@mxt_get_object._entry_ptr = internal global ptr @mxt_get_object._entry, section ".printk_index", align 4
@mxt_upload_cfg_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.187, ptr @.str.7, i32 1481, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Config write error, ret=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mxt_upload_cfg_mem\00", [45 x i8] zeroinitializer }, align 32
@mxt_upload_cfg_mem._entry_ptr = internal global ptr @mxt_upload_cfg_mem._entry, section ".printk_index", align 4
@mxt_initialize_input_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.189, ptr @.str.7, i32 2059, ptr @.str.38, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to initialize T9 resolution\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxt_initialize_input_device\00", [36 x i8] zeroinitializer }, align 32
@mxt_initialize_input_device._entry_ptr = internal global ptr @mxt_initialize_input_device._entry, section ".printk_index", align 4
@mxt_initialize_input_device._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.189, ptr @.str.7, i32 2066, ptr @.str.38, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to read T100 config\0A\00", [36 x i8] zeroinitializer }, align 32
@mxt_initialize_input_device._entry_ptr.192 = internal global ptr @mxt_initialize_input_device._entry.190, section ".printk_index", align 4
@mxt_initialize_input_device._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.189, ptr @.str.7, i32 2070, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid multitouch object\0A\00", [37 x i8] zeroinitializer }, align 32
@mxt_initialize_input_device._entry_ptr.195 = internal global ptr @mxt_initialize_input_device._entry.193, section ".printk_index", align 4
@mxt_initialize_input_device._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.189, ptr @.str.7, i32 2084, ptr @.str.72, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Touchscreen size X%uY%u\0A\00", [39 x i8] zeroinitializer }, align 32
@mxt_initialize_input_device._entry_ptr.198 = internal global ptr @mxt_initialize_input_device._entry.196, section ".printk_index", align 4
@.str.199 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Atmel maXTouch Touchscreen\00", [37 x i8] zeroinitializer }, align 32
@mxt_initialize_input_device._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.189, ptr @.str.7, i32 2121, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error %d initialising slots\0A\00", [35 x i8] zeroinitializer }, align 32
@mxt_initialize_input_device._entry_ptr.202 = internal global ptr @mxt_initialize_input_device._entry.200, section ".printk_index", align 4
@mxt_initialize_input_device._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.189, ptr @.str.7, i32 2169, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error %d registering input device\0A\00", [61 x i8] zeroinitializer }, align 32
@mxt_initialize_input_device._entry_ptr.205 = internal global ptr @mxt_initialize_input_device._entry.203, section ".printk_index", align 4
@mxt_read_t100_config.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.206, ptr @.str.7, ptr @.str.207, i8 1, i8 -8, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.206 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mxt_read_t100_config\00", [43 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"T100 aux mappings vect:%u ampl:%u area:%u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Atmel maXTouch Touchpad\00", [40 x i8] zeroinitializer }, align 32
@mxt_debug_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.210, ptr @.str.7, i32 2661, ptr @.str.38, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Bad T37 size\00", [19 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mxt_debug_init\00", [17 x i8] zeroinitializer }, align 32
@mxt_debug_init._entry_ptr = internal global ptr @mxt_debug_init._entry, section ".printk_index", align 4
@mxt_debug_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.212 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dbg->lock\00", [21 x i8] zeroinitializer }, align 32
@mxt_video_device = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @mxt_video_fops, i32 352321537, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"Atmel maxTouch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release_empty, ptr @mxt_video_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@mxt_debug_init._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.210, ptr @.str.7, i32 2719, ptr @.str.38, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error initializing T37\0A\00", [40 x i8] zeroinitializer }, align 32
@mxt_debug_init._entry_ptr.215 = internal global ptr @mxt_debug_init._entry.213, section ".printk_index", align 4
@mxt_queue_ops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @mxt_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mxt_buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@mxt_queue = internal constant { { i32, i32, ptr, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i8, i8, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }, [128 x i8] } { { i32, i32, ptr, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i8, i8, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 } { i32 1, i32 23, ptr null, i32 0, i8 0, i8 0, ptr null, ptr null, ptr @mxt_queue_ops, ptr @vb2_vmalloc_memops, ptr null, ptr null, i32 0, i32 448, i32 8192, i32 0, i32 1, [8 x ptr] zeroinitializer, %struct.mutex zeroinitializer, i32 0, i32 0, [32 x ptr] zeroinitializer, i32 0, %struct.list_head zeroinitializer, i32 0, %struct.atomic_t zeroinitializer, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, %struct.wait_queue_head zeroinitializer, i8 0, i8 0, ptr null, ptr null, [32 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0 }, [128 x i8] zeroinitializer }, align 32
@mxt_buffer_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.218, ptr @.str.7, i32 2450, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error acquiring frame ptr\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mxt_buffer_queue\00", [47 x i8] zeroinitializer }, align 32
@mxt_buffer_queue._entry_ptr = internal global ptr @mxt_buffer_queue._entry, section ".printk_index", align 4
@mxt_read_diagnostic_debug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.220, ptr @.str.7, i32 2411, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"T37 page mismatch\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mxt_read_diagnostic_debug\00", [38 x i8] zeroinitializer }, align 32
@mxt_read_diagnostic_debug._entry_ptr = internal global ptr @mxt_read_diagnostic_debug._entry, section ".printk_index", align 4
@mxt_read_diagnostic_debug.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.220, ptr @.str.7, ptr @.str.221, i8 2, i8 92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.221 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s page:%d retries:%d\0A\00", [41 x i8] zeroinitializer }, align 32
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.222 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@mxt_video_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@mxt_video_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @mxt_vidioc_querycap, ptr @mxt_vidioc_enum_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mxt_vidioc_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mxt_vidioc_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mxt_vidioc_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr @mxt_vidioc_enum_input, ptr @mxt_vidioc_g_input, ptr @mxt_vidioc_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mxt_vidioc_g_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atmel_mxt_ts touch\00", [45 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"I2C:%s\00", [25 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Mutual Capacitance References\00", [34 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Mutual Capacitance Deltas\00", [38 x i8] zeroinitializer }, align 32
@mxt_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_fw_version, ptr @dev_attr_hw_version, ptr @dev_attr_object, ptr @dev_attr_update_fw, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.227, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mxt_fw_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.229, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mxt_hw_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_object = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.231, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mxt_object_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_update_fw = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.236, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @mxt_update_fw_store }, [36 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fw_version\00", [21 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%u.%u.%02X\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hw_version\00", [21 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%u.%u\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"object\00", [25 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"T%u:\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Instance %u\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\09[%2u]: %02x (%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"update_fw\00", [22 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"maxtouch.fw\00", [20 x i8] zeroinitializer }, align 32
@mxt_update_fw_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.239, ptr @.str.7, i32 2992, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"The firmware update failed(%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mxt_update_fw_store\00", [44 x i8] zeroinitializer }, align 32
@mxt_update_fw_store._entry_ptr = internal global ptr @mxt_update_fw_store._entry, section ".printk_index", align 4
@mxt_update_fw_store._entry.240 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.239, ptr @.str.7, i32 2995, ptr @.str.72, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"The firmware update succeeded\0A\00", [33 x i8] zeroinitializer }, align 32
@mxt_update_fw_store._entry_ptr.242 = internal global ptr @mxt_update_fw_store._entry.240, section ".printk_index", align 4
@mxt_load_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.243, ptr @.str.244, ptr @.str.7, i32 2874, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to open firmware %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mxt_load_fw\00", [20 x i8] zeroinitializer }, align 32
@mxt_load_fw._entry_ptr = internal global ptr @mxt_load_fw._entry, section ".printk_index", align 4
@mxt_load_fw._entry.245 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.246, ptr @.str.244, ptr @.str.7, i32 2914, ptr @.str.72, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unlocking bootloader\0A\00", [42 x i8] zeroinitializer }, align 32
@mxt_load_fw._entry_ptr.247 = internal global ptr @mxt_load_fw._entry.245, section ".printk_index", align 4
@mxt_load_fw._entry.248 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.249, ptr @.str.244, ptr @.str.7, i32 2945, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Retry count exceeded\0A\00", [42 x i8] zeroinitializer }, align 32
@mxt_load_fw._entry_ptr.250 = internal global ptr @mxt_load_fw._entry.248, section ".printk_index", align 4
@mxt_load_fw.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.244, ptr @.str.7, ptr @.str.251, i8 2, i8 -29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.251 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Sent %d frames, %d/%zd bytes\0A\00", [34 x i8] zeroinitializer }, align 32
@mxt_load_fw.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.244, ptr @.str.7, ptr @.str.252, i8 2, i8 -27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.252 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Sent %d frames, %d bytes\0A\00", [38 x i8] zeroinitializer }, align 32
@mxt_check_firmware_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.253, ptr @.str.254, ptr @.str.7, i32 2857, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Aborting: firmware file must be in binary format\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mxt_check_firmware_format\00", [38 x i8] zeroinitializer }, align 32
@mxt_check_firmware_format._entry_ptr = internal global ptr @mxt_check_firmware_format._entry, section ".printk_index", align 4
@mxt_check_bootloader._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.255, ptr @.str.256, ptr @.str.7, i32 575, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Update wait error %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mxt_check_bootloader\00", [43 x i8] zeroinitializer }, align 32
@mxt_check_bootloader._entry_ptr = internal global ptr @mxt_check_bootloader._entry, section ".printk_index", align 4
@mxt_check_bootloader._entry.257 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.258, ptr @.str.256, ptr @.str.7, i32 597, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Bootloader CRC fail\0A\00", [43 x i8] zeroinitializer }, align 32
@mxt_check_bootloader._entry_ptr.259 = internal global ptr @mxt_check_bootloader._entry.257, section ".printk_index", align 4
@mxt_check_bootloader._entry.260 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.256, ptr @.str.7, i32 607, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid bootloader state %02X != %02X\0A\00", [57 x i8] zeroinitializer }, align 32
@mxt_check_bootloader._entry_ptr.262 = internal global ptr @mxt_check_bootloader._entry.260, section ".printk_index", align 4
@mxt_get_bootloader_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.263, ptr @.str.264, ptr @.str.7, i32 537, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: i2c failure\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mxt_get_bootloader_version\00", [37 x i8] zeroinitializer }, align 32
@mxt_get_bootloader_version._entry_ptr = internal global ptr @mxt_get_bootloader_version._entry, section ".printk_index", align 4
@mxt_get_bootloader_version.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.264, ptr @.str.7, ptr @.str.265, i8 0, i8 -121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.265 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Bootloader ID:%d Version:%d\0A\00", [35 x i8] zeroinitializer }, align 32
@mxt_get_bootloader_version.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.264, ptr @.str.7, ptr @.str.266, i8 0, i8 -120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.266 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Bootloader ID:%d\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.267 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.268 = internal global [8 x i64] [i64 6, i64 8, i64 74, i64 75, i64 76, i64 77, i64 90, i64 91]
@__sancov_gen_cov_switch_values.269 = internal global [4 x i64] [i64 2, i64 8, i64 9, i64 100]
@__sancov_gen_cov_switch_values.270 = internal global [4 x i64] [i64 2, i64 8, i64 9, i64 100]
@__sancov_gen_cov_switch_values.271 = internal global [4 x i64] [i64 2, i64 8, i64 9, i64 100]
@__sancov_gen_cov_switch_values.272 = internal global [4 x i64] [i64 2, i64 8, i64 9, i64 100]
@__sancov_gen_cov_switch_values.273 = internal global [11 x i64] [i64 9, i64 8, i64 5, i64 6, i64 7, i64 9, i64 18, i64 19, i64 44, i64 71, i64 100]
@__sancov_gen_cov_switch_values.274 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.275 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.276 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.277 = internal global [28 x i64] [i64 26, i64 8, i64 6, i64 7, i64 8, i64 9, i64 15, i64 18, i64 19, i64 20, i64 22, i64 23, i64 24, i64 25, i64 27, i64 28, i64 38, i64 40, i64 41, i64 42, i64 43, i64 46, i64 47, i64 48, i64 52, i64 53, i64 71, i64 100]
@__sancov_gen_cov_switch_values.278 = internal global [8 x i64] [i64 6, i64 8, i64 74, i64 75, i64 76, i64 77, i64 90, i64 91]
@__sancov_gen_cov_switch_values.279 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 64, i64 128, i64 192]
@__sancov_gen_cov_switch_values.280 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@___asan_gen_.281 = private unnamed_addr constant [11 x i8] c"mxt_driver\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 3375, i32 26 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 3377, i32 11 }
@___asan_gen_.287 = private unnamed_addr constant [13 x i8] c"mxt_of_match\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 3345, i32 34 }
@___asan_gen_.290 = private unnamed_addr constant [11 x i8] c"mxt_pm_ops\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 3343, i32 8 }
@___asan_gen_.293 = private unnamed_addr constant [7 x i8] c"mxt_id\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 3365, i32 35 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 3146, i32 45 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 3166, i32 43 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 3188, i32 31 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 3189, i32 31 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 3194, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 3201, i32 10 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 3204, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 3210, i32 9 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 3213, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 3222, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 3229, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 3262, i32 41 }
@___asan_gen_.359 = private unnamed_addr constant [15 x i8] c"mxt_attr_group\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 3018, i32 37 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 3271, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 87, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant [16 x i8] c"keymap_property\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 3082, i32 20 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 3092, i32 4 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 3105, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1074, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1088, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1095, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1107, i32 4 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 693, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 652, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 764, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 775, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 404, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 850, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 967, i32 4 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 982, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 993, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1048, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2205, i32 4 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2215, i32 4 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2237, i32 53 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2241, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1864, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1874, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1883, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1727, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1797, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 524, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 496, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 443, i32 3 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 466, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1361, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1139, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2735, i32 3 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2742, i32 4 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2750, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2286, i32 4 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2291, i32 4 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2298, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1254, i32 2 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1227, i32 3 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 727, i32 3 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 420, i32 3 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2266, i32 2 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1531, i32 23 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1532, i32 3 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1541, i32 39 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1545, i32 4 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1554, i32 3 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1560, i32 3 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1566, i32 38 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1568, i32 3 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1576, i32 3 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1590, i32 4 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1592, i32 4 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1597, i32 4 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1601, i32 3 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1627, i32 3 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1635, i32 4 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1653, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1379, i32 41 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1385, i32 4 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1397, i32 6 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1412, i32 4 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1424, i32 4 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1429, i32 4 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1440, i32 5 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1454, i32 5 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 752, i32 2 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 1480, i32 4 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2059, i32 4 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2066, i32 4 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2070, i32 3 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2084, i32 2 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2091, i32 20 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2121, i32 3 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2169, i32 3 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2014, i32 2 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2029, i32 20 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2661, i32 3 }
@___asan_gen_.893 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2693, i32 2 }
@___asan_gen_.899 = private unnamed_addr constant [17 x i8] c"mxt_video_device\00", align 1
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2634, i32 34 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2719, i32 2 }
@___asan_gen_.908 = private unnamed_addr constant [14 x i8] c"mxt_queue_ops\00", align 1
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2478, i32 29 }
@___asan_gen_.911 = private unnamed_addr constant [10 x i8] c"mxt_queue\00", align 1
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2485, i32 31 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2450, i32 3 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2411, i32 4 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2415, i32 3 }
@___asan_gen_.936 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.936, i32 1163, i32 7 }
@___asan_gen_.938 = private unnamed_addr constant [15 x i8] c"mxt_video_fops\00", align 1
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2304, i32 42 }
@___asan_gen_.941 = private unnamed_addr constant [20 x i8] c"mxt_video_ioctl_ops\00", align 1
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2610, i32 36 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2501, i32 21 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2503, i32 4 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2517, i32 20 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2521, i32 20 }
@___asan_gen_.956 = private unnamed_addr constant [10 x i8] c"mxt_attrs\00", align 1
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 3010, i32 26 }
@___asan_gen_.959 = private unnamed_addr constant [20 x i8] c"dev_attr_fw_version\00", align 1
@___asan_gen_.962 = private unnamed_addr constant [20 x i8] c"dev_attr_hw_version\00", align 1
@___asan_gen_.965 = private unnamed_addr constant [16 x i8] c"dev_attr_object\00", align 1
@___asan_gen_.968 = private unnamed_addr constant [19 x i8] c"dev_attr_update_fw\00", align 1
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 3005, i32 8 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2764, i32 35 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 3006, i32 8 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2774, i32 35 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 3007, i32 8 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2819, i32 5 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2786, i32 8 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2790, i32 5 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2791, i32 53 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 3008, i32 8 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2990, i32 27 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2992, i32 3 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2995, i32 3 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2874, i32 3 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2914, i32 3 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2945, i32 5 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2955, i32 4 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2965, i32 2 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 2857, i32 2 }
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 575, i32 4 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 597, i32 4 }
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 606, i32 3 }
@___asan_gen_.1076 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 537, i32 4 }
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 541, i32 3 }
@___asan_gen_.1088 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1089 = private constant [44 x i8] c"../drivers/input/touchscreen/atmel_mxt_ts.c\00", align 1
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1089, i32 545, i32 3 }
@llvm.compiler.used = appending global [354 x ptr] [ptr @__UNIQUE_ID_author319, ptr @__UNIQUE_ID_description320, ptr @__UNIQUE_ID_file321, ptr @__UNIQUE_ID_license322, ptr @__exitcall_mxt_driver_exit, ptr @__initcall__kmod_atmel_mxt_ts__318_3387_mxt_driver_init6, ptr @__mxt_read_reg._entry, ptr @__mxt_read_reg._entry_ptr, ptr @__mxt_write_reg._entry, ptr @__mxt_write_reg._entry_ptr, ptr @mxt_bootloader_read._entry, ptr @mxt_bootloader_read._entry_ptr, ptr @mxt_bootloader_write._entry, ptr @mxt_bootloader_write._entry_ptr, ptr @mxt_buffer_queue._entry, ptr @mxt_buffer_queue._entry_ptr, ptr @mxt_check_bootloader._entry, ptr @mxt_check_bootloader._entry.257, ptr @mxt_check_bootloader._entry.260, ptr @mxt_check_bootloader._entry_ptr, ptr @mxt_check_bootloader._entry_ptr.259, ptr @mxt_check_bootloader._entry_ptr.262, ptr @mxt_check_firmware_format._entry, ptr @mxt_check_firmware_format._entry_ptr, ptr @mxt_check_retrigen._entry, ptr @mxt_check_retrigen._entry_ptr, ptr @mxt_configure_objects._entry, ptr @mxt_configure_objects._entry.106, ptr @mxt_configure_objects._entry.109, ptr @mxt_configure_objects._entry_ptr, ptr @mxt_configure_objects._entry_ptr.108, ptr @mxt_configure_objects._entry_ptr.111, ptr @mxt_debug_init._entry, ptr @mxt_debug_init._entry.213, ptr @mxt_debug_init._entry_ptr, ptr @mxt_debug_init._entry_ptr.215, ptr @mxt_driver_exit, ptr @mxt_get_bootloader_version._entry, ptr @mxt_get_bootloader_version._entry_ptr, ptr @mxt_get_object._entry, ptr @mxt_get_object._entry_ptr, ptr @mxt_initialize._entry, ptr @mxt_initialize._entry.73, ptr @mxt_initialize._entry.77, ptr @mxt_initialize._entry_ptr, ptr @mxt_initialize._entry_ptr.75, ptr @mxt_initialize._entry_ptr.79, ptr @mxt_initialize_input_device._entry, ptr @mxt_initialize_input_device._entry.190, ptr @mxt_initialize_input_device._entry.193, ptr @mxt_initialize_input_device._entry.196, ptr @mxt_initialize_input_device._entry.200, ptr @mxt_initialize_input_device._entry.203, ptr @mxt_initialize_input_device._entry_ptr, ptr @mxt_initialize_input_device._entry_ptr.192, ptr @mxt_initialize_input_device._entry_ptr.195, ptr @mxt_initialize_input_device._entry_ptr.198, ptr @mxt_initialize_input_device._entry_ptr.202, ptr @mxt_initialize_input_device._entry_ptr.205, ptr @mxt_load_fw._entry, ptr @mxt_load_fw._entry.245, ptr @mxt_load_fw._entry.248, ptr @mxt_load_fw._entry_ptr, ptr @mxt_load_fw._entry_ptr.247, ptr @mxt_load_fw._entry_ptr.250, ptr @mxt_lookup_bootloader_address._entry, ptr @mxt_lookup_bootloader_address._entry_ptr, ptr @mxt_parse_device_properties._entry, ptr @mxt_parse_device_properties._entry.31, ptr @mxt_parse_device_properties._entry_ptr, ptr @mxt_parse_device_properties._entry_ptr.33, ptr @mxt_parse_object_table._entry, ptr @mxt_parse_object_table._entry_ptr, ptr @mxt_prepare_cfg_mem._entry, ptr @mxt_prepare_cfg_mem._entry.167, ptr @mxt_prepare_cfg_mem._entry.170, ptr @mxt_prepare_cfg_mem._entry.173, ptr @mxt_prepare_cfg_mem._entry.176, ptr @mxt_prepare_cfg_mem._entry.179, ptr @mxt_prepare_cfg_mem._entry.181, ptr @mxt_prepare_cfg_mem._entry_ptr, ptr @mxt_prepare_cfg_mem._entry_ptr.169, ptr @mxt_prepare_cfg_mem._entry_ptr.172, ptr @mxt_prepare_cfg_mem._entry_ptr.175, ptr @mxt_prepare_cfg_mem._entry_ptr.178, ptr @mxt_prepare_cfg_mem._entry_ptr.180, ptr @mxt_prepare_cfg_mem._entry_ptr.183, ptr @mxt_probe._entry, ptr @mxt_probe._entry.11, ptr @mxt_probe._entry.15, ptr @mxt_probe._entry.18, ptr @mxt_probe._entry.21, ptr @mxt_probe._entry.25, ptr @mxt_probe._entry_ptr, ptr @mxt_probe._entry_ptr.13, ptr @mxt_probe._entry_ptr.17, ptr @mxt_probe._entry_ptr.20, ptr @mxt_probe._entry_ptr.23, ptr @mxt_probe._entry_ptr.27, ptr @mxt_probe_bootloader._entry, ptr @mxt_probe_bootloader._entry_ptr, ptr @mxt_process_messages_t44._entry, ptr @mxt_process_messages_t44._entry.36, ptr @mxt_process_messages_t44._entry.40, ptr @mxt_process_messages_t44._entry.43, ptr @mxt_process_messages_t44._entry_ptr, ptr @mxt_process_messages_t44._entry_ptr.39, ptr @mxt_process_messages_t44._entry_ptr.42, ptr @mxt_process_messages_t44._entry_ptr.44, ptr @mxt_process_messages_until_invalid._entry, ptr @mxt_process_messages_until_invalid._entry_ptr, ptr @mxt_read_and_process_messages._entry, ptr @mxt_read_and_process_messages._entry_ptr, ptr @mxt_read_diagnostic_debug._entry, ptr @mxt_read_diagnostic_debug._entry_ptr, ptr @mxt_read_info_block._entry, ptr @mxt_read_info_block._entry.82, ptr @mxt_read_info_block._entry.85, ptr @mxt_read_info_block._entry_ptr, ptr @mxt_read_info_block._entry_ptr.84, ptr @mxt_read_info_block._entry_ptr.87, ptr @mxt_soft_reset._entry, ptr @mxt_soft_reset._entry_ptr, ptr @mxt_t6_command._entry, ptr @mxt_t6_command._entry_ptr, ptr @mxt_update_cfg._entry, ptr @mxt_update_cfg._entry.129, ptr @mxt_update_cfg._entry.132, ptr @mxt_update_cfg._entry.135, ptr @mxt_update_cfg._entry.139, ptr @mxt_update_cfg._entry.142, ptr @mxt_update_cfg._entry.145, ptr @mxt_update_cfg._entry.149, ptr @mxt_update_cfg._entry.152, ptr @mxt_update_cfg._entry.155, ptr @mxt_update_cfg._entry.158, ptr @mxt_update_cfg._entry.161, ptr @mxt_update_cfg._entry_ptr, ptr @mxt_update_cfg._entry_ptr.131, ptr @mxt_update_cfg._entry_ptr.134, ptr @mxt_update_cfg._entry_ptr.137, ptr @mxt_update_cfg._entry_ptr.141, ptr @mxt_update_cfg._entry_ptr.144, ptr @mxt_update_cfg._entry_ptr.147, ptr @mxt_update_cfg._entry_ptr.151, ptr @mxt_update_cfg._entry_ptr.154, ptr @mxt_update_cfg._entry_ptr.157, ptr @mxt_update_cfg._entry_ptr.160, ptr @mxt_update_cfg._entry_ptr.163, ptr @mxt_update_fw_store._entry, ptr @mxt_update_fw_store._entry.240, ptr @mxt_update_fw_store._entry_ptr, ptr @mxt_update_fw_store._entry_ptr.242, ptr @mxt_upload_cfg_mem._entry, ptr @mxt_upload_cfg_mem._entry_ptr, ptr @mxt_wait_for_completion._entry, ptr @mxt_wait_for_completion._entry_ptr, ptr @mxt_driver, ptr @.str, ptr @mxt_of_match, ptr @mxt_pm_ops, ptr @mxt_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @mxt_attr_group, ptr @.str.26, ptr @init_completion.__key, ptr @.str.28, ptr @mxt_parse_device_properties.keymap_property, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.41, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @.str.110, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.138, ptr @.str.140, ptr @.str.143, ptr @.str.146, ptr @.str.148, ptr @.str.150, ptr @.str.153, ptr @.str.156, ptr @.str.159, ptr @.str.162, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.168, ptr @.str.171, ptr @.str.174, ptr @.str.177, ptr @.str.182, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.191, ptr @.str.194, ptr @.str.197, ptr @.str.199, ptr @.str.201, ptr @.str.204, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @mxt_debug_init.__key, ptr @.str.212, ptr @mxt_video_device, ptr @.str.214, ptr @mxt_queue_ops, ptr @mxt_queue, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @mxt_video_fops, ptr @mxt_video_ioctl_ops, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @mxt_attrs, ptr @dev_attr_fw_version, ptr @dev_attr_hw_version, ptr @dev_attr_object, ptr @dev_attr_update_fw, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.241, ptr @.str.243, ptr @.str.244, ptr @.str.246, ptr @.str.249, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.258, ptr @.str.261, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266], section "llvm.metadata"
@0 = internal global [270 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_id to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_parse_device_properties.keymap_property to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_parse_device_properties._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_parse_device_properties._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_process_messages_t44._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_process_messages_t44._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_process_messages_t44._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_process_messages_t44._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_read_and_process_messages._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_initialize._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_initialize._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_read_info_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_read_info_block._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_read_info_block._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_parse_object_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_probe_bootloader._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_lookup_bootloader_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_bootloader_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_bootloader_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_check_retrigen._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_process_messages_until_invalid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_configure_objects._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_configure_objects._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_configure_objects._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_t6_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_wait_for_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_update_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_update_cfg._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_update_cfg._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_update_cfg._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_update_cfg._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_update_cfg._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_update_cfg._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_update_cfg._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_update_cfg._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_update_cfg._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_update_cfg._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_update_cfg._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_prepare_cfg_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_prepare_cfg_mem._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_prepare_cfg_mem._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_prepare_cfg_mem._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_prepare_cfg_mem._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_prepare_cfg_mem._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_prepare_cfg_mem._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_get_object._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_upload_cfg_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_initialize_input_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_initialize_input_device._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_initialize_input_device._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_initialize_input_device._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_initialize_input_device._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_initialize_input_device._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_debug_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_debug_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_video_device to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_debug_init._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_queue_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_queue to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_buffer_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_read_diagnostic_debug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_video_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_video_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_object to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_update_fw to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_update_fw_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_update_fw_store._entry.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_load_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_load_fw._entry.245 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_load_fw._entry.248 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_check_firmware_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_check_bootloader._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_check_bootloader._entry.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_check_bootloader._entry.260 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxt_get_bootloader_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mxt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mxt_driver) #16
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mxt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @i2c_del_driver(ptr noundef nonnull @mxt_driver) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxt_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.1) #16
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2528, i32 noundef 3520) #16
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %phys = getelementptr inbounds %struct.mxt_data, ptr %call.i, i32 0, i32 2
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %nr = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr, align 2
  %conv = zext i16 %5 to i32
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 64, ptr noundef nonnull @.str.2, i32 noundef %3, i32 noundef %conv)
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %call.i, align 8
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %irq7 = getelementptr inbounds %struct.mxt_data, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %irq7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %irq7, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %bl_completion = getelementptr inbounds %struct.mxt_data, ptr %call.i, i32 0, i32 48
  %11 = ptrtoint ptr %bl_completion to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %bl_completion, align 4
  %wait.i = getelementptr inbounds %struct.mxt_data, ptr %call.i, i32 0, i32 48, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @init_completion.__key) #16
  %reset_completion = getelementptr inbounds %struct.mxt_data, ptr %call.i, i32 0, i32 49
  %12 = ptrtoint ptr %reset_completion to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %reset_completion, align 4
  %wait.i162 = getelementptr inbounds %struct.mxt_data, ptr %call.i, i32 0, i32 49, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i162, ptr noundef nonnull @.str.28, ptr noundef nonnull @init_completion.__key) #16
  %crc_completion = getelementptr inbounds %struct.mxt_data, ptr %call.i, i32 0, i32 50
  %13 = ptrtoint ptr %crc_completion to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %crc_completion, align 4
  %wait.i163 = getelementptr inbounds %struct.mxt_data, ptr %call.i, i32 0, i32 50, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i163, ptr noundef nonnull @.str.28, ptr noundef nonnull @init_completion.__key) #16
  %suspend_mode = getelementptr inbounds %struct.mxt_data, ptr %call.i, i32 0, i32 53
  %14 = ptrtoint ptr %suspend_mode to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %suspend_mode, align 8
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 8
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  %call.i164 = tail call zeroext i1 @device_property_present(ptr noundef %dev1.i, ptr noundef nonnull @mxt_parse_device_properties.keymap_property) #16
  br i1 %call.i164, label %if.then.i, label %if.end4.if.end13_crit_edge

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then.i:                                        ; preds = %if.end4
  %call.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1.i, ptr noundef nonnull @mxt_parse_device_properties.keymap_property, ptr noundef null, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 1
  br i1 %cmp.i, label %if.then3.i, label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp4.not.i = icmp eq i32 %call.i.i, 0
  %spec.select.i = select i1 %cmp4.not.i, i32 -22, i32 %call.i.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @mxt_parse_device_properties.keymap_property, i32 noundef %spec.select.i) #19
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i.i, i32 4) #16
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %if.end.i.cleanup_crit_edge, label %devm_kmalloc_array.exit.i, !prof !533

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

devm_kmalloc_array.exit.i:                        ; preds = %if.end.i
  %19 = extractvalue { i32, i1 } %17, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1.i, i32 noundef %19, i32 noundef 3264) #16
  %tobool.not.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not.i, label %devm_kmalloc_array.exit.i.cleanup_crit_edge, label %if.end7.i

devm_kmalloc_array.exit.i.cleanup_crit_edge:      ; preds = %devm_kmalloc_array.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7.i:                                        ; preds = %devm_kmalloc_array.exit.i
  %call8.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1.i, ptr noundef nonnull @mxt_parse_device_properties.keymap_property, ptr noundef nonnull %call5.i.i, i32 noundef %call.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end14.i, label %do.end13.i

do.end13.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @mxt_parse_device_properties.keymap_property, i32 noundef %call8.i) #19
  br label %cleanup

if.end14.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  %t19_keymap.i = getelementptr inbounds %struct.mxt_data, ptr %call.i, i32 0, i32 51
  %20 = ptrtoint ptr %t19_keymap.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call5.i.i, ptr %t19_keymap.i, align 8
  %t19_num_keys.i = getelementptr inbounds %struct.mxt_data, ptr %call.i, i32 0, i32 52
  %21 = ptrtoint ptr %t19_num_keys.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call.i.i, ptr %t19_num_keys.i, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end14.i, %if.end4.if.end13_crit_edge
  %regulators = getelementptr inbounds %struct.mxt_data, ptr %call.i, i32 0, i32 31
  %22 = ptrtoint ptr %regulators to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.3, ptr %regulators, align 8
  %arrayidx15 = getelementptr %struct.mxt_data, ptr %call.i, i32 0, i32 31, i32 1
  %23 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.4, ptr %arrayidx15, align 4
  %call20 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 2, ptr noundef %regulators) #16
  %24 = zext i32 %call20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call20, label %do.end [
    i32 0, label %if.end27
    i32 -517, label %if.end13.cleanup_crit_edge
  ]

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %call20) #19
  br label %cleanup

if.end27:                                         ; preds = %if.end13
  %call29 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef 7) #16
  %reset_gpio = getelementptr inbounds %struct.mxt_data, ptr %call.i, i32 0, i32 32
  %25 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call29, ptr %reset_gpio, align 8
  %cmp.i165 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i165, label %if.then32, label %if.end39

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  %26 = ptrtoint ptr %call29 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %26) #19
  br label %cleanup

if.end39:                                         ; preds = %if.end27
  %call41 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef 7) #16
  %wake_gpio = getelementptr inbounds %struct.mxt_data, ptr %call.i, i32 0, i32 33
  %27 = ptrtoint ptr %wake_gpio to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call41, ptr %wake_gpio, align 4
  %cmp.i166 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i166, label %if.then44, label %if.end51

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  %28 = ptrtoint ptr %call41 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %28) #19
  br label %cleanup

if.end51:                                         ; preds = %if.end39
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call55 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %30, ptr noundef null, ptr noundef nonnull @mxt_interrupt, i32 noundef 532480, ptr noundef %name, ptr noundef nonnull %call.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end62, label %do.end60

do.end60:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #19
  br label %cleanup

if.end62:                                         ; preds = %if.end51
  %call65 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %regulators) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end72, label %do.end70

do.end70:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %call65) #19
  br label %cleanup

if.end72:                                         ; preds = %if.end62
  tail call void @msleep(i32 noundef 50) #16
  %31 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reset_gpio, align 8
  %tobool74.not = icmp eq ptr %32, null
  br i1 %tobool74.not, label %if.end72.if.end77_crit_edge, label %if.then75

if.end72.if.end77_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end77

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @msleep(i32 noundef 20) #16
  %33 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reset_gpio, align 8
  tail call void @gpiod_set_value(ptr noundef %34, i32 noundef 0) #16
  tail call void @msleep(i32 noundef 100) #16
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %if.end72.if.end77_crit_edge
  %wakeup_method = getelementptr inbounds %struct.mxt_data, ptr %call.i, i32 0, i32 54
  %call.i167 = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef %wakeup_method, i32 noundef 1) #16
  %call80 = tail call fastcc i32 @mxt_initialize(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.end77.err_disable_regulators_crit_edge

if.end77.err_disable_regulators_crit_edge:        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_disable_regulators

if.end83:                                         ; preds = %if.end77
  %call85 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @mxt_attr_group) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end83.cleanup_crit_edge, label %do.end90

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end90:                                         ; preds = %if.end83
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %call85) #19
  %input_dev.i = getelementptr inbounds %struct.mxt_data, ptr %call.i, i32 0, i32 1
  %35 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %input_dev.i, align 4
  %tobool.not.i168 = icmp eq ptr %36, null
  br i1 %tobool.not.i168, label %do.end90.mxt_free_input_device.exit_crit_edge, label %if.then.i169

do.end90.mxt_free_input_device.exit_crit_edge:    ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_free_input_device.exit

if.then.i169:                                     ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @input_unregister_device(ptr noundef nonnull %36) #16
  %37 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %input_dev.i, align 4
  br label %mxt_free_input_device.exit

mxt_free_input_device.exit:                       ; preds = %if.then.i169, %do.end90.mxt_free_input_device.exit_crit_edge
  tail call fastcc void @mxt_free_object_table(ptr noundef nonnull %call.i)
  br label %err_disable_regulators

err_disable_regulators:                           ; preds = %mxt_free_input_device.exit, %if.end77.err_disable_regulators_crit_edge
  %error.0 = phi i32 [ %call80, %if.end77.err_disable_regulators_crit_edge ], [ %call85, %mxt_free_input_device.exit ]
  %call95 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators) #16
  br label %cleanup

cleanup:                                          ; preds = %err_disable_regulators, %if.end83.cleanup_crit_edge, %do.end70, %do.end60, %if.then44, %if.then32, %do.end, %if.end13.cleanup_crit_edge, %do.end13.i, %devm_kmalloc_array.exit.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then3.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %26, %if.then32 ], [ %28, %if.then44 ], [ %call55, %do.end60 ], [ %call65, %do.end70 ], [ %error.0, %err_disable_regulators ], [ -6, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call20, %if.end13.cleanup_crit_edge ], [ %call20, %do.end ], [ 0, %if.end83.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ -12, %devm_kmalloc_array.exit.i.cleanup_crit_edge ], [ %call8.i, %do.end13.i ], [ %spec.select.i, %if.then3.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxt_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #16
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @mxt_attr_group) #16
  %input_dev.i = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input_dev.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.mxt_free_input_device.exit_crit_edge, label %if.then.i

entry.mxt_free_input_device.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_free_input_device.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @input_unregister_device(ptr noundef nonnull %5) #16
  %6 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %input_dev.i, align 4
  br label %mxt_free_input_device.exit

mxt_free_input_device.exit:                       ; preds = %if.then.i, %entry.mxt_free_input_device.exit_crit_edge
  %vdev.i = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 30, i32 7
  tail call void @video_unregister_device(ptr noundef %vdev.i) #16
  %v4l2.i = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 30, i32 5
  tail call void @v4l2_device_unregister(ptr noundef %v4l2.i) #16
  %object_table.i = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %object_table.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %object_table.i, align 8
  %info.i = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %info.i, align 4
  %raw_info_block.i = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %raw_info_block.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %raw_info_block.i, align 8
  tail call void @kfree(ptr noundef %10) #16
  %11 = ptrtoint ptr %raw_info_block.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %raw_info_block.i, align 8
  %msg_buf.i = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 23
  %12 = ptrtoint ptr %msg_buf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %msg_buf.i, align 8
  tail call void @kfree(ptr noundef %13) #16
  %14 = ptrtoint ptr %msg_buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %msg_buf.i, align 8
  %T5_address.i = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 35
  %T7_address.i = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 39
  %T44_address.i = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 45
  %max_reportid.i = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 19
  %15 = ptrtoint ptr %max_reportid.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %max_reportid.i, align 1
  %16 = ptrtoint ptr %T5_address.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 0, ptr %T5_address.i, align 2
  %17 = call ptr @memset(ptr %T7_address.i, i32 0, i32 9)
  %18 = ptrtoint ptr %T44_address.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 0, ptr %T44_address.i, align 2
  %regulators = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 31
  %call1 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators) #16
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxt_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %in_bootloader = getelementptr inbounds %struct.mxt_data, ptr %dev_id, i32 0, i32 14
  %0 = ptrtoint ptr %in_bootloader to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %in_bootloader, align 1, !range !534
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %bl_completion = getelementptr inbounds %struct.mxt_data, ptr %dev_id, i32 0, i32 48
  tail call void @complete(ptr noundef %bl_completion) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %object_table = getelementptr inbounds %struct.mxt_data, ptr %dev_id, i32 0, i32 3
  %2 = ptrtoint ptr %object_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %object_table, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %T44_address = getelementptr inbounds %struct.mxt_data, ptr %dev_id, i32 0, i32 45
  %4 = ptrtoint ptr %T44_address to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %T44_address, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool4.not = icmp eq i16 %5, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end3
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_id, align 8
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %T5_msg_size.i = getelementptr inbounds %struct.mxt_data, ptr %dev_id, i32 0, i32 36
  %8 = ptrtoint ptr %T5_msg_size.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %T5_msg_size.i, align 4
  %conv.i = zext i8 %9 to i16
  %add.i = add nuw nsw i16 %conv.i, 1
  %msg_buf.i = getelementptr inbounds %struct.mxt_data, ptr %dev_id, i32 0, i32 23
  %10 = ptrtoint ptr %msg_buf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %msg_buf.i, align 8
  %call.i = tail call fastcc i32 @__mxt_read_reg(ptr noundef %7, i16 noundef zeroext %5, i16 noundef zeroext %add.i, ptr noundef %11) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.34, i32 noundef %call.i) #19
  br label %cleanup

if.end.i:                                         ; preds = %if.then5
  %12 = ptrtoint ptr %msg_buf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %msg_buf.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %conv5.i = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.i = icmp eq i8 %15, 0
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end8.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i
  %max_reportid.i = getelementptr inbounds %struct.mxt_data, ptr %dev_id, i32 0, i32 19
  %16 = ptrtoint ptr %max_reportid.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %max_reportid.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp11.i = icmp ugt i8 %15, %17
  br i1 %cmp11.i, label %do.end16.i, label %if.end8.i.if.end19.i_crit_edge

if.end8.i.if.end19.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.i

do.end16.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i, ptr noundef nonnull @.str.37, i32 noundef %conv5.i) #19
  %18 = ptrtoint ptr %max_reportid.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %max_reportid.i, align 1
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.end16.i, %if.end8.i.if.end19.i_crit_edge
  %count.0.i = phi i8 [ %19, %do.end16.i ], [ %15, %if.end8.i.if.end19.i_crit_edge ]
  %20 = ptrtoint ptr %msg_buf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %msg_buf.i, align 8
  %add.ptr.i = getelementptr i8, ptr %21, i32 1
  %call21.i = tail call fastcc i32 @mxt_proc_message(ptr noundef %dev_id, ptr noundef %add.ptr.i) #16
  %sub.i = add i8 %count.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %sub.i)
  %tobool31.not.i = icmp eq i8 %sub.i, 0
  br i1 %tobool31.not.i, label %if.end19.i.end.i_crit_edge, label %if.then32.i

if.end19.i.end.i_crit_edge:                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %end.i

if.then32.i:                                      ; preds = %if.end19.i
  %22 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_id, align 8
  %dev1.i.i = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4
  %conv.i.i = zext i8 %sub.i to i32
  %24 = ptrtoint ptr %max_reportid.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %max_reportid.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %sub.i)
  %cmp.i.i = icmp ult i8 %25, %sub.i
  br i1 %cmp.i.i, label %if.then32.i.end.i_crit_edge, label %if.end.i.i

if.then32.i.end.i_crit_edge:                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %end.i

if.end.i.i:                                       ; preds = %if.then32.i
  %T5_address.i.i = getelementptr inbounds %struct.mxt_data, ptr %dev_id, i32 0, i32 35
  %26 = ptrtoint ptr %T5_address.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %T5_address.i.i, align 2
  %28 = ptrtoint ptr %T5_msg_size.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %T5_msg_size.i, align 4
  %conv5.i.i = zext i8 %29 to i32
  %mul.i.i = mul nuw nsw i32 %conv5.i.i, %conv.i.i
  %conv7.i.i = trunc i32 %mul.i.i to i16
  %30 = ptrtoint ptr %msg_buf.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %msg_buf.i, align 8
  %call.i.i = tail call fastcc i32 @__mxt_read_reg(ptr noundef %23, i16 noundef zeroext %27, i16 noundef zeroext %conv7.i.i, ptr noundef %31) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %do.end.i.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.68, i32 noundef %conv.i.i, i32 noundef %call.i.i) #19
  br label %mxt_read_and_process_messages.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %num_valid.047.i.i = phi i8 [ %spec.select.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i_crit_edge ]
  %i.046.i.i = phi i32 [ %inc23.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i_crit_edge ]
  %32 = ptrtoint ptr %msg_buf.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %msg_buf.i, align 8
  %34 = ptrtoint ptr %T5_msg_size.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %T5_msg_size.i, align 4
  %conv16.i.i = zext i8 %35 to i32
  %mul17.i.i = mul i32 %i.046.i.i, %conv16.i.i
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 %mul17.i.i
  %call18.i.i = tail call fastcc i32 @mxt_proc_message(ptr noundef %dev_id, ptr noundef %add.ptr.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18.i.i)
  %cmp19.i.i = icmp eq i32 %call18.i.i, 1
  %inc.i.i = zext i1 %cmp19.i.i to i8
  %spec.select.i.i = add i8 %num_valid.047.i.i, %inc.i.i
  %inc23.i.i = add nuw nsw i32 %i.046.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc23.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.end.loopexit.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.end.loopexit.i.i:                             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %phi.cast.i.i = zext i8 %spec.select.i.i to i32
  br label %mxt_read_and_process_messages.exit.i

mxt_read_and_process_messages.exit.i:             ; preds = %for.end.loopexit.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %do.end.i.i ], [ %phi.cast.i.i, %for.end.loopexit.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp34.i = icmp slt i32 %retval.0.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %conv.i.i)
  %cmp38.not.i = icmp eq i32 %retval.0.i.i, %conv.i.i
  %or.cond.i = select i1 %cmp34.i, i1 true, i1 %cmp38.not.i
  br i1 %or.cond.i, label %mxt_read_and_process_messages.exit.i.end.i_crit_edge, label %do.end43.i

mxt_read_and_process_messages.exit.i.end.i_crit_edge: ; preds = %mxt_read_and_process_messages.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %end.i

do.end43.i:                                       ; preds = %mxt_read_and_process_messages.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i, ptr noundef nonnull @.str.41) #19
  br label %end.i

end.i:                                            ; preds = %do.end43.i, %mxt_read_and_process_messages.exit.i.end.i_crit_edge, %if.then32.i.end.i_crit_edge, %if.end19.i.end.i_crit_edge
  %update_input.i = getelementptr inbounds %struct.mxt_data, ptr %dev_id, i32 0, i32 25
  %36 = ptrtoint ptr %update_input.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %update_input.i, align 1, !range !534
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool47.not.i = icmp eq i8 %37, 0
  br i1 %tobool47.not.i, label %end.i.cleanup_crit_edge, label %if.then48.i

end.i.cleanup_crit_edge:                          ; preds = %end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then48.i:                                      ; preds = %end.i
  call void @__sanitizer_cov_trace_pc() #18
  %input_dev.i.i = getelementptr inbounds %struct.mxt_data, ptr %dev_id, i32 0, i32 1
  %38 = ptrtoint ptr %input_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %input_dev.i.i, align 4
  %t19_num_keys.i.i = getelementptr inbounds %struct.mxt_data, ptr %dev_id, i32 0, i32 52
  %40 = ptrtoint ptr %t19_num_keys.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %t19_num_keys.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.i.i = icmp ne i32 %41, 0
  tail call void @input_mt_report_pointer_emulation(ptr noundef %39, i1 noundef zeroext %tobool.i.i) #16
  %42 = ptrtoint ptr %input_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %input_dev.i.i, align 4
  tail call void @input_event(ptr noundef %43, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  %44 = ptrtoint ptr %update_input.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %update_input.i, align 1
  br label %cleanup

if.else:                                          ; preds = %if.end3
  %last_message_count.i = getelementptr inbounds %struct.mxt_data, ptr %dev_id, i32 0, i32 26
  %45 = ptrtoint ptr %last_message_count.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %last_message_count.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp.i12 = icmp eq i8 %46, 0
  br i1 %cmp.i12, label %if.else.if.then.i_crit_edge, label %lor.lhs.false.i

if.else.if.then.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.else
  %max_reportid.i13 = getelementptr inbounds %struct.mxt_data, ptr %dev_id, i32 0, i32 19
  %47 = ptrtoint ptr %max_reportid.i13 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %max_reportid.i13, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %46, i8 %48)
  %cmp4.i = icmp ugt i8 %46, %48
  br i1 %cmp4.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.if.end.i19_crit_edge

lor.lhs.false.i.if.end.i19_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i19

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.else.if.then.i_crit_edge
  br label %if.end.i19

if.end.i19:                                       ; preds = %if.then.i, %lor.lhs.false.i.if.end.i19_crit_edge
  %count.0.i14 = phi i8 [ 1, %if.then.i ], [ %46, %lor.lhs.false.i.if.end.i19_crit_edge ]
  %add.i15 = add i8 %count.0.i14, 1
  %49 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_id, align 8
  %dev1.i.i16 = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 4
  %conv.i.i17 = zext i8 %add.i15 to i32
  %max_reportid.i.i = getelementptr inbounds %struct.mxt_data, ptr %dev_id, i32 0, i32 19
  %51 = ptrtoint ptr %max_reportid.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %max_reportid.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %52, i8 %add.i15)
  %cmp.i.i18 = icmp ult i8 %52, %add.i15
  br i1 %cmp.i.i18, label %if.end.i19.cleanup_crit_edge, label %if.end.i.i26

if.end.i19.cleanup_crit_edge:                     ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.i26:                                     ; preds = %if.end.i19
  %T5_address.i.i20 = getelementptr inbounds %struct.mxt_data, ptr %dev_id, i32 0, i32 35
  %53 = ptrtoint ptr %T5_address.i.i20 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %T5_address.i.i20, align 2
  %T5_msg_size.i.i = getelementptr inbounds %struct.mxt_data, ptr %dev_id, i32 0, i32 36
  %55 = ptrtoint ptr %T5_msg_size.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %T5_msg_size.i.i, align 4
  %conv5.i.i21 = zext i8 %56 to i32
  %mul.i.i22 = mul nuw nsw i32 %conv5.i.i21, %conv.i.i17
  %conv7.i.i23 = trunc i32 %mul.i.i22 to i16
  %msg_buf.i.i = getelementptr inbounds %struct.mxt_data, ptr %dev_id, i32 0, i32 23
  %57 = ptrtoint ptr %msg_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %msg_buf.i.i, align 8
  %call.i.i24 = tail call fastcc i32 @__mxt_read_reg(ptr noundef %50, i16 noundef zeroext %54, i16 noundef zeroext %conv7.i.i23, ptr noundef %58) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24)
  %tobool.not.i.i25 = icmp eq i32 %call.i.i24, 0
  br i1 %tobool.not.i.i25, label %for.cond.preheader.i.i, label %mxt_read_and_process_messages.exit.i41

for.cond.preheader.i.i:                           ; preds = %if.end.i.i26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add.i15)
  %cmp1245.not.i.i = icmp eq i8 %add.i15, 0
  br i1 %cmp1245.not.i.i, label %for.cond.preheader.i.i.update_count.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i38_crit_edge

for.cond.preheader.i.i.for.body.i.i38_crit_edge:  ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i38

for.cond.preheader.i.i.update_count.i_crit_edge:  ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %update_count.i

for.body.i.i38:                                   ; preds = %for.body.i.i38.for.body.i.i38_crit_edge, %for.cond.preheader.i.i.for.body.i.i38_crit_edge
  %num_valid.047.i.i27 = phi i8 [ %spec.select.i.i35, %for.body.i.i38.for.body.i.i38_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i38_crit_edge ]
  %i.046.i.i28 = phi i32 [ %inc23.i.i36, %for.body.i.i38.for.body.i.i38_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i38_crit_edge ]
  %59 = ptrtoint ptr %msg_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %msg_buf.i.i, align 8
  %61 = ptrtoint ptr %T5_msg_size.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %T5_msg_size.i.i, align 4
  %conv16.i.i29 = zext i8 %62 to i32
  %mul17.i.i30 = mul i32 %i.046.i.i28, %conv16.i.i29
  %add.ptr.i.i31 = getelementptr i8, ptr %60, i32 %mul17.i.i30
  %call18.i.i32 = tail call fastcc i32 @mxt_proc_message(ptr noundef %dev_id, ptr noundef %add.ptr.i.i31) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18.i.i32)
  %cmp19.i.i33 = icmp eq i32 %call18.i.i32, 1
  %inc.i.i34 = zext i1 %cmp19.i.i33 to i8
  %spec.select.i.i35 = add i8 %num_valid.047.i.i27, %inc.i.i34
  %inc23.i.i36 = add nuw nsw i32 %i.046.i.i28, 1
  %exitcond.not.i.i37 = icmp eq i32 %inc23.i.i36, %conv.i.i17
  br i1 %exitcond.not.i.i37, label %for.end.loopexit.i.i40, label %for.body.i.i38.for.body.i.i38_crit_edge

for.body.i.i38.for.body.i.i38_crit_edge:          ; preds = %for.body.i.i38
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i38

for.end.loopexit.i.i40:                           ; preds = %for.body.i.i38
  call void @__sanitizer_cov_trace_pc() #18
  %phi.cast.i.i39 = zext i8 %spec.select.i.i35 to i32
  br label %if.else.i

mxt_read_and_process_messages.exit.i41:           ; preds = %if.end.i.i26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i16, ptr noundef nonnull @.str.68, i32 noundef %conv.i.i17, i32 noundef %call.i.i24) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24)
  %cmp8.i = icmp slt i32 %call.i.i24, 0
  br i1 %cmp8.i, label %mxt_read_and_process_messages.exit.i41.cleanup_crit_edge, label %mxt_read_and_process_messages.exit.i41.if.else.i_crit_edge

mxt_read_and_process_messages.exit.i41.if.else.i_crit_edge: ; preds = %mxt_read_and_process_messages.exit.i41
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

mxt_read_and_process_messages.exit.i41.cleanup_crit_edge: ; preds = %mxt_read_and_process_messages.exit.i41
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else.i:                                        ; preds = %mxt_read_and_process_messages.exit.i41.if.else.i_crit_edge, %for.end.loopexit.i.i40
  %retval.0.i86.i = phi i32 [ %call.i.i24, %mxt_read_and_process_messages.exit.i41.if.else.i_crit_edge ], [ %phi.cast.i.i39, %for.end.loopexit.i.i40 ]
  %conv6.i = zext i8 %count.0.i14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i86.i, i32 %conv6.i)
  %cmp12.not.i = icmp ugt i32 %retval.0.i86.i, %conv6.i
  br i1 %cmp12.not.i, label %do.body.preheader.i, label %if.else.i.update_count.i_crit_edge

if.else.i.update_count.i_crit_edge:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %update_count.i

do.body.preheader.i:                              ; preds = %if.else.i
  %num_touchids.i = getelementptr inbounds %struct.mxt_data, ptr %dev_id, i32 0, i32 27
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %do.body.preheader.i
  %total_handled.0.i = phi i32 [ %add22.i, %do.cond.i.do.body.i_crit_edge ], [ %retval.0.i86.i, %do.body.preheader.i ]
  %63 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev_id, align 8
  %dev1.i54.i = getelementptr inbounds %struct.i2c_client, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %max_reportid.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %max_reportid.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %66)
  %cmp.i56.i = icmp ult i8 %66, 2
  br i1 %cmp.i56.i, label %do.body.i.cleanup_crit_edge, label %if.end.i65.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i65.i:                                     ; preds = %do.body.i
  %67 = ptrtoint ptr %T5_address.i.i20 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %T5_address.i.i20, align 2
  %69 = ptrtoint ptr %T5_msg_size.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %T5_msg_size.i.i, align 4
  %conv5.i59.i = zext i8 %70 to i16
  %mul.i60.i = shl nuw nsw i16 %conv5.i59.i, 1
  %71 = ptrtoint ptr %msg_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %msg_buf.i.i, align 8
  %call.i63.i = tail call fastcc i32 @__mxt_read_reg(ptr noundef %64, i16 noundef zeroext %68, i16 noundef zeroext %mul.i60.i, ptr noundef %72) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63.i)
  %tobool.not.i64.i = icmp eq i32 %call.i63.i, 0
  br i1 %tobool.not.i64.i, label %for.body.i79.preheader.i, label %mxt_read_and_process_messages.exit83.i

for.body.i79.preheader.i:                         ; preds = %if.end.i65.i
  call void @__sanitizer_cov_trace_pc() #18
  %73 = ptrtoint ptr %msg_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %msg_buf.i.i, align 8
  %call18.i73.i = tail call fastcc i32 @mxt_proc_message(ptr noundef %dev_id, ptr noundef %74) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18.i73.i)
  %cmp19.i74.i = icmp eq i32 %call18.i73.i, 1
  %inc.i75.i = zext i1 %cmp19.i74.i to i32
  %75 = ptrtoint ptr %msg_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %msg_buf.i.i, align 8
  %77 = ptrtoint ptr %T5_msg_size.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %T5_msg_size.i.i, align 4
  %conv16.i70.1.i = zext i8 %78 to i32
  %add.ptr.i72.1.i = getelementptr i8, ptr %76, i32 %conv16.i70.1.i
  %call18.i73.1.i = tail call fastcc i32 @mxt_proc_message(ptr noundef %dev_id, ptr noundef %add.ptr.i72.1.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18.i73.1.i)
  %cmp19.i74.1.i = icmp eq i32 %call18.i73.1.i, 1
  %inc.i75.1.i = zext i1 %cmp19.i74.1.i to i32
  %spec.select.i76.1.i = add nuw nsw i32 %inc.i75.1.i, %inc.i75.i
  br label %if.end21.i

mxt_read_and_process_messages.exit83.i:           ; preds = %if.end.i65.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i54.i, ptr noundef nonnull @.str.68, i32 noundef 2, i32 noundef %call.i63.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63.i)
  %cmp18.i = icmp slt i32 %call.i63.i, 0
  br i1 %cmp18.i, label %mxt_read_and_process_messages.exit83.i.cleanup_crit_edge, label %mxt_read_and_process_messages.exit83.i.if.end21.i_crit_edge

mxt_read_and_process_messages.exit83.i.if.end21.i_crit_edge: ; preds = %mxt_read_and_process_messages.exit83.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21.i

mxt_read_and_process_messages.exit83.i.cleanup_crit_edge: ; preds = %mxt_read_and_process_messages.exit83.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end21.i:                                       ; preds = %mxt_read_and_process_messages.exit83.i.if.end21.i_crit_edge, %for.body.i79.preheader.i
  %retval.0.i8295.i = phi i32 [ %spec.select.i76.1.i, %for.body.i79.preheader.i ], [ %call.i63.i, %mxt_read_and_process_messages.exit83.i.if.end21.i_crit_edge ]
  %add22.i = add i32 %retval.0.i8295.i, %total_handled.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i8295.i)
  %cmp23.i = icmp ult i32 %retval.0.i8295.i, 2
  br i1 %cmp23.i, label %if.end21.i.update_count.i_crit_edge, label %do.cond.i

if.end21.i.update_count.i_crit_edge:              ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %update_count.i

do.cond.i:                                        ; preds = %if.end21.i
  %79 = ptrtoint ptr %num_touchids.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %num_touchids.i, align 1
  %conv27.i = zext i8 %80 to i32
  %cmp28.i = icmp slt i32 %add22.i, %conv27.i
  br i1 %cmp28.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.update_count.i_crit_edge

do.cond.i.update_count.i_crit_edge:               ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %update_count.i

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

update_count.i:                                   ; preds = %do.cond.i.update_count.i_crit_edge, %if.end21.i.update_count.i_crit_edge, %if.else.i.update_count.i_crit_edge, %for.cond.preheader.i.i.update_count.i_crit_edge
  %total_handled.1.i = phi i32 [ %retval.0.i86.i, %if.else.i.update_count.i_crit_edge ], [ 0, %for.cond.preheader.i.i.update_count.i_crit_edge ], [ %add22.i, %if.end21.i.update_count.i_crit_edge ], [ %add22.i, %do.cond.i.update_count.i_crit_edge ]
  %conv30.i = trunc i32 %total_handled.1.i to i8
  %81 = ptrtoint ptr %last_message_count.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv30.i, ptr %last_message_count.i, align 2
  %update_input.i42 = getelementptr inbounds %struct.mxt_data, ptr %dev_id, i32 0, i32 25
  %82 = ptrtoint ptr %update_input.i42 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %update_input.i42, align 1, !range !534
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.i43 = icmp eq i8 %83, 0
  br i1 %tobool.not.i43, label %update_count.i.cleanup_crit_edge, label %if.then32.i47

update_count.i.cleanup_crit_edge:                 ; preds = %update_count.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then32.i47:                                    ; preds = %update_count.i
  call void @__sanitizer_cov_trace_pc() #18
  %input_dev.i.i44 = getelementptr inbounds %struct.mxt_data, ptr %dev_id, i32 0, i32 1
  %84 = ptrtoint ptr %input_dev.i.i44 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %input_dev.i.i44, align 4
  %t19_num_keys.i.i45 = getelementptr inbounds %struct.mxt_data, ptr %dev_id, i32 0, i32 52
  %86 = ptrtoint ptr %t19_num_keys.i.i45 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %t19_num_keys.i.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.i.i46 = icmp ne i32 %87, 0
  tail call void @input_mt_report_pointer_emulation(ptr noundef %85, i1 noundef zeroext %tobool.i.i46) #16
  %88 = ptrtoint ptr %input_dev.i.i44 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %input_dev.i.i44, align 4
  tail call void @input_event(ptr noundef %89, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  %90 = ptrtoint ptr %update_input.i42 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %update_input.i42, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then32.i47, %update_count.i.cleanup_crit_edge, %mxt_read_and_process_messages.exit83.i.cleanup_crit_edge, %do.body.i.cleanup_crit_edge, %mxt_read_and_process_messages.exit.i41.cleanup_crit_edge, %if.end.i19.cleanup_crit_edge, %if.then48.i, %end.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %do.end.i, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.end.cleanup_crit_edge ], [ 0, %do.end.i ], [ 0, %if.end.i.cleanup_crit_edge ], [ 1, %if.then48.i ], [ 1, %end.i.cleanup_crit_edge ], [ 0, %mxt_read_and_process_messages.exit.i41.cleanup_crit_edge ], [ 1, %if.then32.i47 ], [ 1, %update_count.i.cleanup_crit_edge ], [ 0, %if.end.i19.cleanup_crit_edge ], [ 0, %do.body.i.cleanup_crit_edge ], [ 0, %mxt_read_and_process_messages.exit83.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxt_initialize(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %raw_info_block.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 5
  %vdev.i.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 30, i32 7
  %v4l2.i.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 30, i32 5
  %object_table.i.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 3
  %info.i.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 4
  %msg_buf.i.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 23
  %T5_address.i.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 35
  %T7_address.i.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 39
  %T44_address.i.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 45
  %max_reportid.i.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 19
  %info_crc.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 21
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %bootloader_addr.i.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 22
  %flags3.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %mxt_send_bootloader_cmd.exit, %entry
  %cmp = phi i1 [ true, %mxt_send_bootloader_cmd.exit ], [ false, %entry ]
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 8
  %6 = ptrtoint ptr %raw_info_block.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %raw_info_block.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %while.cond.if.end.i_crit_edge, label %if.then.i

while.cond.if.end.i_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #18
  call void @video_unregister_device(ptr noundef %vdev.i.i) #16
  call void @v4l2_device_unregister(ptr noundef %v4l2.i.i) #16
  %8 = ptrtoint ptr %object_table.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %object_table.i.i, align 8
  %9 = ptrtoint ptr %info.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %info.i.i, align 4
  %10 = ptrtoint ptr %raw_info_block.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %raw_info_block.i, align 8
  call void @kfree(ptr noundef %11) #16
  %12 = ptrtoint ptr %raw_info_block.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %raw_info_block.i, align 8
  %13 = ptrtoint ptr %msg_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %msg_buf.i.i, align 8
  call void @kfree(ptr noundef %14) #16
  %15 = ptrtoint ptr %msg_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %msg_buf.i.i, align 8
  %16 = ptrtoint ptr %max_reportid.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %max_reportid.i.i, align 1
  %17 = ptrtoint ptr %T5_address.i.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 0, ptr %T5_address.i.i, align 2
  %18 = call ptr @memset(ptr %T7_address.i.i, i32 0, i32 9)
  %19 = ptrtoint ptr %T44_address.i.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 0, ptr %T44_address.i.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.cond.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 7) #20
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.end4.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call fastcc i32 @__mxt_read_reg(ptr noundef %5, i16 noundef zeroext 0, i16 noundef zeroext 7, ptr noundef nonnull %call7.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.err_free_mem.i_crit_edge

if.end4.i.err_free_mem.i_crit_edge:               ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_free_mem.i

if.end8.i:                                        ; preds = %if.end4.i
  %object_num.i = getelementptr inbounds %struct.mxt_info, ptr %call7.i.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %object_num.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %object_num.i, align 2
  %conv9.i = zext i8 %22 to i32
  %mul.i = mul nuw nsw i32 %conv9.i, 6
  %add10.i = add nuw nsw i32 %mul.i, 10
  %call11.i = call noalias ptr @krealloc(ptr noundef nonnull %call7.i.i.i, i32 noundef %add10.i, i32 noundef 3264) #21
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %if.end8.i.err_free_mem.i_crit_edge, label %if.end14.i

if.end8.i.err_free_mem.i_crit_edge:               ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_free_mem.i

if.end14.i:                                       ; preds = %if.end8.i
  %23 = trunc i32 %mul.i to i16
  %conv15.i = add nuw nsw i16 %23, 3
  %add.ptr.i = getelementptr i8, ptr %call11.i, i32 7
  %call16.i = call fastcc i32 @__mxt_read_reg(ptr noundef %5, i16 noundef zeroext 7, i16 noundef zeroext %conv15.i, ptr noundef %add.ptr.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end14.i.err_free_mem.i_crit_edge

if.end14.i.err_free_mem.i_crit_edge:              ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_free_mem.i

if.end19.i:                                       ; preds = %if.end14.i
  %add.ptr20.i = getelementptr i8, ptr %call11.i, i32 -3
  %add.ptr21.i = getelementptr i8, ptr %add.ptr20.i, i32 %add10.i
  %24 = ptrtoint ptr %add.ptr21.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %add.ptr21.i, align 1
  %conv22.i = zext i8 %25 to i32
  %arrayidx23.i = getelementptr i8, ptr %add.ptr21.i, i32 1
  %26 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx23.i, align 1
  %conv24.i = zext i8 %27 to i32
  %shl.i = shl nuw nsw i32 %conv24.i, 8
  %or.i = or i32 %shl.i, %conv22.i
  %arrayidx25.i = getelementptr i8, ptr %add.ptr21.i, i32 2
  %28 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx25.i, align 1
  %conv26.i = zext i8 %29 to i32
  %shl27.i = shl nuw nsw i32 %conv26.i, 16
  %or28.i = or i32 %or.i, %shl27.i
  %30 = ptrtoint ptr %info_crc.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or28.i, ptr %info_crc.i, align 8
  %sub29.i = add nuw nsw i32 %mul.i, 7
  %add.ptr1.i = getelementptr i8, ptr %call11.i, i32 -1
  %add.ptr2.i = getelementptr i8, ptr %add.ptr1.i, i32 %sub29.i
  %cmp328.i = icmp ult ptr %call11.i, %add.ptr2.i
  br i1 %cmp328.i, label %if.end19.i.while.body.i_crit_edge, label %if.end19.i.while.end.i_crit_edge

if.end19.i.while.end.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

if.end19.i.while.body.i_crit_edge:                ; preds = %if.end19.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end19.i.while.body.i_crit_edge
  %ptr.030.i = phi ptr [ %add.ptr5.i, %while.body.i.while.body.i_crit_edge ], [ %call11.i, %if.end19.i.while.body.i_crit_edge ]
  %crc.029.i = phi i32 [ %spec.select.i.i65, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end19.i.while.body.i_crit_edge ]
  %31 = ptrtoint ptr %ptr.030.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ptr.030.i, align 1
  %add.ptr4.i = getelementptr i8, ptr %ptr.030.i, i32 1
  %33 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %add.ptr4.i, align 1
  %conv.i.i64 = zext i8 %34 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i64, 8
  %conv1.i.i = zext i8 %32 to i32
  %or.i.i = or i32 %shl.i.i, %conv1.i.i
  %shl2.i.i = shl i32 %crc.029.i, 1
  %xor.i.i = xor i32 %or.i.i, %shl2.i.i
  %35 = and i32 %crc.029.i, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i = icmp eq i32 %35, 0
  %xor3.i.i = xor i32 %xor.i.i, 8388635
  %spec.select.i.i65 = select i1 %tobool.not.i.i, i32 %xor.i.i, i32 %xor3.i.i
  %add.ptr5.i = getelementptr i8, ptr %ptr.030.i, i32 2
  %cmp3.i = icmp ult ptr %add.ptr5.i, %add.ptr2.i
  br i1 %cmp3.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end19.i.while.end.i_crit_edge
  %crc.0.lcssa.i = phi i32 [ 0, %if.end19.i.while.end.i_crit_edge ], [ %spec.select.i.i65, %while.body.i.while.end.i_crit_edge ]
  %ptr.0.lcssa.i = phi ptr [ %call11.i, %if.end19.i.while.end.i_crit_edge ], [ %add.ptr5.i, %while.body.i.while.end.i_crit_edge ]
  %cmp6.i = icmp eq ptr %ptr.0.lcssa.i, %add.ptr2.i
  br i1 %cmp6.i, label %if.then7.i, label %while.end.i.mxt_calculate_crc.exit_crit_edge

while.end.i.mxt_calculate_crc.exit_crit_edge:     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_calculate_crc.exit

if.then7.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %36 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %add.ptr2.i, align 1
  %conv1.i20.i = zext i8 %37 to i32
  %shl2.i21.i = shl i32 %crc.0.lcssa.i, 1
  %xor.i22.i = xor i32 %shl2.i21.i, %conv1.i20.i
  %38 = and i32 %crc.0.lcssa.i, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i23.i = icmp eq i32 %38, 0
  %xor3.i24.i = xor i32 %xor.i22.i, 8388635
  %spec.select.i25.i = select i1 %tobool.not.i23.i, i32 %xor.i22.i, i32 %xor3.i24.i
  br label %mxt_calculate_crc.exit

mxt_calculate_crc.exit:                           ; preds = %if.then7.i, %while.end.i.mxt_calculate_crc.exit_crit_edge
  %crc.1.i = phi i32 [ %spec.select.i25.i, %if.then7.i ], [ %crc.0.lcssa.i, %while.end.i.mxt_calculate_crc.exit_crit_edge ]
  %and.i66 = and i32 %crc.1.i, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or28.i)
  %cmp.i = icmp ne i32 %or28.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %or28.i, i32 %and.i66)
  %cmp34.not.i = icmp eq i32 %or28.i, %and.i66
  %or.cond.i = select i1 %cmp.i, i1 %cmp34.not.i, i1 false
  br i1 %or.cond.i, label %if.end38.i, label %do.end.i

do.end.i:                                         ; preds = %mxt_calculate_crc.exit
  call void @__sanitizer_cov_trace_pc() #18
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.80, i32 noundef %and.i66, i32 noundef %or28.i) #19
  br label %err_free_mem.i

if.end38.i:                                       ; preds = %mxt_calculate_crc.exit
  %39 = ptrtoint ptr %raw_info_block.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call11.i, ptr %raw_info_block.i, align 8
  %40 = ptrtoint ptr %info.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call11.i, ptr %info.i.i, align 4
  %dev43.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %41 = ptrtoint ptr %call11.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %call11.i, align 1
  %conv45.i = zext i8 %42 to i32
  %variant_id.i = getelementptr inbounds %struct.mxt_info, ptr %call11.i, i32 0, i32 1
  %43 = ptrtoint ptr %variant_id.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %variant_id.i, align 1
  %conv47.i = zext i8 %44 to i32
  %version.i = getelementptr inbounds %struct.mxt_info, ptr %call11.i, i32 0, i32 2
  %45 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %version.i, align 1
  %conv49.i = zext i8 %46 to i32
  %47 = lshr i32 %conv49.i, 4
  %and.i = and i32 %conv49.i, 15
  %build.i = getelementptr inbounds %struct.mxt_info, ptr %call11.i, i32 0, i32 3
  %48 = ptrtoint ptr %build.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %build.i, align 1
  %conv54.i = zext i8 %49 to i32
  %object_num56.i = getelementptr inbounds %struct.mxt_info, ptr %call11.i, i32 0, i32 6
  %50 = ptrtoint ptr %object_num56.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %object_num56.i, align 1
  %conv57.i = zext i8 %51 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev43.i, ptr noundef nonnull @.str.83, i32 noundef %conv45.i, i32 noundef %conv47.i, i32 noundef %47, i32 noundef %and.i, i32 noundef %conv54.i, i32 noundef %conv57.i) #19
  %call59.i = call fastcc i32 @mxt_parse_object_table(ptr noundef %data, ptr noundef %add.ptr.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %tobool60.not.i = icmp eq i32 %call59.i, 0
  br i1 %tobool60.not.i, label %while.end, label %do.end64.i

do.end64.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev43.i, ptr noundef nonnull @.str.86, i32 noundef %call59.i) #19
  call fastcc void @mxt_free_object_table(ptr noundef %data) #16
  br label %if.end

err_free_mem.i:                                   ; preds = %do.end.i, %if.end14.i.err_free_mem.i_crit_edge, %if.end8.i.err_free_mem.i_crit_edge, %if.end4.i.err_free_mem.i_crit_edge
  %id_buf.0.i = phi ptr [ %call7.i.i.i, %if.end4.i.err_free_mem.i_crit_edge ], [ %call11.i, %if.end14.i.err_free_mem.i_crit_edge ], [ %call11.i, %do.end.i ], [ %call7.i.i.i, %if.end8.i.err_free_mem.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %id_buf.0.i) #16
  br label %if.end

if.end:                                           ; preds = %err_free_mem.i, %do.end64.i, %if.end.i.if.end_crit_edge
  %call2 = call fastcc i32 @mxt_probe_bootloader(ptr noundef %data, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.if.end9_crit_edge, label %do.end

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

do.end:                                           ; preds = %if.end
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.70) #19
  %call5 = call fastcc i32 @mxt_probe_bootloader(ptr noundef %data, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.end.if.end9_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.end9:                                          ; preds = %do.end.if.end9_crit_edge, %if.end.if.end9_crit_edge
  br i1 %cmp, label %do.end13, label %if.end15

do.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.74) #19
  %in_bootloader = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 14
  %52 = ptrtoint ptr %in_bootloader to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %in_bootloader, align 1
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #16
  %53 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %buf.i, align 1
  %54 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #16
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 196607, ptr %3, align 4
  %56 = ptrtoint ptr %bootloader_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %bootloader_addr.i.i, align 4
  %conv.i.i = zext i8 %57 to i16
  %58 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %59 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %60, align 8
  %63 = and i16 %62, 16
  %64 = ptrtoint ptr %flags3.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %flags3.i.i, align 2
  %65 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %buf.i, ptr %buf.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %60, i32 0, i32 3
  %66 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %msg.i.i, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.i.i, label %if.end15.mxt_send_bootloader_cmd.exit_crit_edge, label %if.else.i.i

if.end15.mxt_send_bootloader_cmd.exit_crit_edge:  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_send_bootloader_cmd.exit

if.else.i.i:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp7.i.i = icmp slt i32 %call.i.i, 0
  %spec.select.i.i = select i1 %cmp7.i.i, i32 %call.i.i, i32 -5
  %68 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data, align 8
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %69, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef %spec.select.i.i) #19
  br label %mxt_send_bootloader_cmd.exit

mxt_send_bootloader_cmd.exit:                     ; preds = %if.else.i.i, %if.end15.mxt_send_bootloader_cmd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #16
  call void @msleep(i32 noundef 3000) #16
  br label %while.cond

while.end:                                        ; preds = %if.end38.i
  %70 = ptrtoint ptr %object_table.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr.i, ptr %object_table.i.i, align 8
  %71 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #16
  %73 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -1, ptr %val.i, align 4, !annotation !535
  %use_retrigen_workaround.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 34
  %74 = ptrtoint ptr %use_retrigen_workaround.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %use_retrigen_workaround.i, align 8
  %irq.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 6
  %75 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %irq.i, align 4
  %call.i = call ptr @irq_get_irq_data(i32 noundef %76) #16
  %tobool.not.i57 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i57, label %while.end.mxt_check_retrigen.exit_crit_edge, label %if.end.i58

while.end.mxt_check_retrigen.exit_crit_edge:      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_check_retrigen.exit

if.end.i58:                                       ; preds = %while.end
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i, i32 0, i32 3
  %77 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %common.i.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 4
  %and.i.i = and i32 %80, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end4.i59, label %if.end.i58.if.end20_crit_edge

if.end.i58.if.end20_crit_edge:                    ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.end4.i59:                                      ; preds = %if.end.i58
  %T18_address.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 43
  %81 = ptrtoint ptr %T18_address.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %T18_address.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %tobool5.not.i = icmp eq i16 %82, 0
  br i1 %tobool5.not.i, label %if.end4.i59.do.end.i62_crit_edge, label %if.then6.i

if.end4.i59.do.end.i62_crit_edge:                 ; preds = %if.end4.i59
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i62

if.then6.i:                                       ; preds = %if.end4.i59
  %call9.i = call fastcc i32 @__mxt_read_reg(ptr noundef %72, i16 noundef zeroext %82, i16 noundef zeroext 1, ptr noundef nonnull %val.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.then6.i.mxt_check_retrigen.exit_crit_edge

if.then6.i.mxt_check_retrigen.exit_crit_edge:     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_check_retrigen.exit

if.end12.i:                                       ; preds = %if.then6.i
  %83 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %val.i, align 4
  %and.i60 = and i32 %84, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i60)
  %tobool13.not.i = icmp eq i32 %and.i60, 0
  br i1 %tobool13.not.i, label %if.end12.i.do.end.i62_crit_edge, label %if.end12.i.if.end20_crit_edge

if.end12.i.if.end20_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.end12.i.do.end.i62_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i62

do.end.i62:                                       ; preds = %if.end12.i.do.end.i62_crit_edge, %if.end4.i59.do.end.i62_crit_edge
  %dev.i61 = getelementptr inbounds %struct.i2c_client, ptr %72, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i61, ptr noundef nonnull @.str.100) #19
  %85 = ptrtoint ptr %use_retrigen_workaround.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %use_retrigen_workaround.i, align 8
  br label %if.end20

mxt_check_retrigen.exit:                          ; preds = %if.then6.i.mxt_check_retrigen.exit_crit_edge, %while.end.mxt_check_retrigen.exit_crit_edge
  %retval.0.i63 = phi i32 [ -22, %while.end.mxt_check_retrigen.exit_crit_edge ], [ %call9.i, %if.then6.i.mxt_check_retrigen.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #16
  br label %cleanup

if.end20:                                         ; preds = %do.end.i62, %if.end12.i.if.end20_crit_edge, %if.end.i58.if.end20_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #16
  %call21 = call fastcc i32 @mxt_acquire_irq(ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %call26 = call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull @.str.76, ptr noundef %dev, i32 noundef 3264, ptr noundef %data, ptr noundef nonnull @mxt_config_cb) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end24.cleanup_crit_edge, label %do.end31

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.78, i32 noundef %call26) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %if.end24.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %mxt_check_retrigen.exit, %do.end13, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end13 ], [ %call26, %do.end31 ], [ %retval.0.i63, %mxt_check_retrigen.exit ], [ %call21, %if.end20.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ], [ %call5, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxt_free_object_table(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 30, i32 7
  tail call void @video_unregister_device(ptr noundef %vdev) #16
  %v4l2 = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 30, i32 5
  tail call void @v4l2_device_unregister(ptr noundef %v4l2) #16
  %object_table = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %object_table to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %object_table, align 8
  %info = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 4
  %1 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %info, align 4
  %raw_info_block = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 5
  %2 = ptrtoint ptr %raw_info_block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %raw_info_block, align 8
  tail call void @kfree(ptr noundef %3) #16
  %4 = ptrtoint ptr %raw_info_block to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %raw_info_block, align 8
  %msg_buf = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 23
  %5 = ptrtoint ptr %msg_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %msg_buf, align 8
  tail call void @kfree(ptr noundef %6) #16
  %7 = ptrtoint ptr %msg_buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %msg_buf, align 8
  %T5_address = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 35
  %T7_address = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 39
  %T44_address = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 45
  %max_reportid = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 19
  %8 = ptrtoint ptr %max_reportid to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %max_reportid, align 1
  %9 = ptrtoint ptr %T5_address to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 0, ptr %T5_address, align 2
  %10 = call ptr @memset(ptr %T7_address, i32 0, i32 9)
  %11 = ptrtoint ptr %T44_address to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 0, ptr %T44_address, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mxt_read_reg(ptr noundef %client, i16 noundef zeroext %reg, i16 noundef zeroext %len, ptr noundef %val) unnamed_addr #2 align 64 {
entry:
  %xfer = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xfer) #16
  %0 = getelementptr inbounds i8, ptr %xfer, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #16
  %2 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %conv1 = trunc i16 %reg to i8
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv1, ptr %buf, align 1
  %4 = lshr i16 %reg, 8
  %conv4 = trunc i16 %4 to i8
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv4, ptr %2, align 1
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr, align 2
  %8 = ptrtoint ptr %xfer to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %xfer, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %xfer, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags, align 2
  %len10 = getelementptr inbounds %struct.i2c_msg, ptr %xfer, i32 0, i32 2
  %10 = ptrtoint ptr %len10 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 2, ptr %len10, align 4
  %buf12 = getelementptr inbounds %struct.i2c_msg, ptr %xfer, i32 0, i32 3
  %11 = ptrtoint ptr %buf12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buf, ptr %buf12, align 4
  %arrayidx14 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %7, ptr %arrayidx14, align 4
  %flags17 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %flags17 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags17, align 2
  %len19 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %len19 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %len, ptr %len19, align 4
  %buf21 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %buf21 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %val, ptr %buf21, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %16 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter, align 8
  %call43 = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %xfer, i32 noundef 2) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call43)
  %cmp44 = icmp eq i32 %call43, 2
  br i1 %cmp44, label %entry.if.end32_crit_edge, label %if.else.lr.ph

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

if.else.lr.ph:                                    ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %18 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i.i, align 4
  %wakeup_method.i = getelementptr inbounds %struct.mxt_data, ptr %19, i32 0, i32 54
  %20 = ptrtoint ptr %wakeup_method.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wakeup_method.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cond = icmp eq i32 %21, 1
  br i1 %cond, label %sw.bb.i, label %if.else.lr.ph.if.else27_crit_edge

if.else.lr.ph.if.else27_crit_edge:                ; preds = %if.else.lr.ph
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else27

sw.bb.i:                                          ; preds = %if.else.lr.ph
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxt_wakeup_toggle.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__mxt_read_reg, %if.then14.i)) #16
          to label %mxt_wakeup_toggle.exit [label %if.then14.i], !srcloc !536

if.then14.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxt_wakeup_toggle.__UNIQUE_ID_ddebug301, ptr noundef %dev.i, ptr noundef nonnull @.str.48) #16
  br label %mxt_wakeup_toggle.exit

mxt_wakeup_toggle.exit:                           ; preds = %if.then14.i, %sw.bb.i
  call void @msleep(i32 noundef 25) #16
  %22 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %xfer, i32 noundef 2) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %mxt_wakeup_toggle.exit.if.end32_crit_edge, label %mxt_wakeup_toggle.exit.if.else27_crit_edge

mxt_wakeup_toggle.exit.if.else27_crit_edge:       ; preds = %mxt_wakeup_toggle.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else27

mxt_wakeup_toggle.exit.if.end32_crit_edge:        ; preds = %mxt_wakeup_toggle.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

if.else27:                                        ; preds = %mxt_wakeup_toggle.exit.if.else27_crit_edge, %if.else.lr.ph.if.else27_crit_edge
  %call46.lcssa = phi i32 [ %call43, %if.else.lr.ph.if.else27_crit_edge ], [ %call, %mxt_wakeup_toggle.exit.if.else27_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call46.lcssa)
  %cmp28 = icmp sgt i32 %call46.lcssa, -1
  %spec.store.select = select i1 %cmp28, i32 -5, i32 %call46.lcssa
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i32 noundef %spec.store.select) #19
  br label %if.end32

if.end32:                                         ; preds = %if.else27, %mxt_wakeup_toggle.exit.if.end32_crit_edge, %entry.if.end32_crit_edge
  %ret.0 = phi i32 [ %spec.store.select, %if.else27 ], [ 0, %entry.if.end32_crit_edge ], [ 0, %mxt_wakeup_toggle.exit.if.end32_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xfer) #16
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxt_proc_message(ptr noundef %data, ptr noundef %message) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %message to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %message, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp = icmp eq i8 %1, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %T6_reportid = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 37
  %2 = ptrtoint ptr %T6_reportid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %T6_reportid, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp4 = icmp eq i8 %1, %3
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @mxt_proc_t6_messages(ptr noundef %data, ptr noundef %message)
  br label %cleanup

if.else:                                          ; preds = %if.end
  %input_dev = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input_dev, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxt_dump_message.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxt_proc_message, %if.then.i)) #16
          to label %cleanup [label %if.then.i], !srcloc !536

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %T5_msg_size.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 36
  %8 = ptrtoint ptr %T5_msg_size.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %T5_msg_size.i, align 4
  %conv.i = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxt_dump_message.__UNIQUE_ID_ddebug298, ptr noundef %dev.i, ptr noundef nonnull @.str.61, i32 noundef %conv.i, ptr noundef %message) #16
  br label %cleanup

if.else8:                                         ; preds = %if.else
  %T9_reportid_min = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 41
  %10 = ptrtoint ptr %T9_reportid_min to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %T9_reportid_min, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %11)
  %cmp11.not = icmp ult i8 %1, %11
  br i1 %cmp11.not, label %if.else8.if.else18_crit_edge, label %land.lhs.true

if.else8.if.else18_crit_edge:                     ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else18

land.lhs.true:                                    ; preds = %if.else8
  %T9_reportid_max = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 42
  %12 = ptrtoint ptr %T9_reportid_max to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %T9_reportid_max, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %13)
  %cmp15.not = icmp ugt i8 %1, %13
  br i1 %cmp15.not, label %land.lhs.true.if.else18_crit_edge, label %if.then17

land.lhs.true.if.else18_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else18

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @mxt_proc_t9_message(ptr noundef %data, ptr noundef %message)
  br label %cleanup

if.else18:                                        ; preds = %land.lhs.true.if.else18_crit_edge, %if.else8.if.else18_crit_edge
  %T100_reportid_min = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 46
  %14 = ptrtoint ptr %T100_reportid_min to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %T100_reportid_min, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %15)
  %cmp21.not = icmp ult i8 %1, %15
  br i1 %cmp21.not, label %if.else18.if.else29_crit_edge, label %land.lhs.true23

if.else18.if.else29_crit_edge:                    ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else29

land.lhs.true23:                                  ; preds = %if.else18
  %T100_reportid_max = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 47
  %16 = ptrtoint ptr %T100_reportid_max to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %T100_reportid_max, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %17)
  %cmp26.not = icmp ugt i8 %1, %17
  br i1 %cmp26.not, label %land.lhs.true23.if.else29_crit_edge, label %if.then28

land.lhs.true23.if.else29_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else29

if.then28:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @mxt_proc_t100_message(ptr noundef %data, ptr noundef %message)
  br label %cleanup

if.else29:                                        ; preds = %land.lhs.true23.if.else29_crit_edge, %if.else18.if.else29_crit_edge
  %T19_reportid = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 44
  %18 = ptrtoint ptr %T19_reportid to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %T19_reportid, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %19)
  %cmp32 = icmp eq i8 %1, %19
  br i1 %cmp32, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.else29
  %t19_num_keys.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 52
  %20 = ptrtoint ptr %t19_num_keys.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %t19_num_keys.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp12.not.i = icmp eq i32 %21, 0
  br i1 %cmp12.not.i, label %if.then34.mxt_input_button.exit_crit_edge, label %for.body.lr.ph.i

if.then34.mxt_input_button.exit_crit_edge:        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_input_button.exit

for.body.lr.ph.i:                                 ; preds = %if.then34
  %t19_keymap.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 51
  %arrayidx4.i = getelementptr i8, ptr %message, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %t19_keymap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %t19_keymap.i, align 8
  %arrayidx.i = getelementptr i32, ptr %23, i32 %i.013.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp1.i = icmp eq i32 %25, 0
  br i1 %cmp1.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %26 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx4.i, align 1
  %conv.i66 = zext i8 %27 to i32
  %28 = xor i32 %conv.i66, -1
  %29 = lshr i32 %28, %i.013.i
  %30 = and i32 %29, 1
  tail call void @input_event(ptr noundef nonnull %5, i32 noundef 1, i32 noundef %25, i32 noundef %30) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.013.i, 1
  %31 = ptrtoint ptr %t19_num_keys.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %t19_num_keys.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %32
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.mxt_input_button.exit_crit_edge

for.inc.i.mxt_input_button.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_input_button.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

mxt_input_button.exit:                            ; preds = %for.inc.i.mxt_input_button.exit_crit_edge, %if.then34.mxt_input_button.exit_crit_edge
  %update_input = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 25
  %33 = ptrtoint ptr %update_input to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %update_input, align 1
  br label %cleanup

if.else35:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxt_dump_message.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxt_proc_message, %if.then.i70)) #16
          to label %cleanup [label %if.then.i70], !srcloc !536

if.then.i70:                                      ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 8
  %dev.i67 = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 4
  %T5_msg_size.i68 = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 36
  %36 = ptrtoint ptr %T5_msg_size.i68 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %T5_msg_size.i68, align 4
  %conv.i69 = zext i8 %37 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxt_dump_message.__UNIQUE_ID_ddebug298, ptr noundef %dev.i67, ptr noundef nonnull @.str.61, i32 noundef %conv.i69, ptr noundef %message) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i70, %if.else35, %mxt_input_button.exit, %if.then28, %if.then17, %if.then.i, %if.then7, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then28 ], [ 1, %mxt_input_button.exit ], [ 1, %if.then17 ], [ 1, %if.then6 ], [ 1, %if.then7 ], [ 1, %if.then.i ], [ 1, %if.else35 ], [ 1, %if.then.i70 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxt_proc_t6_messages(ptr noundef %data, ptr nocapture noundef readonly %msg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %arrayidx = getelementptr i8, ptr %msg, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %arrayidx2 = getelementptr i8, ptr %msg, i32 2
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 1
  %conv = zext i8 %5 to i32
  %arrayidx3 = getelementptr i8, ptr %msg, i32 3
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %conv4, 8
  %or = or i32 %shl, %conv
  %arrayidx5 = getelementptr i8, ptr %msg, i32 4
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %9 to i32
  %shl7 = shl nuw nsw i32 %conv6, 16
  %or8 = or i32 %or, %shl7
  %config_crc = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 20
  %10 = ptrtoint ptr %config_crc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %config_crc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or8, i32 %11)
  %cmp.not = icmp eq i32 %or8, %11
  br i1 %cmp.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %config_crc to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or8, ptr %config_crc, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxt_proc_t6_messages.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxt_proc_t6_messages, %if.then13)) #16
          to label %if.end14 [label %if.then13], !srcloc !536

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxt_proc_t6_messages.__UNIQUE_ID_ddebug302, ptr noundef %dev1, ptr noundef nonnull @.str.50, i32 noundef %or8) #16
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.then, %entry.if.end14_crit_edge
  %crc_completion = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 50
  tail call void @complete(ptr noundef %crc_completion) #16
  %conv15 = zext i8 %3 to i32
  %and = and i32 %conv15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end14.if.end18_crit_edge, label %if.then17

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  %reset_completion = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 49
  tail call void @complete(ptr noundef %reset_completion) #16
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end14.if.end18_crit_edge
  %t6_status = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 24
  %13 = ptrtoint ptr %t6_status to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %t6_status, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %14)
  %cmp21.not = icmp eq i8 %3, %14
  br i1 %cmp21.not, label %if.end18.if.end68_crit_edge, label %do.body24

if.end18.if.end68_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end68

do.body24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxt_proc_t6_messages.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxt_proc_t6_messages, %if.then36)) #16
          to label %if.end68 [label %if.then36], !srcloc !536

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp39 = icmp eq i8 %3, 0
  %cond = select i1 %cmp39, ptr @.str.52, ptr @.str.53
  %cond44 = select i1 %tobool16.not, ptr @.str.53, ptr @.str.54
  %and46 = and i32 %conv15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  %cond48 = select i1 %tobool47.not, ptr @.str.53, ptr @.str.55
  %and50 = and i32 %conv15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %cond52 = select i1 %tobool51.not, ptr @.str.53, ptr @.str.56
  %and54 = and i32 %conv15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  %cond56 = select i1 %tobool55.not, ptr @.str.53, ptr @.str.57
  %and58 = and i32 %conv15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  %cond60 = select i1 %tobool59.not, ptr @.str.53, ptr @.str.58
  %and62 = and i32 %conv15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  %cond64 = select i1 %tobool63.not, ptr @.str.53, ptr @.str.59
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxt_proc_t6_messages.__UNIQUE_ID_ddebug303, ptr noundef %dev1, ptr noundef nonnull @.str.51, i32 noundef %conv15, ptr noundef nonnull %cond, ptr noundef nonnull %cond44, ptr noundef nonnull %cond48, ptr noundef nonnull %cond52, ptr noundef nonnull %cond56, ptr noundef nonnull %cond60, ptr noundef nonnull %cond64) #16
  br label %if.end68

if.end68:                                         ; preds = %if.then36, %do.body24, %if.end18.if.end68_crit_edge
  %15 = ptrtoint ptr %t6_status to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %3, ptr %t6_status, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxt_proc_t9_message(ptr nocapture noundef %data, ptr nocapture noundef readonly %message) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %input_dev2 = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %input_dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_dev2, align 4
  %4 = ptrtoint ptr %message to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %message, align 1
  %conv = zext i8 %5 to i32
  %T9_reportid_min = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 41
  %6 = ptrtoint ptr %T9_reportid_min to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %T9_reportid_min, align 4
  %conv3 = zext i8 %7 to i32
  %sub = sub nsw i32 %conv, %conv3
  %arrayidx4 = getelementptr i8, ptr %message, i32 1
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4, align 1
  %arrayidx5 = getelementptr i8, ptr %message, i32 2
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %11 to i32
  %shl = shl nuw nsw i32 %conv6, 4
  %arrayidx7 = getelementptr i8, ptr %message, i32 4
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %13 to i32
  %14 = lshr i32 %conv8, 4
  %or = or i32 %14, %shl
  %arrayidx9 = getelementptr i8, ptr %message, i32 3
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %16 to i32
  %shl11 = shl nuw nsw i32 %conv10, 4
  %and14 = and i32 %conv8, 15
  %or15 = or i32 %shl11, %and14
  %max_x = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 7
  %17 = ptrtoint ptr %max_x to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_x, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %18)
  %cmp = icmp ult i32 %18, 1024
  %19 = lshr i32 %or, 2
  %spec.select = select i1 %cmp, i32 %19, i32 %or
  %max_y = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 8
  %20 = ptrtoint ptr %max_y to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_y, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %21)
  %cmp18 = icmp ult i32 %21, 1024
  %22 = lshr i32 %or15, 2
  %y.0 = select i1 %cmp18, i32 %22, i32 %or15
  %arrayidx23 = getelementptr i8, ptr %message, i32 5
  %23 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %24 to i32
  %arrayidx25 = getelementptr i8, ptr %message, i32 6
  %25 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %26 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxt_proc_t9_message.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxt_proc_t9_message, %if.then29)) #16
          to label %do.end [label %if.then29], !srcloc !536

if.then29:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %conv30 = zext i8 %9 to i32
  %and31 = and i32 %conv30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %cond = select i1 %tobool32.not, i32 46, i32 68
  %and34 = and i32 %conv30, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %cond36 = select i1 %tobool35.not, i32 46, i32 80
  %and38 = and i32 %conv30, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %cond40 = select i1 %tobool39.not, i32 46, i32 82
  %and42 = and i32 %conv30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  %cond44 = select i1 %tobool43.not, i32 46, i32 77
  %and46 = and i32 %conv30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  %cond48 = select i1 %tobool47.not, i32 46, i32 86
  %and50 = and i32 %conv30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %cond52 = select i1 %tobool51.not, i32 46, i32 65
  %and54 = and i32 %conv30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  %cond56 = select i1 %tobool55.not, i32 46, i32 83
  %and58 = and i32 %conv30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  %cond60 = select i1 %tobool59.not, i32 46, i32 85
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxt_proc_t9_message.__UNIQUE_ID_ddebug304, ptr noundef %dev1, ptr noundef nonnull @.str.63, i32 noundef %sub, i32 noundef %cond, i32 noundef %cond36, i32 noundef %cond40, i32 noundef %cond44, i32 noundef %cond48, i32 noundef %cond52, i32 noundef %cond56, i32 noundef %cond60, i32 noundef %spec.select, i32 noundef %y.0, i32 noundef %conv24, i32 noundef %conv26) #16
  br label %do.end

do.end:                                           ; preds = %if.then29, %entry
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 47, i32 noundef %sub) #16
  %conv62 = zext i8 %9 to i32
  %and63 = and i32 %conv62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.else, label %if.then65

if.then65:                                        ; preds = %do.end
  %and67 = and i32 %conv62, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.then65.if.end70_crit_edge, label %if.then69

if.then65.if.end70_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end70

if.then69:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %3, i32 noundef 0, i1 noundef zeroext false) #16
  %27 = ptrtoint ptr %input_dev2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %input_dev2, align 4
  %t19_num_keys.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 52
  %29 = ptrtoint ptr %t19_num_keys.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %t19_num_keys.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.i = icmp ne i32 %30, 0
  tail call void @input_mt_report_pointer_emulation(ptr noundef %28, i1 noundef zeroext %tobool.i) #16
  %31 = ptrtoint ptr %input_dev2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %input_dev2, align 4
  tail call void @input_event(ptr noundef %32, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.then65.if.end70_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool71.not = icmp eq i8 %26, 0
  %spec.store.select = select i1 %tobool71.not, i32 1, i32 %conv26
  %call74 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %3, i32 noundef 0, i1 noundef zeroext true) #16
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 53, i32 noundef %spec.select) #16
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 54, i32 noundef %y.0) #16
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 58, i32 noundef %spec.store.select) #16
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 48, i32 noundef %conv24) #16
  br label %if.end75

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call.i113 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %3, i32 noundef 0, i1 noundef zeroext false) #16
  br label %if.end75

if.end75:                                         ; preds = %if.else, %if.end70
  %update_input = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 25
  %33 = ptrtoint ptr %update_input to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %update_input, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxt_proc_t100_message(ptr nocapture noundef %data, ptr nocapture noundef readonly %message) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %input_dev2 = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %input_dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_dev2, align 4
  %4 = ptrtoint ptr %message to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %message, align 1
  %conv = zext i8 %5 to i32
  %T100_reportid_min = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 46
  %6 = ptrtoint ptr %T100_reportid_min to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %T100_reportid_min, align 4
  %conv3 = zext i8 %7 to i32
  %sub = sub nsw i32 %conv, %conv3
  %sub4 = add nsw i32 %sub, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %cmp = icmp slt i32 %sub, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx6 = getelementptr i8, ptr %message, i32 1
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx6, align 1
  %arrayidx7 = getelementptr i8, ptr %message, i32 2
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %arrayidx7, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #16
  %arrayidx8 = getelementptr i8, ptr %message, i32 4
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %arrayidx8, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %tobool.not = icmp sgt i8 %9, -1
  br i1 %tobool.not, label %do.body94, label %if.then11

if.then11:                                        ; preds = %if.end
  %and13 = lshr i8 %9, 4
  %16 = and i8 %and13, 7
  %conv15 = zext i8 %16 to i32
  %17 = zext i32 %conv15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.267)
  switch i32 %conv15, label %do.body [
    i32 4, label %sw.bb
    i32 1, label %if.then11.sw.bb21_crit_edge
    i32 5, label %if.then11.sw.bb21_crit_edge247
    i32 2, label %sw.bb41
    i32 6, label %if.then11..thread224_crit_edge
  ]

if.then11..thread224_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #18
  br label %.thread224

if.then11.sw.bb21_crit_edge247:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb21

if.then11.sw.bb21_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb21

sw.bb:                                            ; preds = %if.then11
  %t100_aux_vect = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 18
  %18 = ptrtoint ptr %t100_aux_vect to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %t100_aux_vect, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool16.not = icmp eq i8 %19, 0
  br i1 %tobool16.not, label %sw.bb..thread224_crit_edge, label %if.then17

sw.bb..thread224_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %.thread224

if.then17:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  %idxprom = zext i8 %19 to i32
  %arrayidx19 = getelementptr i8, ptr %message, i32 %idxprom
  %20 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx19, align 1
  br label %.thread224

sw.bb21:                                          ; preds = %if.then11.sw.bb21_crit_edge, %if.then11.sw.bb21_crit_edge247
  %t100_aux_area = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 17
  %22 = ptrtoint ptr %t100_aux_area to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %t100_aux_area, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool22.not = icmp eq i8 %23, 0
  br i1 %tobool22.not, label %sw.bb21.if.end27_crit_edge, label %if.then23

sw.bb21.if.end27_crit_edge:                       ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.then23:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #18
  %idxprom25 = zext i8 %23 to i32
  %arrayidx26 = getelementptr i8, ptr %message, i32 %idxprom25
  %24 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx26, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %sw.bb21.if.end27_crit_edge
  %major.0 = phi i8 [ %25, %if.then23 ], [ 0, %sw.bb21.if.end27_crit_edge ]
  %t100_aux_ampl = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 16
  %26 = ptrtoint ptr %t100_aux_ampl to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %t100_aux_ampl, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool28.not = icmp eq i8 %27, 0
  br i1 %tobool28.not, label %if.end27.if.end33_crit_edge, label %if.then29

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  %idxprom31 = zext i8 %27 to i32
  %arrayidx32 = getelementptr i8, ptr %message, i32 %idxprom31
  %28 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx32, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.end27.if.end33_crit_edge
  %pressure.0 = phi i8 [ %29, %if.then29 ], [ 0, %if.end27.if.end33_crit_edge ]
  %t100_aux_vect34 = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 18
  %30 = ptrtoint ptr %t100_aux_vect34 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %t100_aux_vect34, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool35.not = icmp eq i8 %31, 0
  br i1 %tobool35.not, label %if.end33.if.end55_crit_edge, label %if.then36

if.end33.if.end55_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end55

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  %idxprom38 = zext i8 %31 to i32
  %arrayidx39 = getelementptr i8, ptr %message, i32 %idxprom38
  %32 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx39, align 1
  br label %if.end55

sw.bb41:                                          ; preds = %if.then11
  %t100_aux_ampl42 = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 16
  %34 = ptrtoint ptr %t100_aux_ampl42 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %t100_aux_ampl42, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool43.not = icmp eq i8 %35, 0
  br i1 %tobool43.not, label %sw.bb41..thread224_crit_edge, label %if.then44

sw.bb41..thread224_crit_edge:                     ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #18
  br label %.thread224

if.then44:                                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #18
  %idxprom46 = zext i8 %35 to i32
  %arrayidx47 = getelementptr i8, ptr %message, i32 %idxprom46
  %36 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx47, align 1
  br label %if.end55

do.body:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxt_proc_t100_message.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxt_proc_t100_message, %if.then53)) #16
          to label %cleanup [label %if.then53], !srcloc !536

if.then53:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxt_proc_t100_message.__UNIQUE_ID_ddebug305, ptr noundef %dev1, ptr noundef nonnull @.str.65) #16
  br label %cleanup

if.end55:                                         ; preds = %if.then44, %if.then36, %if.end33.if.end55_crit_edge
  %tool.0 = phi i32 [ 1, %if.then44 ], [ 0, %if.then36 ], [ 0, %if.end33.if.end55_crit_edge ]
  %major.1 = phi i8 [ 1, %if.then44 ], [ %major.0, %if.then36 ], [ %major.0, %if.end33.if.end55_crit_edge ]
  %pressure.1 = phi i8 [ %37, %if.then44 ], [ %pressure.0, %if.then36 ], [ %pressure.0, %if.end33.if.end55_crit_edge ]
  %orientation.0 = phi i8 [ 0, %if.then44 ], [ %33, %if.then36 ], [ 0, %if.end33.if.end55_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pressure.1)
  %tobool56.not = icmp eq i8 %pressure.1, 0
  br i1 %tobool56.not, label %if.end55..thread224_crit_edge, label %if.end55.do.body66_crit_edge

if.end55.do.body66_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body66

if.end55..thread224_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #18
  br label %.thread224

.thread224:                                       ; preds = %if.end55..thread224_crit_edge, %sw.bb41..thread224_crit_edge, %if.then17, %sw.bb..thread224_crit_edge, %if.then11..thread224_crit_edge
  %orientation.0246 = phi i8 [ %orientation.0, %if.end55..thread224_crit_edge ], [ 0, %sw.bb..thread224_crit_edge ], [ %21, %if.then17 ], [ 0, %sw.bb41..thread224_crit_edge ], [ 0, %if.then11..thread224_crit_edge ]
  %major.1244 = phi i8 [ %major.1, %if.end55..thread224_crit_edge ], [ 0, %sw.bb..thread224_crit_edge ], [ 0, %if.then17 ], [ 1, %sw.bb41..thread224_crit_edge ], [ 0, %if.then11..thread224_crit_edge ]
  %tool.0242 = phi i32 [ %tool.0, %if.end55..thread224_crit_edge ], [ 0, %sw.bb..thread224_crit_edge ], [ 0, %if.then17 ], [ 1, %sw.bb41..thread224_crit_edge ], [ 0, %if.then11..thread224_crit_edge ]
  %distance.0240 = phi i32 [ 0, %if.end55..thread224_crit_edge ], [ 1, %sw.bb..thread224_crit_edge ], [ 1, %if.then17 ], [ 0, %sw.bb41..thread224_crit_edge ], [ 0, %if.then11..thread224_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %16)
  %cmp58.not = icmp ne i8 %16, 4
  %. = zext i1 %cmp58.not to i8
  br label %do.body66

do.body66:                                        ; preds = %.thread224, %if.end55.do.body66_crit_edge
  %orientation.0245 = phi i8 [ %orientation.0246, %.thread224 ], [ %orientation.0, %if.end55.do.body66_crit_edge ]
  %major.1243 = phi i8 [ %major.1244, %.thread224 ], [ %major.1, %if.end55.do.body66_crit_edge ]
  %tool.0241 = phi i32 [ %tool.0242, %.thread224 ], [ %tool.0, %if.end55.do.body66_crit_edge ]
  %distance.0239 = phi i32 [ %distance.0240, %.thread224 ], [ 0, %if.end55.do.body66_crit_edge ]
  %38 = phi i8 [ %., %.thread224 ], [ %pressure.1, %if.end55.do.body66_crit_edge ]
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 47, i32 noundef %sub4) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxt_proc_t100_message.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxt_proc_t100_message, %if.then78)) #16
          to label %do.end87 [label %if.then78], !srcloc !536

if.then78:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #18
  %conv80 = zext i16 %12 to i32
  %conv81 = zext i16 %15 to i32
  %conv82 = zext i8 %major.1243 to i32
  %conv83 = zext i8 %38 to i32
  %conv84 = zext i8 %orientation.0245 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxt_proc_t100_message.__UNIQUE_ID_ddebug306, ptr noundef %dev1, ptr noundef nonnull @.str.66, i32 noundef %sub4, i32 noundef %conv15, i32 noundef %conv80, i32 noundef %conv81, i32 noundef %conv82, i32 noundef %conv83, i32 noundef %conv84) #16
  br label %do.end87

do.end87:                                         ; preds = %if.then78, %do.body66
  %call88 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %3, i32 noundef %tool.0241, i1 noundef zeroext true) #16
  %conv89 = zext i16 %12 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 53, i32 noundef %conv89) #16
  %conv90 = zext i16 %15 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 54, i32 noundef %conv90) #16
  %conv91 = zext i8 %major.1243 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 48, i32 noundef %conv91) #16
  %conv92 = zext i8 %38 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 58, i32 noundef %conv92) #16
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 59, i32 noundef %distance.0239) #16
  %conv93 = zext i8 %orientation.0245 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 52, i32 noundef %conv93) #16
  br label %if.end110

do.body94:                                        ; preds = %if.end
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 47, i32 noundef %sub4) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxt_proc_t100_message.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxt_proc_t100_message, %if.then106)) #16
          to label %do.end109 [label %if.then106], !srcloc !536

if.then106:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxt_proc_t100_message.__UNIQUE_ID_ddebug307, ptr noundef %dev1, ptr noundef nonnull @.str.67, i32 noundef %sub4) #16
  br label %do.end109

do.end109:                                        ; preds = %if.then106, %do.body94
  %call.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %3, i32 noundef 0, i1 noundef zeroext false) #16
  br label %if.end110

if.end110:                                        ; preds = %do.end109, %do.end87
  %update_input = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 25
  %39 = ptrtoint ptr %update_input to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %update_input, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end110, %if.then53, %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_report_pointer_emulation(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxt_probe_bootloader(ptr nocapture noundef %data, i1 noundef zeroext %alt_address) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #16
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !535
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %addr.i, align 2
  %info.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 4
  %5 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %entry.cond.end.i_crit_edge, label %cond.true.i

entry.cond.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  %phi.cast.i = zext i8 %8 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %entry.cond.end.i_crit_edge
  %cond.i = phi i32 [ %phi.cast.i, %cond.true.i ], [ 0, %entry.cond.end.i_crit_edge ]
  %trunc.i = trunc i16 %4 to i8
  %9 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.268)
  switch i8 %trunc.i, label %mxt_lookup_bootloader_address.exit [
    i8 74, label %cond.end.i.sw.bb.i_crit_edge
    i8 75, label %cond.end.i.sw.bb.i_crit_edge27
    i8 76, label %cond.end.i.sw.bb12.i_crit_edge
    i8 77, label %cond.end.i.sw.bb12.i_crit_edge28
    i8 90, label %cond.end.i.sw.bb12.i_crit_edge29
    i8 91, label %cond.end.i.sw.bb12.i_crit_edge30
  ]

cond.end.i.sw.bb12.i_crit_edge30:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb12.i

cond.end.i.sw.bb12.i_crit_edge29:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb12.i

cond.end.i.sw.bb12.i_crit_edge28:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb12.i

cond.end.i.sw.bb12.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb12.i

cond.end.i.sw.bb.i_crit_edge27:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb.i

cond.end.i.sw.bb.i_crit_edge:                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %cond.end.i.sw.bb.i_crit_edge, %cond.end.i.sw.bb.i_crit_edge27
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %cond.i)
  %cmp.i = icmp ugt i32 %cond.i, 161
  %or.cond.i = select i1 %alt_address, i1 true, i1 %cmp.i
  br i1 %or.cond.i, label %sw.bb.i.if.end_crit_edge, label %sw.bb.i.sw.bb12.i_crit_edge

sw.bb.i.sw.bb12.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb12.i

sw.bb.i.if.end_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

sw.bb12.i:                                        ; preds = %sw.bb.i.sw.bb12.i_crit_edge, %cond.end.i.sw.bb12.i_crit_edge, %cond.end.i.sw.bb12.i_crit_edge28, %cond.end.i.sw.bb12.i_crit_edge29, %cond.end.i.sw.bb12.i_crit_edge30
  br label %if.end

mxt_lookup_bootloader_address.exit:               ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %10 = and i16 %4, 255
  %conv5.i = zext i16 %10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.94, i32 noundef %conv5.i) #19
  br label %cleanup

if.end:                                           ; preds = %sw.bb12.i, %sw.bb.i.if.end_crit_edge
  %.sink.i = phi i8 [ -38, %sw.bb12.i ], [ -36, %sw.bb.i.if.end_crit_edge ]
  %conv15.i = add nsw i8 %.sink.i, %trunc.i
  %bootloader_addr.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 22
  %11 = ptrtoint ptr %bootloader_addr.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv15.i, ptr %bootloader_addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #16
  %12 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 131071, ptr %12, align 4
  %conv.i = zext i8 %conv15.i to i16
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %msg.i, align 4
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %16, align 8
  %19 = and i16 %18, 16
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %20 = or i16 %19, 1
  %21 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %flags3.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %22 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %val, ptr %buf.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 3
  %23 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i21 = icmp eq i32 %call.i, 1
  br i1 %cmp.i21, label %mxt_bootloader_read.exit.thread, label %mxt_bootloader_read.exit

mxt_bootloader_read.exit.thread:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #16
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %val, align 1
  %conv = zext i8 %26 to i32
  %and = and i32 %conv, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and)
  %cmp = icmp eq i32 %and, 64
  %cond = select i1 %cmp, ptr @.str.93, ptr @.str.53
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.91, i32 noundef %conv, ptr noundef nonnull %cond) #19
  br label %cleanup

mxt_bootloader_read.exit:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10.i = icmp slt i32 %call.i, 0
  %spec.select.i = select i1 %cmp10.i, i32 %call.i, i32 -5
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 8
  %dev.i22 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i22, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.97, i32 noundef %spec.select.i) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #16
  br label %cleanup

cleanup:                                          ; preds = %mxt_bootloader_read.exit, %mxt_bootloader_read.exit.thread, %mxt_lookup_bootloader_address.exit
  %retval.0 = phi i32 [ 0, %mxt_bootloader_read.exit.thread ], [ -22, %mxt_lookup_bootloader_address.exit ], [ %spec.select.i, %mxt_bootloader_read.exit ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #16
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxt_send_bootloader_cmd(ptr nocapture noundef readonly %data, i1 noundef zeroext %unlock) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #16
  %0 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %. = select i1 %unlock, i8 -36, i8 1
  %.5 = select i1 %unlock, i8 -86, i8 1
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %., ptr %buf, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %.5, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #16
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 196607, ptr %3, align 4
  %bootloader_addr.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 22
  %5 = ptrtoint ptr %bootloader_addr.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bootloader_addr.i, align 4
  %conv.i = zext i8 %6 to i16
  %7 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv.i, ptr %msg.i, align 4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %9, align 8
  %12 = and i16 %11, 16
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %flags3.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf, ptr %buf.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 3
  %15 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg.i, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %entry.mxt_bootloader_write.exit_crit_edge, label %if.else.i

entry.mxt_bootloader_write.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_bootloader_write.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7.i = icmp slt i32 %call.i, 0
  %spec.select.i = select i1 %cmp7.i, i32 %call.i, i32 -5
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef %spec.select.i) #19
  br label %mxt_bootloader_write.exit

mxt_bootloader_write.exit:                        ; preds = %if.else.i, %entry.mxt_bootloader_write.exit_crit_edge
  %ret.0.i = phi i32 [ %spec.select.i, %if.else.i ], [ 0, %entry.mxt_bootloader_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxt_check_retrigen(ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #16
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !535
  %use_retrigen_workaround = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 34
  %3 = ptrtoint ptr %use_retrigen_workaround to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %use_retrigen_workaround, align 8
  %irq = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call = tail call ptr @irq_get_irq_data(i32 noundef %5) #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %common.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %and.i = and i32 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %T18_address = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 43
  %10 = ptrtoint ptr %T18_address to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %T18_address, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool5.not = icmp eq i16 %11, 0
  br i1 %tobool5.not, label %if.end4.do.end_crit_edge, label %if.then6

if.end4.do.end_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then6:                                         ; preds = %if.end4
  %call9 = call fastcc i32 @__mxt_read_reg(ptr noundef %1, i16 noundef zeroext %11, i16 noundef zeroext 1, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end12:                                         ; preds = %if.then6
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %and = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end12.do.end_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end12.do.end_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

do.end:                                           ; preds = %if.end12.do.end_crit_edge, %if.end4.do.end_crit_edge
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.100) #19
  %14 = ptrtoint ptr %use_retrigen_workaround to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %use_retrigen_workaround, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end12.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call9, %if.then6.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxt_acquire_irq(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %1) #16
  %use_retrigen_workaround = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 34
  %2 = ptrtoint ptr %use_retrigen_workaround to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_retrigen_workaround, align 8, !range !534
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 8
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %max_reportid.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 19
  %6 = ptrtoint ptr %max_reportid.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_reportid.i, align 1
  %conv.i = zext i8 %7 to i32
  %T5_address.i.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 35
  %T5_msg_size.i.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 36
  %msg_buf.i.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp1245.not.i.i = icmp eq i8 %7, 0
  %8 = ptrtoint ptr %T5_address.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %T5_address.i.i, align 2
  %10 = ptrtoint ptr %T5_msg_size.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %T5_msg_size.i.i, align 4
  %conv5.i.i = zext i8 %11 to i32
  %mul.i.i = mul nuw nsw i32 %conv5.i.i, %conv.i
  %conv7.i.i = trunc i32 %mul.i.i to i16
  %12 = ptrtoint ptr %msg_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %msg_buf.i.i, align 8
  %call.i.i = tail call fastcc i32 @__mxt_read_reg(ptr noundef %5, i16 noundef zeroext %9, i16 noundef zeroext %conv7.i.i, ptr noundef %13) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.cond.preheader.i.i, label %do.end.i.i

for.cond.preheader.i.i:                           ; preds = %if.then
  br i1 %cmp1245.not.i.i, label %for.cond.preheader.i.i.mxt_read_and_process_messages.exit.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.mxt_read_and_process_messages.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_read_and_process_messages.exit.i

do.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.68, i32 noundef %conv.i, i32 noundef %call.i.i) #19
  br label %mxt_read_and_process_messages.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %num_valid.047.i.i = phi i8 [ %spec.select.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %i.046.i.i = phi i32 [ %inc23.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %14 = ptrtoint ptr %msg_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %msg_buf.i.i, align 8
  %16 = ptrtoint ptr %T5_msg_size.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %T5_msg_size.i.i, align 4
  %conv16.i.i = zext i8 %17 to i32
  %mul17.i.i = mul i32 %i.046.i.i, %conv16.i.i
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %mul17.i.i
  %call18.i.i = tail call fastcc i32 @mxt_proc_message(ptr noundef %data, ptr noundef %add.ptr.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18.i.i)
  %cmp19.i.i = icmp eq i32 %call18.i.i, 1
  %inc.i.i = zext i1 %cmp19.i.i to i8
  %spec.select.i.i = add i8 %num_valid.047.i.i, %inc.i.i
  %inc23.i.i = add nuw nsw i32 %i.046.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc23.i.i, %conv.i
  br i1 %exitcond.not.i.i, label %for.end.loopexit.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.end.loopexit.i.i:                             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %phi.cast.i.i = zext i8 %spec.select.i.i to i32
  br label %mxt_read_and_process_messages.exit.i

mxt_read_and_process_messages.exit.i:             ; preds = %for.end.loopexit.i.i, %do.end.i.i, %for.cond.preheader.i.i.mxt_read_and_process_messages.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %do.end.i.i ], [ 0, %for.cond.preheader.i.i.mxt_read_and_process_messages.exit.i_crit_edge ], [ %phi.cast.i.i, %for.end.loopexit.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %conv.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, %conv.i
  br i1 %cmp.i, label %mxt_read_and_process_messages.exit.i.cleanup_crit_edge, label %do.cond.i

mxt_read_and_process_messages.exit.i.cleanup_crit_edge: ; preds = %mxt_read_and_process_messages.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.cond.i:                                        ; preds = %mxt_read_and_process_messages.exit.i
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 8
  %dev1.i.1.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %max_reportid.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %max_reportid.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %7)
  %cmp.i.1.i = icmp ult i8 %21, %7
  br i1 %cmp.i.1.i, label %do.cond.i.cleanup_crit_edge, label %if.end.i.1.i

do.cond.i.cleanup_crit_edge:                      ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.1.i:                                     ; preds = %do.cond.i
  %22 = ptrtoint ptr %T5_address.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %T5_address.i.i, align 2
  %24 = ptrtoint ptr %T5_msg_size.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %T5_msg_size.i.i, align 4
  %conv5.i.1.i = zext i8 %25 to i32
  %mul.i.1.i = mul nuw nsw i32 %conv5.i.1.i, %conv.i
  %conv7.i.1.i = trunc i32 %mul.i.1.i to i16
  %26 = ptrtoint ptr %msg_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %msg_buf.i.i, align 8
  %call.i.1.i = tail call fastcc i32 @__mxt_read_reg(ptr noundef %19, i16 noundef zeroext %23, i16 noundef zeroext %conv7.i.1.i, ptr noundef %27) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %tobool.not.i.1.i = icmp eq i32 %call.i.1.i, 0
  br i1 %tobool.not.i.1.i, label %for.cond.preheader.i.1.i, label %do.end.i.1.i

do.end.i.1.i:                                     ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.1.i, ptr noundef nonnull @.str.68, i32 noundef %conv.i, i32 noundef %call.i.1.i) #19
  br label %mxt_read_and_process_messages.exit.1.i

for.cond.preheader.i.1.i:                         ; preds = %if.end.i.1.i
  br i1 %cmp1245.not.i.i, label %for.cond.preheader.i.1.i.mxt_read_and_process_messages.exit.1.i_crit_edge, label %for.cond.preheader.i.1.i.for.body.i.1.i_crit_edge

for.cond.preheader.i.1.i.for.body.i.1.i_crit_edge: ; preds = %for.cond.preheader.i.1.i
  br label %for.body.i.1.i

for.cond.preheader.i.1.i.mxt_read_and_process_messages.exit.1.i_crit_edge: ; preds = %for.cond.preheader.i.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_read_and_process_messages.exit.1.i

for.body.i.1.i:                                   ; preds = %for.body.i.1.i.for.body.i.1.i_crit_edge, %for.cond.preheader.i.1.i.for.body.i.1.i_crit_edge
  %num_valid.047.i.1.i = phi i8 [ %spec.select.i.1.i, %for.body.i.1.i.for.body.i.1.i_crit_edge ], [ 0, %for.cond.preheader.i.1.i.for.body.i.1.i_crit_edge ]
  %i.046.i.1.i = phi i32 [ %inc23.i.1.i, %for.body.i.1.i.for.body.i.1.i_crit_edge ], [ 0, %for.cond.preheader.i.1.i.for.body.i.1.i_crit_edge ]
  %28 = ptrtoint ptr %msg_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %msg_buf.i.i, align 8
  %30 = ptrtoint ptr %T5_msg_size.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %T5_msg_size.i.i, align 4
  %conv16.i.1.i = zext i8 %31 to i32
  %mul17.i.1.i = mul i32 %i.046.i.1.i, %conv16.i.1.i
  %add.ptr.i.1.i = getelementptr i8, ptr %29, i32 %mul17.i.1.i
  %call18.i.1.i = tail call fastcc i32 @mxt_proc_message(ptr noundef %data, ptr noundef %add.ptr.i.1.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18.i.1.i)
  %cmp19.i.1.i = icmp eq i32 %call18.i.1.i, 1
  %inc.i.1.i = zext i1 %cmp19.i.1.i to i8
  %spec.select.i.1.i = add i8 %num_valid.047.i.1.i, %inc.i.1.i
  %inc23.i.1.i = add nuw nsw i32 %i.046.i.1.i, 1
  %exitcond.not.i.1.i = icmp eq i32 %inc23.i.1.i, %conv.i
  br i1 %exitcond.not.i.1.i, label %for.end.loopexit.i.1.i, label %for.body.i.1.i.for.body.i.1.i_crit_edge

for.body.i.1.i.for.body.i.1.i_crit_edge:          ; preds = %for.body.i.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.1.i

for.end.loopexit.i.1.i:                           ; preds = %for.body.i.1.i
  call void @__sanitizer_cov_trace_pc() #18
  %phi.cast.i.1.i = zext i8 %spec.select.i.1.i to i32
  br label %mxt_read_and_process_messages.exit.1.i

mxt_read_and_process_messages.exit.1.i:           ; preds = %for.end.loopexit.i.1.i, %for.cond.preheader.i.1.i.mxt_read_and_process_messages.exit.1.i_crit_edge, %do.end.i.1.i
  %retval.0.i.1.i = phi i32 [ %call.i.1.i, %do.end.i.1.i ], [ 0, %for.cond.preheader.i.1.i.mxt_read_and_process_messages.exit.1.i_crit_edge ], [ %phi.cast.i.1.i, %for.end.loopexit.i.1.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.1.i, i32 %conv.i)
  %cmp.1.i = icmp slt i32 %retval.0.i.1.i, %conv.i
  br i1 %cmp.1.i, label %mxt_read_and_process_messages.exit.1.i.cleanup_crit_edge, label %do.cond.1.i

mxt_read_and_process_messages.exit.1.i.cleanup_crit_edge: ; preds = %mxt_read_and_process_messages.exit.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.cond.1.i:                                      ; preds = %mxt_read_and_process_messages.exit.1.i
  %update_input.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 25
  %32 = ptrtoint ptr %update_input.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %update_input.i, align 1, !range !534
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool4.not.i = icmp eq i8 %33, 0
  br i1 %tobool4.not.i, label %do.cond.1.i.mxt_process_messages_until_invalid.exit_crit_edge, label %if.then5.i

do.cond.1.i.mxt_process_messages_until_invalid.exit_crit_edge: ; preds = %do.cond.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_process_messages_until_invalid.exit

if.then5.i:                                       ; preds = %do.cond.1.i
  call void @__sanitizer_cov_trace_pc() #18
  %input_dev.i.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 1
  %34 = ptrtoint ptr %input_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %input_dev.i.i, align 4
  %t19_num_keys.i.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 52
  %36 = ptrtoint ptr %t19_num_keys.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %t19_num_keys.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.i.i = icmp ne i32 %37, 0
  tail call void @input_mt_report_pointer_emulation(ptr noundef %35, i1 noundef zeroext %tobool.i.i) #16
  %38 = ptrtoint ptr %input_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %input_dev.i.i, align 4
  tail call void @input_event(ptr noundef %39, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  %40 = ptrtoint ptr %update_input.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %update_input.i, align 1
  br label %mxt_process_messages_until_invalid.exit

mxt_process_messages_until_invalid.exit:          ; preds = %if.then5.i, %do.cond.1.i.mxt_process_messages_until_invalid.exit_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.102) #19
  br label %cleanup

cleanup:                                          ; preds = %mxt_process_messages_until_invalid.exit, %mxt_read_and_process_messages.exit.1.i.cleanup_crit_edge, %do.cond.i.cleanup_crit_edge, %mxt_read_and_process_messages.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %mxt_process_messages_until_invalid.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %mxt_read_and_process_messages.exit.1.i.cleanup_crit_edge ], [ 0, %do.cond.i.cleanup_crit_edge ], [ 0, %mxt_read_and_process_messages.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxt_config_cb(ptr noundef %cfg, ptr noundef %ctx) #2 align 64 {
entry:
  %range.i.i.i = alloca %struct.t9_range, align 2
  %orient.i.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i = tail call fastcc i32 @mxt_init_t7_power_cfg(ptr noundef %ctx) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.104) #19
  br label %mxt_configure_objects.exit

if.end.i:                                         ; preds = %entry
  %tobool2.not.i = icmp eq ptr %cfg, null
  br i1 %tobool2.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then3.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11.i

if.then3.i:                                       ; preds = %if.end.i
  %call4.i = tail call fastcc i32 @mxt_update_cfg(ptr noundef %ctx, ptr noundef nonnull %cfg) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then3.i.if.end11.i_crit_edge, label %do.end9.i

if.then3.i.if.end11.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11.i

do.end9.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i, ptr noundef nonnull @.str.107, i32 noundef %call4.i) #19
  br label %if.end11.i

if.end11.i:                                       ; preds = %do.end9.i, %if.then3.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge
  %multitouch.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 28
  %2 = ptrtoint ptr %multitouch.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %multitouch.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool12.not.i = icmp eq i8 %3, 0
  br i1 %tobool12.not.i, label %do.end20.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end11.i
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 8
  %dev1.i.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %6 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.269)
  switch i8 %3, label %do.end15.i.i [
    i8 9, label %sw.bb.i.i
    i8 100, label %sw.bb4.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.then13.i
  %T9_reportid_max.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 42
  %7 = ptrtoint ptr %T9_reportid_max.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %T9_reportid_max.i.i, align 1
  %conv2.i.i = zext i8 %8 to i32
  %T9_reportid_min.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 41
  %9 = ptrtoint ptr %T9_reportid_min.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %T9_reportid_min.i.i, align 4
  %conv3.i.i = zext i8 %10 to i32
  %sub.i.i = sub nsw i32 %conv2.i.i, %conv3.i.i
  %add.i.i = add nsw i32 %sub.i.i, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %range.i.i.i) #16
  %11 = ptrtoint ptr %range.i.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %range.i.i.i, align 2, !annotation !535
  %12 = getelementptr inbounds %struct.t9_range, ptr %range.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %12, align 2, !annotation !535
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %orient.i.i.i) #16
  %14 = ptrtoint ptr %orient.i.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %orient.i.i.i, align 1, !annotation !535
  %info.i.i.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 4
  %15 = ptrtoint ptr %info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %info.i.i.i.i, align 4
  %object_num.i.i.i.i = getelementptr inbounds %struct.mxt_info, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %object_num.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %object_num.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp15.not.i.i.i.i = icmp eq i8 %18, 0
  br i1 %cmp15.not.i.i.i.i, label %sw.bb.i.i.mxt_get_object.exit.thread.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i.i

sw.bb.i.i.mxt_get_object.exit.thread.i.i.i_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_get_object.exit.thread.i.i.i

for.body.lr.ph.i.i.i.i:                           ; preds = %sw.bb.i.i
  %object_table.i.i.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 3
  %19 = ptrtoint ptr %object_table.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %object_table.i.i.i.i, align 8
  br label %for.body.i.i.i.i

for.cond.i.i.i.i:                                 ; preds = %for.body.i.i.i.i
  %inc.i.i.i.i = add nuw nsw i32 %i.016.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %conv.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %for.cond.i.i.i.i.mxt_get_object.exit.thread.i.i.i_crit_edge, label %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge

for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.i.i

for.cond.i.i.i.i.mxt_get_object.exit.thread.i.i.i_crit_edge: ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_get_object.exit.thread.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i
  %i.016.i.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i.i ], [ %inc.i.i.i.i, %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %add.ptr.i.i.i.i = getelementptr %struct.mxt_object, ptr %20, i32 %i.016.i.i.i.i
  %21 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %22)
  %cmp5.i.i.i.i = icmp eq i8 %22, 9
  br i1 %cmp5.i.i.i.i, label %mxt_get_object.exit.i.i.i, label %for.cond.i.i.i.i

mxt_get_object.exit.thread.i.i.i:                 ; preds = %for.cond.i.i.i.i.mxt_get_object.exit.thread.i.i.i_crit_edge, %sw.bb.i.i.mxt_get_object.exit.thread.i.i.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.184, i32 noundef 9) #19
  br label %do.end.i.i

mxt_get_object.exit.i.i.i:                        ; preds = %for.body.i.i.i.i
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %mxt_get_object.exit.i.i.i.do.end.i.i_crit_edge, label %if.end.i.i.i

mxt_get_object.exit.i.i.i.do.end.i.i_crit_edge:   ; preds = %mxt_get_object.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i.i

if.end.i.i.i:                                     ; preds = %mxt_get_object.exit.i.i.i
  %start_address.i.i.i = getelementptr %struct.mxt_object, ptr %20, i32 %i.016.i.i.i.i, i32 1
  %23 = ptrtoint ptr %start_address.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %start_address.i.i.i, align 1
  %add.i.i.i = add i16 %24, 3
  %xsize.i.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 12
  %call3.i.i.i = tail call fastcc i32 @__mxt_read_reg(ptr noundef %5, i16 noundef zeroext %add.i.i.i, i16 noundef zeroext 1, ptr noundef %xsize.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.do.end.i.i_crit_edge

if.end.i.i.i.do.end.i.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i.i

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  %25 = ptrtoint ptr %start_address.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %start_address.i.i.i, align 1
  %add9.i.i.i = add i16 %26, 4
  %ysize.i.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 13
  %call11.i.i.i = tail call fastcc i32 @__mxt_read_reg(ptr noundef %5, i16 noundef zeroext %add9.i.i.i, i16 noundef zeroext 1, ptr noundef %ysize.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i)
  %tobool12.not.i.i.i = icmp eq i32 %call11.i.i.i, 0
  br i1 %tobool12.not.i.i.i, label %if.end14.i.i.i, label %if.end6.i.i.i.do.end.i.i_crit_edge

if.end6.i.i.i.do.end.i.i_crit_edge:               ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i.i

if.end14.i.i.i:                                   ; preds = %if.end6.i.i.i
  %27 = ptrtoint ptr %start_address.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %start_address.i.i.i, align 1
  %add17.i.i.i = add i16 %28, 18
  %call19.i.i.i = call fastcc i32 @__mxt_read_reg(ptr noundef %5, i16 noundef zeroext %add17.i.i.i, i16 noundef zeroext 4, ptr noundef nonnull %range.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i.i)
  %tobool20.not.i.i.i = icmp eq i32 %call19.i.i.i, 0
  br i1 %tobool20.not.i.i.i, label %if.end22.i.i.i, label %if.end14.i.i.i.do.end.i.i_crit_edge

if.end14.i.i.i.do.end.i.i_crit_edge:              ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i.i

if.end22.i.i.i:                                   ; preds = %if.end14.i.i.i
  %29 = ptrtoint ptr %range.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %range.i.i.i, align 2
  %31 = call i16 @llvm.bswap.i16(i16 %30) #16
  %conv24.i.i.i = zext i16 %31 to i32
  %max_x.i.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 7
  %32 = ptrtoint ptr %max_x.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv24.i.i.i, ptr %max_x.i.i.i, align 8
  %33 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %12, align 2
  %35 = call i16 @llvm.bswap.i16(i16 %34) #16
  %conv26.i.i.i = zext i16 %35 to i32
  %max_y.i.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 8
  %36 = ptrtoint ptr %max_y.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv26.i.i.i, ptr %max_y.i.i.i, align 4
  %37 = ptrtoint ptr %start_address.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %start_address.i.i.i, align 1
  %add29.i.i.i = add i16 %38, 9
  %call31.i.i.i = call fastcc i32 @__mxt_read_reg(ptr noundef %5, i16 noundef zeroext %add29.i.i.i, i16 noundef zeroext 1, ptr noundef nonnull %orient.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %call31.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %mxt_read_t9_resolution.exit.i.i, label %if.end22.i.i.i.do.end.i.i_crit_edge

if.end22.i.i.i.do.end.i.i_crit_edge:              ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i.i

mxt_read_t9_resolution.exit.i.i:                  ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %39 = ptrtoint ptr %orient.i.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %orient.i.i.i, align 1
  %41 = and i8 %40, 1
  %xy_switch.i.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 11
  %42 = ptrtoint ptr %xy_switch.i.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %xy_switch.i.i.i, align 2
  %invertx.i.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 9
  %43 = lshr i8 %40, 1
  %.lobit.i.i.i = and i8 %43, 1
  %44 = ptrtoint ptr %invertx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %.lobit.i.i.i, ptr %invertx.i.i.i, align 8
  %inverty.i.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 10
  %45 = lshr i8 %40, 2
  %.lobit71.i.i.i = and i8 %45, 1
  %46 = ptrtoint ptr %inverty.i.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %.lobit71.i.i.i, ptr %inverty.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %orient.i.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %range.i.i.i) #16
  br label %sw.epilog.i.i

do.end.i.i:                                       ; preds = %if.end22.i.i.i.do.end.i.i_crit_edge, %if.end14.i.i.i.do.end.i.i_crit_edge, %if.end6.i.i.i.do.end.i.i_crit_edge, %if.end.i.i.i.do.end.i.i_crit_edge, %mxt_get_object.exit.i.i.i.do.end.i.i_crit_edge, %mxt_get_object.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %orient.i.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %range.i.i.i) #16
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.188) #19
  br label %sw.epilog.i.i

sw.bb4.i.i:                                       ; preds = %if.then13.i
  %num_touchids.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 27
  %47 = ptrtoint ptr %num_touchids.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %num_touchids.i.i, align 1
  %conv5.i.i = zext i8 %48 to i32
  %call6.i.i = tail call fastcc i32 @mxt_read_t100_config(ptr noundef %ctx) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %sw.bb4.i.i.sw.epilog.i.i_crit_edge, label %do.end11.i.i

sw.bb4.i.i.sw.epilog.i.i_crit_edge:               ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i.i

do.end11.i.i:                                     ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.191) #19
  br label %sw.epilog.i.i

do.end15.i.i:                                     ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.194) #19
  br label %mxt_configure_objects.exit

sw.epilog.i.i:                                    ; preds = %do.end11.i.i, %sw.bb4.i.i.sw.epilog.i.i_crit_edge, %do.end.i.i, %mxt_read_t9_resolution.exit.i.i
  %num_mt_slots.0.i.i = phi i32 [ %conv5.i.i, %do.end11.i.i ], [ %conv5.i.i, %sw.bb4.i.i.sw.epilog.i.i_crit_edge ], [ %add.i.i, %do.end.i.i ], [ %add.i.i, %mxt_read_t9_resolution.exit.i.i ]
  %max_x.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 7
  %49 = ptrtoint ptr %max_x.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %max_x.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.i.i = icmp eq i32 %50, 0
  br i1 %cmp.i.i, label %if.then17.i.i, label %sw.epilog.i.i.if.end19.i.i_crit_edge

sw.epilog.i.i.if.end19.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.i.i

if.then17.i.i:                                    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %51 = ptrtoint ptr %max_x.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1023, ptr %max_x.i.i, align 8
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.then17.i.i, %sw.epilog.i.i.if.end19.i.i_crit_edge
  %max_y.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 8
  %52 = ptrtoint ptr %max_y.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %max_y.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp20.i.i = icmp eq i32 %53, 0
  br i1 %cmp20.i.i, label %if.then22.i.i, label %if.end19.i.i.if.end24.i.i_crit_edge

if.end19.i.i.if.end24.i.i_crit_edge:              ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24.i.i

if.then22.i.i:                                    ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %54 = ptrtoint ptr %max_y.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1023, ptr %max_y.i.i, align 4
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then22.i.i, %if.end19.i.i.if.end24.i.i_crit_edge
  %xy_switch.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 11
  %55 = ptrtoint ptr %xy_switch.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %xy_switch.i.i, align 2, !range !534
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool25.not.i.i = icmp eq i8 %56, 0
  br i1 %tobool25.not.i.i, label %if.end24.i.i.do.end37.i.i_crit_edge, label %do.body27.i.i

if.end24.i.i.do.end37.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end37.i.i

do.body27.i.i:                                    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %57 = ptrtoint ptr %max_x.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max_x.i.i, align 8
  %59 = ptrtoint ptr %max_y.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %max_y.i.i, align 4
  store i32 %60, ptr %max_x.i.i, align 8
  store i32 %58, ptr %max_y.i.i, align 4
  br label %do.end37.i.i

do.end37.i.i:                                     ; preds = %do.body27.i.i, %if.end24.i.i.do.end37.i.i_crit_edge
  %61 = ptrtoint ptr %max_x.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max_x.i.i, align 8
  %63 = ptrtoint ptr %max_y.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %max_y.i.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.197, i32 noundef %62, i32 noundef %64) #19
  %call40.i.i = call ptr @input_allocate_device() #16
  %tobool41.not.i.i = icmp eq ptr %call40.i.i, null
  br i1 %tobool41.not.i.i, label %do.end37.i.i.mxt_configure_objects.exit_crit_edge, label %if.end43.i.i

do.end37.i.i.mxt_configure_objects.exit_crit_edge: ; preds = %do.end37.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_configure_objects.exit

if.end43.i.i:                                     ; preds = %do.end37.i.i
  %65 = ptrtoint ptr %call40.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.199, ptr %call40.i.i, align 8
  %phys.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 2
  %phys44.i.i = getelementptr inbounds %struct.input_dev, ptr %call40.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %phys44.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %phys.i.i, ptr %phys44.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.input_dev, ptr %call40.i.i, i32 0, i32 3
  %67 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 24, ptr %id.i.i, align 4
  %parent.i.i = getelementptr inbounds %struct.input_dev, ptr %call40.i.i, i32 0, i32 40, i32 1
  %68 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %dev1.i.i, ptr %parent.i.i, align 8
  %open.i.i = getelementptr inbounds %struct.input_dev, ptr %call40.i.i, i32 0, i32 31
  %69 = ptrtoint ptr %open.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @mxt_input_open, ptr %open.i.i, align 8
  %close.i.i = getelementptr inbounds %struct.input_dev, ptr %call40.i.i, i32 0, i32 32
  %70 = ptrtoint ptr %close.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @mxt_input_close, ptr %close.i.i, align 4
  call void @input_set_capability(ptr noundef nonnull %call40.i.i, i32 noundef 1, i32 noundef 330) #16
  %71 = ptrtoint ptr %max_x.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %max_x.i.i, align 8
  call void @input_set_abs_params(ptr noundef nonnull %call40.i.i, i32 noundef 0, i32 noundef 0, i32 noundef %72, i32 noundef 0, i32 noundef 0) #16
  %73 = ptrtoint ptr %max_y.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %max_y.i.i, align 4
  call void @input_set_abs_params(ptr noundef nonnull %call40.i.i, i32 noundef 1, i32 noundef 0, i32 noundef %74, i32 noundef 0, i32 noundef 0) #16
  %75 = ptrtoint ptr %multitouch.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %multitouch.i, align 8
  %77 = zext i8 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.270)
  switch i8 %76, label %if.end43.i.i.if.end59.i.i_crit_edge [
    i8 9, label %if.end43.i.i.if.then58.i.i_crit_edge
    i8 100, label %land.lhs.true.i.i
  ]

if.end43.i.i.if.then58.i.i_crit_edge:             ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then58.i.i

if.end43.i.i.if.end59.i.i_crit_edge:              ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end59.i.i

land.lhs.true.i.i:                                ; preds = %if.end43.i.i
  %t100_aux_ampl.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 16
  %78 = ptrtoint ptr %t100_aux_ampl.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %t100_aux_ampl.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool57.not.i.i = icmp eq i8 %79, 0
  br i1 %tobool57.not.i.i, label %land.lhs.true.i.i.if.end59.i.i_crit_edge, label %land.lhs.true.i.i.if.then58.i.i_crit_edge

land.lhs.true.i.i.if.then58.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then58.i.i

land.lhs.true.i.i.if.end59.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end59.i.i

if.then58.i.i:                                    ; preds = %land.lhs.true.i.i.if.then58.i.i_crit_edge, %if.end43.i.i.if.then58.i.i_crit_edge
  call void @input_set_abs_params(ptr noundef nonnull %call40.i.i, i32 noundef 24, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #16
  br label %if.end59.i.i

if.end59.i.i:                                     ; preds = %if.then58.i.i, %land.lhs.true.i.i.if.end59.i.i_crit_edge, %if.end43.i.i.if.end59.i.i_crit_edge
  %t19_num_keys.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 52
  %80 = ptrtoint ptr %t19_num_keys.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %t19_num_keys.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool60.not.i.i = icmp eq i32 %81, 0
  br i1 %tobool60.not.i.i, label %if.end59.i.i.if.end63.i.i_crit_edge, label %if.then61.i.i

if.end59.i.i.if.end63.i.i_crit_edge:              ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end63.i.i

if.then61.i.i:                                    ; preds = %if.end59.i.i
  %82 = ptrtoint ptr %call40.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @.str.208, ptr %call40.i.i, align 8
  %propbit.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call40.i.i, i32 0, i32 4
  %83 = ptrtoint ptr %propbit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %propbit.i.i.i, align 4
  %or.i.i.i.i = or i32 %84, 4
  store i32 %or.i.i.i.i, ptr %propbit.i.i.i, align 4
  call void @input_alloc_absinfo(ptr noundef nonnull %call40.i.i) #16
  %absinfo.i.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call40.i.i, i32 0, i32 26
  %85 = ptrtoint ptr %absinfo.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %absinfo.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %86, null
  br i1 %tobool.not.i.i.i.i, label %if.then61.i.i.input_abs_set_res.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

if.then61.i.i.input_abs_set_res.exit.i.i.i_crit_edge: ; preds = %if.then61.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %input_abs_set_res.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then61.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %resolution.i.i.i.i = getelementptr %struct.input_absinfo, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %resolution.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 20, ptr %resolution.i.i.i.i, align 4
  br label %input_abs_set_res.exit.i.i.i

input_abs_set_res.exit.i.i.i:                     ; preds = %if.then.i.i.i.i, %if.then61.i.i.input_abs_set_res.exit.i.i.i_crit_edge
  call void @input_alloc_absinfo(ptr noundef nonnull %call40.i.i) #16
  %88 = ptrtoint ptr %absinfo.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %absinfo.i.i.i.i, align 8
  %tobool.not.i16.i.i.i = icmp eq ptr %89, null
  br i1 %tobool.not.i16.i.i.i, label %input_abs_set_res.exit.i.i.i.input_abs_set_res.exit19.i.i.i_crit_edge, label %if.then.i18.i.i.i

input_abs_set_res.exit.i.i.i.input_abs_set_res.exit19.i.i.i_crit_edge: ; preds = %input_abs_set_res.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %input_abs_set_res.exit19.i.i.i

if.then.i18.i.i.i:                                ; preds = %input_abs_set_res.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %resolution.i17.i.i.i = getelementptr %struct.input_absinfo, ptr %89, i32 1, i32 5
  %90 = ptrtoint ptr %resolution.i17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 20, ptr %resolution.i17.i.i.i, align 4
  br label %input_abs_set_res.exit19.i.i.i

input_abs_set_res.exit19.i.i.i:                   ; preds = %if.then.i18.i.i.i, %input_abs_set_res.exit.i.i.i.input_abs_set_res.exit19.i.i.i_crit_edge
  call void @input_alloc_absinfo(ptr noundef nonnull %call40.i.i) #16
  %91 = ptrtoint ptr %absinfo.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %absinfo.i.i.i.i, align 8
  %tobool.not.i21.i.i.i = icmp eq ptr %92, null
  br i1 %tobool.not.i21.i.i.i, label %input_abs_set_res.exit19.i.i.i.input_abs_set_res.exit24.i.i.i_crit_edge, label %if.then.i23.i.i.i

input_abs_set_res.exit19.i.i.i.input_abs_set_res.exit24.i.i.i_crit_edge: ; preds = %input_abs_set_res.exit19.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %input_abs_set_res.exit24.i.i.i

if.then.i23.i.i.i:                                ; preds = %input_abs_set_res.exit19.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %resolution.i22.i.i.i = getelementptr %struct.input_absinfo, ptr %92, i32 53, i32 5
  %93 = ptrtoint ptr %resolution.i22.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 20, ptr %resolution.i22.i.i.i, align 4
  br label %input_abs_set_res.exit24.i.i.i

input_abs_set_res.exit24.i.i.i:                   ; preds = %if.then.i23.i.i.i, %input_abs_set_res.exit19.i.i.i.input_abs_set_res.exit24.i.i.i_crit_edge
  call void @input_alloc_absinfo(ptr noundef nonnull %call40.i.i) #16
  %94 = ptrtoint ptr %absinfo.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %absinfo.i.i.i.i, align 8
  %tobool.not.i26.i.i.i = icmp eq ptr %95, null
  br i1 %tobool.not.i26.i.i.i, label %input_abs_set_res.exit24.i.i.i.input_abs_set_res.exit29.i.i.i_crit_edge, label %if.then.i28.i.i.i

input_abs_set_res.exit24.i.i.i.input_abs_set_res.exit29.i.i.i_crit_edge: ; preds = %input_abs_set_res.exit24.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %input_abs_set_res.exit29.i.i.i

if.then.i28.i.i.i:                                ; preds = %input_abs_set_res.exit24.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %resolution.i27.i.i.i = getelementptr %struct.input_absinfo, ptr %95, i32 54, i32 5
  %96 = ptrtoint ptr %resolution.i27.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 20, ptr %resolution.i27.i.i.i, align 4
  br label %input_abs_set_res.exit29.i.i.i

input_abs_set_res.exit29.i.i.i:                   ; preds = %if.then.i28.i.i.i, %input_abs_set_res.exit24.i.i.i.input_abs_set_res.exit29.i.i.i_crit_edge
  %97 = ptrtoint ptr %t19_num_keys.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %t19_num_keys.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp30.not.i.i.i = icmp eq i32 %98, 0
  br i1 %cmp30.not.i.i.i, label %input_abs_set_res.exit29.i.i.i.if.end63.i.i_crit_edge, label %for.body.lr.ph.i.i.i

input_abs_set_res.exit29.i.i.i.if.end63.i.i_crit_edge: ; preds = %input_abs_set_res.exit29.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end63.i.i

for.body.lr.ph.i.i.i:                             ; preds = %input_abs_set_res.exit29.i.i.i
  %t19_keymap.i.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 51
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.031.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %99 = ptrtoint ptr %t19_keymap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %t19_keymap.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr i32, ptr %100, i32 %i.031.i.i.i
  %101 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp1.not.i.i.i = icmp eq i32 %102, 0
  br i1 %cmp1.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @input_set_capability(ptr noundef %call40.i.i, i32 noundef 1, i32 noundef %102) #16
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw i32 %i.031.i.i.i, 1
  %103 = ptrtoint ptr %t19_num_keys.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %t19_num_keys.i.i, align 4
  %cmp.i.i.i = icmp ult i32 %inc.i.i.i, %104
  br i1 %cmp.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.if.end63.i.i_crit_edge

for.inc.i.i.i.if.end63.i.i_crit_edge:             ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end63.i.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.i

if.end63.i.i:                                     ; preds = %for.inc.i.i.i.if.end63.i.i_crit_edge, %input_abs_set_res.exit29.i.i.i.if.end63.i.i_crit_edge, %if.end59.i.i.if.end63.i.i_crit_edge
  %mt_flags.0.i.i = phi i32 [ 2, %if.end59.i.i.if.end63.i.i_crit_edge ], [ 1, %input_abs_set_res.exit29.i.i.i.if.end63.i.i_crit_edge ], [ 1, %for.inc.i.i.i.if.end63.i.i_crit_edge ]
  %call64.i.i = call i32 @input_mt_init_slots(ptr noundef %call40.i.i, i32 noundef %num_mt_slots.0.i.i, i32 noundef %mt_flags.0.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i.i)
  %tobool65.not.i.i = icmp eq i32 %call64.i.i, 0
  br i1 %tobool65.not.i.i, label %if.end70.i.i, label %do.end69.i.i

do.end69.i.i:                                     ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.201, i32 noundef %call64.i.i) #19
  br label %err_free_mem.i.i

if.end70.i.i:                                     ; preds = %if.end63.i.i
  %105 = ptrtoint ptr %multitouch.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %multitouch.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %106)
  %cmp73.i.i = icmp eq i8 %106, 100
  br i1 %cmp73.i.i, label %if.then75.i.i, label %if.end70.i.i.if.end76.i.i_crit_edge

if.end70.i.i.if.end76.i.i_crit_edge:              ; preds = %if.end70.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end76.i.i

if.then75.i.i:                                    ; preds = %if.end70.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @input_set_abs_params(ptr noundef %call40.i.i, i32 noundef 55, i32 noundef 0, i32 noundef 15, i32 noundef 0, i32 noundef 0) #16
  call void @input_set_abs_params(ptr noundef %call40.i.i, i32 noundef 59, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #16
  br label %if.end76.i.i

if.end76.i.i:                                     ; preds = %if.then75.i.i, %if.end70.i.i.if.end76.i.i_crit_edge
  %107 = ptrtoint ptr %max_x.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %max_x.i.i, align 8
  call void @input_set_abs_params(ptr noundef %call40.i.i, i32 noundef 53, i32 noundef 0, i32 noundef %108, i32 noundef 0, i32 noundef 0) #16
  %109 = ptrtoint ptr %max_y.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %max_y.i.i, align 4
  call void @input_set_abs_params(ptr noundef %call40.i.i, i32 noundef 54, i32 noundef 0, i32 noundef %110, i32 noundef 0, i32 noundef 0) #16
  %111 = ptrtoint ptr %multitouch.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %multitouch.i, align 8
  %113 = zext i8 %112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.271)
  switch i8 %112, label %if.end76.i.i.if.end92.i.i_crit_edge [
    i8 9, label %if.end76.i.i.if.then91.i.i_crit_edge
    i8 100, label %land.lhs.true88.i.i
  ]

if.end76.i.i.if.then91.i.i_crit_edge:             ; preds = %if.end76.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then91.i.i

if.end76.i.i.if.end92.i.i_crit_edge:              ; preds = %if.end76.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end92.i.i

land.lhs.true88.i.i:                              ; preds = %if.end76.i.i
  %t100_aux_area.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 17
  %114 = ptrtoint ptr %t100_aux_area.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %t100_aux_area.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool90.not.i.i = icmp eq i8 %115, 0
  br i1 %tobool90.not.i.i, label %land.lhs.true88.i.i.land.lhs.true102.i.i_crit_edge, label %land.lhs.true88.i.i.if.then91.i.i_crit_edge

land.lhs.true88.i.i.if.then91.i.i_crit_edge:      ; preds = %land.lhs.true88.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then91.i.i

land.lhs.true88.i.i.land.lhs.true102.i.i_crit_edge: ; preds = %land.lhs.true88.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true102.i.i

if.then91.i.i:                                    ; preds = %land.lhs.true88.i.i.if.then91.i.i_crit_edge, %if.end76.i.i.if.then91.i.i_crit_edge
  call void @input_set_abs_params(ptr noundef %call40.i.i, i32 noundef 48, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #16
  %116 = ptrtoint ptr %multitouch.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %.pr.i.i = load i8, ptr %multitouch.i, align 8
  br label %if.end92.i.i

if.end92.i.i:                                     ; preds = %if.then91.i.i, %if.end76.i.i.if.end92.i.i_crit_edge
  %117 = phi i8 [ %112, %if.end76.i.i.if.end92.i.i_crit_edge ], [ %.pr.i.i, %if.then91.i.i ]
  %118 = zext i8 %117 to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values.272)
  switch i8 %117, label %if.end92.i.i.if.end107.i.i_crit_edge [
    i8 9, label %if.end92.i.i.if.then106.i.i_crit_edge
    i8 100, label %if.end92.i.i.land.lhs.true102.i.i_crit_edge
  ]

if.end92.i.i.land.lhs.true102.i.i_crit_edge:      ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true102.i.i

if.end92.i.i.if.then106.i.i_crit_edge:            ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then106.i.i

if.end92.i.i.if.end107.i.i_crit_edge:             ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end107.i.i

land.lhs.true102.i.i:                             ; preds = %if.end92.i.i.land.lhs.true102.i.i_crit_edge, %land.lhs.true88.i.i.land.lhs.true102.i.i_crit_edge
  %t100_aux_ampl103.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 16
  %119 = ptrtoint ptr %t100_aux_ampl103.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %t100_aux_ampl103.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool105.not.i.i = icmp eq i8 %120, 0
  br i1 %tobool105.not.i.i, label %land.lhs.true102.i.i.if.end107.i.i_crit_edge, label %land.lhs.true102.i.i.if.then106.i.i_crit_edge

land.lhs.true102.i.i.if.then106.i.i_crit_edge:    ; preds = %land.lhs.true102.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then106.i.i

land.lhs.true102.i.i.if.end107.i.i_crit_edge:     ; preds = %land.lhs.true102.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end107.i.i

if.then106.i.i:                                   ; preds = %land.lhs.true102.i.i.if.then106.i.i_crit_edge, %if.end92.i.i.if.then106.i.i_crit_edge
  call void @input_set_abs_params(ptr noundef %call40.i.i, i32 noundef 58, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #16
  br label %if.end107.i.i

if.end107.i.i:                                    ; preds = %if.then106.i.i, %land.lhs.true102.i.i.if.end107.i.i_crit_edge, %if.end92.i.i.if.end107.i.i_crit_edge
  %121 = ptrtoint ptr %multitouch.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %multitouch.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %122)
  %cmp110.i.i = icmp eq i8 %122, 100
  br i1 %cmp110.i.i, label %land.lhs.true112.i.i, label %if.end107.i.i.if.end126.i.i_crit_edge

if.end107.i.i.if.end126.i.i_crit_edge:            ; preds = %if.end107.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end126.i.i

land.lhs.true112.i.i:                             ; preds = %if.end107.i.i
  %t100_aux_vect.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 18
  %123 = ptrtoint ptr %t100_aux_vect.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %t100_aux_vect.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool114.not.i.i = icmp eq i8 %124, 0
  br i1 %tobool114.not.i.i, label %land.lhs.true112.i.i.if.end116.i.i_crit_edge, label %if.then115.i.i

land.lhs.true112.i.i.if.end116.i.i_crit_edge:     ; preds = %land.lhs.true112.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end116.i.i

if.then115.i.i:                                   ; preds = %land.lhs.true112.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @input_set_abs_params(ptr noundef %call40.i.i, i32 noundef 52, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #16
  br label %if.end116.i.i

if.end116.i.i:                                    ; preds = %if.then115.i.i, %land.lhs.true112.i.i.if.end116.i.i_crit_edge
  %125 = ptrtoint ptr %multitouch.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %.pr219.i.i = load i8, ptr %multitouch.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %.pr219.i.i)
  %cmp119.i.i = icmp eq i8 %.pr219.i.i, 100
  br i1 %cmp119.i.i, label %land.lhs.true121.i.i, label %if.end116.i.i.if.end126.i.i_crit_edge

if.end116.i.i.if.end126.i.i_crit_edge:            ; preds = %if.end116.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end126.i.i

land.lhs.true121.i.i:                             ; preds = %if.end116.i.i
  %126 = ptrtoint ptr %t100_aux_vect.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %t100_aux_vect.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool124.not.i.i = icmp eq i8 %127, 0
  br i1 %tobool124.not.i.i, label %land.lhs.true121.i.i.if.end126.i.i_crit_edge, label %if.then125.i.i

land.lhs.true121.i.i.if.end126.i.i_crit_edge:     ; preds = %land.lhs.true121.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end126.i.i

if.then125.i.i:                                   ; preds = %land.lhs.true121.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @input_set_abs_params(ptr noundef %call40.i.i, i32 noundef 52, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #16
  br label %if.end126.i.i

if.end126.i.i:                                    ; preds = %if.then125.i.i, %land.lhs.true121.i.i.if.end126.i.i_crit_edge, %if.end116.i.i.if.end126.i.i_crit_edge, %if.end107.i.i.if.end126.i.i_crit_edge
  %driver_data.i.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call40.i.i, i32 0, i32 40, i32 8
  %128 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %ctx, ptr %driver_data.i.i.i.i, align 4
  %call127.i.i = call i32 @input_register_device(ptr noundef %call40.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127.i.i)
  %tobool128.not.i.i = icmp eq i32 %call127.i.i, 0
  br i1 %tobool128.not.i.i, label %mxt_initialize_input_device.exit.i, label %do.end132.i.i

do.end132.i.i:                                    ; preds = %if.end126.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.204, i32 noundef %call127.i.i) #19
  br label %err_free_mem.i.i

err_free_mem.i.i:                                 ; preds = %do.end132.i.i, %do.end69.i.i
  call void @input_free_device(ptr noundef %call40.i.i) #16
  br label %mxt_configure_objects.exit

mxt_initialize_input_device.exit.i:               ; preds = %if.end126.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %input_dev134.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 1
  %129 = ptrtoint ptr %input_dev134.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call40.i.i, ptr %input_dev134.i.i, align 4
  br label %if.end21.i

do.end20.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i, ptr noundef nonnull @.str.110) #19
  br label %if.end21.i

if.end21.i:                                       ; preds = %do.end20.i, %mxt_initialize_input_device.exit.i
  %info1.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 4
  %130 = ptrtoint ptr %info1.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %info1.i.i, align 4
  %dbg2.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 30
  %object_num.i.i.i = getelementptr inbounds %struct.mxt_info, ptr %131, i32 0, i32 6
  %132 = ptrtoint ptr %object_num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %object_num.i.i.i, align 1
  %conv.i.i.i = zext i8 %133 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %cmp15.not.i.i.i = icmp eq i8 %133, 0
  br i1 %cmp15.not.i.i.i, label %if.end21.i.mxt_get_object.exit.thread.i.i_crit_edge, label %for.body.lr.ph.i.i1.i

if.end21.i.mxt_get_object.exit.thread.i.i_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_get_object.exit.thread.i.i

for.body.lr.ph.i.i1.i:                            ; preds = %if.end21.i
  %object_table.i.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 3
  %134 = ptrtoint ptr %object_table.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %object_table.i.i.i, align 8
  br label %for.body.i.i3.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i3.i
  %inc.i.i2.i = add nuw nsw i32 %i.016.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i2.i, %conv.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.mxt_get_object.exit.thread.i.i_crit_edge, label %for.cond.i.i.i.for.body.i.i3.i_crit_edge

for.cond.i.i.i.for.body.i.i3.i_crit_edge:         ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i3.i

for.cond.i.i.i.mxt_get_object.exit.thread.i.i_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_get_object.exit.thread.i.i

for.body.i.i3.i:                                  ; preds = %for.cond.i.i.i.for.body.i.i3.i_crit_edge, %for.body.lr.ph.i.i1.i
  %i.016.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i1.i ], [ %inc.i.i2.i, %for.cond.i.i.i.for.body.i.i3.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr %struct.mxt_object, ptr %135, i32 %i.016.i.i.i
  %136 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %add.ptr.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %137)
  %cmp5.i.i.i = icmp eq i8 %137, 6
  br i1 %cmp5.i.i.i, label %mxt_get_object.exit.i.i, label %for.cond.i.i.i

mxt_get_object.exit.thread.i.i:                   ; preds = %for.cond.i.i.i.mxt_get_object.exit.thread.i.i_crit_edge, %if.end21.i.mxt_get_object.exit.thread.i.i_crit_edge
  %138 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ctx, align 8
  %dev.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %139, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.184, i32 noundef 6) #19
  br label %do.end79.i.i

mxt_get_object.exit.i.i:                          ; preds = %for.body.i.i3.i
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i.i, label %mxt_get_object.exit.i.i.do.end79.i.i_crit_edge, label %if.end.i.i

mxt_get_object.exit.i.i.do.end79.i.i_crit_edge:   ; preds = %mxt_get_object.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end79.i.i

if.end.i.i:                                       ; preds = %mxt_get_object.exit.i.i
  %start_address.i.i = getelementptr %struct.mxt_object, ptr %135, i32 %i.016.i.i.i, i32 1
  %140 = ptrtoint ptr %start_address.i.i to i32
  call void @__asan_loadN_noabort(i32 %140, i32 2)
  %141 = load i16, ptr %start_address.i.i, align 1
  %add.i4.i = add i16 %141, 5
  %diag_cmd_address.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 30, i32 1
  %142 = ptrtoint ptr %diag_cmd_address.i.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %add.i4.i, ptr %diag_cmd_address.i.i, align 2
  %143 = ptrtoint ptr %object_num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %object_num.i.i.i, align 1
  %conv.i136.i.i = zext i8 %144 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %cmp15.not.i137.i.i = icmp eq i8 %144, 0
  br i1 %cmp15.not.i137.i.i, label %if.end.i.i.mxt_get_object.exit150.thread.i.i_crit_edge, label %if.end.i.i.for.body.i146.i.i_crit_edge

if.end.i.i.for.body.i146.i.i_crit_edge:           ; preds = %if.end.i.i
  br label %for.body.i146.i.i

if.end.i.i.mxt_get_object.exit150.thread.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_get_object.exit150.thread.i.i

for.cond.i142.i.i:                                ; preds = %for.body.i146.i.i
  %inc.i140.i.i = add nuw nsw i32 %i.016.i143.i.i, 1
  %exitcond.not.i141.i.i = icmp eq i32 %inc.i140.i.i, %conv.i136.i.i
  br i1 %exitcond.not.i141.i.i, label %for.cond.i142.i.i.mxt_get_object.exit150.thread.i.i_crit_edge, label %for.cond.i142.i.i.for.body.i146.i.i_crit_edge

for.cond.i142.i.i.for.body.i146.i.i_crit_edge:    ; preds = %for.cond.i142.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i146.i.i

for.cond.i142.i.i.mxt_get_object.exit150.thread.i.i_crit_edge: ; preds = %for.cond.i142.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_get_object.exit150.thread.i.i

for.body.i146.i.i:                                ; preds = %for.cond.i142.i.i.for.body.i146.i.i_crit_edge, %if.end.i.i.for.body.i146.i.i_crit_edge
  %i.016.i143.i.i = phi i32 [ %inc.i140.i.i, %for.cond.i142.i.i.for.body.i146.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i146.i.i_crit_edge ]
  %add.ptr.i144.i.i = getelementptr %struct.mxt_object, ptr %135, i32 %i.016.i143.i.i
  %145 = ptrtoint ptr %add.ptr.i144.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %add.ptr.i144.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %146)
  %cmp5.i145.i.i = icmp eq i8 %146, 37
  br i1 %cmp5.i145.i.i, label %mxt_get_object.exit150.i.i, label %for.cond.i142.i.i

mxt_get_object.exit150.thread.i.i:                ; preds = %for.cond.i142.i.i.mxt_get_object.exit150.thread.i.i_crit_edge, %if.end.i.i.mxt_get_object.exit150.thread.i.i_crit_edge
  %147 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ctx, align 8
  %dev.i147.i.i = getelementptr inbounds %struct.i2c_client, ptr %148, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i147.i.i, ptr noundef nonnull @.str.184, i32 noundef 37) #19
  br label %do.end79.i.i

mxt_get_object.exit150.i.i:                       ; preds = %for.body.i146.i.i
  %tobool5.not.i.i = icmp eq ptr %add.ptr.i144.i.i, null
  br i1 %tobool5.not.i.i, label %mxt_get_object.exit150.i.i.do.end79.i.i_crit_edge, label %if.end7.i.i

mxt_get_object.exit150.i.i.do.end79.i.i_crit_edge: ; preds = %mxt_get_object.exit150.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end79.i.i

if.end7.i.i:                                      ; preds = %mxt_get_object.exit150.i.i
  %size_minus_one.i.i.i = getelementptr %struct.mxt_object, ptr %135, i32 %i.016.i143.i.i, i32 2
  %149 = ptrtoint ptr %size_minus_one.i.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %size_minus_one.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %150)
  %cmp.not.i.i = icmp eq i8 %150, -127
  br i1 %cmp.not.i.i, label %if.end11.i.i, label %do.end.i5.i

do.end.i5.i:                                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %151 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ctx, align 8
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %152, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.209) #19
  br label %do.end79.i.i

if.end11.i.i:                                     ; preds = %if.end7.i.i
  %start_address12.i.i = getelementptr %struct.mxt_object, ptr %135, i32 %i.016.i143.i.i, i32 1
  %153 = ptrtoint ptr %start_address12.i.i to i32
  call void @__asan_loadN_noabort(i32 %153, i32 2)
  %154 = load i16, ptr %start_address12.i.i, align 1
  %155 = ptrtoint ptr %dbg2.i.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %154, ptr %dbg2.i.i, align 8
  %xsize.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 12
  %156 = ptrtoint ptr %xsize.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %xsize.i.i, align 1
  %conv13.i.i = zext i8 %157 to i32
  %ysize.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 13
  %158 = ptrtoint ptr %ysize.i.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %ysize.i.i, align 4
  %conv14.i.i = zext i8 %159 to i32
  %mul.i.i = mul nuw nsw i32 %conv14.i.i, %conv13.i.i
  %t37_nodes.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 30, i32 4
  %160 = ptrtoint ptr %t37_nodes.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %mul.i.i, ptr %t37_nodes.i.i, align 4
  %161 = ptrtoint ptr %131 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %131, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %162)
  %cmp16.i.i = icmp eq i8 %162, -96
  br i1 %cmp16.i.i, label %if.end11.i.i.if.end26.i.i_crit_edge, label %if.else.i.i

if.end11.i.i.if.end26.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26.i.i

if.else.i.i:                                      ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %matrix_ysize.i.i = getelementptr inbounds %struct.mxt_info, ptr %131, i32 0, i32 5
  %163 = ptrtoint ptr %matrix_ysize.i.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %matrix_ysize.i.i, align 1
  %conv21.i.i = zext i8 %164 to i32
  %mul22.i.i = shl nuw nsw i32 %conv13.i.i, 1
  %mul23.i.i = mul nuw nsw i32 %mul22.i.i, %conv21.i.i
  %sub.i6.i = add nuw nsw i32 %mul23.i.i, 127
  %div133.i.i = lshr i32 %sub.i6.i, 7
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.else.i.i, %if.end11.i.i.if.end26.i.i_crit_edge
  %div133.sink.i.i = phi i32 [ %div133.i.i, %if.else.i.i ], [ 24, %if.end11.i.i.if.end26.i.i_crit_edge ]
  %165 = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 30, i32 3
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %div133.sink.i.i, ptr %165, align 8
  %167 = mul nuw nsw i32 %div133.sink.i.i, 130
  %168 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ctx, align 8
  %dev28.i.i = getelementptr inbounds %struct.i2c_client, ptr %169, i32 0, i32 4
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev28.i.i, i32 noundef %167, i32 noundef 3264) #16
  %t37_buf.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 30, i32 2
  %170 = ptrtoint ptr %t37_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %call5.i.i.i, ptr %t37_buf.i.i, align 4
  %tobool32.not.i.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool32.not.i.i, label %if.end26.i.i.do.end79.i.i_crit_edge, label %if.end34.i.i

if.end26.i.i.do.end79.i.i_crit_edge:              ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end79.i.i

if.end34.i.i:                                     ; preds = %if.end26.i.i
  %format.i.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 30, i32 6
  %171 = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 30, i32 6, i32 2
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 909198420, ptr %171, align 4
  %xy_switch.i.i7.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 11
  %173 = ptrtoint ptr %xy_switch.i.i7.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %xy_switch.i.i7.i, align 2, !range !534
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %tobool.not.i.i8.i = icmp eq i8 %174, 0
  %cond.in.in.i.i.i = select i1 %tobool.not.i.i8.i, ptr %xsize.i.i, ptr %ysize.i.i
  %175 = ptrtoint ptr %cond.in.in.i.i.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %cond.in.i.i.i = load i8, ptr %cond.in.in.i.i.i, align 1
  %cond.i.i.i = zext i8 %cond.in.i.i.i to i32
  %176 = ptrtoint ptr %format.i.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %cond.i.i.i, ptr %format.i.i.i, align 4
  %cond16.in.in.i.i.i = select i1 %tobool.not.i.i8.i, ptr %ysize.i.i, ptr %xsize.i.i
  %177 = ptrtoint ptr %cond16.in.in.i.i.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %cond16.in.i.i.i = load i8, ptr %cond16.in.in.i.i.i, align 1
  %cond16.i.i.i = zext i8 %cond16.in.i.i.i to i32
  %height.i.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 30, i32 6, i32 1
  %178 = ptrtoint ptr %height.i.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %cond16.i.i.i, ptr %height.i.i.i, align 4
  %field.i.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 30, i32 6, i32 3
  %179 = ptrtoint ptr %field.i.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 1, ptr %field.i.i.i, align 4
  %colorspace.i.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 30, i32 6, i32 6
  %180 = ptrtoint ptr %colorspace.i.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 11, ptr %colorspace.i.i.i, align 4
  %mul.i.i.i = shl nuw nsw i32 %cond.i.i.i, 1
  %bytesperline.i.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 30, i32 6, i32 4
  %181 = ptrtoint ptr %bytesperline.i.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %mul.i.i.i, ptr %bytesperline.i.i.i, align 4
  %mul21.i.i.i = mul nuw nsw i32 %mul.i.i.i, %cond16.i.i.i
  %sizeimage.i.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 30, i32 6, i32 5
  %182 = ptrtoint ptr %sizeimage.i.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %mul21.i.i.i, ptr %sizeimage.i.i.i, align 4
  %input.i.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 30, i32 10
  %183 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 0, ptr %input.i.i.i, align 4
  %v4l2.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 30, i32 5
  %name.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 30, i32 5, i32 4
  %184 = call ptr @memcpy(ptr %name.i.i, ptr @.str, i32 13)
  %185 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %ctx, align 8
  %dev38.i.i = getelementptr inbounds %struct.i2c_client, ptr %186, i32 0, i32 4
  %call40.i9.i = call i32 @v4l2_device_register(ptr noundef %dev38.i.i, ptr noundef %v4l2.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i9.i)
  %tobool41.not.i10.i = icmp eq i32 %call40.i9.i, 0
  br i1 %tobool41.not.i10.i, label %do.body44.i.i, label %if.end34.i.i.do.end79.i.i_crit_edge

if.end34.i.i.do.end79.i.i_crit_edge:              ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end79.i.i

do.body44.i.i:                                    ; preds = %if.end34.i.i
  %lock.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 30, i32 9
  call void @__mutex_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.212, ptr noundef nonnull @mxt_debug_init.__key) #16
  %queue.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 30, i32 8
  %187 = call ptr @memcpy(ptr %queue.i.i, ptr @mxt_queue, i32 512)
  %drv_priv.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 30, i32 8, i32 10
  %188 = ptrtoint ptr %drv_priv.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %ctx, ptr %drv_priv.i.i, align 8
  %lock50.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 30, i32 8, i32 5
  %189 = ptrtoint ptr %lock50.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %lock.i.i, ptr %lock50.i.i, align 4
  %190 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %ctx, align 8
  %dev52.i.i = getelementptr inbounds %struct.i2c_client, ptr %191, i32 0, i32 4
  %dev54.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 30, i32 8, i32 2
  %192 = ptrtoint ptr %dev54.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %dev52.i.i, ptr %dev54.i.i, align 8
  %call56.i.i = call i32 @vb2_queue_init(ptr noundef %queue.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i.i)
  %tobool57.not.i11.i = icmp eq i32 %call56.i.i, 0
  br i1 %tobool57.not.i11.i, label %if.end59.i13.i, label %do.body44.i.i.error_unreg_v4l2.i.i_crit_edge

do.body44.i.i.error_unreg_v4l2.i.i_crit_edge:     ; preds = %do.body44.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %error_unreg_v4l2.i.i

if.end59.i13.i:                                   ; preds = %do.body44.i.i
  %vdev.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 30, i32 7
  %193 = call ptr @memcpy(ptr %vdev.i.i, ptr @mxt_video_device, i32 1352)
  %v4l2_dev.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 30, i32 7, i32 7
  %194 = ptrtoint ptr %v4l2_dev.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %v4l2.i.i, ptr %v4l2_dev.i.i, align 4
  %lock64.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 30, i32 7, i32 26
  %195 = ptrtoint ptr %lock64.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %lock.i.i, ptr %lock64.i.i, align 8
  %vfl_dir.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 30, i32 7, i32 14
  %196 = ptrtoint ptr %vfl_dir.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 0, ptr %vfl_dir.i.i, align 4
  %queue68.i.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 30, i32 7, i32 10
  %197 = ptrtoint ptr %queue68.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %queue.i.i, ptr %queue68.i.i, align 8
  %driver_data.i.i.i12.i = getelementptr inbounds %struct.mxt_data, ptr %ctx, i32 0, i32 30, i32 7, i32 5, i32 8
  %198 = ptrtoint ptr %driver_data.i.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %ctx, ptr %driver_data.i.i.i12.i, align 4
  %call.i.i.i = call i32 @__video_register_device(ptr noundef %vdev.i.i, i32 noundef 5, i32 noundef -1, i32 noundef 1, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool72.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool72.not.i.i, label %if.end59.i13.i.mxt_configure_objects.exit_crit_edge, label %if.end59.i13.i.error_unreg_v4l2.i.i_crit_edge

if.end59.i13.i.error_unreg_v4l2.i.i_crit_edge:    ; preds = %if.end59.i13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %error_unreg_v4l2.i.i

if.end59.i13.i.mxt_configure_objects.exit_crit_edge: ; preds = %if.end59.i13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_configure_objects.exit

error_unreg_v4l2.i.i:                             ; preds = %if.end59.i13.i.error_unreg_v4l2.i.i_crit_edge, %do.body44.i.i.error_unreg_v4l2.i.i_crit_edge
  call void @v4l2_device_unregister(ptr noundef %v4l2.i.i) #16
  br label %do.end79.i.i

do.end79.i.i:                                     ; preds = %error_unreg_v4l2.i.i, %if.end34.i.i.do.end79.i.i_crit_edge, %if.end26.i.i.do.end79.i.i_crit_edge, %do.end.i5.i, %mxt_get_object.exit150.i.i.do.end79.i.i_crit_edge, %mxt_get_object.exit150.thread.i.i, %mxt_get_object.exit.i.i.do.end79.i.i_crit_edge, %mxt_get_object.exit.thread.i.i
  %199 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %ctx, align 8
  %dev81.i.i = getelementptr inbounds %struct.i2c_client, ptr %200, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev81.i.i, ptr noundef nonnull @.str.214) #19
  br label %mxt_configure_objects.exit

mxt_configure_objects.exit:                       ; preds = %do.end79.i.i, %if.end59.i13.i.mxt_configure_objects.exit_crit_edge, %err_free_mem.i.i, %do.end37.i.i.mxt_configure_objects.exit_crit_edge, %do.end15.i.i, %do.end.i
  call void @release_firmware(ptr noundef %cfg) #16
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxt_calculate_crc(ptr noundef readonly %base, i32 noundef %start_off, i32 noundef %end_off) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr1 = getelementptr i8, ptr %base, i32 %end_off
  %add.ptr2 = getelementptr i8, ptr %add.ptr1, i32 -1
  call void @__sanitizer_cov_trace_cmp4(i32 %end_off, i32 %start_off)
  %cmp = icmp slt i32 %end_off, %start_off
  br i1 %cmp, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %add.ptr = getelementptr i8, ptr %base, i32 %start_off
  %cmp328 = icmp ult ptr %add.ptr, %add.ptr2
  br i1 %cmp328, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %ptr.030 = phi ptr [ %add.ptr5, %while.body.while.body_crit_edge ], [ %add.ptr, %while.cond.preheader.while.body_crit_edge ]
  %crc.029 = phi i32 [ %spec.select.i, %while.body.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %0 = ptrtoint ptr %ptr.030 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ptr.030, align 1
  %add.ptr4 = getelementptr i8, ptr %ptr.030, i32 1
  %2 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr4, align 1
  %conv.i = zext i8 %3 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %conv1.i = zext i8 %1 to i32
  %or.i = or i32 %shl.i, %conv1.i
  %shl2.i = shl i32 %crc.029, 1
  %xor.i = xor i32 %or.i, %shl2.i
  %4 = and i32 %crc.029, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  %xor3.i = xor i32 %xor.i, 8388635
  %spec.select.i = select i1 %tobool.not.i, i32 %xor.i, i32 %xor3.i
  %add.ptr5 = getelementptr i8, ptr %ptr.030, i32 2
  %cmp3 = icmp ult ptr %add.ptr5, %add.ptr2
  br i1 %cmp3, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %crc.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %spec.select.i, %while.body.while.end_crit_edge ]
  %ptr.0.lcssa = phi ptr [ %add.ptr, %while.cond.preheader.while.end_crit_edge ], [ %add.ptr5, %while.body.while.end_crit_edge ]
  %cmp6 = icmp eq ptr %ptr.0.lcssa, %add.ptr2
  br i1 %cmp6, label %if.then7, label %while.end.if.end8_crit_edge

while.end.if.end8_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then7:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  %5 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr2, align 1
  %conv1.i20 = zext i8 %6 to i32
  %shl2.i21 = shl i32 %crc.0.lcssa, 1
  %xor.i22 = xor i32 %shl2.i21, %conv1.i20
  %7 = and i32 %crc.0.lcssa, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i23 = icmp eq i32 %7, 0
  %xor3.i24 = xor i32 %xor.i22, 8388635
  %spec.select.i25 = select i1 %tobool.not.i23, i32 %xor.i22, i32 %xor3.i24
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %while.end.if.end8_crit_edge
  %crc.1 = phi i32 [ %spec.select.i25, %if.then7 ], [ %crc.0.lcssa, %while.end.if.end8_crit_edge ]
  %and = and i32 %crc.1, 16777215
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end8 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxt_parse_object_table(ptr noundef %data, ptr nocapture noundef %object_table) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %mem_size = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 15
  %2 = ptrtoint ptr %mem_size to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %mem_size, align 2
  %info = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 4
  %3 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %info, align 4
  %object_num202 = getelementptr inbounds %struct.mxt_info, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %object_num202 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %object_num202, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp204.not = icmp eq i8 %6, 0
  br i1 %cmp204.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %multitouch63 = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 28
  %T100_reportid_min = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 46
  %T100_reportid_max = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 47
  %num_touchids68 = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 27
  %T19_reportid = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 44
  %T44_address = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 45
  %T18_address = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 43
  %T9_reportid_min = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 41
  %T9_reportid_max = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 42
  %T71_address = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 40
  %T7_address = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 39
  %T6_reportid = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 37
  %T6_address = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 38
  %T5_msg_size40 = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 36
  %T5_address = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 35
  br label %for.body

for.body:                                         ; preds = %if.end87.for.body_crit_edge, %for.body.lr.ph
  %reportid.0209 = phi i8 [ 1, %for.body.lr.ph ], [ %reportid.1, %if.end87.for.body_crit_edge ]
  %i.0205 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end87.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.mxt_object, ptr %object_table, i32 %i.0205
  %start_address = getelementptr %struct.mxt_object, ptr %object_table, i32 %i.0205, i32 1
  %7 = ptrtoint ptr %start_address to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %start_address, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #16
  %10 = ptrtoint ptr %start_address to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %start_address, align 2
  %num_report_ids = getelementptr %struct.mxt_object, ptr %object_table, i32 %i.0205, i32 4
  %11 = ptrtoint ptr %num_report_ids to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_report_ids, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %for.body.do.body_crit_edge, label %if.then

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %instances_minus_one.i = getelementptr %struct.mxt_object, ptr %object_table, i32 %i.0205, i32 3
  %13 = ptrtoint ptr %instances_minus_one.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %instances_minus_one.i, align 1
  %add.i = add i8 %14, 1
  %15 = mul i8 %add.i, %12
  %conv6 = add i8 %15, %reportid.0209
  %sub = add i8 %conv6, -1
  br label %do.body

do.body:                                          ; preds = %if.then, %for.body.do.body_crit_edge
  %reportid.1 = phi i8 [ %conv6, %if.then ], [ %reportid.0209, %for.body.do.body_crit_edge ]
  %min_id.0 = phi i8 [ %reportid.0209, %if.then ], [ 0, %for.body.do.body_crit_edge ]
  %max_id.0 = phi i8 [ %sub, %if.then ], [ 0, %for.body.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxt_parse_object_table.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxt_parse_object_table, %if.then13)) #16
          to label %do.end [label %if.then13], !srcloc !536

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr, align 1
  %conv15 = zext i8 %19 to i32
  %20 = ptrtoint ptr %start_address to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %start_address, align 1
  %conv17 = zext i16 %21 to i32
  %size_minus_one.i = getelementptr %struct.mxt_object, ptr %object_table, i32 %i.0205, i32 2
  %22 = ptrtoint ptr %size_minus_one.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %size_minus_one.i, align 1
  %conv.i184 = zext i8 %23 to i32
  %add.i185 = add nuw nsw i32 %conv.i184, 1
  %instances_minus_one.i186 = getelementptr %struct.mxt_object, ptr %object_table, i32 %i.0205, i32 3
  %24 = ptrtoint ptr %instances_minus_one.i186 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %instances_minus_one.i186, align 1
  %conv.i187 = zext i8 %25 to i32
  %add.i188 = add nuw nsw i32 %conv.i187, 1
  %conv20 = zext i8 %min_id.0 to i32
  %conv21 = zext i8 %max_id.0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxt_parse_object_table.__UNIQUE_ID_ddebug309, ptr noundef %dev, ptr noundef nonnull @.str.89, i32 noundef %conv15, i32 noundef %conv17, i32 noundef %add.i185, i32 noundef %add.i188, i32 noundef %conv20, i32 noundef %conv21) #16
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr, align 1
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.273)
  switch i8 %27, label %do.end.sw.epilog_crit_edge [
    i8 5, label %sw.bb
    i8 6, label %sw.bb43
    i8 7, label %sw.bb45
    i8 71, label %sw.bb47
    i8 9, label %sw.bb49
    i8 18, label %sw.bb57
    i8 44, label %sw.bb59
    i8 19, label %sw.bb61
    i8 100, label %sw.bb62
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  %29 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %info, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %32)
  %cmp27 = icmp eq i8 %32, -128
  br i1 %cmp27, label %land.lhs.true, label %sw.bb.if.else36_crit_edge

sw.bb.if.else36_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else36

land.lhs.true:                                    ; preds = %sw.bb
  %version = getelementptr inbounds %struct.mxt_info, ptr %30, i32 0, i32 2
  %33 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %34)
  %cmp31 = icmp ult i8 %34, 32
  br i1 %cmp31, label %if.then33, label %land.lhs.true.if.else36_crit_edge

land.lhs.true.if.else36_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else36

if.then33:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %size_minus_one.i189 = getelementptr %struct.mxt_object, ptr %object_table, i32 %i.0205, i32 2
  %35 = ptrtoint ptr %size_minus_one.i189 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %size_minus_one.i189, align 1
  %add.i191 = add i8 %36, 1
  br label %if.end41

if.else36:                                        ; preds = %land.lhs.true.if.else36_crit_edge, %sw.bb.if.else36_crit_edge
  %size_minus_one.i192 = getelementptr %struct.mxt_object, ptr %object_table, i32 %i.0205, i32 2
  %37 = ptrtoint ptr %size_minus_one.i192 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %size_minus_one.i192, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.else36, %if.then33
  %storemerge = phi i8 [ %38, %if.else36 ], [ %add.i191, %if.then33 ]
  %39 = ptrtoint ptr %T5_msg_size40 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %storemerge, ptr %T5_msg_size40, align 4
  %40 = ptrtoint ptr %start_address to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %start_address, align 1
  %42 = ptrtoint ptr %T5_address to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %T5_address, align 2
  br label %sw.epilog

sw.bb43:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %43 = ptrtoint ptr %T6_reportid to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %min_id.0, ptr %T6_reportid, align 1
  %44 = ptrtoint ptr %start_address to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %start_address, align 1
  %46 = ptrtoint ptr %T6_address to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %T6_address, align 2
  br label %sw.epilog

sw.bb45:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %47 = ptrtoint ptr %start_address to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %start_address, align 1
  %49 = ptrtoint ptr %T7_address to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %T7_address, align 8
  br label %sw.epilog

sw.bb47:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %50 = ptrtoint ptr %start_address to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %start_address, align 1
  %52 = ptrtoint ptr %T71_address to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %T71_address, align 2
  br label %sw.epilog

sw.bb49:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %53 = ptrtoint ptr %multitouch63 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 9, ptr %multitouch63, align 8
  %54 = ptrtoint ptr %T9_reportid_min to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %min_id.0, ptr %T9_reportid_min, align 4
  %55 = ptrtoint ptr %num_report_ids to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %num_report_ids, align 1
  %add53 = add i8 %min_id.0, -1
  %sub54 = add i8 %add53, %56
  %57 = ptrtoint ptr %T9_reportid_max to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %sub54, ptr %T9_reportid_max, align 1
  %58 = load i8, ptr %num_report_ids, align 1
  %59 = ptrtoint ptr %num_touchids68 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %num_touchids68, align 1
  br label %sw.epilog

sw.bb57:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %60 = ptrtoint ptr %start_address to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %start_address, align 1
  %62 = ptrtoint ptr %T18_address to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %T18_address, align 2
  br label %sw.epilog

sw.bb59:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %63 = ptrtoint ptr %start_address to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %start_address, align 1
  %65 = ptrtoint ptr %T44_address to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %T44_address, align 2
  br label %sw.epilog

sw.bb61:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %66 = ptrtoint ptr %T19_reportid to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %min_id.0, ptr %T19_reportid, align 8
  br label %sw.epilog

sw.bb62:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %67 = ptrtoint ptr %multitouch63 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 100, ptr %multitouch63, align 8
  %68 = ptrtoint ptr %T100_reportid_min to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %min_id.0, ptr %T100_reportid_min, align 4
  %69 = ptrtoint ptr %T100_reportid_max to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %max_id.0, ptr %T100_reportid_max, align 1
  %70 = ptrtoint ptr %num_report_ids to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %num_report_ids, align 1
  %sub66 = add i8 %71, -2
  %72 = ptrtoint ptr %num_touchids68 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %sub66, ptr %num_touchids68, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb62, %sw.bb61, %sw.bb59, %sw.bb57, %sw.bb49, %sw.bb47, %sw.bb45, %sw.bb43, %if.end41, %do.end.sw.epilog_crit_edge
  %73 = ptrtoint ptr %start_address to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %start_address, align 1
  %size_minus_one.i195 = getelementptr %struct.mxt_object, ptr %object_table, i32 %i.0205, i32 2
  %75 = ptrtoint ptr %size_minus_one.i195 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %size_minus_one.i195, align 1
  %conv.i196 = zext i8 %76 to i16
  %add.i197 = add nuw nsw i16 %conv.i196, 1
  %instances_minus_one.i198 = getelementptr %struct.mxt_object, ptr %object_table, i32 %i.0205, i32 3
  %77 = ptrtoint ptr %instances_minus_one.i198 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %instances_minus_one.i198, align 1
  %conv.i199 = zext i8 %78 to i16
  %add.i200 = add nuw nsw i16 %conv.i199, 1
  %mul73 = mul i16 %add.i200, %add.i197
  %79 = add i16 %mul73, %74
  %conv76 = add i16 %79, -1
  %80 = ptrtoint ptr %mem_size to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %mem_size, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %conv76, i16 %81)
  %cmp80.not = icmp ult i16 %conv76, %81
  br i1 %cmp80.not, label %sw.epilog.if.end87_crit_edge, label %if.then82

sw.epilog.if.end87_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end87

if.then82:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  %82 = ptrtoint ptr %mem_size to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %79, ptr %mem_size, align 2
  br label %if.end87

if.end87:                                         ; preds = %if.then82, %sw.epilog.if.end87_crit_edge
  %inc = add nuw nsw i32 %i.0205, 1
  %83 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %info, align 4
  %object_num = getelementptr inbounds %struct.mxt_info, ptr %84, i32 0, i32 6
  %85 = ptrtoint ptr %object_num to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %object_num, align 1
  %conv = zext i8 %86 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %if.end87.for.body_crit_edge, label %if.end87.for.end_crit_edge

if.end87.for.end_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end87.for.body_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %if.end87.for.end_crit_edge, %entry.for.end_crit_edge
  %reportid.0.lcssa = phi i8 [ 1, %entry.for.end_crit_edge ], [ %reportid.1, %if.end87.for.end_crit_edge ]
  %max_reportid = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 19
  %87 = ptrtoint ptr %max_reportid to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %reportid.0.lcssa, ptr %max_reportid, align 1
  %T44_address88 = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 45
  %88 = ptrtoint ptr %T44_address88 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %T44_address88, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %tobool90.not = icmp eq i16 %89, 0
  br i1 %tobool90.not, label %for.end.if.end7.i.i_crit_edge, label %land.lhs.true91

for.end.if.end7.i.i_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i.i

land.lhs.true91:                                  ; preds = %for.end
  %conv89 = zext i16 %89 to i32
  %T5_address92 = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 35
  %90 = ptrtoint ptr %T5_address92 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %T5_address92, align 2
  %conv93 = zext i16 %91 to i32
  %add96 = add nuw nsw i32 %conv89, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add96, i32 %conv93)
  %cmp97.not = icmp eq i32 %add96, %conv93
  br i1 %cmp97.not, label %land.lhs.true91.if.end7.i.i_crit_edge, label %do.end102

land.lhs.true91.if.end7.i.i_crit_edge:            ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i.i

do.end102:                                        ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #18
  %dev103 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev103, ptr noundef nonnull @.str.90) #19
  br label %cleanup

if.end7.i.i:                                      ; preds = %land.lhs.true91.if.end7.i.i_crit_edge, %for.end.if.end7.i.i_crit_edge
  %T5_msg_size107 = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 36
  %92 = ptrtoint ptr %T5_msg_size107 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %T5_msg_size107, align 4
  %conv108 = zext i8 %93 to i32
  %conv106 = zext i8 %reportid.0.lcssa to i32
  %94 = mul nuw nsw i32 %conv108, %conv106
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %94, i32 noundef 3520) #22
  %msg_buf = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 23
  %95 = ptrtoint ptr %msg_buf to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call8.i.i, ptr %msg_buf, align 8
  %tobool111.not = icmp eq ptr %call8.i.i, null
  %. = select i1 %tobool111.not, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end7.i.i, %do.end102
  %retval.0 = phi i32 [ -22, %do.end102 ], [ %., %if.end7.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxt_init_t7_power_cfg(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %T7_address = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 39
  %t7_cfg = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 29
  %2 = ptrtoint ptr %T7_address to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %T7_address, align 8
  %call96 = tail call fastcc i32 @__mxt_read_reg(ptr noundef %1, i16 noundef zeroext %3, i16 noundef zeroext 2, ptr noundef %t7_cfg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool.not97 = icmp eq i32 %call96, 0
  br i1 %tobool.not97, label %if.end.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %active = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 29, i32 1
  br label %if.end

if.end:                                           ; preds = %do.end.if.end_crit_edge, %if.end.lr.ph
  %retry.0.off098 = phi i1 [ false, %if.end.lr.ph ], [ true, %do.end.if.end_crit_edge ]
  %4 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %active, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %if.end.if.then9_crit_edge, label %lor.lhs.false

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end
  %6 = ptrtoint ptr %t7_cfg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %t7_cfg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp7 = icmp eq i8 %7, 0
  br i1 %cmp7, label %lor.lhs.false.if.then9_crit_edge, label %do.body41

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %if.end.if.then9_crit_edge
  br i1 %retry.0.off098, label %do.body19, label %do.body

do.body:                                          ; preds = %if.then9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxt_init_t7_power_cfg.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxt_init_t7_power_cfg, %if.then16)) #16
          to label %do.end [label %if.then16], !srcloc !536

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxt_init_t7_power_cfg.__UNIQUE_ID_ddebug312, ptr noundef %dev1, ptr noundef nonnull @.str.113) #16
  br label %do.end

do.end:                                           ; preds = %if.then16, %do.body
  %call18 = tail call fastcc i32 @mxt_soft_reset(ptr noundef %data)
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 8
  %10 = ptrtoint ptr %T7_address to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %T7_address, align 8
  %call = tail call fastcc i32 @__mxt_read_reg(ptr noundef %9, i16 noundef zeroext %11, i16 noundef zeroext 2, ptr noundef %t7_cfg)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end.if.end_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.body19:                                        ; preds = %if.then9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxt_init_t7_power_cfg.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxt_init_t7_power_cfg, %if.then31)) #16
          to label %do.end34 [label %if.then31], !srcloc !536

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxt_init_t7_power_cfg.__UNIQUE_ID_ddebug313, ptr noundef %dev1, ptr noundef nonnull @.str.114) #16
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %do.body19
  %12 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 20, ptr %active, align 1
  %13 = ptrtoint ptr %t7_cfg to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 100, ptr %t7_cfg, align 1
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 8
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %T7_address to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %T7_address, align 8
  %call.i = tail call fastcc i32 @__mxt_write_reg(ptr noundef %15, i16 noundef zeroext %17, i16 noundef zeroext 2, ptr noundef %t7_cfg) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %do.end34.cleanup_crit_edge

do.end34.cleanup_crit_edge:                       ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body.i:                                        ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxt_set_t7_power_cfg.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxt_init_t7_power_cfg, %if.then10.i)) #16
          to label %cleanup [label %if.then10.i], !srcloc !536

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %active, align 1
  %conv11.i = zext i8 %19 to i32
  %20 = ptrtoint ptr %t7_cfg to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %t7_cfg, align 1
  %conv12.i = zext i8 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxt_set_t7_power_cfg.__UNIQUE_ID_ddebug311, ptr noundef %dev1.i, ptr noundef nonnull @.str.124, i32 noundef %conv11.i, i32 noundef %conv12.i) #16
  br label %cleanup

do.body41:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxt_init_t7_power_cfg.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxt_init_t7_power_cfg, %if.then53)) #16
          to label %cleanup [label %if.then53], !srcloc !536

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #18
  %22 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %active, align 1
  %conv56 = zext i8 %23 to i32
  %24 = ptrtoint ptr %t7_cfg to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %t7_cfg, align 1
  %conv59 = zext i8 %25 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxt_init_t7_power_cfg.__UNIQUE_ID_ddebug314, ptr noundef %dev1, ptr noundef nonnull @.str.115, i32 noundef %conv56, i32 noundef %conv59) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %do.body41, %if.then10.i, %do.body.i, %do.end34.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then53 ], [ %call.i, %do.end34.cleanup_crit_edge ], [ 0, %do.body.i ], [ 0, %if.then10.i ], [ 0, %do.body41 ], [ %call96, %entry.cleanup_crit_edge ], [ %call, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxt_update_cfg(ptr noundef %data, ptr nocapture noundef readonly %fw) unnamed_addr #2 align 64 {
entry:
  %type.i = alloca i32, align 4
  %instance.i = alloca i32, align 4
  %size.i = alloca i32, align 4
  %offset.i = alloca i32, align 4
  %val.i = alloca i8, align 1
  %cfg = alloca %struct.mxt_cfg, align 4
  %offset = alloca i32, align 4
  %info_crc = alloca i32, align 4
  %config_crc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cfg) #16
  %2 = getelementptr inbounds i8, ptr %cfg, i32 8
  %3 = call ptr @memset(ptr %2, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #16
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %offset, align 4, !annotation !535
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info_crc) #16
  %5 = ptrtoint ptr %info_crc to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %info_crc, align 4, !annotation !535
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %config_crc) #16
  %6 = ptrtoint ptr %config_crc to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %config_crc, align 4, !annotation !535
  %data2 = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %7 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data2, align 4
  %9 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fw, align 4
  %call = tail call ptr @kmemdup_nul(ptr noundef %8, i32 noundef %10, i32 noundef 3264) #16
  %11 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %cfg, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fw, align 4
  %raw_size = getelementptr inbounds %struct.mxt_cfg, ptr %cfg, i32 0, i32 1
  %14 = ptrtoint ptr %raw_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %raw_size, align 4
  %config_crc.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 20
  %15 = ptrtoint ptr %config_crc.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %config_crc.i, align 4
  %crc_completion.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 50
  %16 = ptrtoint ptr %crc_completion.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %crc_completion.i, align 4
  %call.i = tail call fastcc i32 @mxt_t6_command(ptr noundef %data, i16 noundef zeroext 3, i8 noundef zeroext 1, i1 noundef zeroext true) #16
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 8
  %call2.i.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %crc_completion.i, i32 noundef 100) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %do.end.i.i, label %if.end.mxt_update_crc.exit_crit_edge

if.end.mxt_update_crc.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_update_crc.exit

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %dev1.i.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.121) #19
  br label %mxt_update_crc.exit

mxt_update_crc.exit:                              ; preds = %do.end.i.i, %if.end.mxt_update_crc.exit_crit_edge
  %19 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cfg, align 4
  %call6 = tail call i32 @strncmp(ptr noundef %20, ptr noundef nonnull dereferenceable(11) @.str.125, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %do.end

do.end:                                           ; preds = %mxt_update_crc.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.126) #19
  br label %release_raw

if.end9:                                          ; preds = %mxt_update_crc.exit
  %raw_pos = getelementptr inbounds %struct.mxt_cfg, ptr %cfg, i32 0, i32 2
  %21 = ptrtoint ptr %raw_pos to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 10, ptr %raw_pos, align 4
  %info = getelementptr inbounds %struct.mxt_cfg, ptr %cfg, i32 0, i32 6
  %22 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cfg, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 10
  %call13 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr, ptr noundef nonnull @.str.128, ptr noundef %info, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 1
  br i1 %cmp14.not, label %if.end19, label %if.end9.do.end18_crit_edge

if.end9.do.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end18

do.end18:                                         ; preds = %if.end19.5.do.end18_crit_edge, %if.end19.4.do.end18_crit_edge, %if.end19.3.do.end18_crit_edge, %if.end19.2.do.end18_crit_edge, %if.end19.1.do.end18_crit_edge, %if.end19.do.end18_crit_edge, %if.end9.do.end18_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.130) #19
  br label %release_raw

if.end19:                                         ; preds = %if.end9
  %24 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset, align 4
  %26 = ptrtoint ptr %raw_pos to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %raw_pos, align 4
  %add = add i32 %27, %25
  store i32 %add, ptr %raw_pos, align 4
  %28 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfg, align 4
  %add.ptr.1 = getelementptr i8, ptr %29, i32 %add
  %add.ptr12.1 = getelementptr inbounds %struct.mxt_cfg, ptr %cfg, i32 0, i32 6, i32 1
  %call13.1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr.1, ptr noundef nonnull @.str.128, ptr noundef %add.ptr12.1, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13.1)
  %cmp14.not.1 = icmp eq i32 %call13.1, 1
  br i1 %cmp14.not.1, label %if.end19.1, label %if.end19.do.end18_crit_edge

if.end19.do.end18_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end18

if.end19.1:                                       ; preds = %if.end19
  %30 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %offset, align 4
  %32 = ptrtoint ptr %raw_pos to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %raw_pos, align 4
  %add.1 = add i32 %33, %31
  store i32 %add.1, ptr %raw_pos, align 4
  %34 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cfg, align 4
  %add.ptr.2 = getelementptr i8, ptr %35, i32 %add.1
  %add.ptr12.2 = getelementptr inbounds %struct.mxt_cfg, ptr %cfg, i32 0, i32 6, i32 2
  %call13.2 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr.2, ptr noundef nonnull @.str.128, ptr noundef %add.ptr12.2, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13.2)
  %cmp14.not.2 = icmp eq i32 %call13.2, 1
  br i1 %cmp14.not.2, label %if.end19.2, label %if.end19.1.do.end18_crit_edge

if.end19.1.do.end18_crit_edge:                    ; preds = %if.end19.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end18

if.end19.2:                                       ; preds = %if.end19.1
  %36 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %offset, align 4
  %38 = ptrtoint ptr %raw_pos to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %raw_pos, align 4
  %add.2 = add i32 %39, %37
  store i32 %add.2, ptr %raw_pos, align 4
  %40 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cfg, align 4
  %add.ptr.3 = getelementptr i8, ptr %41, i32 %add.2
  %add.ptr12.3 = getelementptr inbounds %struct.mxt_cfg, ptr %cfg, i32 0, i32 6, i32 3
  %call13.3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr.3, ptr noundef nonnull @.str.128, ptr noundef %add.ptr12.3, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13.3)
  %cmp14.not.3 = icmp eq i32 %call13.3, 1
  br i1 %cmp14.not.3, label %if.end19.3, label %if.end19.2.do.end18_crit_edge

if.end19.2.do.end18_crit_edge:                    ; preds = %if.end19.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end18

if.end19.3:                                       ; preds = %if.end19.2
  %42 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offset, align 4
  %44 = ptrtoint ptr %raw_pos to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %raw_pos, align 4
  %add.3 = add i32 %45, %43
  store i32 %add.3, ptr %raw_pos, align 4
  %46 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cfg, align 4
  %add.ptr.4 = getelementptr i8, ptr %47, i32 %add.3
  %add.ptr12.4 = getelementptr inbounds %struct.mxt_cfg, ptr %cfg, i32 0, i32 6, i32 4
  %call13.4 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr.4, ptr noundef nonnull @.str.128, ptr noundef %add.ptr12.4, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13.4)
  %cmp14.not.4 = icmp eq i32 %call13.4, 1
  br i1 %cmp14.not.4, label %if.end19.4, label %if.end19.3.do.end18_crit_edge

if.end19.3.do.end18_crit_edge:                    ; preds = %if.end19.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end18

if.end19.4:                                       ; preds = %if.end19.3
  %48 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offset, align 4
  %50 = ptrtoint ptr %raw_pos to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %raw_pos, align 4
  %add.4 = add i32 %51, %49
  store i32 %add.4, ptr %raw_pos, align 4
  %52 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cfg, align 4
  %add.ptr.5 = getelementptr i8, ptr %53, i32 %add.4
  %add.ptr12.5 = getelementptr inbounds %struct.mxt_cfg, ptr %cfg, i32 0, i32 6, i32 5
  %call13.5 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr.5, ptr noundef nonnull @.str.128, ptr noundef %add.ptr12.5, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13.5)
  %cmp14.not.5 = icmp eq i32 %call13.5, 1
  br i1 %cmp14.not.5, label %if.end19.5, label %if.end19.4.do.end18_crit_edge

if.end19.4.do.end18_crit_edge:                    ; preds = %if.end19.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end18

if.end19.5:                                       ; preds = %if.end19.4
  %54 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %offset, align 4
  %56 = ptrtoint ptr %raw_pos to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %raw_pos, align 4
  %add.5 = add i32 %57, %55
  store i32 %add.5, ptr %raw_pos, align 4
  %58 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cfg, align 4
  %add.ptr.6 = getelementptr i8, ptr %59, i32 %add.5
  %add.ptr12.6 = getelementptr inbounds %struct.mxt_cfg, ptr %cfg, i32 0, i32 6, i32 6
  %call13.6 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr.6, ptr noundef nonnull @.str.128, ptr noundef %add.ptr12.6, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13.6)
  %cmp14.not.6 = icmp eq i32 %call13.6, 1
  br i1 %cmp14.not.6, label %if.end19.6, label %if.end19.5.do.end18_crit_edge

if.end19.5.do.end18_crit_edge:                    ; preds = %if.end19.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end18

if.end19.6:                                       ; preds = %if.end19.5
  %60 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %offset, align 4
  %62 = ptrtoint ptr %raw_pos to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %raw_pos, align 4
  %add.6 = add i32 %63, %61
  store i32 %add.6, ptr %raw_pos, align 4
  %64 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %info, align 4
  %info22 = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 4
  %66 = ptrtoint ptr %info22 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %info22, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %67, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %65, i8 %69)
  %cmp25.not = icmp eq i8 %65, %69
  br i1 %cmp25.not, label %if.end31, label %do.end30

do.end30:                                         ; preds = %if.end19.6
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.133) #19
  br label %release_raw

if.end31:                                         ; preds = %if.end19.6
  %variant_id = getelementptr inbounds %struct.mxt_cfg, ptr %cfg, i32 0, i32 6, i32 1
  %70 = ptrtoint ptr %variant_id to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %variant_id, align 1
  %variant_id35 = getelementptr inbounds %struct.mxt_info, ptr %67, i32 0, i32 1
  %72 = ptrtoint ptr %variant_id35 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %variant_id35, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %71, i8 %73)
  %cmp37.not = icmp eq i8 %71, %73
  br i1 %cmp37.not, label %if.end43, label %do.end42

do.end42:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.136) #19
  br label %release_raw

if.end43:                                         ; preds = %if.end31
  %74 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cfg, align 4
  %76 = ptrtoint ptr %raw_pos to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %raw_pos, align 4
  %add.ptr46 = getelementptr i8, ptr %75, i32 %77
  %call47 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr46, ptr noundef nonnull @.str.138, ptr noundef nonnull %info_crc, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call47)
  %cmp48.not = icmp eq i32 %call47, 1
  br i1 %cmp48.not, label %if.end54, label %do.end53

do.end53:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.140) #19
  br label %release_raw

if.end54:                                         ; preds = %if.end43
  %78 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %offset, align 4
  %80 = ptrtoint ptr %raw_pos to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %raw_pos, align 4
  %add56 = add i32 %81, %79
  store i32 %add56, ptr %raw_pos, align 4
  %82 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cfg, align 4
  %add.ptr59 = getelementptr i8, ptr %83, i32 %add56
  %call60 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr59, ptr noundef nonnull @.str.138, ptr noundef nonnull %config_crc, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call60)
  %cmp61.not = icmp eq i32 %call60, 1
  br i1 %cmp61.not, label %if.end67, label %do.end66

do.end66:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.143) #19
  br label %release_raw

if.end67:                                         ; preds = %if.end54
  %84 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %offset, align 4
  %86 = ptrtoint ptr %raw_pos to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %raw_pos, align 4
  %add69 = add i32 %87, %85
  store i32 %add69, ptr %raw_pos, align 4
  %88 = ptrtoint ptr %info_crc to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %info_crc, align 4
  %info_crc70 = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 21
  %90 = ptrtoint ptr %info_crc70 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %info_crc70, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %91)
  %cmp71 = icmp eq i32 %89, %91
  br i1 %cmp71, label %if.then73, label %do.end107

if.then73:                                        ; preds = %if.end67
  %92 = ptrtoint ptr %config_crc to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %config_crc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp74 = icmp eq i32 %93, 0
  br i1 %cmp74, label %if.then73.do.end82_crit_edge, label %lor.lhs.false

if.then73.do.end82_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end82

lor.lhs.false:                                    ; preds = %if.then73
  %94 = ptrtoint ptr %config_crc.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %config_crc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp77 = icmp eq i32 %95, 0
  br i1 %cmp77, label %lor.lhs.false.do.end82_crit_edge, label %if.else

lor.lhs.false.do.end82_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end82

do.end82:                                         ; preds = %lor.lhs.false.do.end82_crit_edge, %if.then73.do.end82_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.146) #19
  br label %if.end109

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %95)
  %cmp84 = icmp eq i32 %93, %95
  br i1 %cmp84, label %do.body87, label %do.end100

do.body87:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxt_update_cfg.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxt_update_cfg, %if.then92)) #16
          to label %release_raw [label %if.then92], !srcloc !536

if.then92:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #18
  %96 = ptrtoint ptr %config_crc.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %config_crc.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxt_update_cfg.__UNIQUE_ID_ddebug308, ptr noundef %dev1, ptr noundef nonnull @.str.148, i32 noundef %97) #16
  br label %release_raw

do.end100:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.150, i32 noundef %95, i32 noundef %93) #19
  br label %if.end109

do.end107:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.153, i32 noundef %91, i32 noundef %89) #19
  br label %if.end109

if.end109:                                        ; preds = %do.end107, %do.end100, %do.end82
  %98 = ptrtoint ptr %info22 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %info22, align 4
  %object_num = getelementptr inbounds %struct.mxt_info, ptr %99, i32 0, i32 6
  %100 = ptrtoint ptr %object_num to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %object_num, align 1
  %conv111 = zext i8 %101 to i32
  %mul = mul nuw nsw i32 %conv111, 6
  %add113 = add nuw nsw i32 %mul, 10
  %start_ofs = getelementptr inbounds %struct.mxt_cfg, ptr %cfg, i32 0, i32 5
  %102 = ptrtoint ptr %start_ofs to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %add113, ptr %start_ofs, align 4
  %mem_size = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 15
  %103 = ptrtoint ptr %mem_size to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %mem_size, align 2
  %conv114 = zext i16 %104 to i32
  %sub = sub nsw i32 %conv114, %add113
  %mem_size116 = getelementptr inbounds %struct.mxt_cfg, ptr %cfg, i32 0, i32 4
  %105 = ptrtoint ptr %mem_size116 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %sub, ptr %mem_size116, align 4
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %sub, i32 noundef 3520) #22
  %mem = getelementptr inbounds %struct.mxt_cfg, ptr %cfg, i32 0, i32 3
  %106 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call9.i.i, ptr %mem, align 4
  %tobool120.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool120.not, label %if.end109.release_raw_crit_edge, label %if.end122

if.end109.release_raw_crit_edge:                  ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #18
  br label %release_raw

if.end122:                                        ; preds = %if.end109
  %107 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %data, align 8
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %108, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type.i) #16
  %109 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 -1, ptr %type.i, align 4, !annotation !535
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %instance.i) #16
  %110 = ptrtoint ptr %instance.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 -1, ptr %instance.i, align 4, !annotation !535
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i) #16
  %111 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 -1, ptr %size.i, align 4, !annotation !535
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i) #16
  %112 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 -1, ptr %offset.i, align 4, !annotation !535
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #16
  %113 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 -1, ptr %val.i, align 1, !annotation !535
  %114 = ptrtoint ptr %raw_pos to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %raw_pos, align 4
  %116 = ptrtoint ptr %raw_size to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %raw_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %115, i32 %117)
  %cmp184.i = icmp ult i32 %115, %117
  br i1 %cmp184.i, label %while.body.lr.ph.i, label %if.end122.if.end126_crit_edge

if.end122.if.end126_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end126

while.body.lr.ph.i:                               ; preds = %if.end122
  %object_table.i.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 3
  br label %while.body.i

while.cond.backedge.i:                            ; preds = %for.inc97.i.while.cond.backedge.i_crit_edge, %if.end53.i.while.cond.backedge.i_crit_edge, %if.end22.i.while.cond.backedge.i_crit_edge, %for.cond.preheader.i.while.cond.backedge.i_crit_edge
  %118 = ptrtoint ptr %raw_pos to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %raw_pos, align 4
  %120 = ptrtoint ptr %raw_size to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %raw_size, align 4
  %cmp.i = icmp ult i32 %119, %121
  br i1 %cmp.i, label %while.cond.backedge.i.while.body.i_crit_edge, label %while.cond.backedge.i.if.end126_crit_edge

while.cond.backedge.i.if.end126_crit_edge:        ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end126

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %122 = phi i32 [ %115, %while.body.lr.ph.i ], [ %119, %while.cond.backedge.i.while.body.i_crit_edge ]
  %123 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cfg, align 4
  %add.ptr.i = getelementptr i8, ptr %124, i32 %122
  %call.i240 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.164, ptr noundef nonnull %type.i, ptr noundef nonnull %instance.i, ptr noundef nonnull %size.i, ptr noundef nonnull %offset.i) #16
  %125 = zext i32 %call.i240 to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values.274)
  switch i32 %call.i240, label %do.end.i [
    i32 0, label %while.body.i.if.end126_crit_edge
    i32 3, label %if.end6.i
  ]

while.body.i.if.end126_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end126

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.165) #19
  br label %mxt_prepare_cfg_mem.exit.thread

if.end6.i:                                        ; preds = %while.body.i
  %126 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %offset.i, align 4
  %128 = ptrtoint ptr %raw_pos to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %raw_pos, align 4
  %add.i = add i32 %129, %127
  store i32 %add.i, ptr %raw_pos, align 4
  %130 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %type.i, align 4
  %conv.i = trunc i32 %131 to i8
  %132 = ptrtoint ptr %info22 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %info22, align 4
  %object_num.i.i = getelementptr inbounds %struct.mxt_info, ptr %133, i32 0, i32 6
  %134 = ptrtoint ptr %object_num.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %object_num.i.i, align 1
  %conv.i.i = zext i8 %135 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %cmp15.not.i.i = icmp eq i8 %135, 0
  br i1 %cmp15.not.i.i, label %if.end6.i.mxt_get_object.exit.thread.i_crit_edge, label %for.body.lr.ph.i.i

if.end6.i.mxt_get_object.exit.thread.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_get_object.exit.thread.i

for.body.lr.ph.i.i:                               ; preds = %if.end6.i
  %136 = ptrtoint ptr %object_table.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %object_table.i.i, align 8
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.016.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.mxt_get_object.exit.thread.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.cond.i.i.mxt_get_object.exit.thread.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_get_object.exit.thread.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.016.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr %struct.mxt_object, ptr %137, i32 %i.016.i.i
  %138 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %139, i8 %conv.i)
  %cmp5.i.i = icmp eq i8 %139, %conv.i
  br i1 %cmp5.i.i, label %mxt_get_object.exit.i, label %for.cond.i.i

mxt_get_object.exit.thread.i:                     ; preds = %for.cond.i.i.mxt_get_object.exit.thread.i_crit_edge, %if.end6.i.mxt_get_object.exit.thread.i_crit_edge
  %140 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %data, align 8
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %141, i32 0, i32 4
  %conv7.i.i = and i32 %131, 255
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.184, i32 noundef %conv7.i.i) #19
  br label %for.cond.preheader.i

mxt_get_object.exit.i:                            ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %mxt_get_object.exit.i.for.cond.preheader.i_crit_edge, label %if.end25.i

mxt_get_object.exit.i.for.cond.preheader.i_crit_edge: ; preds = %mxt_get_object.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %mxt_get_object.exit.i.for.cond.preheader.i_crit_edge, %mxt_get_object.exit.thread.i
  %142 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp10182.not.i = icmp eq i32 %143, 0
  br i1 %cmp10182.not.i, label %for.cond.preheader.i.while.cond.backedge.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.while.cond.backedge.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.backedge.i

for.body.i:                                       ; preds = %if.end22.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0183.i = phi i32 [ %inc.i, %if.end22.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %144 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %cfg, align 4
  %146 = ptrtoint ptr %raw_pos to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %raw_pos, align 4
  %add.ptr14.i = getelementptr i8, ptr %145, i32 %147
  %call15.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr14.i, ptr noundef nonnull @.str.128, ptr noundef nonnull %val.i, ptr noundef nonnull %offset.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15.i)
  %cmp16.not.i = icmp eq i32 %call15.i, 1
  br i1 %cmp16.not.i, label %if.end22.i, label %do.end21.i

do.end21.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %148 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %type.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.168, i32 noundef %149, i32 noundef %i.0183.i) #19
  br label %mxt_prepare_cfg_mem.exit.thread

if.end22.i:                                       ; preds = %for.body.i
  %150 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %offset.i, align 4
  %152 = ptrtoint ptr %raw_pos to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %raw_pos, align 4
  %add24.i = add i32 %153, %151
  store i32 %add24.i, ptr %raw_pos, align 4
  %inc.i = add nuw i32 %i.0183.i, 1
  %154 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %size.i, align 4
  %cmp10.i = icmp ult i32 %inc.i, %155
  br i1 %cmp10.i, label %if.end22.i.for.body.i_crit_edge, label %if.end22.i.while.cond.backedge.i_crit_edge

if.end22.i.while.cond.backedge.i_crit_edge:       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.backedge.i

if.end22.i.for.body.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

if.end25.i:                                       ; preds = %mxt_get_object.exit.i
  %156 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %size.i, align 4
  %size_minus_one.i.i = getelementptr %struct.mxt_object, ptr %137, i32 %i.016.i.i, i32 2
  %158 = ptrtoint ptr %size_minus_one.i.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %size_minus_one.i.i, align 1
  %conv.i153.i = zext i8 %159 to i32
  %add.i.i = add nuw nsw i32 %conv.i153.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %157, i32 %add.i.i)
  %cmp27.i = icmp ugt i32 %157, %add.i.i
  br i1 %cmp27.i, label %do.end32.i, label %if.else34.i

do.end32.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i = sub i32 %157, %add.i.i
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i, ptr noundef nonnull @.str.171, i32 noundef %sub.i, i32 noundef %131) #19
  br label %if.end45.i

if.else34.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_cmp4(i32 %157, i32 %conv.i153.i)
  %cmp36.not.i = icmp ugt i32 %157, %conv.i153.i
  br i1 %cmp36.not.i, label %if.else34.i.if.end45.i_crit_edge, label %do.end41.i

if.else34.i.if.end45.i_crit_edge:                 ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45.i

do.end41.i:                                       ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub43.i = sub i32 %add.i.i, %157
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i, ptr noundef nonnull @.str.174, i32 noundef %sub43.i, i32 noundef %131) #19
  br label %if.end45.i

if.end45.i:                                       ; preds = %do.end41.i, %if.else34.i.if.end45.i_crit_edge, %do.end32.i
  %160 = ptrtoint ptr %instance.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %instance.i, align 4
  %instances_minus_one.i.i = getelementptr %struct.mxt_object, ptr %137, i32 %i.016.i.i, i32 3
  %162 = ptrtoint ptr %instances_minus_one.i.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %instances_minus_one.i.i, align 1
  %conv.i163.i = zext i8 %163 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %161, i32 %conv.i163.i)
  %cmp47.not.not.i = icmp ugt i32 %161, %conv.i163.i
  br i1 %cmp47.not.not.i, label %do.end52.i, label %if.end53.i

do.end52.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.177) #19
  br label %mxt_prepare_cfg_mem.exit.thread

if.end53.i:                                       ; preds = %if.end45.i
  %164 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %cmp59179.not.i = icmp eq i32 %165, 0
  br i1 %cmp59179.not.i, label %if.end53.i.while.cond.backedge.i_crit_edge, label %for.body61.lr.ph.i

if.end53.i.while.cond.backedge.i_crit_edge:       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.backedge.i

for.body61.lr.ph.i:                               ; preds = %if.end53.i
  %166 = ptrtoint ptr %size_minus_one.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %size_minus_one.i.i, align 1
  %conv.i166.i = zext i8 %167 to i32
  %add.i167.i = add nuw nsw i32 %conv.i166.i, 1
  %mul.i = mul i32 %add.i167.i, %161
  %168 = trunc i32 %mul.i to i16
  %start_address.i = getelementptr %struct.mxt_object, ptr %137, i32 %i.016.i.i, i32 1
  %169 = ptrtoint ptr %start_address.i to i32
  call void @__asan_loadN_noabort(i32 %169, i32 2)
  %170 = load i16, ptr %start_address.i, align 1
  %conv57.i = add i16 %170, %168
  %conv80.i = zext i16 %conv57.i to i32
  br label %for.body61.i

for.body61.i:                                     ; preds = %for.inc97.i.for.body61.i_crit_edge, %for.body61.lr.ph.i
  %i.1180.i = phi i32 [ 0, %for.body61.lr.ph.i ], [ %inc98.i, %for.inc97.i.for.body61.i_crit_edge ]
  %171 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %cfg, align 4
  %173 = ptrtoint ptr %raw_pos to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %raw_pos, align 4
  %add.ptr64.i = getelementptr i8, ptr %172, i32 %174
  %call65.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr64.i, ptr noundef nonnull @.str.128, ptr noundef nonnull %val.i, ptr noundef nonnull %offset.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call65.i)
  %cmp66.not.i = icmp eq i32 %call65.i, 1
  br i1 %cmp66.not.i, label %if.end72.i, label %do.end71.i

do.end71.i:                                       ; preds = %for.body61.i
  call void @__sanitizer_cov_trace_pc() #18
  %175 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %type.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.168, i32 noundef %176, i32 noundef %i.1180.i) #19
  br label %mxt_prepare_cfg_mem.exit.thread

if.end72.i:                                       ; preds = %for.body61.i
  %177 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %offset.i, align 4
  %179 = ptrtoint ptr %raw_pos to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %raw_pos, align 4
  %add74.i = add i32 %180, %178
  store i32 %add74.i, ptr %raw_pos, align 4
  %181 = ptrtoint ptr %size_minus_one.i.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %size_minus_one.i.i, align 1
  %conv.i169.i = zext i8 %182 to i32
  %add.i170.i = add nuw nsw i32 %conv.i169.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1180.i, i32 %add.i170.i)
  %cmp76.i = icmp ugt i32 %i.1180.i, %add.i170.i
  br i1 %cmp76.i, label %if.end72.i.for.inc97.i_crit_edge, label %if.end79.i

if.end72.i.for.inc97.i_crit_edge:                 ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc97.i

if.end79.i:                                       ; preds = %if.end72.i
  %add81.i = add i32 %i.1180.i, %conv80.i
  %183 = ptrtoint ptr %start_ofs to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %start_ofs, align 4
  %sub82.i = sub i32 %add81.i, %184
  %185 = ptrtoint ptr %mem_size116 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %mem_size116, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub82.i, i32 %186)
  %cmp85.i = icmp ult i32 %sub82.i, %186
  br i1 %cmp85.i, label %if.then87.i, label %do.end92.i

if.then87.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #18
  %187 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %val.i, align 1
  %189 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %mem, align 4
  %add.ptr88.i = getelementptr i8, ptr %190, i32 %sub82.i
  %191 = ptrtoint ptr %add.ptr88.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %188, ptr %add.ptr88.i, align 1
  br label %for.inc97.i

do.end92.i:                                       ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #18
  %192 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %add.ptr.i.i, align 1
  %conv95.i = zext i8 %193 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.182, i32 noundef %conv80.i, i32 noundef %conv95.i, i32 noundef %sub82.i) #19
  br label %mxt_prepare_cfg_mem.exit.thread

for.inc97.i:                                      ; preds = %if.then87.i, %if.end72.i.for.inc97.i_crit_edge
  %inc98.i = add nuw i32 %i.1180.i, 1
  %194 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %size.i, align 4
  %cmp59.i = icmp ult i32 %inc98.i, %195
  br i1 %cmp59.i, label %for.inc97.i.for.body61.i_crit_edge, label %for.inc97.i.while.cond.backedge.i_crit_edge

for.inc97.i.while.cond.backedge.i_crit_edge:      ; preds = %for.inc97.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.backedge.i

for.inc97.i.for.body61.i_crit_edge:               ; preds = %for.inc97.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body61.i

mxt_prepare_cfg_mem.exit.thread:                  ; preds = %do.end92.i, %do.end71.i, %do.end52.i, %do.end21.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %instance.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.i) #16
  br label %release_mem

if.end126:                                        ; preds = %while.body.i.if.end126_crit_edge, %while.cond.backedge.i.if.end126_crit_edge, %if.end122.if.end126_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %instance.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.i) #16
  %T71_address = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 40
  %196 = ptrtoint ptr %T71_address to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %T71_address, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %197)
  %tobool127.not = icmp eq i16 %197, 0
  br i1 %tobool127.not, label %if.else130, label %if.end126.if.end139_crit_edge

if.end126.if.end139_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end139

if.else130:                                       ; preds = %if.end126
  %T7_address = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 39
  %198 = ptrtoint ptr %T7_address to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %T7_address, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %199)
  %tobool131.not = icmp eq i16 %199, 0
  br i1 %tobool131.not, label %do.end137, label %if.else130.if.end139_crit_edge

if.else130.if.end139_crit_edge:                   ; preds = %if.else130
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end139

do.end137:                                        ; preds = %if.else130
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.156) #19
  br label %if.end139

if.end139:                                        ; preds = %do.end137, %if.else130.if.end139_crit_edge, %if.end126.if.end139_crit_edge
  %crc_start.0 = phi i16 [ 0, %do.end137 ], [ %197, %if.end126.if.end139_crit_edge ], [ %199, %if.else130.if.end139_crit_edge ]
  %conv140 = zext i16 %crc_start.0 to i32
  %200 = ptrtoint ptr %start_ofs to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %start_ofs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %201, i32 %conv140)
  %cmp142 = icmp slt i32 %201, %conv140
  br i1 %cmp142, label %if.then144, label %if.end139.if.end160_crit_edge

if.end139.if.end160_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end160

if.then144:                                       ; preds = %if.end139
  %202 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %mem, align 4
  %sub148 = sub i32 %conv140, %201
  %204 = ptrtoint ptr %mem_size116 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %mem_size116, align 4
  %call150 = call fastcc i32 @mxt_calculate_crc(ptr noundef %203, i32 noundef %sub148, i32 noundef %205)
  %206 = ptrtoint ptr %config_crc to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %config_crc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %cmp151.not = icmp eq i32 %207, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %207, i32 %call150)
  %cmp153.not = icmp eq i32 %207, %call150
  %or.cond = select i1 %cmp151.not, i1 true, i1 %cmp153.not
  br i1 %or.cond, label %if.then144.if.end160_crit_edge, label %do.end158

if.then144.if.end160_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end160

do.end158:                                        ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.159, i32 noundef %call150, i32 noundef %207) #19
  br label %if.end160

if.end160:                                        ; preds = %do.end158, %if.then144.if.end160_crit_edge, %if.end139.if.end160_crit_edge
  %208 = ptrtoint ptr %mem_size116 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %mem_size116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %cmp24.not.i = icmp eq i32 %209, 0
  br i1 %cmp24.not.i, label %if.end160.if.end164_crit_edge, label %if.end160.while.body.i253_crit_edge

if.end160.while.body.i253_crit_edge:              ; preds = %if.end160
  br label %while.body.i253

if.end160.if.end164_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end164

while.cond.i:                                     ; preds = %while.body.i253
  %add7.i = add i32 %213, %byte_offset.025.i
  %210 = ptrtoint ptr %mem_size116 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %mem_size116, align 4
  %cmp.i246 = icmp ugt i32 %211, %add7.i
  br i1 %cmp.i246, label %while.cond.i.while.body.i253_crit_edge, label %while.cond.i.if.end164_crit_edge

while.cond.i.if.end164_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end164

while.cond.i.while.body.i253_crit_edge:           ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i253

while.body.i253:                                  ; preds = %while.cond.i.while.body.i253_crit_edge, %if.end160.while.body.i253_crit_edge
  %212 = phi i32 [ %211, %while.cond.i.while.body.i253_crit_edge ], [ %209, %if.end160.while.body.i253_crit_edge ]
  %byte_offset.025.i = phi i32 [ %add7.i, %while.cond.i.while.body.i253_crit_edge ], [ 0, %if.end160.while.body.i253_crit_edge ]
  %sub.i247 = sub i32 %212, %byte_offset.025.i
  %213 = call i32 @llvm.umin.i32(i32 %sub.i247, i32 256) #16
  %214 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %data, align 8
  %216 = ptrtoint ptr %start_ofs to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %start_ofs, align 4
  %add.i248 = add i32 %217, %byte_offset.025.i
  %conv.i249 = trunc i32 %add.i248 to i16
  %conv3.i = trunc i32 %213 to i16
  %218 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %mem, align 4
  %add.ptr.i250 = getelementptr i8, ptr %219, i32 %byte_offset.025.i
  %call.i251 = call fastcc i32 @__mxt_write_reg(ptr noundef %215, i16 noundef zeroext %conv.i249, i16 noundef zeroext %conv3.i, ptr noundef %add.ptr.i250) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i251)
  %tobool.not.i252 = icmp eq i32 %call.i251, 0
  br i1 %tobool.not.i252, label %while.cond.i, label %mxt_upload_cfg_mem.exit

mxt_upload_cfg_mem.exit:                          ; preds = %while.body.i253
  call void @__sanitizer_cov_trace_pc() #18
  %220 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %data, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %221, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.186, i32 noundef %call.i251) #19
  br label %release_mem

if.end164:                                        ; preds = %while.cond.i.if.end164_crit_edge, %if.end160.if.end164_crit_edge
  call fastcc void @mxt_update_crc(ptr noundef %data, i8 noundef zeroext 1, i8 noundef zeroext 85)
  %call165 = call fastcc i32 @mxt_check_retrigen(ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.end168, label %if.end164.release_mem_crit_edge

if.end164.release_mem_crit_edge:                  ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #18
  br label %release_mem

if.end168:                                        ; preds = %if.end164
  %call169 = call fastcc i32 @mxt_soft_reset(ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %do.end175, label %if.end168.release_mem_crit_edge

if.end168.release_mem_crit_edge:                  ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #18
  br label %release_mem

do.end175:                                        ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.162) #19
  %call176 = call fastcc i32 @mxt_init_t7_power_cfg(ptr noundef %data)
  br label %release_mem

release_mem:                                      ; preds = %do.end175, %if.end168.release_mem_crit_edge, %if.end164.release_mem_crit_edge, %mxt_upload_cfg_mem.exit, %mxt_prepare_cfg_mem.exit.thread
  %ret.0 = phi i32 [ %call.i251, %mxt_upload_cfg_mem.exit ], [ %call165, %if.end164.release_mem_crit_edge ], [ %call169, %if.end168.release_mem_crit_edge ], [ 0, %do.end175 ], [ -22, %mxt_prepare_cfg_mem.exit.thread ]
  %222 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %mem, align 4
  call void @kfree(ptr noundef %223) #16
  br label %release_raw

release_raw:                                      ; preds = %release_mem, %if.end109.release_raw_crit_edge, %if.then92, %do.body87, %do.end66, %do.end53, %do.end42, %do.end30, %do.end18, %do.end
  %ret.1 = phi i32 [ -22, %do.end ], [ -22, %do.end18 ], [ -22, %do.end30 ], [ -22, %do.end42 ], [ -22, %do.end53 ], [ -22, %do.end66 ], [ %ret.0, %release_mem ], [ 0, %if.then92 ], [ -12, %if.end109.release_raw_crit_edge ], [ 0, %do.body87 ]
  %224 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %cfg, align 4
  call void @kfree(ptr noundef %225) #16
  br label %cleanup

cleanup:                                          ; preds = %release_raw, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %release_raw ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config_crc) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info_crc) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cfg) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxt_soft_reset(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  %val.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.116) #19
  %irq = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #16
  %reset_completion = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 49
  %4 = ptrtoint ptr %reset_completion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %reset_completion, align 4
  %T6_address.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 38
  %5 = ptrtoint ptr %T6_address.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %T6_address.i, align 2
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #16
  %9 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %val.addr.i.i, align 1
  %call.i.i = call fastcc i32 @__mxt_write_reg(ptr noundef %8, i16 noundef zeroext %6, i16 noundef zeroext 1, ptr noundef nonnull %val.addr.i.i) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 100) #16
  %call2 = tail call fastcc i32 @mxt_acquire_irq(ptr noundef %data)
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 8
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  %call2.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %reset_completion, i32 noundef 300) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.else.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end.i, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.121) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.else.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %entry.cleanup_crit_edge ], [ -110, %do.end.i ], [ %call2.i, %if.end.cleanup_crit_edge ], [ 0, %if.else.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxt_t6_command(ptr nocapture noundef readonly %data, i16 noundef zeroext %cmd_offset, i8 noundef zeroext %value, i1 noundef zeroext %wait) unnamed_addr #2 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  %command_register = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %command_register) #16
  %0 = ptrtoint ptr %command_register to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %command_register, align 1, !annotation !535
  %T6_address = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 38
  %1 = ptrtoint ptr %T6_address to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %T6_address, align 2
  %add = add i16 %2, %cmd_offset
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %5 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %value, ptr %val.addr.i, align 1
  %call.i = call fastcc i32 @__mxt_write_reg(ptr noundef %4, i16 noundef zeroext %add, i16 noundef zeroext 1, ptr noundef nonnull %val.addr.i) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %6 = and i1 %tobool.not, %wait
  br i1 %6, label %entry.do.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %entry.do.body_crit_edge
  %timeout_counter.0 = phi i32 [ %inc, %land.rhs.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  call void @msleep(i32 noundef 20) #16
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 8
  %call7 = call fastcc i32 @__mxt_read_reg(ptr noundef %8, i16 noundef zeroext %add, i16 noundef zeroext 1, ptr noundef nonnull %command_register)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.cond, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.cond:                                          ; preds = %do.body
  %9 = ptrtoint ptr %command_register to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %command_register, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp.not = icmp eq i8 %10, 0
  br i1 %cmp.not, label %do.end, label %land.rhs

land.rhs:                                         ; preds = %do.cond
  %inc = add nuw nsw i32 %timeout_counter.0, 1
  %exitcond.not = icmp eq i32 %inc, 102
  br i1 %exitcond.not, label %land.rhs.do.end20_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

land.rhs.do.end20_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end20

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %timeout_counter.0)
  %cmp15 = icmp ugt i32 %timeout_counter.0, 100
  br i1 %cmp15, label %do.end.do.end20_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end.do.end20_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end20

do.end20:                                         ; preds = %do.end.do.end20_crit_edge, %land.rhs.do.end20_crit_edge
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.118) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %do.end.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end20 ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ %call7, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %command_register) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxt_wait_for_completion(ptr nocapture noundef readonly %data, ptr noundef %comp, i32 noundef %timeout_ms) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout_ms) #16
  %call2 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %comp, i32 noundef %call2.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %do.end, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.121) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end ], [ %call2, %entry.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mxt_write_reg(ptr noundef %client, i16 noundef zeroext %reg, i16 noundef zeroext %len, ptr nocapture noundef readonly %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %len to i32
  %add = add nuw nsw i32 %conv, 2
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #22
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv2 = trunc i16 %reg to i8
  %0 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv2, ptr %call9.i, align 128
  %1 = lshr i16 %reg, 8
  %conv5 = trunc i16 %1 to i8
  %arrayidx6 = getelementptr i8, ptr %call9.i, i32 1
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv5, ptr %arrayidx6, align 1
  %arrayidx7 = getelementptr i8, ptr %call9.i, i32 2
  %3 = call ptr @memcpy(ptr %arrayidx7, ptr %val, i32 %conv)
  %call.i42 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %call9.i, i32 noundef %add, i16 noundef zeroext 0) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i42, i32 %add)
  %cmp43 = icmp eq i32 %call.i42, %add
  br i1 %cmp43, label %if.end.if.end22_crit_edge, label %if.else.lr.ph

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

if.else.lr.ph:                                    ; preds = %if.end
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %wakeup_method.i = getelementptr inbounds %struct.mxt_data, ptr %5, i32 0, i32 54
  %6 = ptrtoint ptr %wakeup_method.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wakeup_method.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cond = icmp eq i32 %7, 1
  br i1 %cond, label %sw.bb.i, label %if.else.lr.ph.if.else16_crit_edge

if.else.lr.ph.if.else16_crit_edge:                ; preds = %if.else.lr.ph
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else16

sw.bb.i:                                          ; preds = %if.else.lr.ph
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxt_wakeup_toggle.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__mxt_write_reg, %if.then14.i)) #16
          to label %mxt_wakeup_toggle.exit [label %if.then14.i], !srcloc !536

if.then14.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxt_wakeup_toggle.__UNIQUE_ID_ddebug301, ptr noundef %dev.i, ptr noundef nonnull @.str.48) #16
  br label %mxt_wakeup_toggle.exit

mxt_wakeup_toggle.exit:                           ; preds = %if.then14.i, %sw.bb.i
  tail call void @msleep(i32 noundef 25) #16
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %call9.i, i32 noundef %add, i16 noundef zeroext 0) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %add)
  %cmp = icmp eq i32 %call.i, %add
  br i1 %cmp, label %mxt_wakeup_toggle.exit.if.end22_crit_edge, label %mxt_wakeup_toggle.exit.if.else16_crit_edge

mxt_wakeup_toggle.exit.if.else16_crit_edge:       ; preds = %mxt_wakeup_toggle.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else16

mxt_wakeup_toggle.exit.if.end22_crit_edge:        ; preds = %mxt_wakeup_toggle.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

if.else16:                                        ; preds = %mxt_wakeup_toggle.exit.if.else16_crit_edge, %if.else.lr.ph.if.else16_crit_edge
  %call.i45.lcssa = phi i32 [ %call.i42, %if.else.lr.ph.if.else16_crit_edge ], [ %call.i, %mxt_wakeup_toggle.exit.if.else16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i45.lcssa)
  %cmp17 = icmp sgt i32 %call.i45.lcssa, -1
  %spec.store.select = select i1 %cmp17, i32 -5, i32 %call.i45.lcssa
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.120, i32 noundef %spec.store.select) #19
  br label %if.end22

if.end22:                                         ; preds = %if.else16, %mxt_wakeup_toggle.exit.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %ret.0 = phi i32 [ %spec.store.select, %if.else16 ], [ 0, %if.end.if.end22_crit_edge ], [ 0, %mxt_wakeup_toggle.exit.if.end22_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end22 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup_nul(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxt_update_crc(ptr noundef %data, i8 noundef zeroext %cmd, i8 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %config_crc = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 20
  %0 = ptrtoint ptr %config_crc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %config_crc, align 4
  %crc_completion = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 50
  %1 = ptrtoint ptr %crc_completion to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %crc_completion, align 4
  %conv = zext i8 %cmd to i16
  %call = tail call fastcc i32 @mxt_t6_command(ptr noundef %data, i16 noundef zeroext %conv, i8 noundef zeroext %value, i1 noundef zeroext true)
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  %call2.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %crc_completion, i32 noundef 100) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end.i, label %entry.mxt_wait_for_completion.exit_crit_edge

entry.mxt_wait_for_completion.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_wait_for_completion.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.121) #19
  br label %mxt_wait_for_completion.exit

mxt_wait_for_completion.exit:                     ; preds = %do.end.i, %entry.mxt_wait_for_completion.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxt_read_t100_config(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  %range_x = alloca i16, align 2
  %range_y = alloca i16, align 2
  %cfg = alloca i8, align 1
  %tchaux = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %range_x) #16
  %2 = ptrtoint ptr %range_x to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %range_x, align 2, !annotation !535
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %range_y) #16
  %3 = ptrtoint ptr %range_y to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %range_y, align 2, !annotation !535
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cfg) #16
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %cfg, align 1, !annotation !535
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tchaux) #16
  %5 = ptrtoint ptr %tchaux to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %tchaux, align 1, !annotation !535
  %info.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 4
  %6 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info.i, align 4
  %object_num.i = getelementptr inbounds %struct.mxt_info, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %object_num.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %object_num.i, align 1
  %conv.i = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp15.not.i = icmp eq i8 %9, 0
  br i1 %cmp15.not.i, label %entry.mxt_get_object.exit.thread_crit_edge, label %for.body.lr.ph.i

entry.mxt_get_object.exit.thread_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_get_object.exit.thread

for.body.lr.ph.i:                                 ; preds = %entry
  %object_table.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 3
  %10 = ptrtoint ptr %object_table.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %object_table.i, align 8
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.cond.i.mxt_get_object.exit.thread_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.cond.i.mxt_get_object.exit.thread_crit_edge:  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_get_object.exit.thread

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.mxt_object, ptr %11, i32 %i.016.i
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %13)
  %cmp5.i = icmp eq i8 %13, 100
  br i1 %cmp5.i, label %mxt_get_object.exit, label %for.cond.i

mxt_get_object.exit.thread:                       ; preds = %for.cond.i.mxt_get_object.exit.thread_crit_edge, %entry.mxt_get_object.exit.thread_crit_edge
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.184, i32 noundef 100) #19
  br label %cleanup

mxt_get_object.exit:                              ; preds = %for.body.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %mxt_get_object.exit.cleanup_crit_edge, label %if.end

mxt_get_object.exit.cleanup_crit_edge:            ; preds = %mxt_get_object.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %mxt_get_object.exit
  %start_address = getelementptr %struct.mxt_object, ptr %11, i32 %i.016.i, i32 1
  %14 = ptrtoint ptr %start_address to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %start_address, align 1
  %add = add i16 %15, 13
  %call3 = call fastcc i32 @__mxt_read_reg(ptr noundef %1, i16 noundef zeroext %add, i16 noundef zeroext 2, ptr noundef nonnull %range_x)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %16 = ptrtoint ptr %range_x to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %range_x, align 2
  %18 = call i16 @llvm.bswap.i16(i16 %17) #16
  %conv8 = zext i16 %18 to i32
  %max_x = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 7
  %19 = ptrtoint ptr %max_x to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv8, ptr %max_x, align 8
  %20 = ptrtoint ptr %start_address to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %start_address, align 1
  %add11 = add i16 %21, 24
  %call13 = call fastcc i32 @__mxt_read_reg(ptr noundef %1, i16 noundef zeroext %add11, i16 noundef zeroext 2, ptr noundef nonnull %range_y)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end16:                                         ; preds = %if.end6
  %22 = ptrtoint ptr %range_y to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %range_y, align 2
  %24 = call i16 @llvm.bswap.i16(i16 %23) #16
  %conv18 = zext i16 %24 to i32
  %max_y = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 8
  %25 = ptrtoint ptr %max_y to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv18, ptr %max_y, align 4
  %26 = ptrtoint ptr %start_address to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %start_address, align 1
  %add21 = add i16 %27, 9
  %xsize = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 12
  %call23 = call fastcc i32 @__mxt_read_reg(ptr noundef %1, i16 noundef zeroext %add21, i16 noundef zeroext 1, ptr noundef %xsize)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end26:                                         ; preds = %if.end16
  %28 = ptrtoint ptr %start_address to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %start_address, align 1
  %add29 = add i16 %29, 20
  %ysize = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 13
  %call31 = call fastcc i32 @__mxt_read_reg(ptr noundef %1, i16 noundef zeroext %add29, i16 noundef zeroext 1, ptr noundef %ysize)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end34:                                         ; preds = %if.end26
  %30 = ptrtoint ptr %start_address to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %start_address, align 1
  %add37 = add i16 %31, 1
  %call39 = call fastcc i32 @__mxt_read_reg(ptr noundef %1, i16 noundef zeroext %add37, i16 noundef zeroext 1, ptr noundef nonnull %cfg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end42:                                         ; preds = %if.end34
  %32 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %cfg, align 1
  %xy_switch = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 11
  %34 = lshr i8 %33, 5
  %.lobit = and i8 %34, 1
  %35 = ptrtoint ptr %xy_switch to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %.lobit, ptr %xy_switch, align 2
  %invertx = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 9
  %.lobit137 = lshr i8 %33, 7
  %36 = ptrtoint ptr %invertx to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %.lobit137, ptr %invertx, align 8
  %inverty = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 10
  %37 = lshr i8 %33, 6
  %.lobit138 = and i8 %37, 1
  %38 = ptrtoint ptr %inverty to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %.lobit138, ptr %inverty, align 1
  %39 = ptrtoint ptr %start_address to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %start_address, align 1
  %add55 = add i16 %40, 3
  %call57 = call fastcc i32 @__mxt_read_reg(ptr noundef %1, i16 noundef zeroext %add55, i16 noundef zeroext 1, ptr noundef nonnull %tchaux)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end60:                                         ; preds = %if.end42
  %41 = ptrtoint ptr %tchaux to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %tchaux, align 1
  %43 = and i8 %42, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool63.not = icmp eq i8 %43, 0
  br i1 %tobool63.not, label %if.end60.if.end65_crit_edge, label %if.then64

if.end60.if.end65_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end65

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #18
  %t100_aux_vect = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 18
  %44 = ptrtoint ptr %t100_aux_vect to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 6, ptr %t100_aux_vect, align 2
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.end60.if.end65_crit_edge
  %aux.0 = phi i8 [ 7, %if.then64 ], [ 6, %if.end60.if.end65_crit_edge ]
  %45 = and i8 %42, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool68.not = icmp eq i8 %45, 0
  br i1 %tobool68.not, label %if.end65.if.end71_crit_edge, label %if.then69

if.end65.if.end71_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end71

if.then69:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #18
  %inc70 = add nuw nsw i8 %aux.0, 1
  %t100_aux_ampl = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 16
  %46 = ptrtoint ptr %t100_aux_ampl to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %aux.0, ptr %t100_aux_ampl, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.end65.if.end71_crit_edge
  %aux.1 = phi i8 [ %inc70, %if.then69 ], [ %aux.0, %if.end65.if.end71_crit_edge ]
  %47 = and i8 %42, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool74.not = icmp eq i8 %47, 0
  br i1 %tobool74.not, label %if.end71.do.body_crit_edge, label %if.then75

if.end71.do.body_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.then75:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #18
  %t100_aux_area = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 17
  %48 = ptrtoint ptr %t100_aux_area to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %aux.1, ptr %t100_aux_area, align 1
  br label %do.body

do.body:                                          ; preds = %if.then75, %if.end71.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxt_read_t100_config.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxt_read_t100_config, %if.then83)) #16
          to label %cleanup [label %if.then83], !srcloc !536

if.then83:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %t100_aux_vect84 = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 18
  %49 = ptrtoint ptr %t100_aux_vect84 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %t100_aux_vect84, align 2
  %conv85 = zext i8 %50 to i32
  %t100_aux_ampl86 = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 16
  %51 = ptrtoint ptr %t100_aux_ampl86 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %t100_aux_ampl86, align 8
  %conv87 = zext i8 %52 to i32
  %t100_aux_area88 = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 17
  %53 = ptrtoint ptr %t100_aux_area88 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %t100_aux_area88, align 1
  %conv89 = zext i8 %54 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxt_read_t100_config.__UNIQUE_ID_ddebug310, ptr noundef %dev, ptr noundef nonnull @.str.207, i32 noundef %conv85, i32 noundef %conv87, i32 noundef %conv89) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then83, %do.body, %if.end42.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %mxt_get_object.exit.cleanup_crit_edge, %mxt_get_object.exit.thread
  %retval.0 = phi i32 [ -22, %mxt_get_object.exit.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call13, %if.end6.cleanup_crit_edge ], [ %call23, %if.end16.cleanup_crit_edge ], [ %call31, %if.end26.cleanup_crit_edge ], [ %call39, %if.end34.cleanup_crit_edge ], [ %call57, %if.end42.cleanup_crit_edge ], [ 0, %if.then83 ], [ -22, %mxt_get_object.exit.thread ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tchaux) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cfg) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %range_y) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %range_x) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxt_input_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @mxt_start(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxt_input_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @mxt_stop(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxt_start(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  %val.addr.i.i12 = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %wakeup_method.i = getelementptr inbounds %struct.mxt_data, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %wakeup_method.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wakeup_method.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cond16 = icmp eq i32 %5, 2
  br i1 %cond16, label %sw.bb2.i, label %entry.mxt_wakeup_toggle.exit_crit_edge

entry.mxt_wakeup_toggle.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_wakeup_toggle.exit

sw.bb2.i:                                         ; preds = %entry
  %wake_gpio.i = getelementptr inbounds %struct.mxt_data, ptr %3, i32 0, i32 33
  %6 = ptrtoint ptr %wake_gpio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wake_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 1) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxt_wakeup_toggle.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxt_start, %if.then14.i)) #16
          to label %do.end.i [label %if.then14.i], !srcloc !536

if.then14.i:                                      ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #18
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxt_wakeup_toggle.__UNIQUE_ID_ddebug301, ptr noundef %dev.i, ptr noundef nonnull @.str.48) #16
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i, %sw.bb2.i
  tail call void @msleep(i32 noundef 25) #16
  br label %mxt_wakeup_toggle.exit

mxt_wakeup_toggle.exit:                           ; preds = %do.end.i, %entry.mxt_wakeup_toggle.exit_crit_edge
  %suspend_mode = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 53
  %8 = ptrtoint ptr %suspend_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %suspend_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cond = icmp eq i32 %9, 1
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %mxt_wakeup_toggle.exit
  %call1 = tail call fastcc i32 @mxt_soft_reset(ptr noundef %data)
  %info.i.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 4
  %10 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info.i.i, align 4
  %object_num.i.i = getelementptr inbounds %struct.mxt_info, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %object_num.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %object_num.i.i, align 1
  %conv.i.i = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp15.not.i.i = icmp eq i8 %13, 0
  br i1 %cmp15.not.i.i, label %sw.bb.mxt_get_object.exit.thread.i_crit_edge, label %for.body.lr.ph.i.i

sw.bb.mxt_get_object.exit.thread.i_crit_edge:     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_get_object.exit.thread.i

for.body.lr.ph.i.i:                               ; preds = %sw.bb
  %object_table.i.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 3
  %14 = ptrtoint ptr %object_table.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %object_table.i.i, align 8
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.016.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.mxt_get_object.exit.thread.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.cond.i.i.mxt_get_object.exit.thread.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_get_object.exit.thread.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.016.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr %struct.mxt_object, ptr %15, i32 %i.016.i.i
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %17)
  %cmp5.i.i = icmp eq i8 %17, 9
  br i1 %cmp5.i.i, label %mxt_get_object.exit.i, label %for.cond.i.i

mxt_get_object.exit.thread.i:                     ; preds = %for.cond.i.i.mxt_get_object.exit.thread.i_crit_edge, %sw.bb.mxt_get_object.exit.thread.i_crit_edge
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 8
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.184, i32 noundef 9) #19
  br label %sw.epilog

mxt_get_object.exit.i:                            ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %mxt_get_object.exit.i.sw.epilog_crit_edge, label %lor.lhs.false.i

mxt_get_object.exit.i.sw.epilog_crit_edge:        ; preds = %mxt_get_object.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

lor.lhs.false.i:                                  ; preds = %mxt_get_object.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %start_address.i = getelementptr %struct.mxt_object, ptr %15, i32 %i.016.i.i, i32 1
  %20 = ptrtoint ptr %start_address.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %start_address.i, align 1
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #16
  %24 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -125, ptr %val.addr.i.i, align 1
  %call.i.i = call fastcc i32 @__mxt_write_reg(ptr noundef %23, i16 noundef zeroext %21, i16 noundef zeroext 1, ptr noundef nonnull %val.addr.i.i) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #16
  br label %sw.epilog

sw.default:                                       ; preds = %mxt_wakeup_toggle.exit
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 8
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  %t7_cfg.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 29
  %T7_address.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 39
  %27 = ptrtoint ptr %T7_address.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %T7_address.i, align 8
  %call.i = tail call fastcc i32 @__mxt_write_reg(ptr noundef %26, i16 noundef zeroext %28, i16 noundef zeroext 2, ptr noundef %t7_cfg.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i11 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i11, label %do.body.i, label %sw.default.mxt_set_t7_power_cfg.exit_crit_edge

sw.default.mxt_set_t7_power_cfg.exit_crit_edge:   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_set_t7_power_cfg.exit

do.body.i:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxt_set_t7_power_cfg.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxt_start, %if.then10.i)) #16
          to label %mxt_set_t7_power_cfg.exit [label %if.then10.i], !srcloc !536

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %t7_cfg.sroa.gep.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 29, i32 1
  %29 = ptrtoint ptr %t7_cfg.sroa.gep.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %t7_cfg.sroa.gep.i, align 1
  %conv11.i = zext i8 %30 to i32
  %31 = ptrtoint ptr %t7_cfg.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %t7_cfg.i, align 1
  %conv12.i = zext i8 %32 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxt_set_t7_power_cfg.__UNIQUE_ID_ddebug311, ptr noundef %dev1.i, ptr noundef nonnull @.str.124, i32 noundef %conv11.i, i32 noundef %conv12.i) #16
  br label %mxt_set_t7_power_cfg.exit

mxt_set_t7_power_cfg.exit:                        ; preds = %if.then10.i, %do.body.i, %sw.default.mxt_set_t7_power_cfg.exit_crit_edge
  %T6_address.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 38
  %33 = ptrtoint ptr %T6_address.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %T6_address.i, align 2
  %add.i = add i16 %34, 2
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i12) #16
  %37 = ptrtoint ptr %val.addr.i.i12 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %val.addr.i.i12, align 1
  %call.i.i13 = call fastcc i32 @__mxt_write_reg(ptr noundef %36, i16 noundef zeroext %add.i, i16 noundef zeroext 1, ptr noundef nonnull %val.addr.i.i12) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i12) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %mxt_set_t7_power_cfg.exit, %lor.lhs.false.i, %mxt_get_object.exit.i.sw.epilog_crit_edge, %mxt_get_object.exit.thread.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxt_stop(ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  %deepsleep.i = alloca %struct.t7_config, align 2
  %val.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %suspend_mode = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 53
  %0 = ptrtoint ptr %suspend_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %suspend_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %info.i.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info.i.i, align 4
  %object_num.i.i = getelementptr inbounds %struct.mxt_info, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %object_num.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %object_num.i.i, align 1
  %conv.i.i = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp15.not.i.i = icmp eq i8 %5, 0
  br i1 %cmp15.not.i.i, label %sw.bb.mxt_get_object.exit.thread.i_crit_edge, label %for.body.lr.ph.i.i

sw.bb.mxt_get_object.exit.thread.i_crit_edge:     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_get_object.exit.thread.i

for.body.lr.ph.i.i:                               ; preds = %sw.bb
  %object_table.i.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 3
  %6 = ptrtoint ptr %object_table.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %object_table.i.i, align 8
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.016.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.mxt_get_object.exit.thread.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.cond.i.i.mxt_get_object.exit.thread.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_get_object.exit.thread.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.016.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr %struct.mxt_object, ptr %7, i32 %i.016.i.i
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %9)
  %cmp5.i.i = icmp eq i8 %9, 9
  br i1 %cmp5.i.i, label %mxt_get_object.exit.i, label %for.cond.i.i

mxt_get_object.exit.thread.i:                     ; preds = %for.cond.i.i.mxt_get_object.exit.thread.i_crit_edge, %sw.bb.mxt_get_object.exit.thread.i_crit_edge
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 8
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.184, i32 noundef 9) #19
  br label %sw.epilog

mxt_get_object.exit.i:                            ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %mxt_get_object.exit.i.sw.epilog_crit_edge, label %lor.lhs.false.i

mxt_get_object.exit.i.sw.epilog_crit_edge:        ; preds = %mxt_get_object.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

lor.lhs.false.i:                                  ; preds = %mxt_get_object.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %start_address.i = getelementptr %struct.mxt_object, ptr %7, i32 %i.016.i.i, i32 1
  %12 = ptrtoint ptr %start_address.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %start_address.i, align 1
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #16
  %16 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %val.addr.i.i, align 1
  %call.i.i = call fastcc i32 @__mxt_write_reg(ptr noundef %15, i16 noundef zeroext %13, i16 noundef zeroext 1, ptr noundef nonnull %val.addr.i.i) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #16
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 8
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %deepsleep.i) #16
  %19 = ptrtoint ptr %deepsleep.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %deepsleep.i, align 2
  %T7_address.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 39
  %20 = ptrtoint ptr %T7_address.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %T7_address.i, align 8
  %call.i = call fastcc i32 @__mxt_write_reg(ptr noundef %18, i16 noundef zeroext %21, i16 noundef zeroext 2, ptr noundef nonnull %deepsleep.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i7 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i7, label %do.body.i, label %sw.default.mxt_set_t7_power_cfg.exit_crit_edge

sw.default.mxt_set_t7_power_cfg.exit_crit_edge:   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_set_t7_power_cfg.exit

do.body.i:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxt_set_t7_power_cfg.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxt_stop, %if.then10.i)) #16
          to label %mxt_set_t7_power_cfg.exit [label %if.then10.i], !srcloc !536

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %deepsleep.sroa.gep.i = getelementptr inbounds %struct.t7_config, ptr %deepsleep.i, i32 0, i32 1
  %22 = ptrtoint ptr %deepsleep.sroa.gep.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %deepsleep.sroa.gep.i, align 1
  %conv11.i = zext i8 %23 to i32
  %24 = ptrtoint ptr %deepsleep.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %deepsleep.i, align 2
  %conv12.i = zext i8 %25 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxt_set_t7_power_cfg.__UNIQUE_ID_ddebug311, ptr noundef %dev1.i, ptr noundef nonnull @.str.124, i32 noundef %conv11.i, i32 noundef %conv12.i) #16
  br label %mxt_set_t7_power_cfg.exit

mxt_set_t7_power_cfg.exit:                        ; preds = %if.then10.i, %do.body.i, %sw.default.mxt_set_t7_power_cfg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %deepsleep.i) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %mxt_set_t7_power_cfg.exit, %lor.lhs.false.i, %mxt_get_object.exit.i.sw.epilog_crit_edge, %mxt_get_object.exit.thread.i
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4, i32 8
  %28 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i.i, align 4
  %wakeup_method.i = getelementptr inbounds %struct.mxt_data, ptr %29, i32 0, i32 54
  %30 = ptrtoint ptr %wakeup_method.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %wakeup_method.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cond8 = icmp eq i32 %31, 2
  br i1 %cond8, label %sw.bb2.i, label %sw.epilog.mxt_wakeup_toggle.exit_crit_edge

sw.epilog.mxt_wakeup_toggle.exit_crit_edge:       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_wakeup_toggle.exit

sw.bb2.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  %wake_gpio.i = getelementptr inbounds %struct.mxt_data, ptr %29, i32 0, i32 33
  %32 = ptrtoint ptr %wake_gpio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wake_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %33, i32 noundef 0) #16
  br label %mxt_wakeup_toggle.exit

mxt_wakeup_toggle.exit:                           ; preds = %sw.bb2.i, %sw.epilog.mxt_wakeup_toggle.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mxt_queue_setup(ptr nocapture noundef readonly %q, ptr nocapture noundef readnone %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %t37_nodes = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 30, i32 4
  %2 = ptrtoint ptr %t37_nodes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %t37_nodes, align 4
  %mul = shl i32 %3, 1
  %4 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %mul)
  %cmp = icmp ult i32 %7, %mul
  %cond = select i1 %cmp, i32 -22, i32 0
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %nplanes, align 4
  %9 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul, ptr %sizes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxt_buffer_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %call1 = tail call ptr @vb2_plane_vaddr(ptr noundef %vb, i32 noundef 0) #16
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.217) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %input = getelementptr inbounds %struct.mxt_data, ptr %3, i32 0, i32 30, i32 10
  %6 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cond = icmp eq i32 %7, 1
  %. = select i1 %cond, i8 17, i8 16
  %call3 = tail call fastcc i32 @mxt_read_diagnostic_debug(ptr noundef %3, i8 noundef zeroext %., ptr noundef nonnull %call1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %8 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %if.end6.cleanup_crit_edge, label %if.then.i

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i:                                        ; preds = %if.end6
  %t37_nodes = getelementptr inbounds %struct.mxt_data, ptr %3, i32 0, i32 30, i32 4
  %10 = ptrtoint ptr %t37_nodes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %t37_nodes, align 4
  %mul = shl i32 %11, 1
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %12 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %mul)
  %cmp1.i = icmp ult i32 %13, %mul
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !537

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.222, i32 noundef 1163, i32 noundef 9, ptr noundef null) #16
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %14 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %15, %if.then38.i ], [ %mul, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %16 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42.i, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %.sink = phi i32 [ 5, %if.end6.cleanup_crit_edge ], [ 5, %if.end42.i ], [ 6, %if.end.cleanup_crit_edge ], [ 6, %do.end ]
  tail call void @vb2_buffer_done(ptr noundef %vb, i32 noundef %.sink) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxt_read_diagnostic_debug(ptr nocapture noundef readonly %data, i8 noundef zeroext %mode, ptr nocapture noundef writeonly %outbuf) unnamed_addr #2 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  %cmd_poll = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dbg1 = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd_poll) #16
  %0 = ptrtoint ptr %cmd_poll to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %cmd_poll, align 1, !annotation !535
  %t37_pages = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 30, i32 3
  %1 = ptrtoint ptr %t37_pages to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %t37_pages, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp82.not = icmp eq i32 %2, 0
  br i1 %cmp82.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %t37_buf = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 30, i32 2
  %diag_cmd_address = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 30, i32 1
  br label %for.body

for.body:                                         ; preds = %do.end40.for.body_crit_edge, %for.body.lr.ph
  %cmd.085 = phi i8 [ %mode, %for.body.lr.ph ], [ 1, %do.end40.for.body_crit_edge ]
  %page.083 = phi i32 [ 0, %for.body.lr.ph ], [ %inc41, %do.end40.for.body_crit_edge ]
  %3 = ptrtoint ptr %t37_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %t37_buf, align 4
  %add.ptr = getelementptr %struct.t37_debug, ptr %4, i32 %page.083
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 8
  %7 = ptrtoint ptr %diag_cmd_address to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %diag_cmd_address, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %9 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %cmd.085, ptr %val.addr.i, align 1
  %call.i = call fastcc i32 @__mxt_write_reg(ptr noundef %6, i16 noundef zeroext %8, i16 noundef zeroext 1, ptr noundef nonnull %val.addr.i) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @msleep(i32 noundef 20) #16
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 8
  %12 = ptrtoint ptr %diag_cmd_address to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %diag_cmd_address, align 2
  %call477 = call fastcc i32 @__mxt_read_reg(ptr noundef %11, i16 noundef zeroext %13, i16 noundef zeroext 1, ptr noundef nonnull %cmd_poll)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call477)
  %tobool5.not78 = icmp eq i32 %call477, 0
  br i1 %tobool5.not78, label %if.end.if.end7_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.if.end7_crit_edge:                         ; preds = %if.end
  br label %if.end7

if.end7:                                          ; preds = %if.end12.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %retries.079 = phi i32 [ %inc, %if.end12.if.end7_crit_edge ], [ 0, %if.end.if.end7_crit_edge ]
  %14 = ptrtoint ptr %cmd_poll to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cmd_poll, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool8.not = icmp eq i8 %15, 0
  br i1 %tobool8.not, label %if.end13, label %if.then9

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %retries.079)
  %exitcond = icmp eq i32 %retries.079, 101
  br i1 %exitcond, label %if.then9.cleanup_crit_edge, label %if.end12

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end12:                                         ; preds = %if.then9
  %inc = add nuw nsw i32 %retries.079, 1
  call void @msleep(i32 noundef 20) #16
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 8
  %18 = ptrtoint ptr %diag_cmd_address to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %diag_cmd_address, align 2
  %call4 = call fastcc i32 @__mxt_read_reg(ptr noundef %17, i16 noundef zeroext %19, i16 noundef zeroext 1, ptr noundef nonnull %cmd_poll)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end12.if.end7_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end12.if.end7_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.end13:                                         ; preds = %if.end7
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 8
  %22 = ptrtoint ptr %dbg1 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %dbg1, align 8
  %call15 = call fastcc i32 @__mxt_read_reg(ptr noundef %21, i16 noundef zeroext %23, i16 noundef zeroext 130, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %mode)
  %cmp21.not = icmp eq i8 %25, %mode
  br i1 %cmp21.not, label %lor.lhs.false, label %if.end18.do.end_crit_edge

if.end18.do.end_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end18
  %page23 = getelementptr %struct.t37_debug, ptr %4, i32 %page.083, i32 1
  %26 = ptrtoint ptr %page23 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %page23, align 1
  %conv24 = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %page.083, i32 %conv24)
  %cmp25.not = icmp eq i32 %page.083, %conv24
  br i1 %cmp25.not, label %do.body30, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end18.do.end_crit_edge
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.219) #19
  br label %cleanup

do.body30:                                        ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxt_read_diagnostic_debug.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxt_read_diagnostic_debug, %if.then35)) #16
          to label %do.end40 [label %if.then35], !srcloc !536

if.then35:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #18
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 8
  %dev37 = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxt_read_diagnostic_debug.__UNIQUE_ID_ddebug315, ptr noundef %dev37, ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.220, i32 noundef %page.083, i32 noundef %retries.079) #16
  br label %do.end40

do.end40:                                         ; preds = %if.then35, %do.body30
  %inc41 = add nuw i32 %page.083, 1
  %32 = ptrtoint ptr %t37_pages to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %t37_pages, align 8
  %cmp = icmp ult i32 %inc41, %33
  br i1 %cmp, label %do.end40.for.body_crit_edge, label %do.end40.for.end_crit_edge

do.end40.for.end_crit_edge:                       ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

do.end40.for.body_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %do.end40.for.end_crit_edge, %entry.for.end_crit_edge
  %t37_nodes.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 30, i32 4
  %34 = ptrtoint ptr %t37_nodes.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %t37_nodes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp1.not.i = icmp eq i32 %35, 0
  br i1 %cmp1.not.i, label %for.end.cleanup_crit_edge, label %for.body.lr.ph.i

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %for.end
  %xy_switch.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 11
  %invertx.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 9
  %xsize.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 12
  %inverty.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 10
  %ysize.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 13
  %info1.i.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 4
  %t37_buf.i.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 30, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %mxt_get_debug_value.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.04.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc37.i, %mxt_get_debug_value.exit.i.for.body.i_crit_edge ]
  %y.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %y.1.i, %mxt_get_debug_value.exit.i.for.body.i_crit_edge ]
  %x.02.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %x.1.i, %mxt_get_debug_value.exit.i.for.body.i_crit_edge ]
  %36 = ptrtoint ptr %xy_switch.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %xy_switch.i, align 2, !range !534
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i = icmp eq i8 %37, 0
  %x.0.y.0.i = select i1 %tobool.not.i, i32 %x.02.i, i32 %y.03.i
  %cond7.i = select i1 %tobool.not.i, i32 %y.03.i, i32 %x.02.i
  %38 = ptrtoint ptr %invertx.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %invertx.i, align 8, !range !534
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool8.not.i = icmp eq i8 %39, 0
  br i1 %tobool8.not.i, label %for.body.i.cond.end12.i_crit_edge, label %cond.true9.i

for.body.i.cond.end12.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end12.i

cond.true9.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %40 = ptrtoint ptr %xsize.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %xsize.i, align 1
  %conv.i = zext i8 %41 to i32
  %42 = xor i32 %x.0.y.0.i, -1
  %sub10.i = add i32 %conv.i, %42
  br label %cond.end12.i

cond.end12.i:                                     ; preds = %cond.true9.i, %for.body.i.cond.end12.i_crit_edge
  %cond13.i = phi i32 [ %sub10.i, %cond.true9.i ], [ %x.0.y.0.i, %for.body.i.cond.end12.i_crit_edge ]
  %43 = ptrtoint ptr %inverty.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %inverty.i, align 1, !range !534
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool14.not.i = icmp eq i8 %44, 0
  br i1 %tobool14.not.i, label %cond.end12.i.cond.end21.i_crit_edge, label %cond.true16.i

cond.end12.i.cond.end21.i_crit_edge:              ; preds = %cond.end12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end21.i

cond.true16.i:                                    ; preds = %cond.end12.i
  call void @__sanitizer_cov_trace_pc() #18
  %45 = ptrtoint ptr %ysize.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ysize.i, align 4
  %conv17.i = zext i8 %46 to i32
  %47 = xor i32 %cond7.i, -1
  %sub19.i = add i32 %conv17.i, %47
  br label %cond.end21.i

cond.end21.i:                                     ; preds = %cond.true16.i, %cond.end12.i.cond.end21.i_crit_edge
  %cond22.i = phi i32 [ %sub19.i, %cond.true16.i ], [ %cond7.i, %cond.end12.i.cond.end21.i_crit_edge ]
  %48 = ptrtoint ptr %info1.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %info1.i.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %51)
  %cmp.i.i = icmp eq i8 %51, -96
  %matrix_ysize.i.i = getelementptr inbounds %struct.mxt_info, ptr %49, i32 0, i32 5
  %52 = ptrtoint ptr %matrix_ysize.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %matrix_ysize.i.i, align 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %cond.end21.i
  call void @__sanitizer_cov_trace_pc() #18
  %54 = udiv i8 %53, 3
  %div.i.i = zext i8 %54 to i32
  %cond22.i.frozen = freeze i32 %cond22.i
  %div.i.i.frozen = freeze i32 %div.i.i
  %div5.i.i = udiv i32 %cond22.i.frozen, %div.i.i.frozen
  %55 = mul i32 %div5.i.i, %div.i.i.frozen
  %rem.i.i.decomposed = sub i32 %cond22.i.frozen, %55
  %phi.bo.i.i = shl i32 %div5.i.i, 3
  br label %mxt_get_debug_value.exit.i

if.else.i.i:                                      ; preds = %cond.end21.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv7.i.i = zext i8 %53 to i32
  br label %mxt_get_debug_value.exit.i

mxt_get_debug_value.exit.i:                       ; preds = %if.else.i.i, %if.then.i.i
  %add17.i.i = phi i32 [ 0, %if.else.i.i ], [ %phi.bo.i.i, %if.then.i.i ]
  %y.addr.0.i.i = phi i32 [ %cond22.i, %if.else.i.i ], [ %rem.i.i.decomposed, %if.then.i.i ]
  %col_width.0.i.i = phi i32 [ %conv7.i.i, %if.else.i.i ], [ %div.i.i, %if.then.i.i ]
  %mul.i.i = mul i32 %col_width.0.i.i, %cond13.i
  %add.i.i = add i32 %mul.i.i, %y.addr.0.i.i
  %mul8.i.i = shl i32 %add.i.i, 1
  %div932.i.i = lshr i32 %mul8.i.i, 7
  %page.0.i.i = add i32 %div932.i.i, %add17.i.i
  %rem10.i.i = and i32 %mul8.i.i, 126
  %56 = ptrtoint ptr %t37_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %t37_buf.i.i, align 4
  %arrayidx20.i.i = getelementptr %struct.t37_debug, ptr %57, i32 %page.0.i.i, i32 2, i32 %rem10.i.i
  %58 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %arrayidx20.i.i, align 1
  %60 = call i16 @llvm.bswap.i16(i16 %59) #16
  %arrayidx.i = getelementptr i16, ptr %outbuf, i32 %i.04.i
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %arrayidx.i, align 2
  %inc.i = add i32 %x.02.i, 1
  %62 = ptrtoint ptr %xy_switch.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %xy_switch.i, align 2, !range !534
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool24.not.i = icmp eq i8 %63, 0
  %cond33.in.in.i = select i1 %tobool24.not.i, ptr %xsize.i, ptr %ysize.i
  %64 = ptrtoint ptr %cond33.in.in.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %cond33.in.i = load i8, ptr %cond33.in.in.i, align 1
  %cond33.i = zext i8 %cond33.in.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %cond33.i)
  %cmp34.not.i = icmp ult i32 %inc.i, %cond33.i
  %x.1.i = select i1 %cmp34.not.i, i32 %inc.i, i32 0
  %not.cmp34.not.i = xor i1 %cmp34.not.i, true
  %inc36.i = zext i1 %not.cmp34.not.i to i32
  %y.1.i = add i32 %y.03.i, %inc36.i
  %inc37.i = add nuw i32 %i.04.i, 1
  %65 = ptrtoint ptr %t37_nodes.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %t37_nodes.i, align 4
  %cmp.i = icmp ult i32 %inc37.i, %66
  br i1 %cmp.i, label %mxt_get_debug_value.exit.i.for.body.i_crit_edge, label %mxt_get_debug_value.exit.i.cleanup_crit_edge

mxt_get_debug_value.exit.i.cleanup_crit_edge:     ; preds = %mxt_get_debug_value.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

mxt_get_debug_value.exit.i.for.body.i_crit_edge:  ; preds = %mxt_get_debug_value.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

cleanup:                                          ; preds = %mxt_get_debug_value.exit.i.cleanup_crit_edge, %for.end.cleanup_crit_edge, %do.end, %if.end13.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %mxt_get_debug_value.exit.i.cleanup_crit_edge ], [ %call4, %if.end12.cleanup_crit_edge ], [ -22, %if.then9.cleanup_crit_edge ], [ %call477, %if.end.cleanup_crit_edge ], [ %call15, %if.end13.cleanup_crit_edge ], [ %call.i, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd_poll) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxt_vidioc_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #16
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strlcpy(ptr noundef %cap, ptr noundef nonnull @.str, i32 noundef 16) #16
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call3 = tail call i32 @strlcpy(ptr noundef %card, ptr noundef nonnull @.str.223, i32 noundef 32) #16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.224, ptr noundef %retval.0.i)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mxt_vidioc_enum_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fmt) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %fmt, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmt, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.275)
  switch i32 %3, label %if.end.return_crit_edge [
    i32 0, label %if.end.return.sink.split_crit_edge
    i32 1, label %sw.bb1
  ]

if.end.return.sink.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %return.sink.split

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb1, %if.end.return.sink.split_crit_edge
  %.sink = phi i32 [ 909198420, %sw.bb1 ], [ 909202772, %if.end.return.sink.split_crit_edge ]
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %fmt, i32 0, i32 4
  %5 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %pixelformat, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxt_vidioc_fmt(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #16
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %f, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %format = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 30, i32 6
  %3 = call ptr @memcpy(ptr %fmt, ptr %format, i32 48)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxt_vidioc_enum_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %i) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %type, align 4
  %3 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.276)
  switch i32 %1, label %if.end.return_crit_edge [
    i32 1, label %if.end.return.sink.split_crit_edge
    i32 0, label %sw.bb2
  ]

if.end.return.sink.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %return.sink.split

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb2, %if.end.return.sink.split_crit_edge
  %.str.225.sink = phi ptr [ @.str.226, %sw.bb2 ], [ @.str.225, %if.end.return.sink.split_crit_edge ]
  %name = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull %.str.225.sink, i32 noundef 32) #16
  br label %return

return:                                           ; preds = %return.sink.split, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxt_vidioc_g_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #16
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %input = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 30, i32 10
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 4
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxt_vidioc_s_input(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i)
  %cmp.i = icmp ugt i32 %i, 1
  br i1 %cmp.i, label %entry.mxt_set_input.exit_crit_edge, label %if.end.i

entry.mxt_set_input.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_set_input.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %format.i = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 30, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %cmp1.i = icmp eq i32 %i, 0
  %spec.select.i = select i1 %cmp1.i, i32 909198420, i32 909202772
  %2 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 30, i32 6, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select.i, ptr %2, align 4
  %xy_switch.i = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %xy_switch.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %xy_switch.i, align 2, !range !534
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %ysize.i = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 13
  %xsize.i = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 12
  %cond.in.in.i = select i1 %tobool.not.i, ptr %xsize.i, ptr %ysize.i
  %6 = ptrtoint ptr %cond.in.in.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %cond.in.i = load i8, ptr %cond.in.in.i, align 1
  %cond.i = zext i8 %cond.in.i to i32
  %7 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond.i, ptr %format.i, align 4
  %cond16.in.in.i = select i1 %tobool.not.i, ptr %ysize.i, ptr %xsize.i
  %8 = ptrtoint ptr %cond16.in.in.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %cond16.in.i = load i8, ptr %cond16.in.in.i, align 1
  %cond16.i = zext i8 %cond16.in.i to i32
  %height.i = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 30, i32 6, i32 1
  %9 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond16.i, ptr %height.i, align 4
  %field.i = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 30, i32 6, i32 3
  %10 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %field.i, align 4
  %colorspace.i = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 30, i32 6, i32 6
  %11 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 11, ptr %colorspace.i, align 4
  %mul.i = shl nuw nsw i32 %cond.i, 1
  %bytesperline.i = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 30, i32 6, i32 4
  %12 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul.i, ptr %bytesperline.i, align 4
  %mul21.i = mul nuw nsw i32 %mul.i, %cond16.i
  %sizeimage.i = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 30, i32 6, i32 5
  %13 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul21.i, ptr %sizeimage.i, align 4
  %input.i = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 30, i32 10
  %14 = ptrtoint ptr %input.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %i, ptr %input.i, align 4
  br label %mxt_set_input.exit

mxt_set_input.exit:                               ; preds = %if.end.i, %entry.mxt_set_input.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %entry.mxt_set_input.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mxt_vidioc_g_parm(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %a) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %readbuffers = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 4
  %2 = ptrtoint ptr %readbuffers to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %readbuffers, align 4
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %timeperframe to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %timeperframe, align 4
  %denominator = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 10, ptr %denominator, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxt_fw_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %info1 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info1, align 4
  %version = getelementptr inbounds %struct.mxt_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %version, align 1
  %conv = zext i8 %5 to i32
  %6 = lshr i32 %conv, 4
  %and = and i32 %conv, 15
  %build = getelementptr inbounds %struct.mxt_info, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %build to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %build, align 1
  %conv4 = zext i8 %8 to i32
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.228, i32 noundef %6, i32 noundef %and, i32 noundef %conv4) #16
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxt_hw_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %info1 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %conv = zext i8 %5 to i32
  %variant_id = getelementptr inbounds %struct.mxt_info, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %variant_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %variant_id, align 1
  %conv2 = zext i8 %7 to i32
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.230, i32 noundef %conv, i32 noundef %conv2) #16
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxt_object_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 256) #20
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup32_crit_edge, label %for.cond.preheader

entry.cleanup32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup32

for.cond.preheader:                               ; preds = %entry
  %info = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %info, align 4
  %object_num80 = getelementptr inbounds %struct.mxt_info, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %object_num80 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %object_num80, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp82.not = icmp eq i8 %6, 0
  br i1 %cmp82.not, label %for.cond.preheader.cleanup32.sink.split_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup32.sink.split_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup32.sink.split

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %object_table = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc28.for.body_crit_edge, %for.body.lr.ph
  %i.084 = phi i32 [ 0, %for.body.lr.ph ], [ %inc29, %for.inc28.for.body_crit_edge ]
  %count.083 = phi i32 [ 0, %for.body.lr.ph ], [ %count.3, %for.inc28.for.body_crit_edge ]
  %7 = ptrtoint ptr %object_table to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %object_table, align 8
  %add.ptr = getelementptr %struct.mxt_object, ptr %8, i32 %i.084
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.277)
  switch i8 %10, label %for.body.for.inc28_crit_edge [
    i8 6, label %for.body.if.end6_crit_edge
    i8 7, label %for.body.if.end6_crit_edge101
    i8 8, label %for.body.if.end6_crit_edge102
    i8 53, label %for.body.if.end6_crit_edge103
    i8 9, label %for.body.if.end6_crit_edge104
    i8 15, label %for.body.if.end6_crit_edge105
    i8 23, label %for.body.if.end6_crit_edge106
    i8 52, label %for.body.if.end6_crit_edge107
    i8 100, label %for.body.if.end6_crit_edge108
    i8 20, label %for.body.if.end6_crit_edge109
    i8 22, label %for.body.if.end6_crit_edge110
    i8 24, label %for.body.if.end6_crit_edge111
    i8 27, label %for.body.if.end6_crit_edge112
    i8 40, label %for.body.if.end6_crit_edge113
    i8 41, label %for.body.if.end6_crit_edge114
    i8 42, label %for.body.if.end6_crit_edge115
    i8 47, label %for.body.if.end6_crit_edge116
    i8 48, label %for.body.if.end6_crit_edge117
    i8 18, label %for.body.if.end6_crit_edge118
    i8 19, label %for.body.if.end6_crit_edge119
    i8 25, label %for.body.if.end6_crit_edge120
    i8 28, label %for.body.if.end6_crit_edge121
    i8 38, label %for.body.if.end6_crit_edge122
    i8 43, label %for.body.if.end6_crit_edge123
    i8 46, label %for.body.if.end6_crit_edge124
    i8 71, label %for.body.if.end6_crit_edge125
  ]

for.body.if.end6_crit_edge125:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

for.body.if.end6_crit_edge124:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

for.body.if.end6_crit_edge123:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

for.body.if.end6_crit_edge122:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

for.body.if.end6_crit_edge121:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

for.body.if.end6_crit_edge120:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

for.body.if.end6_crit_edge119:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

for.body.if.end6_crit_edge118:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

for.body.if.end6_crit_edge117:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

for.body.if.end6_crit_edge116:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

for.body.if.end6_crit_edge115:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

for.body.if.end6_crit_edge114:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

for.body.if.end6_crit_edge113:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

for.body.if.end6_crit_edge112:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

for.body.if.end6_crit_edge111:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

for.body.if.end6_crit_edge110:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

for.body.if.end6_crit_edge109:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

for.body.if.end6_crit_edge108:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

for.body.if.end6_crit_edge107:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

for.body.if.end6_crit_edge106:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

for.body.if.end6_crit_edge105:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

for.body.if.end6_crit_edge104:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

for.body.if.end6_crit_edge103:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

for.body.if.end6_crit_edge102:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

for.body.if.end6_crit_edge101:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

for.body.if.end6_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

for.body.for.inc28_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc28

if.end6:                                          ; preds = %for.body.if.end6_crit_edge, %for.body.if.end6_crit_edge101, %for.body.if.end6_crit_edge102, %for.body.if.end6_crit_edge103, %for.body.if.end6_crit_edge104, %for.body.if.end6_crit_edge105, %for.body.if.end6_crit_edge106, %for.body.if.end6_crit_edge107, %for.body.if.end6_crit_edge108, %for.body.if.end6_crit_edge109, %for.body.if.end6_crit_edge110, %for.body.if.end6_crit_edge111, %for.body.if.end6_crit_edge112, %for.body.if.end6_crit_edge113, %for.body.if.end6_crit_edge114, %for.body.if.end6_crit_edge115, %for.body.if.end6_crit_edge116, %for.body.if.end6_crit_edge117, %for.body.if.end6_crit_edge118, %for.body.if.end6_crit_edge119, %for.body.if.end6_crit_edge120, %for.body.if.end6_crit_edge121, %for.body.if.end6_crit_edge122, %for.body.if.end6_crit_edge123, %for.body.if.end6_crit_edge124, %for.body.if.end6_crit_edge125
  %conv3 = zext i8 %10 to i32
  %add.ptr7 = getelementptr i8, ptr %buf, i32 %count.083
  %sub = sub i32 4096, %count.083
  %call10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7, i32 noundef %sub, ptr noundef nonnull @.str.232, i32 noundef %conv3) #16
  %add = add i32 %call10, %count.083
  %instances_minus_one.i = getelementptr %struct.mxt_object, ptr %8, i32 %i.084, i32 3
  %size_minus_one.i = getelementptr %struct.mxt_object, ptr %8, i32 %i.084, i32 2
  %start_address = getelementptr %struct.mxt_object, ptr %8, i32 %i.084, i32 1
  br label %for.body15

for.body15:                                       ; preds = %for.inc.for.body15_crit_edge, %if.end6
  %j.078 = phi i32 [ 0, %if.end6 ], [ %inc, %for.inc.for.body15_crit_edge ]
  %count.177 = phi i32 [ %add, %if.end6 ], [ %add13.i, %for.inc.for.body15_crit_edge ]
  %12 = ptrtoint ptr %size_minus_one.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %size_minus_one.i, align 1
  %conv.i62 = zext i8 %13 to i32
  %add.i63 = add nuw nsw i32 %conv.i62, 1
  %conv17 = trunc i32 %add.i63 to i16
  %14 = ptrtoint ptr %start_address to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %start_address, align 1
  %mul = mul i32 %add.i63, %j.078
  %16 = trunc i32 %mul to i16
  %conv21 = add i16 %15, %16
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %call22 = tail call fastcc i32 @__mxt_read_reg(ptr noundef %18, i16 noundef zeroext %conv21, i16 noundef zeroext %conv17, ptr noundef nonnull %call7.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %for.body15.cleanup32.sink.split_crit_edge

for.body15.cleanup32.sink.split_crit_edge:        ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup32.sink.split

if.end25:                                         ; preds = %for.body15
  %19 = ptrtoint ptr %instances_minus_one.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %instances_minus_one.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp.not.i = icmp eq i8 %20, 0
  br i1 %cmp.not.i, label %if.end25.for.body.i.preheader_crit_edge, label %if.then.i

if.end25.for.body.i.preheader_crit_edge:          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.preheader

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %count.177
  %sub.i = sub i32 4096, %count.177
  %call1.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef nonnull @.str.233, i32 noundef %j.078) #16
  %add.i64 = add i32 %call1.i, %count.177
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.then.i, %if.end25.for.body.i.preheader_crit_edge
  %count.addr.134.i.ph = phi i32 [ %count.177, %if.end25.for.body.i.preheader_crit_edge ], [ %add.i64, %if.then.i ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.035.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %count.addr.134.i = phi i32 [ %add9.i, %for.body.i.for.body.i_crit_edge ], [ %count.addr.134.i.ph, %for.body.i.preheader ]
  %add.ptr4.i = getelementptr i8, ptr %buf, i32 %count.addr.134.i
  %sub5.i = sub i32 4096, %count.addr.134.i
  %arrayidx.i = getelementptr i8, ptr %call7.i, i32 %i.035.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i, align 1
  %conv.i65 = zext i8 %22 to i32
  %call8.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr4.i, i32 noundef %sub5.i, ptr noundef nonnull @.str.234, i32 noundef %i.035.i, i32 noundef %conv.i65, i32 noundef %conv.i65) #16
  %add9.i = add i32 %call8.i, %count.addr.134.i
  %inc.i = add nuw nsw i32 %i.035.i, 1
  %23 = ptrtoint ptr %size_minus_one.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %size_minus_one.i, align 1
  %conv.i31.i = zext i8 %24 to i32
  %cmp3.not.not.i = icmp ult i32 %i.035.i, %conv.i31.i
  br i1 %cmp3.not.not.i, label %for.body.i.for.body.i_crit_edge, label %for.inc

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc:                                          ; preds = %for.body.i
  %add.ptr10.i = getelementptr i8, ptr %buf, i32 %add9.i
  %sub11.i = sub i32 4096, %add9.i
  %call12.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr10.i, i32 noundef %sub11.i, ptr noundef nonnull @.str.235) #16
  %add13.i = add i32 %call12.i, %add9.i
  %inc = add nuw nsw i32 %j.078, 1
  %25 = ptrtoint ptr %instances_minus_one.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %instances_minus_one.i, align 1
  %conv.i = zext i8 %26 to i32
  %cmp13.not.not = icmp ult i32 %j.078, %conv.i
  br i1 %cmp13.not.not, label %for.inc.for.body15_crit_edge, label %for.inc.for.inc28_crit_edge

for.inc.for.inc28_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc28

for.inc.for.body15_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body15

for.inc28:                                        ; preds = %for.inc.for.inc28_crit_edge, %for.body.for.inc28_crit_edge
  %count.3 = phi i32 [ %count.083, %for.body.for.inc28_crit_edge ], [ %add13.i, %for.inc.for.inc28_crit_edge ]
  %inc29 = add nuw nsw i32 %i.084, 1
  %27 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %info, align 4
  %object_num = getelementptr inbounds %struct.mxt_info, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %object_num to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %object_num, align 1
  %conv = zext i8 %30 to i32
  %cmp = icmp ult i32 %inc29, %conv
  br i1 %cmp, label %for.inc28.for.body_crit_edge, label %for.inc28.cleanup32.sink.split_crit_edge

for.inc28.cleanup32.sink.split_crit_edge:         ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup32.sink.split

for.inc28.for.body_crit_edge:                     ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

cleanup32.sink.split:                             ; preds = %for.inc28.cleanup32.sink.split_crit_edge, %for.body15.cleanup32.sink.split_crit_edge, %for.cond.preheader.cleanup32.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %for.cond.preheader.cleanup32.sink.split_crit_edge ], [ %call22, %for.body15.cleanup32.sink.split_crit_edge ], [ %count.3, %for.inc28.cleanup32.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #16
  br label %cleanup32

cleanup32:                                        ; preds = %cleanup32.sink.split, %entry.cleanup32_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup32_crit_edge ], [ %retval.0.ph, %cleanup32.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxt_update_fw_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @mxt_load_fw(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.end4, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.238, i32 noundef %call1) #19
  br label %if.end8

do.end4:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.241) #19
  %call5 = tail call fastcc i32 @mxt_initialize(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.end4.if.end8_crit_edge, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end4.if.end8_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.end8:                                          ; preds = %do.end4.if.end8_crit_edge, %do.end
  %count.addr.0 = phi i32 [ %call1, %do.end ], [ %count, %do.end4.if.end8_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %if.end8 ], [ %call5, %do.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxt_load_fw(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  %val.addr.i.i = alloca i8, align 1
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #16
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fw, align 4
  %call1 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.237, ptr noundef %dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.243, ptr noundef nonnull @.str.237) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fw, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp21.not.i = icmp eq i32 %6, 0
  br i1 %cmp21.not.i, label %if.end.mxt_check_firmware_format.exit_crit_edge, label %while.body.lr.ph.i

if.end.mxt_check_firmware_format.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_check_firmware_format.exit

while.body.lr.ph.i:                               ; preds = %if.end
  %data.i = getelementptr inbounds %struct.firmware, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  br label %while.body.i

while.cond.i:                                     ; preds = %lor.lhs.false.i
  %inc.i = add nuw i32 %pos.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %while.cond.i.mxt_check_firmware_format.exit_crit_edge, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

while.cond.i.mxt_check_firmware_format.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_check_firmware_format.exit

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %pos.022.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc.i, %while.cond.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %8, i32 %pos.022.i
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %10)
  %cmp1.i = icmp ult i8 %10, 48
  br i1 %cmp1.i, label %while.body.i.if.end5_crit_edge, label %lor.lhs.false.i

while.body.i.if.end5_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

lor.lhs.false.i:                                  ; preds = %while.body.i
  %11 = add i8 %10, -58
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %11)
  %12 = icmp ult i8 %11, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 70, i8 %10)
  %cmp11.i = icmp ugt i8 %10, 70
  %or.cond20.i = or i1 %cmp11.i, %12
  br i1 %or.cond20.i, label %lor.lhs.false.i.if.end5_crit_edge, label %while.cond.i

lor.lhs.false.i.if.end5_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

mxt_check_firmware_format.exit:                   ; preds = %while.cond.i.mxt_check_firmware_format.exit_crit_edge, %if.end.mxt_check_firmware_format.exit_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.253) #19
  br label %release_firmware

if.end5:                                          ; preds = %lor.lhs.false.i.if.end5_crit_edge, %while.body.i.if.end5_crit_edge
  %in_bootloader = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 14
  %13 = ptrtoint ptr %in_bootloader to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %in_bootloader, align 1, !range !534
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool6.not = icmp eq i8 %14, 0
  br i1 %tobool6.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  %15 = ptrtoint ptr %in_bootloader to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %in_bootloader, align 1
  %T6_address.i = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 38
  %16 = ptrtoint ptr %T6_address.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %T6_address.i, align 2
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #16
  %20 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -91, ptr %val.addr.i.i, align 1
  %call.i.i = call fastcc i32 @__mxt_write_reg(ptr noundef %19, i16 noundef zeroext %17, i16 noundef zeroext 1, ptr noundef nonnull %val.addr.i.i) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool10.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool10.not, label %if.end12, label %if.then7.release_firmware_crit_edge

if.then7.release_firmware_crit_edge:              ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  br label %release_firmware

if.end12:                                         ; preds = %if.then7
  call void @msleep(i32 noundef 200) #16
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %addr.i, align 2
  %info.i = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %info.i, align 4
  %tobool.not.i6 = icmp eq ptr %26, null
  br i1 %tobool.not.i6, label %if.end12.cond.end.i_crit_edge, label %cond.true.i

if.end12.cond.end.i_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 1
  %phi.cast.i = zext i8 %28 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end12.cond.end.i_crit_edge
  %cond.i = phi i32 [ %phi.cast.i, %cond.true.i ], [ 0, %if.end12.cond.end.i_crit_edge ]
  %trunc.i = trunc i16 %24 to i8
  %29 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.278)
  switch i8 %trunc.i, label %mxt_lookup_bootloader_address.exit [
    i8 74, label %cond.end.i.sw.bb.i_crit_edge
    i8 75, label %cond.end.i.sw.bb.i_crit_edge71
    i8 76, label %cond.end.i.sw.bb12.i_crit_edge
    i8 77, label %cond.end.i.sw.bb12.i_crit_edge72
    i8 90, label %cond.end.i.sw.bb12.i_crit_edge73
    i8 91, label %cond.end.i.sw.bb12.i_crit_edge74
  ]

cond.end.i.sw.bb12.i_crit_edge74:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb12.i

cond.end.i.sw.bb12.i_crit_edge73:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb12.i

cond.end.i.sw.bb12.i_crit_edge72:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb12.i

cond.end.i.sw.bb12.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb12.i

cond.end.i.sw.bb.i_crit_edge71:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb.i

cond.end.i.sw.bb.i_crit_edge:                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %cond.end.i.sw.bb.i_crit_edge, %cond.end.i.sw.bb.i_crit_edge71
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %cond.i)
  %cmp.i = icmp ugt i32 %cond.i, 161
  br i1 %cmp.i, label %sw.bb.i.if.end16_crit_edge, label %sw.bb.i.sw.bb12.i_crit_edge

sw.bb.i.sw.bb12.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb12.i

sw.bb.i.if.end16_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

sw.bb12.i:                                        ; preds = %sw.bb.i.sw.bb12.i_crit_edge, %cond.end.i.sw.bb12.i_crit_edge, %cond.end.i.sw.bb12.i_crit_edge72, %cond.end.i.sw.bb12.i_crit_edge73, %cond.end.i.sw.bb12.i_crit_edge74
  br label %if.end16

mxt_lookup_bootloader_address.exit:               ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %30 = and i16 %24, 255
  %conv5.i = zext i16 %30 to i32
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.94, i32 noundef %conv5.i) #19
  br label %release_firmware

if.end16:                                         ; preds = %sw.bb12.i, %sw.bb.i.if.end16_crit_edge
  %.sink.i = phi i8 [ -38, %sw.bb12.i ], [ -36, %sw.bb.i.if.end16_crit_edge ]
  %conv15.i = add nsw i8 %.sink.i, %trunc.i
  %bootloader_addr.i = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 22
  %31 = ptrtoint ptr %bootloader_addr.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv15.i, ptr %bootloader_addr.i, align 4
  %input_dev.i = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %input_dev.i, align 4
  %tobool.not.i9 = icmp eq ptr %33, null
  br i1 %tobool.not.i9, label %if.end16.mxt_free_input_device.exit_crit_edge, label %if.then.i

if.end16.mxt_free_input_device.exit_crit_edge:    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %mxt_free_input_device.exit

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  call void @input_unregister_device(ptr noundef nonnull %33) #16
  %34 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %input_dev.i, align 4
  br label %mxt_free_input_device.exit

mxt_free_input_device.exit:                       ; preds = %if.then.i, %if.end16.mxt_free_input_device.exit_crit_edge
  call fastcc void @mxt_free_object_table(ptr noundef %1)
  br label %if.end17

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  %irq = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 6
  %35 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq, align 4
  call void @enable_irq(i32 noundef %36) #16
  br label %if.end17

if.end17:                                         ; preds = %if.else, %mxt_free_input_device.exit
  %bl_completion = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 48
  %37 = ptrtoint ptr %bl_completion to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %bl_completion, align 4
  %call18 = call fastcc i32 @mxt_check_bootloader(ptr noundef %1, i32 noundef 192, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %do.end28, label %if.then20

if.then20:                                        ; preds = %if.end17
  %call21 = call fastcc i32 @mxt_check_bootloader(ptr noundef %1, i32 noundef 128, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then20.if.end33_crit_edge, label %if.then20.disable_irq_crit_edge

if.then20.disable_irq_crit_edge:                  ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #18
  br label %disable_irq

if.then20.if.end33_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

do.end28:                                         ; preds = %if.end17
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.246) #19
  %call29 = call fastcc i32 @mxt_send_bootloader_cmd(ptr noundef %1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %do.end28.if.end33_crit_edge, label %do.end28.disable_irq_crit_edge

do.end28.disable_irq_crit_edge:                   ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %disable_irq

do.end28.if.end33_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

if.end33:                                         ; preds = %do.end28.if.end33_crit_edge, %if.then20.if.end33_crit_edge
  %38 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fw, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp36.not = icmp eq i32 %41, 0
  br i1 %cmp36.not, label %if.end33.while.end_crit_edge, label %while.body.lr.ph

if.end33.while.end_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end33
  %42 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %bootloader_addr.i10 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 22
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end76.while.body_crit_edge, %while.body.lr.ph
  %pos.039 = phi i32 [ 0, %while.body.lr.ph ], [ %pos.1, %if.end76.while.body_crit_edge ]
  %frame.038 = phi i32 [ 0, %while.body.lr.ph ], [ %frame.1, %if.end76.while.body_crit_edge ]
  %retry.037 = phi i32 [ 0, %while.body.lr.ph ], [ %retry.1, %if.end76.while.body_crit_edge ]
  %call34 = call fastcc i32 @mxt_check_bootloader(ptr noundef %1, i32 noundef 128, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %while.body.disable_irq_crit_edge

while.body.disable_irq_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %disable_irq

if.end37:                                         ; preds = %while.body
  %43 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fw, align 4
  %data38 = getelementptr inbounds %struct.firmware, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %data38 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data38, align 4
  %add.ptr = getelementptr i8, ptr %46, i32 %pos.039
  %47 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %add.ptr, align 1
  %conv = zext i8 %48 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %add.ptr41 = getelementptr i8, ptr %add.ptr, i32 1
  %49 = ptrtoint ptr %add.ptr41 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %add.ptr41, align 1
  %conv42 = zext i8 %50 to i32
  %or = or i32 %shl, %conv42
  %add = add nuw nsw i32 %or, 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #16
  %51 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %42, align 4
  %52 = ptrtoint ptr %bootloader_addr.i10 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bootloader_addr.i10, align 4
  %conv.i = zext i8 %53 to i16
  %54 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv.i, ptr %msg.i, align 4
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %56, align 8
  %59 = and i16 %58, 16
  %60 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %flags3.i, align 2
  %conv4.i = trunc i32 %add to i16
  store i16 %conv4.i, ptr %42, align 4
  %61 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %add.ptr, ptr %buf.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %56, i32 0, i32 3
  %62 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %63, ptr noundef nonnull %msg.i, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i11 = icmp eq i32 %call.i, 1
  br i1 %cmp.i11, label %mxt_bootloader_write.exit.thread, label %mxt_bootloader_write.exit

mxt_bootloader_write.exit.thread:                 ; preds = %if.end37
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #16
  %call49 = call fastcc i32 @mxt_check_bootloader(ptr noundef %1, i32 noundef 4, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.else59, label %if.then51

mxt_bootloader_write.exit:                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7.i = icmp slt i32 %call.i, 0
  %spec.select.i = select i1 %cmp7.i, i32 %call.i, i32 -5
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 8
  %dev.i12 = getelementptr inbounds %struct.i2c_client, ptr %65, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i12, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef %spec.select.i) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #16
  br label %disable_irq

if.then51:                                        ; preds = %mxt_bootloader_write.exit.thread
  %inc = add i32 %retry.037, 1
  %mul = mul i32 %inc, 20
  call void @msleep(i32 noundef %mul) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %inc)
  %cmp52 = icmp ugt i32 %inc, 20
  br i1 %cmp52, label %do.end57, label %if.then51.if.end62_crit_edge

if.then51.if.end62_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end62

do.end57:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.249) #19
  br label %disable_irq

if.else59:                                        ; preds = %mxt_bootloader_write.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  %add60 = add i32 %add, %pos.039
  %inc61 = add i32 %frame.038, 1
  br label %if.end62

if.end62:                                         ; preds = %if.else59, %if.then51.if.end62_crit_edge
  %retry.1 = phi i32 [ %inc, %if.then51.if.end62_crit_edge ], [ 0, %if.else59 ]
  %frame.1 = phi i32 [ %frame.038, %if.then51.if.end62_crit_edge ], [ %inc61, %if.else59 ]
  %pos.1 = phi i32 [ %pos.039, %if.then51.if.end62_crit_edge ], [ %add60, %if.else59 ]
  %rem = urem i32 %frame.1, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp63 = icmp eq i32 %rem, 0
  br i1 %cmp63, label %do.body66, label %if.end62.if.end76_crit_edge

if.end62.if.end76_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end76

do.body66:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxt_load_fw.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxt_load_fw, %if.then71)) #16
          to label %if.end76 [label %if.then71], !srcloc !536

if.then71:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #18
  %66 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %fw, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxt_load_fw.__UNIQUE_ID_ddebug316, ptr noundef %dev, ptr noundef nonnull @.str.251, i32 noundef %frame.1, i32 noundef %pos.1, i32 noundef %69) #16
  br label %if.end76

if.end76:                                         ; preds = %if.then71, %do.body66, %if.end62.if.end76_crit_edge
  %70 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fw, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  %cmp = icmp ult i32 %pos.1, %73
  br i1 %cmp, label %if.end76.while.body_crit_edge, label %if.end76.while.end_crit_edge

if.end76.while.end_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

if.end76.while.body_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.end:                                        ; preds = %if.end76.while.end_crit_edge, %if.end33.while.end_crit_edge
  %frame.0.lcssa = phi i32 [ 0, %if.end33.while.end_crit_edge ], [ %frame.1, %if.end76.while.end_crit_edge ]
  %pos.0.lcssa = phi i32 [ 0, %if.end33.while.end_crit_edge ], [ %pos.1, %if.end76.while.end_crit_edge ]
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 8
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %75, i32 0, i32 4
  %call2.i = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %bl_completion, i32 noundef 300) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i13 = icmp slt i32 %call2.i, 0
  br i1 %cmp.i13, label %while.end.disable_irq_crit_edge, label %if.else.i14

while.end.disable_irq_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %disable_irq

if.else.i14:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end.i15, label %do.body82

do.end.i15:                                       ; preds = %if.else.i14
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.121) #19
  br label %disable_irq

do.body82:                                        ; preds = %if.else.i14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxt_load_fw.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxt_load_fw, %if.then94)) #16
          to label %do.end97 [label %if.then94], !srcloc !536

if.then94:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxt_load_fw.__UNIQUE_ID_ddebug317, ptr noundef %dev, ptr noundef nonnull @.str.252, i32 noundef %frame.0.lcssa, i32 noundef %pos.0.lcssa) #16
  br label %do.end97

do.end97:                                         ; preds = %if.then94, %do.body82
  %call99 = call fastcc i32 @mxt_wait_for_completion(ptr noundef %1, ptr noundef %bl_completion, i32 noundef 3000)
  %76 = ptrtoint ptr %in_bootloader to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %in_bootloader, align 1
  br label %disable_irq

disable_irq:                                      ; preds = %do.end97, %do.end.i15, %while.end.disable_irq_crit_edge, %do.end57, %mxt_bootloader_write.exit, %while.body.disable_irq_crit_edge, %do.end28.disable_irq_crit_edge, %if.then20.disable_irq_crit_edge
  %ret.0 = phi i32 [ %call21, %if.then20.disable_irq_crit_edge ], [ %spec.select.i, %mxt_bootloader_write.exit ], [ %call49, %do.end57 ], [ 0, %do.end97 ], [ %call29, %do.end28.disable_irq_crit_edge ], [ %call2.i, %while.end.disable_irq_crit_edge ], [ -110, %do.end.i15 ], [ %call34, %while.body.disable_irq_crit_edge ]
  %irq101 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 6
  %77 = ptrtoint ptr %irq101 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %irq101, align 4
  call void @disable_irq(i32 noundef %78) #16
  br label %release_firmware

release_firmware:                                 ; preds = %disable_irq, %mxt_lookup_bootloader_address.exit, %if.then7.release_firmware_crit_edge, %mxt_check_firmware_format.exit
  %ret.1 = phi i32 [ -22, %mxt_check_firmware_format.exit ], [ %ret.0, %disable_irq ], [ %call.i.i, %if.then7.release_firmware_crit_edge ], [ -22, %mxt_lookup_bootloader_address.exit ]
  %79 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %80) #16
  br label %cleanup

cleanup:                                          ; preds = %release_firmware, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %ret.1, %release_firmware ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxt_check_bootloader(ptr noundef %data, i32 noundef %state, i1 noundef zeroext %wait) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #16
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !535
  %bl_completion = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 48
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %bootloader_addr.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 22
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  br label %recheck

recheck:                                          ; preds = %sw.bb13.recheck_crit_edge, %entry
  br i1 %wait, label %if.then, label %recheck.if.end4_crit_edge

recheck.if.end4_crit_edge:                        ; preds = %recheck
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then:                                          ; preds = %recheck
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 8
  %call2.i = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %bl_completion, i32 noundef 30) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.then.do.end_crit_edge, label %if.else.i

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end.i, label %if.else.i.if.end4_crit_edge

if.else.i.if.end4_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %dev1.i.le = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.le, ptr noundef nonnull @.str.121) #19
  br label %do.end

do.end:                                           ; preds = %do.end.i, %if.then.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ -110, %do.end.i ], [ %call2.i, %if.then.do.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.255, i32 noundef %retval.0.i.ph) #19
  br label %cleanup

if.end4:                                          ; preds = %if.else.i.if.end4_crit_edge, %recheck.if.end4_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #16
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %3, align 4
  %7 = ptrtoint ptr %bootloader_addr.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bootloader_addr.i, align 4
  %conv.i = zext i8 %8 to i16
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i, ptr %msg.i, align 4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 8
  %14 = and i16 %13, 16
  %15 = or i16 %14, 1
  %16 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %flags3.i, align 2
  store i16 1, ptr %3, align 4
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %val, ptr %buf.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 3
  %18 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i51 = icmp eq i32 %call.i, 1
  br i1 %cmp.i51, label %mxt_bootloader_read.exit.thread, label %mxt_bootloader_read.exit

mxt_bootloader_read.exit.thread:                  ; preds = %if.end4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #16
  %20 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.279)
  switch i32 %state, label %mxt_bootloader_read.exit.thread.cleanup_crit_edge [
    i32 192, label %if.then9
    i32 128, label %mxt_bootloader_read.exit.thread.sw.bb_crit_edge
    i32 64, label %mxt_bootloader_read.exit.thread.sw.bb_crit_edge100
    i32 4, label %sw.bb13
  ]

mxt_bootloader_read.exit.thread.sw.bb_crit_edge100: ; preds = %mxt_bootloader_read.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

mxt_bootloader_read.exit.thread.sw.bb_crit_edge:  ; preds = %mxt_bootloader_read.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

mxt_bootloader_read.exit.thread.cleanup_crit_edge: ; preds = %mxt_bootloader_read.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

mxt_bootloader_read.exit:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10.i = icmp slt i32 %call.i, 0
  %spec.select.i = select i1 %cmp10.i, i32 %call.i, i32 -5
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.97, i32 noundef %spec.select.i) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #16
  br label %cleanup

if.then9:                                         ; preds = %mxt_bootloader_read.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %val, align 1
  %call10 = call fastcc zeroext i8 @mxt_get_bootloader_version(ptr noundef %data, i8 noundef zeroext %24)
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %call10, ptr %val, align 1
  br label %sw.bb

sw.bb:                                            ; preds = %if.then9, %mxt_bootloader_read.exit.thread.sw.bb_crit_edge, %mxt_bootloader_read.exit.thread.sw.bb_crit_edge100
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %val, align 1
  %28 = and i8 %27, -64
  store i8 %28, ptr %val, align 1
  br label %sw.epilog

sw.bb13:                                          ; preds = %mxt_bootloader_read.exit.thread
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %val, align 1
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.280)
  switch i8 %30, label %sw.bb13.sw.epilog_crit_edge [
    i8 2, label %sw.bb13.recheck_crit_edge
    i8 3, label %do.end24
  ]

sw.bb13.recheck_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #18
  br label %recheck

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

do.end24:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.258) #19
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb13.sw.epilog_crit_edge, %sw.bb
  %32 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %val, align 1
  %conv27 = zext i8 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv27, i32 %state)
  %cmp28.not = icmp eq i32 %conv27, %state
  br i1 %cmp28.not, label %sw.epilog.cleanup_crit_edge, label %do.end33

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end33:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.261, i32 noundef %conv27, i32 noundef %state) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %sw.epilog.cleanup_crit_edge, %do.end24, %mxt_bootloader_read.exit, %mxt_bootloader_read.exit.thread.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ -22, %do.end24 ], [ -22, %do.end33 ], [ %spec.select.i, %mxt_bootloader_read.exit ], [ 0, %sw.epilog.cleanup_crit_edge ], [ -22, %mxt_bootloader_read.exit.thread.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @mxt_get_bootloader_version(ptr nocapture noundef readonly %data, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #16
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf, align 1, !annotation !535
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !535
  %5 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !535
  %conv = zext i8 %val to i32
  %and = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body18, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #16
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 262143, ptr %7, align 4
  %bootloader_addr.i = getelementptr inbounds %struct.mxt_data, ptr %data, i32 0, i32 22
  %9 = ptrtoint ptr %bootloader_addr.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bootloader_addr.i, align 4
  %conv.i = zext i8 %10 to i16
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %msg.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 8
  %14 = and i16 %13, 16
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %15 = or i16 %14, 1
  %16 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %flags3.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf, ptr %buf.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %mxt_bootloader_read.exit.thread, label %mxt_bootloader_read.exit

mxt_bootloader_read.exit.thread:                  ; preds = %if.then
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxt_get_bootloader_version.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxt_get_bootloader_version, %if.then9)) #16
          to label %do.end16 [label %if.then9], !srcloc !536

mxt_bootloader_read.exit:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10.i = icmp slt i32 %call.i, 0
  %spec.select.i = select i1 %cmp10.i, i32 %call.i, i32 -5
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.97, i32 noundef %spec.select.i) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.263, ptr noundef nonnull @.str.264) #19
  br label %cleanup

if.then9:                                         ; preds = %mxt_bootloader_read.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %3, align 1
  %conv11 = zext i8 %23 to i32
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %5, align 1
  %conv13 = zext i8 %25 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxt_get_bootloader_version.__UNIQUE_ID_ddebug299, ptr noundef %dev1, ptr noundef nonnull @.str.265, i32 noundef %conv11, i32 noundef %conv13) #16
  br label %do.end16

do.end16:                                         ; preds = %if.then9, %mxt_bootloader_read.exit.thread
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %buf, align 1
  br label %cleanup

do.body18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxt_get_bootloader_version.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxt_get_bootloader_version, %if.then30)) #16
          to label %cleanup [label %if.then30], !srcloc !536

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #18
  %and32 = and i32 %conv, 31
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxt_get_bootloader_version.__UNIQUE_ID_ddebug300, ptr noundef %dev1, ptr noundef nonnull @.str.266, i32 noundef %and32) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %do.body18, %do.end16, %mxt_bootloader_read.exit
  %retval.0 = phi i8 [ %val, %mxt_bootloader_read.exit ], [ %27, %do.end16 ], [ %val, %if.then30 ], [ %val, %do.body18 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #16
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxt_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input_dev1 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_dev1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #16
  %call2 = tail call zeroext i1 @input_device_enabled(ptr noundef nonnull %3) #16
  br i1 %call2, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @mxt_stop(ptr noundef %1)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #16
  %irq = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %5) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxt_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input_dev1 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_dev1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #16
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #16
  %call2 = tail call zeroext i1 @input_device_enabled(ptr noundef nonnull %3) #16
  br i1 %call2, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @mxt_start(ptr noundef %1)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 270)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 270)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind allocsize(1) }
attributes #22 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !35, !36, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !55, !56, !58, !59, !61, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !130, !131, !133, !134, !135, !136, !138, !139, !140, !141, !142, !144, !145, !146, !148, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !180, !181, !183, !184, !185, !186, !188, !189, !190, !191, !193, !194, !195, !196, !198, !199, !200, !201, !203, !204, !205, !206, !208, !209, !210, !211, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226, !228, !229, !231, !232, !233, !234, !236, !237, !238, !239, !241, !242, !243, !245, !246, !247, !248, !250, !251, !252, !254, !256, !257, !258, !259, !261, !263, !264, !265, !267, !268, !269, !271, !272, !273, !275, !277, !278, !279, !281, !282, !283, !285, !286, !287, !289, !290, !292, !293, !294, !296, !297, !298, !300, !301, !302, !304, !305, !306, !308, !309, !310, !312, !314, !315, !316, !317, !319, !320, !321, !323, !324, !325, !327, !328, !329, !331, !332, !333, !335, !336, !338, !339, !340, !342, !343, !344, !345, !347, !348, !349, !350, !352, !353, !354, !355, !357, !358, !359, !361, !362, !363, !365, !366, !367, !369, !371, !372, !373, !375, !376, !377, !379, !380, !381, !383, !385, !386, !387, !388, !390, !392, !393, !395, !396, !397, !399, !401, !403, !404, !405, !406, !408, !409, !410, !411, !413, !414, !416, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !438, !440, !442, !443, !445, !447, !448, !450, !452, !454, !456, !458, !459, !461, !463, !464, !465, !466, !468, !469, !470, !472, !473, !474, !475, !477, !478, !479, !481, !482, !483, !485, !486, !488, !489, !491, !492, !493, !494, !496, !497, !498, !499, !501, !502, !503, !505, !506, !507, !509, !510, !511, !512, !514, !515, !517, !518, !520, !522}
!llvm.module.flags = !{!524, !525, !526, !527, !528, !529, !530, !531}
!llvm.ident = !{!532}

!0 = !{ptr @__initcall__kmod_atmel_mxt_ts__318_3387_mxt_driver_init6, !1, !"__initcall__kmod_atmel_mxt_ts__318_3387_mxt_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 3387, i32 1}
!2 = !{ptr @__exitcall_mxt_driver_exit, !1, !"__exitcall_mxt_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author319, !4, !"__UNIQUE_ID_author319", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 3390, i32 1}
!5 = !{ptr @__UNIQUE_ID_description320, !6, !"__UNIQUE_ID_description320", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 3391, i32 1}
!7 = !{ptr @__UNIQUE_ID_file321, !8, !"__UNIQUE_ID_file321", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 3392, i32 1}
!9 = !{ptr @__UNIQUE_ID_license322, !8, !"__UNIQUE_ID_license322", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 3377, i32 11}
!12 = !{ptr @mxt_driver, !13, !"mxt_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 3375, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 3146, i32 45}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 3166, i32 43}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 3188, i32 31}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 3189, i32 31}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 3194, i32 4}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mxt_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @mxt_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 3201, i32 10}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 3204, i32 3}
!34 = !{ptr @mxt_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mxt_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 3210, i32 9}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 3213, i32 3}
!40 = !{ptr @mxt_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @mxt_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 3222, i32 3}
!44 = !{ptr @mxt_probe._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @mxt_probe._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 3229, i32 3}
!48 = !{ptr @mxt_probe._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @mxt_probe._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 3262, i32 41}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 3271, i32 3}
!54 = !{ptr @mxt_probe._entry.25, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @mxt_probe._entry_ptr.27, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @init_completion.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../include/linux/completion.h", i32 87, i32 2}
!58 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"chromebook_T9_suspend_dmi", i1 false, i1 false}
!60 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 3117, i32 35}
!61 = !{ptr @mxt_parse_device_properties.keymap_property, !62, !"keymap_property", i1 false, i1 false}
!62 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 3082, i32 20}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 3092, i32 4}
!65 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @mxt_parse_device_properties._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @mxt_parse_device_properties._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 3105, i32 4}
!70 = !{ptr @mxt_parse_device_properties._entry.31, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @mxt_parse_device_properties._entry_ptr.33, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1074, i32 3}
!74 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @mxt_process_messages_t44._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @mxt_process_messages_t44._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1088, i32 3}
!79 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @mxt_process_messages_t44._entry.36, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @mxt_process_messages_t44._entry_ptr.39, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1095, i32 3}
!84 = !{ptr @mxt_process_messages_t44._entry.40, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @mxt_process_messages_t44._entry_ptr.42, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @mxt_process_messages_t44._entry.43, !87, !"_entry", i1 false, i1 false}
!87 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1107, i32 4}
!88 = !{ptr @mxt_process_messages_t44._entry_ptr.44, !87, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 693, i32 3}
!91 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @__mxt_read_reg._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @__mxt_read_reg._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 652, i32 3}
!96 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @mxt_wakeup_toggle.__UNIQUE_ID_ddebug301, !95, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 764, i32 3}
!100 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @mxt_proc_t6_messages.__UNIQUE_ID_ddebug302, !99, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 775, i32 3}
!104 = !{ptr @mxt_proc_t6_messages.__UNIQUE_ID_ddebug303, !103, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!105 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.55, !103, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.56, !103, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.57, !103, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.58, !103, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.59, !103, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.60, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 404, i32 2}
!115 = !{ptr @.str.61, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @mxt_dump_message.__UNIQUE_ID_ddebug298, !114, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!117 = !{ptr @.str.62, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 850, i32 2}
!119 = !{ptr @.str.63, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @mxt_proc_t9_message.__UNIQUE_ID_ddebug304, !118, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!121 = !{ptr @.str.64, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 967, i32 4}
!123 = !{ptr @.str.65, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @mxt_proc_t100_message.__UNIQUE_ID_ddebug305, !122, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!125 = !{ptr @.str.66, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 982, i32 3}
!127 = !{ptr @mxt_proc_t100_message.__UNIQUE_ID_ddebug306, !126, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!128 = !{ptr @.str.67, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 993, i32 3}
!130 = !{ptr @mxt_proc_t100_message.__UNIQUE_ID_ddebug307, !129, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!131 = !{ptr @.str.68, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1048, i32 3}
!133 = !{ptr @.str.69, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @mxt_read_and_process_messages._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @mxt_read_and_process_messages._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.70, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2205, i32 4}
!138 = !{ptr @.str.71, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.72, !137, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @mxt_initialize._entry, !137, !"_entry", i1 false, i1 false}
!141 = !{ptr @mxt_initialize._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.74, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2215, i32 4}
!144 = !{ptr @mxt_initialize._entry.73, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @mxt_initialize._entry_ptr.75, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.76, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2237, i32 53}
!148 = !{ptr @.str.78, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2241, i32 3}
!150 = !{ptr @mxt_initialize._entry.77, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @mxt_initialize._entry_ptr.79, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.80, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1864, i32 3}
!154 = !{ptr @.str.81, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @mxt_read_info_block._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @mxt_read_info_block._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.83, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1874, i32 2}
!159 = !{ptr @mxt_read_info_block._entry.82, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @mxt_read_info_block._entry_ptr.84, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.86, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1883, i32 3}
!163 = !{ptr @mxt_read_info_block._entry.85, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @mxt_read_info_block._entry_ptr.87, !162, !"_entry_ptr", i1 false, i1 false}
!165 = distinct !{null, !166, !"crcpoly", i1 false, i1 false}
!166 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1297, i32 28}
!167 = !{ptr @.str.88, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1727, i32 3}
!169 = !{ptr @.str.89, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @mxt_parse_object_table.__UNIQUE_ID_ddebug309, !168, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!171 = !{ptr @.str.90, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1797, i32 3}
!173 = !{ptr @mxt_parse_object_table._entry, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @mxt_parse_object_table._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.91, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 524, i32 2}
!177 = !{ptr @.str.92, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @mxt_probe_bootloader._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @mxt_probe_bootloader._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.93, !176, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.94, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 496, i32 3}
!183 = !{ptr @.str.95, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @mxt_lookup_bootloader_address._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @mxt_lookup_bootloader_address._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.96, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 443, i32 3}
!188 = !{ptr @.str.97, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @mxt_bootloader_read._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @mxt_bootloader_read._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.98, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 466, i32 3}
!193 = !{ptr @.str.99, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @mxt_bootloader_write._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @mxt_bootloader_write._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.100, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1361, i32 2}
!198 = !{ptr @.str.101, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @mxt_check_retrigen._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @mxt_check_retrigen._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.102, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1139, i32 2}
!203 = !{ptr @.str.103, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @mxt_process_messages_until_invalid._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @mxt_process_messages_until_invalid._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.104, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2735, i32 3}
!208 = !{ptr @.str.105, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @mxt_configure_objects._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @mxt_configure_objects._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.107, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2742, i32 4}
!213 = !{ptr @mxt_configure_objects._entry.106, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @mxt_configure_objects._entry_ptr.108, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.110, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2750, i32 3}
!217 = !{ptr @mxt_configure_objects._entry.109, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @mxt_configure_objects._entry_ptr.111, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.112, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2286, i32 4}
!221 = !{ptr @.str.113, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @mxt_init_t7_power_cfg.__UNIQUE_ID_ddebug312, !220, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!223 = !{ptr @.str.114, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2291, i32 4}
!225 = !{ptr @mxt_init_t7_power_cfg.__UNIQUE_ID_ddebug313, !224, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!226 = !{ptr @.str.115, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2298, i32 2}
!228 = !{ptr @mxt_init_t7_power_cfg.__UNIQUE_ID_ddebug314, !227, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!229 = !{ptr @.str.116, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1254, i32 2}
!231 = !{ptr @.str.117, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @mxt_soft_reset._entry, !230, !"_entry", i1 false, i1 false}
!233 = !{ptr @mxt_soft_reset._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.118, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1227, i32 3}
!236 = !{ptr @.str.119, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @mxt_t6_command._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @mxt_t6_command._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.120, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 727, i32 3}
!241 = !{ptr @__mxt_write_reg._entry, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @__mxt_write_reg._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.121, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 420, i32 3}
!245 = !{ptr @.str.122, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @mxt_wait_for_completion._entry, !244, !"_entry", i1 false, i1 false}
!247 = !{ptr @mxt_wait_for_completion._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.123, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2266, i32 2}
!250 = !{ptr @.str.124, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @mxt_set_t7_power_cfg.__UNIQUE_ID_ddebug311, !249, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!252 = !{ptr @.str.125, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1531, i32 23}
!254 = !{ptr @.str.126, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1532, i32 3}
!256 = !{ptr @.str.127, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @mxt_update_cfg._entry, !255, !"_entry", i1 false, i1 false}
!258 = !{ptr @mxt_update_cfg._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.128, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1541, i32 39}
!261 = !{ptr @.str.130, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1545, i32 4}
!263 = !{ptr @mxt_update_cfg._entry.129, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @mxt_update_cfg._entry_ptr.131, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.133, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1554, i32 3}
!267 = !{ptr @mxt_update_cfg._entry.132, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @mxt_update_cfg._entry_ptr.134, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.136, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1560, i32 3}
!271 = !{ptr @mxt_update_cfg._entry.135, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @mxt_update_cfg._entry_ptr.137, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.138, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1566, i32 38}
!275 = !{ptr @.str.140, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1568, i32 3}
!277 = !{ptr @mxt_update_cfg._entry.139, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @mxt_update_cfg._entry_ptr.141, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.143, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1576, i32 3}
!281 = !{ptr @mxt_update_cfg._entry.142, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @mxt_update_cfg._entry_ptr.144, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.146, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1590, i32 4}
!285 = !{ptr @mxt_update_cfg._entry.145, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @mxt_update_cfg._entry_ptr.147, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.148, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1592, i32 4}
!289 = !{ptr @mxt_update_cfg.__UNIQUE_ID_ddebug308, !288, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!290 = !{ptr @.str.150, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1597, i32 4}
!292 = !{ptr @mxt_update_cfg._entry.149, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @mxt_update_cfg._entry_ptr.151, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.153, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1601, i32 3}
!296 = !{ptr @mxt_update_cfg._entry.152, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @mxt_update_cfg._entry_ptr.154, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.156, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1627, i32 3}
!300 = !{ptr @mxt_update_cfg._entry.155, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @mxt_update_cfg._entry_ptr.157, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.159, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1635, i32 4}
!304 = !{ptr @mxt_update_cfg._entry.158, !303, !"_entry", i1 false, i1 false}
!305 = !{ptr @mxt_update_cfg._entry_ptr.160, !303, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.162, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1653, i32 2}
!308 = !{ptr @mxt_update_cfg._entry.161, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @mxt_update_cfg._entry_ptr.163, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.164, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1379, i32 41}
!312 = !{ptr @.str.165, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1385, i32 4}
!314 = !{ptr @.str.166, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @mxt_prepare_cfg_mem._entry, !313, !"_entry", i1 false, i1 false}
!316 = !{ptr @mxt_prepare_cfg_mem._entry_ptr, !313, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.168, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1397, i32 6}
!319 = !{ptr @mxt_prepare_cfg_mem._entry.167, !318, !"_entry", i1 false, i1 false}
!320 = !{ptr @mxt_prepare_cfg_mem._entry_ptr.169, !318, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.171, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1412, i32 4}
!323 = !{ptr @mxt_prepare_cfg_mem._entry.170, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @mxt_prepare_cfg_mem._entry_ptr.172, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.174, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1424, i32 4}
!327 = !{ptr @mxt_prepare_cfg_mem._entry.173, !326, !"_entry", i1 false, i1 false}
!328 = !{ptr @mxt_prepare_cfg_mem._entry_ptr.175, !326, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.177, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1429, i32 4}
!331 = !{ptr @mxt_prepare_cfg_mem._entry.176, !330, !"_entry", i1 false, i1 false}
!332 = !{ptr @mxt_prepare_cfg_mem._entry_ptr.178, !330, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @mxt_prepare_cfg_mem._entry.179, !334, !"_entry", i1 false, i1 false}
!334 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1440, i32 5}
!335 = !{ptr @mxt_prepare_cfg_mem._entry_ptr.180, !334, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.182, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1454, i32 5}
!338 = !{ptr @mxt_prepare_cfg_mem._entry.181, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @mxt_prepare_cfg_mem._entry_ptr.183, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.184, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 752, i32 2}
!342 = !{ptr @.str.185, !341, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @mxt_get_object._entry, !341, !"_entry", i1 false, i1 false}
!344 = !{ptr @mxt_get_object._entry_ptr, !341, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.186, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 1480, i32 4}
!347 = !{ptr @.str.187, !346, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @mxt_upload_cfg_mem._entry, !346, !"_entry", i1 false, i1 false}
!349 = !{ptr @mxt_upload_cfg_mem._entry_ptr, !346, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.188, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2059, i32 4}
!352 = !{ptr @.str.189, !351, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @mxt_initialize_input_device._entry, !351, !"_entry", i1 false, i1 false}
!354 = !{ptr @mxt_initialize_input_device._entry_ptr, !351, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.191, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2066, i32 4}
!357 = !{ptr @mxt_initialize_input_device._entry.190, !356, !"_entry", i1 false, i1 false}
!358 = !{ptr @mxt_initialize_input_device._entry_ptr.192, !356, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.194, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2070, i32 3}
!361 = !{ptr @mxt_initialize_input_device._entry.193, !360, !"_entry", i1 false, i1 false}
!362 = !{ptr @mxt_initialize_input_device._entry_ptr.195, !360, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @.str.197, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2084, i32 2}
!365 = !{ptr @mxt_initialize_input_device._entry.196, !364, !"_entry", i1 false, i1 false}
!366 = !{ptr @mxt_initialize_input_device._entry_ptr.198, !364, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @.str.199, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2091, i32 20}
!369 = !{ptr @.str.201, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2121, i32 3}
!371 = !{ptr @mxt_initialize_input_device._entry.200, !370, !"_entry", i1 false, i1 false}
!372 = !{ptr @mxt_initialize_input_device._entry_ptr.202, !370, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @.str.204, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2169, i32 3}
!375 = !{ptr @mxt_initialize_input_device._entry.203, !374, !"_entry", i1 false, i1 false}
!376 = !{ptr @mxt_initialize_input_device._entry_ptr.205, !374, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.206, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2014, i32 2}
!379 = !{ptr @.str.207, !378, !"<string literal>", i1 false, i1 false}
!380 = !{ptr @mxt_read_t100_config.__UNIQUE_ID_ddebug310, !378, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!381 = !{ptr @.str.208, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2029, i32 20}
!383 = !{ptr @.str.209, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2661, i32 3}
!385 = !{ptr @.str.210, !384, !"<string literal>", i1 false, i1 false}
!386 = !{ptr @mxt_debug_init._entry, !384, !"_entry", i1 false, i1 false}
!387 = !{ptr @mxt_debug_init._entry_ptr, !384, !"_entry_ptr", i1 false, i1 false}
!388 = distinct !{null, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2687, i32 51}
!390 = !{ptr @mxt_debug_init.__key, !391, !"__key", i1 false, i1 false}
!391 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2693, i32 2}
!392 = !{ptr @.str.212, !391, !"<string literal>", i1 false, i1 false}
!393 = !{ptr @.str.214, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2719, i32 2}
!395 = !{ptr @mxt_debug_init._entry.213, !394, !"_entry", i1 false, i1 false}
!396 = !{ptr @mxt_debug_init._entry_ptr.215, !394, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @mxt_queue, !398, !"mxt_queue", i1 false, i1 false}
!398 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2485, i32 31}
!399 = !{ptr @mxt_queue_ops, !400, !"mxt_queue_ops", i1 false, i1 false}
!400 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2478, i32 29}
!401 = !{ptr @.str.217, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2450, i32 3}
!403 = !{ptr @.str.218, !402, !"<string literal>", i1 false, i1 false}
!404 = !{ptr @mxt_buffer_queue._entry, !402, !"_entry", i1 false, i1 false}
!405 = !{ptr @mxt_buffer_queue._entry_ptr, !402, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @.str.219, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2411, i32 4}
!408 = !{ptr @.str.220, !407, !"<string literal>", i1 false, i1 false}
!409 = !{ptr @mxt_read_diagnostic_debug._entry, !407, !"_entry", i1 false, i1 false}
!410 = !{ptr @mxt_read_diagnostic_debug._entry_ptr, !407, !"_entry_ptr", i1 false, i1 false}
!411 = !{ptr @.str.221, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2415, i32 3}
!413 = !{ptr @mxt_read_diagnostic_debug.__UNIQUE_ID_ddebug315, !412, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!414 = distinct !{null, !415, !"__already_done", i1 false, i1 false}
!415 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!416 = !{ptr @.str.222, !415, !"<string literal>", i1 false, i1 false}
!417 = !{ptr @mxt_video_device, !418, !"mxt_video_device", i1 false, i1 false}
!418 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2634, i32 34}
!419 = !{ptr @mxt_video_fops, !420, !"mxt_video_fops", i1 false, i1 false}
!420 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2304, i32 42}
!421 = !{ptr @mxt_video_ioctl_ops, !422, !"mxt_video_ioctl_ops", i1 false, i1 false}
!422 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2610, i32 36}
!423 = !{ptr @.str.223, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2501, i32 21}
!425 = !{ptr @.str.224, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2503, i32 4}
!427 = !{ptr @.str.225, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2517, i32 20}
!429 = !{ptr @.str.226, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2521, i32 20}
!431 = !{ptr @mxt_attr_group, !432, !"mxt_attr_group", i1 false, i1 false}
!432 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 3018, i32 37}
!433 = !{ptr @mxt_attrs, !434, !"mxt_attrs", i1 false, i1 false}
!434 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 3010, i32 26}
!435 = !{ptr @.str.227, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 3005, i32 8}
!437 = !{ptr @dev_attr_fw_version, !436, !"dev_attr_fw_version", i1 false, i1 false}
!438 = !{ptr @.str.228, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2764, i32 35}
!440 = !{ptr @.str.229, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 3006, i32 8}
!442 = !{ptr @dev_attr_hw_version, !441, !"dev_attr_hw_version", i1 false, i1 false}
!443 = !{ptr @.str.230, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2774, i32 35}
!445 = !{ptr @.str.231, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 3007, i32 8}
!447 = !{ptr @dev_attr_object, !446, !"dev_attr_object", i1 false, i1 false}
!448 = !{ptr @.str.232, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2819, i32 5}
!450 = !{ptr @.str.233, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2786, i32 8}
!452 = !{ptr @.str.234, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2790, i32 5}
!454 = !{ptr @.str.235, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2791, i32 53}
!456 = !{ptr @.str.236, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 3008, i32 8}
!458 = !{ptr @dev_attr_update_fw, !457, !"dev_attr_update_fw", i1 false, i1 false}
!459 = !{ptr @.str.237, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2990, i32 27}
!461 = !{ptr @.str.238, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2992, i32 3}
!463 = !{ptr @.str.239, !462, !"<string literal>", i1 false, i1 false}
!464 = !{ptr @mxt_update_fw_store._entry, !462, !"_entry", i1 false, i1 false}
!465 = !{ptr @mxt_update_fw_store._entry_ptr, !462, !"_entry_ptr", i1 false, i1 false}
!466 = !{ptr @.str.241, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2995, i32 3}
!468 = !{ptr @mxt_update_fw_store._entry.240, !467, !"_entry", i1 false, i1 false}
!469 = !{ptr @mxt_update_fw_store._entry_ptr.242, !467, !"_entry_ptr", i1 false, i1 false}
!470 = !{ptr @.str.243, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2874, i32 3}
!472 = !{ptr @.str.244, !471, !"<string literal>", i1 false, i1 false}
!473 = !{ptr @mxt_load_fw._entry, !471, !"_entry", i1 false, i1 false}
!474 = !{ptr @mxt_load_fw._entry_ptr, !471, !"_entry_ptr", i1 false, i1 false}
!475 = !{ptr @.str.246, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2914, i32 3}
!477 = !{ptr @mxt_load_fw._entry.245, !476, !"_entry", i1 false, i1 false}
!478 = !{ptr @mxt_load_fw._entry_ptr.247, !476, !"_entry_ptr", i1 false, i1 false}
!479 = !{ptr @.str.249, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2945, i32 5}
!481 = !{ptr @mxt_load_fw._entry.248, !480, !"_entry", i1 false, i1 false}
!482 = !{ptr @mxt_load_fw._entry_ptr.250, !480, !"_entry_ptr", i1 false, i1 false}
!483 = !{ptr @.str.251, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2955, i32 4}
!485 = !{ptr @mxt_load_fw.__UNIQUE_ID_ddebug316, !484, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!486 = !{ptr @.str.252, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2965, i32 2}
!488 = !{ptr @mxt_load_fw.__UNIQUE_ID_ddebug317, !487, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!489 = !{ptr @.str.253, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 2857, i32 2}
!491 = !{ptr @.str.254, !490, !"<string literal>", i1 false, i1 false}
!492 = !{ptr @mxt_check_firmware_format._entry, !490, !"_entry", i1 false, i1 false}
!493 = !{ptr @mxt_check_firmware_format._entry_ptr, !490, !"_entry_ptr", i1 false, i1 false}
!494 = !{ptr @.str.255, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 575, i32 4}
!496 = !{ptr @.str.256, !495, !"<string literal>", i1 false, i1 false}
!497 = !{ptr @mxt_check_bootloader._entry, !495, !"_entry", i1 false, i1 false}
!498 = !{ptr @mxt_check_bootloader._entry_ptr, !495, !"_entry_ptr", i1 false, i1 false}
!499 = !{ptr @.str.258, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 597, i32 4}
!501 = !{ptr @mxt_check_bootloader._entry.257, !500, !"_entry", i1 false, i1 false}
!502 = !{ptr @mxt_check_bootloader._entry_ptr.259, !500, !"_entry_ptr", i1 false, i1 false}
!503 = !{ptr @.str.261, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 606, i32 3}
!505 = !{ptr @mxt_check_bootloader._entry.260, !504, !"_entry", i1 false, i1 false}
!506 = !{ptr @mxt_check_bootloader._entry_ptr.262, !504, !"_entry_ptr", i1 false, i1 false}
!507 = !{ptr @.str.263, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 537, i32 4}
!509 = !{ptr @.str.264, !508, !"<string literal>", i1 false, i1 false}
!510 = !{ptr @mxt_get_bootloader_version._entry, !508, !"_entry", i1 false, i1 false}
!511 = !{ptr @mxt_get_bootloader_version._entry_ptr, !508, !"_entry_ptr", i1 false, i1 false}
!512 = !{ptr @.str.265, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 541, i32 3}
!514 = !{ptr @mxt_get_bootloader_version.__UNIQUE_ID_ddebug299, !513, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!515 = !{ptr @.str.266, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 545, i32 3}
!517 = !{ptr @mxt_get_bootloader_version.__UNIQUE_ID_ddebug300, !516, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!518 = !{ptr @mxt_of_match, !519, !"mxt_of_match", i1 false, i1 false}
!519 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 3345, i32 34}
!520 = !{ptr @mxt_pm_ops, !521, !"mxt_pm_ops", i1 false, i1 false}
!521 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 3343, i32 8}
!522 = !{ptr @mxt_id, !523, !"mxt_id", i1 false, i1 false}
!523 = !{!"../drivers/input/touchscreen/atmel_mxt_ts.c", i32 3365, i32 35}
!524 = !{i32 1, !"wchar_size", i32 2}
!525 = !{i32 1, !"min_enum_size", i32 4}
!526 = !{i32 8, !"branch-target-enforcement", i32 0}
!527 = !{i32 8, !"sign-return-address", i32 0}
!528 = !{i32 8, !"sign-return-address-all", i32 0}
!529 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!530 = !{i32 7, !"uwtable", i32 1}
!531 = !{i32 7, !"frame-pointer", i32 2}
!532 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!533 = !{!"branch_weights", i32 1, i32 2000}
!534 = !{i8 0, i8 2}
!535 = !{!"auto-init"}
!536 = !{i64 2149026898, i64 2149026903, i64 2149026916, i64 2149026960, i64 2149026994, i64 2149027015}
!537 = !{!"branch_weights", i32 2000, i32 1}
