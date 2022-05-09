; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/vpx3220.c_pt.bc'
source_filename = "../drivers/media/i2c/vpx3220.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vpx3220 = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, [255 x i8], i64, i32, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_description292 = internal constant [68 x i8] c"vpx3220.description=vpx3220a/vpx3216b/vpx3214c video decoder driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [32 x i8] c"vpx3220.author=Laurent Pinchart\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [39 x i8] c"vpx3220.file=drivers/media/i2c/vpx3220\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"vpx3220.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [14 x i8] c"vpx3220.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype296 = internal constant [27 x i8] c"vpx3220.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug297 = internal constant [37 x i8] c"vpx3220.parm=debug:Debug level (0-1)\00", section ".modinfo", align 1
@__initcall__kmod_vpx3220__298_557_vpx3220_driver_init6 = internal global ptr @vpx3220_driver_init, section ".initcall6.init", align 4
@vpx3220_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @vpx3220_probe, ptr @vpx3220_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @vpx3220_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_vpx3220_driver_exit = internal global ptr @vpx3220_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vpx3220\00", [24 x i8] zeroinitializer }, align 32
@vpx3220_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"vpx3220a\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"vpx3216b\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"vpx3214c\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@vpx3220_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @vpx3220_core_ops, ptr null, ptr null, ptr @vpx3220_video_ops, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@vpx3220_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"vpx3220:481:(&decoder->hdl)->_lock\00", [61 x i8] zeroinitializer }, align 32
@vpx3220_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vpx3220_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vpx3220a\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vpx3216b\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vpx3214c\00", [23 x i8] zeroinitializer }, align 32
@vpx3220_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s: %s found @ 0x%x (%s)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vpx3220_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/vpx3220.c\00", [36 x i8] zeroinitializer }, align 32
@vpx3220_probe._entry_ptr = internal global ptr @vpx3220_probe._entry, section ".printk_index", align 4
@vpx3220_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.7, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: chip (%02x:%04x) found @ 0x%x (%s)\0A\00", [54 x i8] zeroinitializer }, align 32
@vpx3220_probe._entry_ptr.10 = internal global ptr @vpx3220_probe._entry.8, section ".printk_index", align 4
@init_common = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\F2\003\0D\D8\A8 \03\E0\FF\E1\00\E2\7F\E3\80\E4\7F\E5\80\E6\00\E7\E0\E8\F8\EA\18\F0\8A\F1\18\F8\12\F9$", [60 x i8] zeroinitializer }, align 32
@vpx3220_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr @vpx3220_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vpx3220_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr @vpx3220_s_routing, ptr null, ptr null, ptr @vpx3220_s_std, ptr null, ptr null, ptr @vpx3220_querystd, ptr null, ptr null, ptr @vpx3220_g_input_status, ptr @vpx3220_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@vpx3220_s_routing.input_vals = internal constant { [3 x [2 x i32]], [40 x i8] } { [3 x [2 x i32]] [[2 x i32] [i32 12, i32 0], [2 x i32] [i32 13, i32 0], [2 x i32] [i32 14, i32 1]], [40 x i8] zeroinitializer }, align 32
@vpx3220_s_routing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.7, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: input switched to %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vpx3220_s_routing\00", [46 x i8] zeroinitializer }, align 32
@vpx3220_s_routing._entry_ptr = internal global ptr @vpx3220_s_routing._entry, section ".printk_index", align 4
@inputs = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15], [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"composite\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"svideo\00", [25 x i8] zeroinitializer }, align 32
@vpx3220_fp_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.7, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: %s: failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vpx3220_fp_read\00", [16 x i8] zeroinitializer }, align 32
@vpx3220_fp_read._entry_ptr = internal global ptr @vpx3220_fp_read._entry, section ".printk_index", align 4
@vpx3220_fp_read._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.7, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vpx3220_fp_read._entry_ptr.19 = internal global ptr @vpx3220_fp_read._entry.18, section ".printk_index", align 4
@vpx3220_fp_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.20, ptr @.str.7, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vpx3220_fp_write\00", [47 x i8] zeroinitializer }, align 32
@vpx3220_fp_write._entry_ptr = internal global ptr @vpx3220_fp_write._entry, section ".printk_index", align 4
@vpx3220_fp_write._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.20, ptr @.str.7, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vpx3220_fp_write._entry_ptr.22 = internal global ptr @vpx3220_fp_write._entry.21, section ".printk_index", align 4
@vpx3220_s_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.7, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: s_std %llx\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vpx3220_s_std\00", [18 x i8] zeroinitializer }, align 32
@vpx3220_s_std._entry_ptr = internal global ptr @vpx3220_s_std._entry, section ".printk_index", align 4
@vpx3220_s_std._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.7, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: norm switched to NTSC\0A\00", [35 x i8] zeroinitializer }, align 32
@vpx3220_s_std._entry_ptr.27 = internal global ptr @vpx3220_s_std._entry.25, section ".printk_index", align 4
@vpx3220_s_std._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.7, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: norm switched to PAL\0A\00", [36 x i8] zeroinitializer }, align 32
@vpx3220_s_std._entry_ptr.30 = internal global ptr @vpx3220_s_std._entry.28, section ".printk_index", align 4
@vpx3220_s_std._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.7, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: norm switched to SECAM\0A\00", [34 x i8] zeroinitializer }, align 32
@vpx3220_s_std._entry_ptr.33 = internal global ptr @vpx3220_s_std._entry.31, section ".printk_index", align 4
@vpx3220_querystd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.7, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s: querystd\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vpx3220_querystd\00", [47 x i8] zeroinitializer }, align 32
@vpx3220_querystd._entry_ptr = internal global ptr @vpx3220_querystd._entry, section ".printk_index", align 4
@vpx3220_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.7, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: status: 0x%04x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vpx3220_status\00", [17 x i8] zeroinitializer }, align 32
@vpx3220_status._entry_ptr = internal global ptr @vpx3220_status._entry, section ".printk_index", align 4
@vpx3220_g_input_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.7, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: g_input_status\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vpx3220_g_input_status\00", [41 x i8] zeroinitializer }, align 32
@vpx3220_g_input_status._entry_ptr = internal global ptr @vpx3220_g_input_status._entry, section ".printk_index", align 4
@vpx3220_s_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.7, i32 404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: s_stream %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vpx3220_s_stream\00", [47 x i8] zeroinitializer }, align 32
@vpx3220_s_stream._entry_ptr = internal global ptr @vpx3220_s_stream._entry, section ".printk_index", align 4
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 16992, i64 17024, i64 18048]
@__sancov_gen_cov_switch_values.44 = internal global [6 x i64] [i64 4, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779]
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 23, i32 12 }
@___asan_gen_.48 = private unnamed_addr constant [15 x i8] c"vpx3220_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 548, i32 26 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 550, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [11 x i8] c"vpx3220_id\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 540, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant [12 x i8] c"vpx3220_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 450, i32 37 }
@___asan_gen_.60 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 481, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"vpx3220_ctrl_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 434, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 505, i32 11 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 508, i32 11 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 511, i32 11 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 516, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 519, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [12 x i8] c"init_common\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 221, i32 28 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"vpx3220_core_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 438, i32 42 }
@___asan_gen_.102 = private unnamed_addr constant [18 x i8] c"vpx3220_video_ops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 442, i32 43 }
@___asan_gen_.105 = private unnamed_addr constant [11 x i8] c"input_vals\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 378, i32 19 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 387, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [7 x i8] c"inputs\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 52, i32 14 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 52, i32 27 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 52, i32 39 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 52, i32 52 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 121, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 131, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 98, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 107, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 347, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 350, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 353, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 356, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 327, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 289, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 333, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.217 = private constant [31 x i8] c"../drivers/media/i2c/vpx3220.c\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 404, i32 2 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug297, ptr @__UNIQUE_ID_debugtype296, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_vpx3220_driver_exit, ptr @__initcall__kmod_vpx3220__298_557_vpx3220_driver_init6, ptr @__param_debug, ptr @vpx3220_driver_exit, ptr @vpx3220_fp_read._entry, ptr @vpx3220_fp_read._entry.18, ptr @vpx3220_fp_read._entry_ptr, ptr @vpx3220_fp_read._entry_ptr.19, ptr @vpx3220_fp_write._entry, ptr @vpx3220_fp_write._entry.21, ptr @vpx3220_fp_write._entry_ptr, ptr @vpx3220_fp_write._entry_ptr.22, ptr @vpx3220_g_input_status._entry, ptr @vpx3220_g_input_status._entry_ptr, ptr @vpx3220_probe._entry, ptr @vpx3220_probe._entry.8, ptr @vpx3220_probe._entry_ptr, ptr @vpx3220_probe._entry_ptr.10, ptr @vpx3220_querystd._entry, ptr @vpx3220_querystd._entry_ptr, ptr @vpx3220_s_routing._entry, ptr @vpx3220_s_routing._entry_ptr, ptr @vpx3220_s_std._entry, ptr @vpx3220_s_std._entry.25, ptr @vpx3220_s_std._entry.28, ptr @vpx3220_s_std._entry.31, ptr @vpx3220_s_std._entry_ptr, ptr @vpx3220_s_std._entry_ptr.27, ptr @vpx3220_s_std._entry_ptr.30, ptr @vpx3220_s_std._entry_ptr.33, ptr @vpx3220_s_stream._entry, ptr @vpx3220_s_stream._entry_ptr, ptr @vpx3220_status._entry, ptr @vpx3220_status._entry_ptr, ptr @debug, ptr @vpx3220_driver, ptr @.str, ptr @vpx3220_id, ptr @vpx3220_ops, ptr @vpx3220_probe._key, ptr @.str.1, ptr @vpx3220_ctrl_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @init_common, ptr @vpx3220_core_ops, ptr @vpx3220_video_ops, ptr @vpx3220_s_routing.input_vals, ptr @.str.11, ptr @.str.12, ptr @inputs, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpx3220_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpx3220_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpx3220_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpx3220_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpx3220_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpx3220_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpx3220_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_common to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpx3220_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpx3220_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpx3220_s_routing.input_vals to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpx3220_s_routing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inputs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpx3220_fp_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpx3220_fp_read._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpx3220_fp_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpx3220_fp_write._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpx3220_s_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpx3220_s_std._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpx3220_s_std._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpx3220_s_std._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpx3220_querystd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpx3220_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpx3220_g_input_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpx3220_s_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vpx3220_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @vpx3220_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vpx3220_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @vpx3220_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpx3220_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #6
  %and.i = and i32 %call.i.i, 7864320
  call void @__sanitizer_cov_trace_const_cmp4(i32 7864320, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 7864320
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 656, i32 noundef 3520) #6
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @vpx3220_ops) #6
  %norm = getelementptr inbounds %struct.vpx3220, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 255, ptr %norm, align 8
  %input = getelementptr inbounds %struct.vpx3220, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %input, align 8
  %enable = getelementptr inbounds %struct.vpx3220, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %enable, align 4
  %hdl = getelementptr inbounds %struct.vpx3220, ptr %call.i, i32 0, i32 1
  %call5 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 4, ptr noundef nonnull @vpx3220_probe._key, ptr noundef nonnull @.str.1) #6
  %call7 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @vpx3220_ctrl_ops, i32 noundef 9963776, i64 noundef -128, i64 noundef 127, i64 noundef 1, i64 noundef 0) #6
  %call9 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @vpx3220_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 63, i64 noundef 1, i64 noundef 32) #6
  %call11 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @vpx3220_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 4095, i64 noundef 1, i64 noundef 2048) #6
  %call13 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @vpx3220_ctrl_ops, i32 noundef 9963779, i64 noundef -512, i64 noundef 511, i64 noundef 1, i64 noundef 0) #6
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %9 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %hdl, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.vpx3220, ptr %call.i, i32 0, i32 1, i32 9
  %10 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool16.not = icmp eq i32 %11, 0
  br i1 %tobool16.not, label %if.end21, label %if.then17

if.then17:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #6
  br label %cleanup

if.end21:                                         ; preds = %if.end3
  %call23 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl) #6
  %call24 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 0) #6
  %call25 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 2) #6
  %shl = shl i32 %call25, 8
  %call26 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 1) #6
  %add = add i32 %shl, %call26
  %conv28 = and i32 %call24, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 236, i32 %conv28)
  %cmp29 = icmp eq i32 %conv28, 236
  br i1 %cmp29, label %if.then31, label %if.end21.do.end48_crit_edge

if.end21.do.end48_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end48

if.then31:                                        ; preds = %if.end21
  %trunc = trunc i32 %add to i16
  %12 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %if.then31.do.end48_crit_edge [
    i16 18048, label %if.then31.do.end_crit_edge
    i16 16992, label %sw.bb33
    i16 17024, label %sw.bb34
  ]

if.then31.do.end_crit_edge:                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then31.do.end48_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end48

sw.bb33:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

sw.bb34:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %sw.bb34, %sw.bb33, %if.then31.do.end_crit_edge
  %name.0.ph = phi ptr [ @.str.4, %sw.bb34 ], [ @.str.3, %sw.bb33 ], [ @.str.2, %if.then31.do.end_crit_edge ]
  %name39 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr, align 2
  %conv40 = zext i16 %14 to i32
  %shl41 = shl nuw nsw i32 %conv40, 1
  %15 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter, align 8
  %name43 = getelementptr inbounds %struct.i2c_adapter, ptr %16, i32 0, i32 12
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name39, ptr noundef nonnull %name.0.ph, i32 noundef %shl41, ptr noundef %name43) #9
  br label %if.end61

do.end48:                                         ; preds = %if.then31.do.end48_crit_edge, %if.end21.do.end48_crit_edge
  %name50 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %conv53 = and i32 %add, 65535
  %addr54 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %17 = ptrtoint ptr %addr54 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %addr54, align 2
  %conv55 = zext i16 %18 to i32
  %shl56 = shl nuw nsw i32 %conv55, 1
  %19 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter, align 8
  %name58 = getelementptr inbounds %struct.i2c_adapter, ptr %20, i32 0, i32 12
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name50, i32 noundef %conv28, i32 noundef %conv53, i32 noundef %shl56, ptr noundef %name58) #9
  br label %if.end61

if.end61:                                         ; preds = %do.end48, %do.end
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 11
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end61
  %len.addr.02.i = phi i32 [ 36, %if.end61 ], [ %sub.i, %while.body.i.while.body.i_crit_edge ]
  %data.addr.01.i = phi ptr [ @init_common, %if.end61 ], [ %incdec.ptr1.i, %while.body.i.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %data.addr.01.i, i32 1
  %21 = ptrtoint ptr %data.addr.01.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %data.addr.01.i, align 1
  %23 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %incdec.ptr.i, align 1
  %25 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_priv.i.i.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4, i32 8
  %27 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %idxprom.i.i = zext i8 %22 to i32
  %arrayidx.i.i = getelementptr %struct.vpx3220, ptr %28, i32 0, i32 2, i32 %idxprom.i.i
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %24, ptr %arrayidx.i.i, align 1
  %call3.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext %22, i8 noundef zeroext %24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp2.i = icmp slt i32 %call3.i.i, 0
  %incdec.ptr1.i = getelementptr i8, ptr %data.addr.01.i, i32 2
  %sub.i = add nsw i32 %len.addr.02.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.not.i = icmp eq i32 %sub.i, 0
  %or.cond.i = select i1 %cmp2.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %while.body.i107.preheader, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i107.preheader:                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i104 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef nonnull %call.i, i8 noundef zeroext 89, i16 noundef zeroext 0) #6
  %call.i104.1 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef nonnull %call.i, i8 noundef zeroext -96, i16 noundef zeroext 2070) #6
  %call.i104.2 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef nonnull %call.i, i8 noundef zeroext -93, i16 noundef zeroext 0) #6
  %call.i104.3 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef nonnull %call.i, i8 noundef zeroext -92, i16 noundef zeroext 0) #6
  %call.i104.4 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef nonnull %call.i, i8 noundef zeroext -88, i16 noundef zeroext 30) #6
  %call.i104.5 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef nonnull %call.i, i8 noundef zeroext -78, i16 noundef zeroext 768) #6
  %call.i104.6 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef nonnull %call.i, i8 noundef zeroext -66, i16 noundef zeroext 27) #6
  %call.i104.7 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef nonnull %call.i, i8 noundef zeroext 88, i16 noundef zeroext 0) #6
  %call.i104.8 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef nonnull %call.i, i8 noundef zeroext 38, i16 noundef zeroext 0) #6
  %call.i104.9 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef nonnull %call.i, i8 noundef zeroext 75, i16 noundef zeroext 664) #6
  %call.i113 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef nonnull %call.i, i8 noundef zeroext -120, i16 noundef zeroext 23) #6
  %call.i113.1 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef nonnull %call.i, i8 noundef zeroext -119, i16 noundef zeroext 288) #6
  %call.i113.2 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef nonnull %call.i, i8 noundef zeroext -118, i16 noundef zeroext 288) #6
  %call.i113.3 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef nonnull %call.i, i8 noundef zeroext -117, i16 noundef zeroext 16) #6
  %call.i113.4 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef nonnull %call.i, i8 noundef zeroext -116, i16 noundef zeroext 768) #6
  %call.i113.5 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef nonnull %call.i, i8 noundef zeroext -115, i16 noundef zeroext 784) #6
  %call.i113.6 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef nonnull %call.i, i8 noundef zeroext -113, i16 noundef zeroext 3072) #6
  %call.i113.7 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef nonnull %call.i, i8 noundef zeroext -16, i16 noundef zeroext 119) #6
  %call.i113.8 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef nonnull %call.i, i8 noundef zeroext -14, i16 noundef zeroext 977) #6
  %call.i113.9 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef nonnull %call.i, i8 noundef zeroext -25, i16 noundef zeroext 577) #6
  br label %cleanup

cleanup:                                          ; preds = %while.body.i107.preheader, %if.then17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then17 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %while.body.i107.preheader ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpx3220_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #6
  %hdl = getelementptr inbounds %struct.vpx3220, ptr %1, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpx3220_init(ptr noundef %sd, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry
  %len.addr.02.i = phi i32 [ 36, %entry ], [ %sub.i, %while.body.i.while.body.i_crit_edge ]
  %data.addr.01.i = phi ptr [ @init_common, %entry ], [ %incdec.ptr1.i, %while.body.i.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %data.addr.01.i, i32 1
  %0 = ptrtoint ptr %data.addr.01.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.addr.01.i, align 1
  %2 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %incdec.ptr.i, align 1
  %4 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %idxprom.i.i = zext i8 %1 to i32
  %arrayidx.i.i = getelementptr %struct.vpx3220, ptr %7, i32 0, i32 2, i32 %idxprom.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %3, ptr %arrayidx.i.i, align 1
  %call3.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %1, i8 noundef zeroext %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp2.i = icmp slt i32 %call3.i.i, 0
  %incdec.ptr1.i = getelementptr i8, ptr %data.addr.01.i, i32 2
  %sub.i = add nsw i32 %len.addr.02.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.not.i = icmp eq i32 %sub.i, 0
  %or.cond.i = select i1 %cmp2.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %while.body.i30.preheader, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i30.preheader:                         ; preds = %while.body.i
  %call.i = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext 89, i16 noundef zeroext 0) #6
  %call.i.1 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -96, i16 noundef zeroext 2070) #6
  %call.i.2 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -93, i16 noundef zeroext 0) #6
  %call.i.3 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -92, i16 noundef zeroext 0) #6
  %call.i.4 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -88, i16 noundef zeroext 30) #6
  %call.i.5 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -78, i16 noundef zeroext 768) #6
  %call.i.6 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -66, i16 noundef zeroext 27) #6
  %call.i.7 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext 88, i16 noundef zeroext 0) #6
  %call.i.8 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext 38, i16 noundef zeroext 0) #6
  %call.i.9 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext 75, i16 noundef zeroext 664) #6
  %norm = getelementptr inbounds %struct.vpx3220, ptr %sd, i32 0, i32 3
  %9 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %norm, align 8
  %and = and i64 %10, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %while.body.i39.preheader

while.body.i39.preheader:                         ; preds = %while.body.i30.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %call.i36 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext 28, i16 noundef zeroext 0) #6
  %call.i36.1 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -120, i16 noundef zeroext 17) #6
  %call.i36.2 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -119, i16 noundef zeroext 240) #6
  %call.i36.3 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -118, i16 noundef zeroext 240) #6
  %call.i36.4 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -117, i16 noundef zeroext 0) #6
  %call.i36.5 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -116, i16 noundef zeroext 640) #6
  %call.i36.6 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -115, i16 noundef zeroext 640) #6
  %call.i36.7 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -113, i16 noundef zeroext 3072) #6
  %call.i36.8 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -16, i16 noundef zeroext 115) #6
  br label %if.end18

if.else:                                          ; preds = %while.body.i30.preheader
  %and5 = and i64 %10, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and5)
  %tobool6.not = icmp eq i64 %and5, 0
  br i1 %tobool6.not, label %if.else9, label %while.body.i49.preheader

while.body.i49.preheader:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call.i46 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -120, i16 noundef zeroext 23) #6
  %call.i46.1 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -119, i16 noundef zeroext 288) #6
  %call.i46.2 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -118, i16 noundef zeroext 288) #6
  %call.i46.3 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -117, i16 noundef zeroext 16) #6
  %call.i46.4 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -116, i16 noundef zeroext 768) #6
  %call.i46.5 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -115, i16 noundef zeroext 784) #6
  %call.i46.6 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -113, i16 noundef zeroext 3072) #6
  %call.i46.7 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -16, i16 noundef zeroext 119) #6
  br label %if.end18

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %and11 = and i64 %10, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and11)
  %tobool12.not = icmp eq i64 %and11, 0
  %call.i66 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -120, i16 noundef zeroext 23) #6
  %call.i66.1 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -119, i16 noundef zeroext 288) #6
  %call.i66.2 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -118, i16 noundef zeroext 288) #6
  %call.i66.3 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -117, i16 noundef zeroext 16) #6
  %call.i66.4 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -116, i16 noundef zeroext 768) #6
  %call.i66.5 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -115, i16 noundef zeroext 784) #6
  %call.i66.6 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -113, i16 noundef zeroext 3072) #6
  %call.i66.7 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -16, i16 noundef zeroext 119) #6
  %. = select i1 %tobool12.not, i16 977, i16 981
  br label %if.end18

if.end18:                                         ; preds = %if.else9, %while.body.i49.preheader, %while.body.i39.preheader
  %.sink77 = phi i16 [ 19, %while.body.i39.preheader ], [ 977, %while.body.i49.preheader ], [ %., %if.else9 ]
  %.sink = phi i16 [ 481, %while.body.i39.preheader ], [ 577, %while.body.i49.preheader ], [ 577, %if.else9 ]
  %call.i36.9 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -14, i16 noundef zeroext %.sink77) #6
  %call.i36.10 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -25, i16 noundef zeroext %.sink) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpx3220_s_routing(ptr noundef %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %input)
  %cmp = icmp ugt i32 %input, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp1 = icmp sgt i32 %0, 0
  br i1 %cmp1, label %do.end, label %do.body.do.end6_crit_edge

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %arrayidx = getelementptr [3 x ptr], ptr @inputs, i32 0, i32 %input
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name, ptr noundef %2) #9
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  %arrayidx7 = getelementptr [3 x [2 x i32]], ptr @vpx3220_s_routing.input_vals, i32 0, i32 %input
  %3 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx7, align 4
  %conv = trunc i32 %4 to i8
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %5 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i.i, align 4
  %arrayidx.i = getelementptr %struct.vpx3220, ptr %8, i32 0, i32 2, i32 51
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %arrayidx.i, align 1
  %call3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 51, i8 noundef zeroext %conv) #6
  %call10 = tail call fastcc i32 @vpx3220_fp_read(ptr noundef %sd, i16 noundef zeroext 242)
  %and = and i32 %call10, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp11 = icmp slt i32 %and, 0
  br i1 %cmp11, label %do.end6.cleanup_crit_edge, label %if.end14

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx16 = getelementptr [3 x [2 x i32]], ptr @vpx3220_s_routing.input_vals, i32 0, i32 %input, i32 1
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx16, align 4
  %shl = shl i32 %11, 5
  %or = or i32 %shl, %and
  %12 = trunc i32 %or to i16
  %conv18 = or i16 %12, 16
  %call19 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -14, i16 noundef zeroext %conv18)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -22, %entry.cleanup_crit_edge ], [ %and, %do.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpx3220_s_std(ptr noundef %sd, i64 noundef %std) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call fastcc i32 @vpx3220_fp_read(ptr noundef %sd, i16 noundef zeroext 242)
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name, i64 noundef %std) #9
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %and = and i64 %std, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %do.end5
  %call.i = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext 28, i16 noundef zeroext 0) #6
  %call.i.1 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -120, i16 noundef zeroext 17) #6
  %call.i.2 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -119, i16 noundef zeroext 240) #6
  %call.i.3 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -118, i16 noundef zeroext 240) #6
  %call.i.4 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -117, i16 noundef zeroext 0) #6
  %call.i.5 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -116, i16 noundef zeroext 640) #6
  %call.i.6 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -115, i16 noundef zeroext 640) #6
  %call.i.7 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -113, i16 noundef zeroext 3072) #6
  %call.i.8 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -16, i16 noundef zeroext 115) #6
  %call.i.9 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -14, i16 noundef zeroext 19) #6
  %call.i.10 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -25, i16 noundef zeroext 481) #6
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp9 = icmp sgt i32 %1, 0
  br i1 %cmp9, label %while.body.i.preheader.if.end59.sink.split_crit_edge, label %while.body.i.preheader.if.end59_crit_edge

while.body.i.preheader.if.end59_crit_edge:        ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

while.body.i.preheader.if.end59.sink.split_crit_edge: ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59.sink.split

if.else:                                          ; preds = %do.end5
  %and21 = and i64 %std, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and21)
  %tobool22.not = icmp eq i64 %and21, 0
  br i1 %tobool22.not, label %if.else38, label %while.body.i83.preheader

while.body.i83.preheader:                         ; preds = %if.else
  %call.i80 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -120, i16 noundef zeroext 23) #6
  %call.i80.1 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -119, i16 noundef zeroext 288) #6
  %call.i80.2 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -118, i16 noundef zeroext 288) #6
  %call.i80.3 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -117, i16 noundef zeroext 16) #6
  %call.i80.4 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -116, i16 noundef zeroext 768) #6
  %call.i80.5 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -115, i16 noundef zeroext 784) #6
  %call.i80.6 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -113, i16 noundef zeroext 3072) #6
  %call.i80.7 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -16, i16 noundef zeroext 119) #6
  %call.i80.8 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -14, i16 noundef zeroext 977) #6
  %call.i80.9 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -25, i16 noundef zeroext 577) #6
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp26 = icmp sgt i32 %2, 0
  br i1 %cmp26, label %while.body.i83.preheader.if.end59.sink.split_crit_edge, label %while.body.i83.preheader.if.end59_crit_edge

while.body.i83.preheader.if.end59_crit_edge:      ; preds = %while.body.i83.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

while.body.i83.preheader.if.end59.sink.split_crit_edge: ; preds = %while.body.i83.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59.sink.split

if.else38:                                        ; preds = %if.else
  %and39 = and i64 %std, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and39)
  %tobool40.not = icmp eq i64 %and39, 0
  br i1 %tobool40.not, label %if.else38.cleanup_crit_edge, label %while.body.i93.preheader

if.else38.cleanup_crit_edge:                      ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.i93.preheader:                         ; preds = %if.else38
  %call.i90 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -120, i16 noundef zeroext 23) #6
  %call.i90.1 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -119, i16 noundef zeroext 288) #6
  %call.i90.2 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -118, i16 noundef zeroext 288) #6
  %call.i90.3 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -117, i16 noundef zeroext 16) #6
  %call.i90.4 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -116, i16 noundef zeroext 768) #6
  %call.i90.5 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -115, i16 noundef zeroext 784) #6
  %call.i90.6 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -113, i16 noundef zeroext 3072) #6
  %call.i90.7 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -16, i16 noundef zeroext 119) #6
  %call.i90.8 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -14, i16 noundef zeroext 981) #6
  %call.i90.9 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -25, i16 noundef zeroext 577) #6
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp44 = icmp sgt i32 %3, 0
  br i1 %cmp44, label %while.body.i93.preheader.if.end59.sink.split_crit_edge, label %while.body.i93.preheader.if.end59_crit_edge

while.body.i93.preheader.if.end59_crit_edge:      ; preds = %while.body.i93.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

while.body.i93.preheader.if.end59.sink.split_crit_edge: ; preds = %while.body.i93.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59.sink.split

if.end59.sink.split:                              ; preds = %while.body.i93.preheader.if.end59.sink.split_crit_edge, %while.body.i83.preheader.if.end59.sink.split_crit_edge, %while.body.i.preheader.if.end59.sink.split_crit_edge
  %.str.29.sink = phi ptr [ @.str.26, %while.body.i.preheader.if.end59.sink.split_crit_edge ], [ @.str.29, %while.body.i83.preheader.if.end59.sink.split_crit_edge ], [ @.str.32, %while.body.i93.preheader.if.end59.sink.split_crit_edge ]
  %name32 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.29.sink, ptr noundef %name32) #9
  br label %if.end59

if.end59:                                         ; preds = %if.end59.sink.split, %while.body.i93.preheader.if.end59_crit_edge, %while.body.i83.preheader.if.end59_crit_edge, %while.body.i.preheader.if.end59_crit_edge
  %norm = getelementptr inbounds %struct.vpx3220, ptr %sd, i32 0, i32 3
  %4 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %std, ptr %norm, align 8
  %5 = trunc i32 %call1 to i16
  %conv = or i16 %5, 16
  %call60 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext -14, i16 noundef zeroext %conv)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.else38.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end59 ], [ -22, %if.else38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpx3220_querystd(ptr noundef %sd, ptr noundef %std) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name) #9
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %tobool.not.i = icmp eq ptr %std, null
  br i1 %tobool.not.i, label %do.end2.cond.end.i_crit_edge, label %cond.true.i

do.end2.cond.end.i_crit_edge:                     ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %std, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %do.end2.cond.end.i_crit_edge
  %cond.i = phi i64 [ %2, %cond.true.i ], [ 16777215, %do.end2.cond.end.i_crit_edge ]
  %call.i = tail call fastcc i32 @vpx3220_fp_read(ptr noundef %sd, i16 noundef zeroext 243) #6
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp sgt i32 %3, 0
  br i1 %cmp.i, label %do.end.i, label %cond.end.i.do.end4.i_crit_edge

cond.end.i.do.end4.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i

do.end.i:                                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name.i, i32 noundef %call.i) #9
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %cond.end.i.do.end4.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp slt i32 %call.i, 0
  br i1 %cmp5.i, label %do.end4.i.vpx3220_status.exit_crit_edge, label %if.end7.i

do.end4.i.vpx3220_status.exit_crit_edge:          ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vpx3220_status.exit

if.end7.i:                                        ; preds = %do.end4.i
  %and.i = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp8.i = icmp eq i32 %and.i, 0
  br i1 %cmp8.i, label %if.then9.i, label %if.end7.i.if.end16.i_crit_edge

if.end7.i.if.end16.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

if.then9.i:                                       ; preds = %if.end7.i
  %4 = and i32 %call.i, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %switch.i = icmp eq i32 %4, 8
  br i1 %switch.i, label %sw.bb12.i, label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  %and11.i = and i64 %cond.i, 255
  br label %if.end16.i

sw.bb12.i:                                        ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  %and13.i = and i64 %cond.i, 16711680
  br label %if.end16.i

if.end16.i:                                       ; preds = %sw.bb12.i, %sw.bb.i, %if.end7.i.if.end16.i_crit_edge
  %std.0.i = phi i64 [ %and13.i, %sw.bb12.i ], [ %and11.i, %sw.bb.i ], [ 0, %if.end7.i.if.end16.i_crit_edge ]
  br i1 %tobool.not.i, label %if.end16.i.vpx3220_status.exit_crit_edge, label %if.then18.i

if.end16.i.vpx3220_status.exit_crit_edge:         ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vpx3220_status.exit

if.then18.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %std.0.i, ptr %std, align 8
  br label %vpx3220_status.exit

vpx3220_status.exit:                              ; preds = %if.then18.i, %if.end16.i.vpx3220_status.exit_crit_edge, %do.end4.i.vpx3220_status.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %do.end4.i.vpx3220_status.exit_crit_edge ], [ 0, %if.then18.i ], [ 0, %if.end16.i.vpx3220_status.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpx3220_g_input_status(ptr noundef %sd, ptr noundef writeonly %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name) #9
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %call.i = tail call fastcc i32 @vpx3220_fp_read(ptr noundef %sd, i16 noundef zeroext 243) #6
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp sgt i32 %1, 0
  br i1 %cmp.i, label %do.end.i, label %do.end2.do.end4.i_crit_edge

do.end2.do.end4.i_crit_edge:                      ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i

do.end.i:                                         ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name.i, i32 noundef %call.i) #9
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %do.end2.do.end4.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp slt i32 %call.i, 0
  br i1 %cmp5.i, label %do.end4.i.vpx3220_status.exit_crit_edge, label %if.end7.i

do.end4.i.vpx3220_status.exit_crit_edge:          ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vpx3220_status.exit

if.end7.i:                                        ; preds = %do.end4.i
  %tobool20.not.i = icmp eq ptr %status, null
  br i1 %tobool20.not.i, label %if.end7.i.vpx3220_status.exit_crit_edge, label %if.then21.i

if.end7.i.vpx3220_status.exit_crit_edge:          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vpx3220_status.exit

if.then21.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i = lshr i32 %call.i, 4
  %2 = and i32 %and.i, 2
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %status, align 4
  br label %vpx3220_status.exit

vpx3220_status.exit:                              ; preds = %if.then21.i, %if.end7.i.vpx3220_status.exit_crit_edge, %do.end4.i.vpx3220_status.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %do.end4.i.vpx3220_status.exit_crit_edge ], [ 0, %if.then21.i ], [ 0, %if.end7.i.vpx3220_status.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpx3220_s_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %cond = select i1 %tobool.not, ptr @.str.43, ptr @.str.42
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name, ptr noundef nonnull %cond) #9
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool3.not = icmp eq i32 %enable, 0
  %conv = select i1 %tobool3.not, i8 0, i8 27
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %1 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_priv.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i.i, align 4
  %arrayidx.i = getelementptr %struct.vpx3220, ptr %4, i32 0, i32 2, i32 242
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %arrayidx.i, align 1
  %call3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext -14, i8 noundef zeroext %conv) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vpx3220_fp_read(ptr noundef %sd, i16 noundef zeroext %fpaddr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = tail call i16 @llvm.bswap.i16(i16 %fpaddr)
  %call1 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 38, i16 noundef zeroext %2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp = icmp eq i32 %call1, -1
  br i1 %cmp, label %do.body, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

do.body:                                          ; preds = %entry
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp sgt i32 %3, 0
  br i1 %cmp2, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name, ptr noundef nonnull @.str.17) #9
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i, align 4
  %call1.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 41) #6
  %and.i = and i32 %call1.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end12, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #6
  %7 = tail call i32 @llvm.read_register.i32(metadata !130) #6
  %and.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 16384
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.then3.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__might_resched(ptr noundef nonnull @.str.7, i32 noundef 86, i32 noundef 0) #6
  %call.i.i = tail call i32 @__cond_resched() #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then3.i, %if.end.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %for.body.i
  %call13 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %1, i8 noundef zeroext 40) #6
  %sext.mask = and i32 %call13, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %sext.mask)
  %cmp15 = icmp eq i32 %sext.mask, 65535
  br i1 %cmp15, label %do.body18, label %if.end32

do.body18:                                        ; preds = %if.end12
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp19 = icmp sgt i32 %12, 0
  br i1 %cmp19, label %do.end24, label %do.body18.cleanup_crit_edge

do.body18.cleanup_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end24:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  %name26 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name26, ptr noundef nonnull @.str.17) #9
  br label %cleanup

if.end32:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i32 %call13 to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %conv33 = zext i16 %13 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %do.end24, %do.body18.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv33, %if.end32 ], [ -1, %do.end ], [ -1, %do.body.cleanup_crit_edge ], [ -1, %do.end24 ], [ -1, %do.body18.cleanup_crit_edge ], [ -1, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vpx3220_fp_write(ptr noundef %sd, i8 noundef zeroext %fpaddr, i16 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %conv = zext i8 %fpaddr to i16
  %2 = shl nuw i16 %conv, 8
  %call1 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 39, i16 noundef zeroext %2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp = icmp eq i32 %call1, -1
  br i1 %cmp, label %do.body, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

do.body:                                          ; preds = %entry
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3 = icmp sgt i32 %3, 0
  br i1 %cmp3, label %do.body.cleanup.sink.split_crit_edge, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i, align 4
  %call1.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 41) #6
  %and.i = and i32 %call1.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end15, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #6
  %7 = tail call i32 @llvm.read_register.i32(metadata !130) #6
  %and.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 16384
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.then3.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__might_resched(ptr noundef nonnull @.str.7, i32 noundef 86, i32 noundef 0) #6
  %call.i.i = tail call i32 @__cond_resched() #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then3.i, %if.end.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %for.body.i
  %12 = tail call i16 @llvm.bswap.i16(i16 %data)
  %call16 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 40, i16 noundef zeroext %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16)
  %cmp17 = icmp eq i32 %call16, -1
  br i1 %cmp17, label %do.body20, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body20:                                        ; preds = %if.end15
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp21 = icmp sgt i32 %13, 0
  br i1 %cmp21, label %do.body20.cleanup.sink.split_crit_edge, label %do.body20.cleanup_crit_edge

do.body20.cleanup_crit_edge:                      ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body20.cleanup.sink.split_crit_edge:           ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.body20.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %name28 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name28, ptr noundef nonnull @.str.20) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body20.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.body.cleanup_crit_edge ], [ -1, %do.body20.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ], [ -1, %cleanup.sink.split ], [ -1, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpx3220_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -196
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb2
    i32 9963778, label %sw.bb6
    i32 9963779, label %sw.bb10
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %dev_priv.i.i = getelementptr i8, ptr %1, i32 -44
  %7 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4, i32 8
  %9 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i.i, align 4
  %arrayidx.i = getelementptr %struct.vpx3220, ptr %10, i32 0, i32 2, i32 230
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %arrayidx.i, align 1
  %call3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext -26, i8 noundef zeroext %conv) #6
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %12 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val3, align 4
  %14 = trunc i32 %13 to i8
  %conv4 = add i8 %14, -64
  %dev_priv.i.i22 = getelementptr i8, ptr %1, i32 -44
  %15 = ptrtoint ptr %dev_priv.i.i22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_priv.i.i22, align 4
  %driver_data.i.i.i23 = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4, i32 8
  %17 = ptrtoint ptr %driver_data.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i.i23, align 4
  %arrayidx.i24 = getelementptr %struct.vpx3220, ptr %18, i32 0, i32 2, i32 231
  %19 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv4, ptr %arrayidx.i24, align 1
  %call3.i25 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext -25, i8 noundef zeroext %conv4) #6
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %20 = ptrtoint ptr %val7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val7, align 4
  %conv8 = trunc i32 %21 to i16
  %call9 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %add.ptr.i, i8 noundef zeroext -96, i16 noundef zeroext %conv8)
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %22 = ptrtoint ptr %val11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val11, align 4
  %conv12 = trunc i32 %23 to i16
  %call13 = tail call fastcc i32 @vpx3220_fp_write(ptr noundef %add.ptr.i, i8 noundef zeroext 28, i16 noundef zeroext %conv12)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb10, %sw.bb6, %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb10 ], [ 0, %sw.bb6 ], [ 0, %sw.bb2 ], [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !18, !20, !22, !24, !25, !27, !29, !31, !33, !34, !35, !36, !37, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !56, !57, !58, !60, !62, !64, !66, !68, !69, !70, !71, !73, !74, !76, !77, !78, !80, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !118, !119, !120, !122, !124, !126, !128}
!llvm.named.register.sp = !{!130}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !{ptr @__UNIQUE_ID_description292, !1, !"__UNIQUE_ID_description292", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/vpx3220.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_author293, !3, !"__UNIQUE_ID_author293", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/vpx3220.c", i32 20, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/media/i2c/vpx3220.c", i32 21, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/vpx3220.c", i32 24, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype296, !8, !"__UNIQUE_ID_debugtype296", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_debug297, !11, !"__UNIQUE_ID_debug297", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/vpx3220.c", i32 25, i32 1}
!12 = !{ptr @__initcall__kmod_vpx3220__298_557_vpx3220_driver_init6, !13, !"__initcall__kmod_vpx3220__298_557_vpx3220_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/vpx3220.c", i32 557, i32 1}
!14 = !{ptr @__exitcall_vpx3220_driver_exit, !13, !"__exitcall_vpx3220_driver_exit", i1 false, i1 false}
!15 = !{ptr @debug, !16, !"debug", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/vpx3220.c", i32 23, i32 12}
!17 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/vpx3220.c", i32 550, i32 11}
!20 = !{ptr @vpx3220_driver, !21, !"vpx3220_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/vpx3220.c", i32 548, i32 26}
!22 = !{ptr @vpx3220_probe._key, !23, !"_key", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/vpx3220.c", i32 481, i32 2}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/i2c/vpx3220.c", i32 505, i32 11}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/i2c/vpx3220.c", i32 508, i32 11}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/i2c/vpx3220.c", i32 511, i32 11}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/i2c/vpx3220.c", i32 516, i32 3}
!33 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @vpx3220_probe._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @vpx3220_probe._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/vpx3220.c", i32 519, i32 3}
!39 = !{ptr @vpx3220_probe._entry.8, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @vpx3220_probe._entry_ptr.10, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @vpx3220_ops, !42, !"vpx3220_ops", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/vpx3220.c", i32 450, i32 37}
!43 = !{ptr @vpx3220_core_ops, !44, !"vpx3220_core_ops", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/vpx3220.c", i32 438, i32 42}
!45 = distinct !{null, !46, !"init_ntsc", i1 false, i1 false}
!46 = !{!"../drivers/media/i2c/vpx3220.c", i32 171, i32 29}
!47 = distinct !{null, !48, !"init_secam", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/vpx3220.c", i32 204, i32 29}
!49 = !{ptr @vpx3220_video_ops, !50, !"vpx3220_video_ops", i1 false, i1 false}
!50 = !{!"../drivers/media/i2c/vpx3220.c", i32 442, i32 43}
!51 = !{ptr @vpx3220_s_routing.input_vals, !52, !"input_vals", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/vpx3220.c", i32 378, i32 19}
!53 = !{ptr @.str.11, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/i2c/vpx3220.c", i32 387, i32 2}
!55 = !{ptr @.str.12, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @vpx3220_s_routing._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @vpx3220_s_routing._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.13, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/vpx3220.c", i32 52, i32 27}
!60 = !{ptr @.str.14, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/vpx3220.c", i32 52, i32 39}
!62 = !{ptr @.str.15, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/vpx3220.c", i32 52, i32 52}
!64 = !{ptr @inputs, !65, !"inputs", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/vpx3220.c", i32 52, i32 14}
!66 = !{ptr @.str.16, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/vpx3220.c", i32 121, i32 3}
!68 = !{ptr @.str.17, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @vpx3220_fp_read._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @vpx3220_fp_read._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @vpx3220_fp_read._entry.18, !72, !"_entry", i1 false, i1 false}
!72 = !{!"../drivers/media/i2c/vpx3220.c", i32 131, i32 3}
!73 = !{ptr @vpx3220_fp_read._entry_ptr.19, !72, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.20, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/i2c/vpx3220.c", i32 98, i32 3}
!76 = !{ptr @vpx3220_fp_write._entry, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @vpx3220_fp_write._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @vpx3220_fp_write._entry.21, !79, !"_entry", i1 false, i1 false}
!79 = !{!"../drivers/media/i2c/vpx3220.c", i32 107, i32 3}
!80 = !{ptr @vpx3220_fp_write._entry_ptr.22, !79, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/i2c/vpx3220.c", i32 347, i32 2}
!83 = !{ptr @.str.24, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @vpx3220_s_std._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @vpx3220_s_std._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.26, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/i2c/vpx3220.c", i32 350, i32 3}
!88 = !{ptr @vpx3220_s_std._entry.25, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @vpx3220_s_std._entry_ptr.27, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.29, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/i2c/vpx3220.c", i32 353, i32 3}
!92 = !{ptr @vpx3220_s_std._entry.28, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @vpx3220_s_std._entry_ptr.30, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.32, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/i2c/vpx3220.c", i32 356, i32 3}
!96 = !{ptr @vpx3220_s_std._entry.31, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @vpx3220_s_std._entry_ptr.33, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.34, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/i2c/vpx3220.c", i32 327, i32 2}
!100 = !{ptr @.str.35, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @vpx3220_querystd._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @vpx3220_querystd._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.36, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/i2c/vpx3220.c", i32 289, i32 2}
!105 = !{ptr @.str.37, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @vpx3220_status._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @vpx3220_status._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.38, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/i2c/vpx3220.c", i32 333, i32 2}
!110 = !{ptr @.str.39, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @vpx3220_g_input_status._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @vpx3220_g_input_status._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.40, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/i2c/vpx3220.c", i32 404, i32 2}
!115 = !{ptr @.str.41, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @vpx3220_s_stream._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @vpx3220_s_stream._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.42, !114, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.43, !114, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @vpx3220_ctrl_ops, !121, !"vpx3220_ctrl_ops", i1 false, i1 false}
!121 = !{!"../drivers/media/i2c/vpx3220.c", i32 434, i32 35}
!122 = !{ptr @init_common, !123, !"init_common", i1 false, i1 false}
!123 = !{!"../drivers/media/i2c/vpx3220.c", i32 221, i32 28}
!124 = distinct !{null, !125, !"init_fp", i1 false, i1 false}
!125 = !{!"../drivers/media/i2c/vpx3220.c", i32 251, i32 29}
!126 = distinct !{null, !127, !"init_pal", i1 false, i1 false}
!127 = !{!"../drivers/media/i2c/vpx3220.c", i32 187, i32 29}
!128 = !{ptr @vpx3220_id, !129, !"vpx3220_id", i1 false, i1 false}
!129 = !{!"../drivers/media/i2c/vpx3220.c", i32 540, i32 35}
!130 = !{!"sp"}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
