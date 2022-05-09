; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ks0127.c_pt.bc'
source_filename = "../drivers/media/i2c/ks0127.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.ks0127 = type { %struct.v4l2_subdev, i64, [256 x i8] }

@__UNIQUE_ID_description292 = internal constant [47 x i8] c"ks0127.description=KS0127 video decoder driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [25 x i8] c"ks0127.author=Ryan Drake\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [37 x i8] c"ks0127.file=drivers/media/i2c/ks0127\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [19 x i8] c"ks0127.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [13 x i8] c"ks0127.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype296 = internal constant [26 x i8] c"ks0127.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug297 = internal constant [31 x i8] c"ks0127.parm=debug:Debug output\00", section ".modinfo", align 1
@__initcall__kmod_ks0127__298_705_ks0127_driver_init6 = internal global ptr @ks0127_driver_init, section ".initcall6.init", align 4
@ks0127_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ks0127_probe, ptr @ks0127_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ks0127_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ks0127_driver_exit = internal global ptr @ks0127_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ks0127\00", [25 x i8] zeroinitializer }, align 32
@ks0127_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ks0127\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ks0127b\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ks0122s\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ks0127_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s %d-%04x: %s chip found @ 0x%x (%s)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ks0127_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/ks0127.c\00", [37 x i8] zeroinitializer }, align 32
@ks0127_probe._entry_ptr = internal global ptr @ks0127_probe._entry, section ".printk_index", align 4
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"addon\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"on-board\00", [23 x i8] zeroinitializer }, align 32
@ks0127_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @ks0127_video_ops, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ks0127_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr @ks0127_s_routing, ptr null, ptr null, ptr @ks0127_s_std, ptr null, ptr null, ptr @ks0127_querystd, ptr null, ptr null, ptr @ks0127_g_input_status, ptr @ks0127_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ks0127_s_routing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: s_routing %d: Composite\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ks0127_s_routing\00", [47 x i8] zeroinitializer }, align 32
@ks0127_s_routing._entry_ptr = internal global ptr @ks0127_s_routing._entry, section ".printk_index", align 4
@reg_defaults = internal global { [64 x i8], [32 x i8] } zeroinitializer, align 32
@ks0127_s_routing._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: s_routing %d: S-Video\0A\00", [35 x i8] zeroinitializer }, align 32
@ks0127_s_routing._entry_ptr.10 = internal global ptr @ks0127_s_routing._entry.8, section ".printk_index", align 4
@ks0127_s_routing._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.3, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: s_routing 15: YUV656\0A\00", [36 x i8] zeroinitializer }, align 32
@ks0127_s_routing._entry_ptr.13 = internal global ptr @ks0127_s_routing._entry.11, section ".printk_index", align 4
@ks0127_s_routing._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.3, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: s_routing: Unknown input %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ks0127_s_routing._entry_ptr.16 = internal global ptr @ks0127_s_routing._entry.14, section ".printk_index", align 4
@ks0127_s_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: s_std: NTSC_M\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ks0127_s_std\00", [19 x i8] zeroinitializer }, align 32
@ks0127_s_std._entry_ptr = internal global ptr @ks0127_s_std._entry, section ".printk_index", align 4
@ks0127_s_std._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: s_std: NTSC_N (fixme)\0A\00", [35 x i8] zeroinitializer }, align 32
@ks0127_s_std._entry_ptr.21 = internal global ptr @ks0127_s_std._entry.19, section ".printk_index", align 4
@ks0127_s_std._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.3, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: s_std: PAL_N\0A\00", [44 x i8] zeroinitializer }, align 32
@ks0127_s_std._entry_ptr.24 = internal global ptr @ks0127_s_std._entry.22, section ".printk_index", align 4
@ks0127_s_std._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.3, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: s_std: PAL_M (fixme)\0A\00", [36 x i8] zeroinitializer }, align 32
@ks0127_s_std._entry_ptr.27 = internal global ptr @ks0127_s_std._entry.25, section ".printk_index", align 4
@ks0127_s_std._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.18, ptr @.str.3, i32 560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: s_std: SECAM\0A\00", [44 x i8] zeroinitializer }, align 32
@ks0127_s_std._entry_ptr.30 = internal global ptr @ks0127_s_std._entry.28, section ".printk_index", align 4
@ks0127_s_std._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.18, ptr @.str.3, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: s_std: Unknown norm %llx\0A\00", [32 x i8] zeroinitializer }, align 32
@ks0127_s_std._entry_ptr.33 = internal global ptr @ks0127_s_std._entry.31, section ".printk_index", align 4
@ks0127_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: read error\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ks0127_read\00", [20 x i8] zeroinitializer }, align 32
@ks0127_read._entry_ptr = internal global ptr @ks0127_read._entry, section ".printk_index", align 4
@ks0127_querystd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s: querystd\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ks0127_querystd\00", [16 x i8] zeroinitializer }, align 32
@ks0127_querystd._entry_ptr = internal global ptr @ks0127_querystd._entry, section ".printk_index", align 4
@ks0127_g_input_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 632, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: g_input_status\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ks0127_g_input_status\00", [42 x i8] zeroinitializer }, align 32
@ks0127_g_input_status._entry_ptr = internal global ptr @ks0127_g_input_status._entry, section ".printk_index", align 4
@ks0127_s_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: s_stream(%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ks0127_s_stream\00", [16 x i8] zeroinitializer }, align 32
@ks0127_s_stream._entry_ptr = internal global ptr @ks0127_s_stream._entry, section ".printk_index", align 4
@init_reg_defaults.initialized = internal global { i1, [31 x i8] } zeroinitializer, align 32
@ks0127_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: write error\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ks0127_write\00", [19 x i8] zeroinitializer }, align 32
@ks0127_write._entry_ptr = internal global ptr @ks0127_write._entry, section ".printk_index", align 4
@ks0127_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\017%s: reset\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ks0127_init\00", [20 x i8] zeroinitializer }, align 32
@ks0127_init._entry_ptr = internal global ptr @ks0127_init._entry, section ".printk_index", align 4
@ks0127_init._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.3, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: ks0122s found\0A\00", [43 x i8] zeroinitializer }, align 32
@ks0127_init._entry_ptr.48 = internal global ptr @ks0127_init._entry.46, section ".printk_index", align 4
@ks0127_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.3, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: ks0127 found\0A\00", [44 x i8] zeroinitializer }, align 32
@ks0127_init._entry_ptr.51 = internal global ptr @ks0127_init._entry.49, section ".printk_index", align 4
@ks0127_init._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.45, ptr @.str.3, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: ks0127B Revision A found\0A\00", [32 x i8] zeroinitializer }, align 32
@ks0127_init._entry_ptr.54 = internal global ptr @ks0127_init._entry.52, section ".printk_index", align 4
@ks0127_init._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.45, ptr @.str.3, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: unknown revision\0A\00", [40 x i8] zeroinitializer }, align 32
@ks0127_init._entry_ptr.57 = internal global ptr @ks0127_init._entry.55, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@__sancov_gen_cov_switch_values.58 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 4, i64 5, i64 6, i64 8, i64 9, i64 10, i64 15]
@___asan_gen_.59 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 198, i32 12 }
@___asan_gen_.62 = private unnamed_addr constant [14 x i8] c"ks0127_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 696, i32 26 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 698, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant [10 x i8] c"ks0127_id\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 688, i32 35 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 658, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [11 x i8] c"ks0127_ops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 646, i32 37 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"ks0127_video_ops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 638, i32 43 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 413, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [13 x i8] c"reg_defaults\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 203, i32 11 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 447, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 479, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 523, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 543, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 547, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 551, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 555, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 559, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 572, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 323, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 626, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 632, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 580, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant [30 x i8] c"init_reg_defaults.initialized\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 336, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 362, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 382, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 388, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 392, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.241 = private constant [30 x i8] c"../drivers/media/i2c/ks0127.c\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 396, i32 3 }
@llvm.compiler.used = appending global [93 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug297, ptr @__UNIQUE_ID_debugtype296, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_ks0127_driver_exit, ptr @__initcall__kmod_ks0127__298_705_ks0127_driver_init6, ptr @__param_debug, ptr @ks0127_driver_exit, ptr @ks0127_g_input_status._entry, ptr @ks0127_g_input_status._entry_ptr, ptr @ks0127_init._entry, ptr @ks0127_init._entry.46, ptr @ks0127_init._entry.49, ptr @ks0127_init._entry.52, ptr @ks0127_init._entry.55, ptr @ks0127_init._entry_ptr, ptr @ks0127_init._entry_ptr.48, ptr @ks0127_init._entry_ptr.51, ptr @ks0127_init._entry_ptr.54, ptr @ks0127_init._entry_ptr.57, ptr @ks0127_probe._entry, ptr @ks0127_probe._entry_ptr, ptr @ks0127_querystd._entry, ptr @ks0127_querystd._entry_ptr, ptr @ks0127_read._entry, ptr @ks0127_read._entry_ptr, ptr @ks0127_s_routing._entry, ptr @ks0127_s_routing._entry.11, ptr @ks0127_s_routing._entry.14, ptr @ks0127_s_routing._entry.8, ptr @ks0127_s_routing._entry_ptr, ptr @ks0127_s_routing._entry_ptr.10, ptr @ks0127_s_routing._entry_ptr.13, ptr @ks0127_s_routing._entry_ptr.16, ptr @ks0127_s_std._entry, ptr @ks0127_s_std._entry.19, ptr @ks0127_s_std._entry.22, ptr @ks0127_s_std._entry.25, ptr @ks0127_s_std._entry.28, ptr @ks0127_s_std._entry.31, ptr @ks0127_s_std._entry_ptr, ptr @ks0127_s_std._entry_ptr.21, ptr @ks0127_s_std._entry_ptr.24, ptr @ks0127_s_std._entry_ptr.27, ptr @ks0127_s_std._entry_ptr.30, ptr @ks0127_s_std._entry_ptr.33, ptr @ks0127_s_stream._entry, ptr @ks0127_s_stream._entry_ptr, ptr @ks0127_write._entry, ptr @ks0127_write._entry_ptr, ptr @debug, ptr @ks0127_driver, ptr @.str, ptr @ks0127_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ks0127_ops, ptr @ks0127_video_ops, ptr @.str.6, ptr @.str.7, ptr @reg_defaults, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @init_reg_defaults.initialized, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks0127_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks0127_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks0127_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks0127_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks0127_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks0127_s_routing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_defaults to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks0127_s_routing._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks0127_s_routing._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks0127_s_routing._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks0127_s_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks0127_s_std._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks0127_s_std._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks0127_s_std._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks0127_s_std._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks0127_s_std._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks0127_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks0127_querystd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks0127_g_input_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks0127_s_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_reg_defaults.initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks0127_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks0127_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks0127_init._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks0127_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks0127_init._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks0127_init._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ks0127_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ks0127_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ks0127_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @ks0127_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks0127_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %reg.addr.i169.i = alloca i8, align 1
  %val.i170.i = alloca i8, align 1
  %msgs.i171.i = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i.i = alloca i8, align 1
  %val.i.i = alloca i8, align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %msg.i151.i = alloca [2 x i8], align 1
  %msg.i139.i = alloca [2 x i8], align 1
  %msg.i127.i = alloca [2 x i8], align 1
  %msg.i.i = alloca [2 x i8], align 1
  %msg.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr, align 2
  %conv = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 108, i16 %9)
  %cmp = icmp eq i16 %9, 108
  %cond = select i1 %cmp, ptr @.str.4, ptr @.str.5
  %shl = shl nuw nsw i32 %conv, 1
  %name7 = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 12
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %3, i32 noundef %7, i32 noundef %conv, ptr noundef nonnull %cond, i32 noundef %shl, ptr noundef %name7) #8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 464, i32 noundef 3520) #5
  %cmp11 = icmp eq ptr %call.i, null
  br i1 %cmp11, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @ks0127_ops) #5
  %.b.i = load i1, ptr @init_reg_defaults.initialized, align 4
  br i1 %.b.i, label %if.end.init_reg_defaults.exit_crit_edge, label %if.end.i

if.end.init_reg_defaults.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %init_reg_defaults.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @init_reg_defaults.initialized, align 4
  store i8 44, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 1), align 1
  store i8 18, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 2), align 1
  store i8 0, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 3), align 1
  store i8 1, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 4), align 1
  store i8 0, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 5), align 1
  store i8 0, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 6), align 1
  store i8 16, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 7), align 1
  store i8 0, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 8), align 1
  store i8 0, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 9), align 1
  store i8 0, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 10), align 1
  store i8 83, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 11), align 1
  store i8 0, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 12), align 1
  store i8 0, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 13), align 1
  store i8 15, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 14), align 1
  store i8 1, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 15), align 1
  store i8 0, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 16), align 1
  store i8 0, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 17), align 1
  store i8 42, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 18), align 1
  store i8 -112, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 19), align 1
  store i32 0, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 20), align 1
  store i8 18, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 24), align 1
  store i8 11, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 25), align 1
  store i32 0, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 26), align 1
  store i8 48, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 30), align 1
  store i8 0, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 31), align 1
  store i8 93, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 32), align 1
  store i8 0, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 33), align 1
  store i8 0, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 34), align 1
  store i8 -88, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 35), align 1
  store i8 -86, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 36), align 1
  store i8 42, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 37), align 1
  %10 = call ptr @memset(ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 38), i32 0, i32 7)
  store i8 7, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 45), align 1
  store i8 0, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 46), align 1
  store i8 0, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 47), align 1
  store i8 65, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 48), align 1
  store i8 -128, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 49), align 1
  store i8 16, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 50), align 1
  store i8 -128, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 51), align 1
  store i8 -128, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 52), align 1
  store i8 16, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 53), align 1
  store i8 -128, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 54), align 1
  store i8 -128, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 55), align 1
  store i8 0, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 56), align 1
  store i8 0, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 57), align 1
  store i8 0, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 58), align 1
  store i8 -128, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 59), align 1
  store i8 0, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 60), align 1
  store i8 0, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 61), align 1
  store i8 0, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 62), align 1
  store i8 2, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 63), align 1
  br label %init_reg_defaults.exit

init_reg_defaults.exit:                           ; preds = %if.end.i, %if.end.init_reg_defaults.exit_crit_edge
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 11
  %11 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i) #5
  %13 = getelementptr inbounds [2 x i8], ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %msg.i, align 1
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 44, ptr %13, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %12, ptr noundef nonnull %msg.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i, label %init_reg_defaults.exit.ks0127_write.exit_crit_edge, label %do.body.i

init_reg_defaults.exit.ks0127_write.exit_crit_edge: ; preds = %init_reg_defaults.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit

do.body.i:                                        ; preds = %init_reg_defaults.exit
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp3.i = icmp sgt i32 %16, 0
  br i1 %cmp3.i, label %do.end.i, label %do.body.i.ks0127_write.exit_crit_edge

do.body.i.ks0127_write.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i) #8
  br label %ks0127_write.exit

ks0127_write.exit:                                ; preds = %do.end.i, %do.body.i.ks0127_write.exit_crit_edge, %init_reg_defaults.exit.ks0127_write.exit_crit_edge
  %arrayidx.i = getelementptr %struct.ks0127, ptr %call.i, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 44, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %19(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %25(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %26(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 214748000) #5
  %28 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i = icmp sgt i32 %28, 0
  br i1 %cmp.i, label %do.end.i27, label %ks0127_write.exit.do.end3.i_crit_edge

ks0127_write.exit.do.end3.i_crit_edge:            ; preds = %ks0127_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3.i

do.end.i27:                                       ; preds = %ks0127_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  %name.i25 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call.i26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name.i25) #8
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i27, %ks0127_write.exit.do.end3.i_crit_edge
  call void @msleep(i32 noundef 1) #5
  %29 = getelementptr inbounds [2 x i8], ptr %msg.i.i, i32 0, i32 1
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  br label %for.body.i

for.cond5.preheader.i:                            ; preds = %ks0127_write.exit.i
  %30 = getelementptr inbounds [2 x i8], ptr %msg.i127.i, i32 0, i32 1
  %31 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 35), align 1
  %32 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i127.i) #5
  %34 = ptrtoint ptr %msg.i127.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 35, ptr %msg.i127.i, align 1
  %35 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %31, ptr %30, align 1
  %call.i.i129.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %33, ptr noundef nonnull %msg.i127.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i129.i)
  %cmp.not.i130.i = icmp eq i32 %call.i.i129.i, 2
  br i1 %cmp.not.i130.i, label %for.cond5.preheader.i.ks0127_write.exit138.i_crit_edge, label %do.body.i132.i

for.cond5.preheader.i.ks0127_write.exit138.i_crit_edge: ; preds = %for.cond5.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit138.i

for.body.i:                                       ; preds = %ks0127_write.exit.i.for.body.i_crit_edge, %do.end3.i
  %i.0190.i = phi i32 [ 1, %do.end3.i ], [ %inc.i, %ks0127_write.exit.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %i.0190.i to i8
  %arrayidx.i28 = getelementptr i8, ptr @reg_defaults, i32 %i.0190.i
  %36 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i28, align 1
  %38 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i) #5
  %40 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv.i, ptr %msg.i.i, align 1
  %41 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %37, ptr %29, align 1
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %39, ptr noundef nonnull %msg.i.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp.not.i.i, label %for.body.i.ks0127_write.exit.i_crit_edge, label %do.body.i.i

for.body.i.ks0127_write.exit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit.i

do.body.i.i:                                      ; preds = %for.body.i
  %42 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp3.i.i = icmp sgt i32 %42, 0
  br i1 %cmp3.i.i, label %do.end.i.i, label %do.body.i.i.ks0127_write.exit.i_crit_edge

do.body.i.i.ks0127_write.exit.i_crit_edge:        ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i) #8
  br label %ks0127_write.exit.i

ks0127_write.exit.i:                              ; preds = %do.end.i.i, %do.body.i.i.ks0127_write.exit.i_crit_edge, %for.body.i.ks0127_write.exit.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.ks0127, ptr %call.i, i32 0, i32 2, i32 %i.0190.i
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %37, ptr %arrayidx.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i) #5
  %inc.i = add nuw nsw i32 %i.0190.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 33
  br i1 %exitcond.not.i, label %for.cond5.preheader.i, label %ks0127_write.exit.i.for.body.i_crit_edge

ks0127_write.exit.i.for.body.i_crit_edge:         ; preds = %ks0127_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.body.i132.i:                                   ; preds = %for.cond5.preheader.i
  %44 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp3.i131.i = icmp sgt i32 %44, 0
  br i1 %cmp3.i131.i, label %do.end.i135.i, label %do.body.i132.i.ks0127_write.exit138.i_crit_edge

do.body.i132.i.ks0127_write.exit138.i_crit_edge:  ; preds = %do.body.i132.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit138.i

do.end.i135.i:                                    ; preds = %do.body.i132.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i134.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i) #8
  br label %ks0127_write.exit138.i

ks0127_write.exit138.i:                           ; preds = %do.end.i135.i, %do.body.i132.i.ks0127_write.exit138.i_crit_edge, %for.cond5.preheader.i.ks0127_write.exit138.i_crit_edge
  %arrayidx.i137.i = getelementptr %struct.ks0127, ptr %call.i, i32 0, i32 2, i32 35
  %45 = ptrtoint ptr %arrayidx.i137.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %31, ptr %arrayidx.i137.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i127.i) #5
  %46 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 36), align 1
  %47 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i127.i) #5
  %49 = ptrtoint ptr %msg.i127.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 36, ptr %msg.i127.i, align 1
  %50 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %46, ptr %30, align 1
  %call.i.i129.1.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %48, ptr noundef nonnull %msg.i127.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i129.1.i)
  %cmp.not.i130.1.i = icmp eq i32 %call.i.i129.1.i, 2
  br i1 %cmp.not.i130.1.i, label %ks0127_write.exit138.i.ks0127_write.exit138.1.i_crit_edge, label %do.body.i132.1.i

ks0127_write.exit138.i.ks0127_write.exit138.1.i_crit_edge: ; preds = %ks0127_write.exit138.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit138.1.i

do.body.i132.1.i:                                 ; preds = %ks0127_write.exit138.i
  %51 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp3.i131.1.i = icmp sgt i32 %51, 0
  br i1 %cmp3.i131.1.i, label %do.end.i135.1.i, label %do.body.i132.1.i.ks0127_write.exit138.1.i_crit_edge

do.body.i132.1.i.ks0127_write.exit138.1.i_crit_edge: ; preds = %do.body.i132.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit138.1.i

do.end.i135.1.i:                                  ; preds = %do.body.i132.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i134.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i) #8
  br label %ks0127_write.exit138.1.i

ks0127_write.exit138.1.i:                         ; preds = %do.end.i135.1.i, %do.body.i132.1.i.ks0127_write.exit138.1.i_crit_edge, %ks0127_write.exit138.i.ks0127_write.exit138.1.i_crit_edge
  %arrayidx.i137.1.i = getelementptr %struct.ks0127, ptr %call.i, i32 0, i32 2, i32 36
  %52 = ptrtoint ptr %arrayidx.i137.1.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %46, ptr %arrayidx.i137.1.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i127.i) #5
  %53 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 37), align 1
  %54 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i127.i) #5
  %56 = ptrtoint ptr %msg.i127.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 37, ptr %msg.i127.i, align 1
  %57 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %53, ptr %30, align 1
  %call.i.i129.2.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %55, ptr noundef nonnull %msg.i127.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i129.2.i)
  %cmp.not.i130.2.i = icmp eq i32 %call.i.i129.2.i, 2
  br i1 %cmp.not.i130.2.i, label %ks0127_write.exit138.1.i.ks0127_write.exit138.2.i_crit_edge, label %do.body.i132.2.i

ks0127_write.exit138.1.i.ks0127_write.exit138.2.i_crit_edge: ; preds = %ks0127_write.exit138.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit138.2.i

do.body.i132.2.i:                                 ; preds = %ks0127_write.exit138.1.i
  %58 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp3.i131.2.i = icmp sgt i32 %58, 0
  br i1 %cmp3.i131.2.i, label %do.end.i135.2.i, label %do.body.i132.2.i.ks0127_write.exit138.2.i_crit_edge

do.body.i132.2.i.ks0127_write.exit138.2.i_crit_edge: ; preds = %do.body.i132.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit138.2.i

do.end.i135.2.i:                                  ; preds = %do.body.i132.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i134.2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i) #8
  br label %ks0127_write.exit138.2.i

ks0127_write.exit138.2.i:                         ; preds = %do.end.i135.2.i, %do.body.i132.2.i.ks0127_write.exit138.2.i_crit_edge, %ks0127_write.exit138.1.i.ks0127_write.exit138.2.i_crit_edge
  %arrayidx.i137.2.i = getelementptr %struct.ks0127, ptr %call.i, i32 0, i32 2, i32 37
  %59 = ptrtoint ptr %arrayidx.i137.2.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %53, ptr %arrayidx.i137.2.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i127.i) #5
  %60 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 38), align 1
  %61 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i127.i) #5
  %63 = ptrtoint ptr %msg.i127.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 38, ptr %msg.i127.i, align 1
  %64 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %60, ptr %30, align 1
  %call.i.i129.3.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %62, ptr noundef nonnull %msg.i127.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i129.3.i)
  %cmp.not.i130.3.i = icmp eq i32 %call.i.i129.3.i, 2
  br i1 %cmp.not.i130.3.i, label %ks0127_write.exit138.2.i.ks0127_write.exit138.3.i_crit_edge, label %do.body.i132.3.i

ks0127_write.exit138.2.i.ks0127_write.exit138.3.i_crit_edge: ; preds = %ks0127_write.exit138.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit138.3.i

do.body.i132.3.i:                                 ; preds = %ks0127_write.exit138.2.i
  %65 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp3.i131.3.i = icmp sgt i32 %65, 0
  br i1 %cmp3.i131.3.i, label %do.end.i135.3.i, label %do.body.i132.3.i.ks0127_write.exit138.3.i_crit_edge

do.body.i132.3.i.ks0127_write.exit138.3.i_crit_edge: ; preds = %do.body.i132.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit138.3.i

do.end.i135.3.i:                                  ; preds = %do.body.i132.3.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i134.3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i) #8
  br label %ks0127_write.exit138.3.i

ks0127_write.exit138.3.i:                         ; preds = %do.end.i135.3.i, %do.body.i132.3.i.ks0127_write.exit138.3.i_crit_edge, %ks0127_write.exit138.2.i.ks0127_write.exit138.3.i_crit_edge
  %arrayidx.i137.3.i = getelementptr %struct.ks0127, ptr %call.i, i32 0, i32 2, i32 38
  %66 = ptrtoint ptr %arrayidx.i137.3.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %60, ptr %arrayidx.i137.3.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i127.i) #5
  %67 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 39), align 1
  %68 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i127.i) #5
  %70 = ptrtoint ptr %msg.i127.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 39, ptr %msg.i127.i, align 1
  %71 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %67, ptr %30, align 1
  %call.i.i129.4.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %69, ptr noundef nonnull %msg.i127.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i129.4.i)
  %cmp.not.i130.4.i = icmp eq i32 %call.i.i129.4.i, 2
  br i1 %cmp.not.i130.4.i, label %ks0127_write.exit138.3.i.ks0127_write.exit138.4.i_crit_edge, label %do.body.i132.4.i

ks0127_write.exit138.3.i.ks0127_write.exit138.4.i_crit_edge: ; preds = %ks0127_write.exit138.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit138.4.i

do.body.i132.4.i:                                 ; preds = %ks0127_write.exit138.3.i
  %72 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp3.i131.4.i = icmp sgt i32 %72, 0
  br i1 %cmp3.i131.4.i, label %do.end.i135.4.i, label %do.body.i132.4.i.ks0127_write.exit138.4.i_crit_edge

do.body.i132.4.i.ks0127_write.exit138.4.i_crit_edge: ; preds = %do.body.i132.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit138.4.i

do.end.i135.4.i:                                  ; preds = %do.body.i132.4.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i134.4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i) #8
  br label %ks0127_write.exit138.4.i

ks0127_write.exit138.4.i:                         ; preds = %do.end.i135.4.i, %do.body.i132.4.i.ks0127_write.exit138.4.i_crit_edge, %ks0127_write.exit138.3.i.ks0127_write.exit138.4.i_crit_edge
  %arrayidx.i137.4.i = getelementptr %struct.ks0127, ptr %call.i, i32 0, i32 2, i32 39
  %73 = ptrtoint ptr %arrayidx.i137.4.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %67, ptr %arrayidx.i137.4.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i127.i) #5
  %74 = getelementptr inbounds [2 x i8], ptr %msg.i139.i, i32 0, i32 1
  br label %for.body17.i

for.cond23.preheader.i:                           ; preds = %ks0127_write.exit150.i
  %75 = getelementptr inbounds [2 x i8], ptr %msg.i151.i, i32 0, i32 1
  %76 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 58), align 1
  %77 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i151.i) #5
  %79 = ptrtoint ptr %msg.i151.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 58, ptr %msg.i151.i, align 1
  %80 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %76, ptr %75, align 1
  %call.i.i153.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %78, ptr noundef nonnull %msg.i151.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i153.i)
  %cmp.not.i154.i = icmp eq i32 %call.i.i153.i, 2
  br i1 %cmp.not.i154.i, label %for.cond23.preheader.i.ks0127_write.exit162.i_crit_edge, label %do.body.i156.i

for.cond23.preheader.i.ks0127_write.exit162.i_crit_edge: ; preds = %for.cond23.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit162.i

for.body17.i:                                     ; preds = %ks0127_write.exit150.i.for.body17.i_crit_edge, %ks0127_write.exit138.4.i
  %i.2192.i = phi i32 [ 41, %ks0127_write.exit138.4.i ], [ %inc21.i, %ks0127_write.exit150.i.for.body17.i_crit_edge ]
  %conv18.i = trunc i32 %i.2192.i to i8
  %arrayidx19.i = getelementptr i8, ptr @reg_defaults, i32 %i.2192.i
  %81 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx19.i, align 1
  %83 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i139.i) #5
  %85 = ptrtoint ptr %msg.i139.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv18.i, ptr %msg.i139.i, align 1
  %86 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %82, ptr %74, align 1
  %call.i.i141.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %84, ptr noundef nonnull %msg.i139.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i141.i)
  %cmp.not.i142.i = icmp eq i32 %call.i.i141.i, 2
  br i1 %cmp.not.i142.i, label %for.body17.i.ks0127_write.exit150.i_crit_edge, label %do.body.i144.i

for.body17.i.ks0127_write.exit150.i_crit_edge:    ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit150.i

do.body.i144.i:                                   ; preds = %for.body17.i
  %87 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp3.i143.i = icmp sgt i32 %87, 0
  br i1 %cmp3.i143.i, label %do.end.i147.i, label %do.body.i144.i.ks0127_write.exit150.i_crit_edge

do.body.i144.i.ks0127_write.exit150.i_crit_edge:  ; preds = %do.body.i144.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit150.i

do.end.i147.i:                                    ; preds = %do.body.i144.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i146.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i) #8
  br label %ks0127_write.exit150.i

ks0127_write.exit150.i:                           ; preds = %do.end.i147.i, %do.body.i144.i.ks0127_write.exit150.i_crit_edge, %for.body17.i.ks0127_write.exit150.i_crit_edge
  %arrayidx.i149.i = getelementptr %struct.ks0127, ptr %call.i, i32 0, i32 2, i32 %i.2192.i
  %88 = ptrtoint ptr %arrayidx.i149.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %82, ptr %arrayidx.i149.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i139.i) #5
  %inc21.i = add nuw nsw i32 %i.2192.i, 1
  %exitcond195.not.i = icmp eq i32 %inc21.i, 56
  br i1 %exitcond195.not.i, label %for.cond23.preheader.i, label %ks0127_write.exit150.i.for.body17.i_crit_edge

ks0127_write.exit150.i.for.body17.i_crit_edge:    ; preds = %ks0127_write.exit150.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body17.i

do.body.i156.i:                                   ; preds = %for.cond23.preheader.i
  %89 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp3.i155.i = icmp sgt i32 %89, 0
  br i1 %cmp3.i155.i, label %do.end.i159.i, label %do.body.i156.i.ks0127_write.exit162.i_crit_edge

do.body.i156.i.ks0127_write.exit162.i_crit_edge:  ; preds = %do.body.i156.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit162.i

do.end.i159.i:                                    ; preds = %do.body.i156.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i158.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i) #8
  br label %ks0127_write.exit162.i

ks0127_write.exit162.i:                           ; preds = %do.end.i159.i, %do.body.i156.i.ks0127_write.exit162.i_crit_edge, %for.cond23.preheader.i.ks0127_write.exit162.i_crit_edge
  %arrayidx.i161.i = getelementptr %struct.ks0127, ptr %call.i, i32 0, i32 2, i32 58
  %90 = ptrtoint ptr %arrayidx.i161.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %76, ptr %arrayidx.i161.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i151.i) #5
  %91 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 59), align 1
  %92 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i151.i) #5
  %94 = ptrtoint ptr %msg.i151.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 59, ptr %msg.i151.i, align 1
  %95 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %91, ptr %75, align 1
  %call.i.i153.1.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %93, ptr noundef nonnull %msg.i151.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i153.1.i)
  %cmp.not.i154.1.i = icmp eq i32 %call.i.i153.1.i, 2
  br i1 %cmp.not.i154.1.i, label %ks0127_write.exit162.i.ks0127_write.exit162.1.i_crit_edge, label %do.body.i156.1.i

ks0127_write.exit162.i.ks0127_write.exit162.1.i_crit_edge: ; preds = %ks0127_write.exit162.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit162.1.i

do.body.i156.1.i:                                 ; preds = %ks0127_write.exit162.i
  %96 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp3.i155.1.i = icmp sgt i32 %96, 0
  br i1 %cmp3.i155.1.i, label %do.end.i159.1.i, label %do.body.i156.1.i.ks0127_write.exit162.1.i_crit_edge

do.body.i156.1.i.ks0127_write.exit162.1.i_crit_edge: ; preds = %do.body.i156.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit162.1.i

do.end.i159.1.i:                                  ; preds = %do.body.i156.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i158.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i) #8
  br label %ks0127_write.exit162.1.i

ks0127_write.exit162.1.i:                         ; preds = %do.end.i159.1.i, %do.body.i156.1.i.ks0127_write.exit162.1.i_crit_edge, %ks0127_write.exit162.i.ks0127_write.exit162.1.i_crit_edge
  %arrayidx.i161.1.i = getelementptr %struct.ks0127, ptr %call.i, i32 0, i32 2, i32 59
  %97 = ptrtoint ptr %arrayidx.i161.1.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %91, ptr %arrayidx.i161.1.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i151.i) #5
  %98 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 60), align 1
  %99 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i151.i) #5
  %101 = ptrtoint ptr %msg.i151.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 60, ptr %msg.i151.i, align 1
  %102 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %98, ptr %75, align 1
  %call.i.i153.2.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %100, ptr noundef nonnull %msg.i151.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i153.2.i)
  %cmp.not.i154.2.i = icmp eq i32 %call.i.i153.2.i, 2
  br i1 %cmp.not.i154.2.i, label %ks0127_write.exit162.1.i.ks0127_write.exit162.2.i_crit_edge, label %do.body.i156.2.i

ks0127_write.exit162.1.i.ks0127_write.exit162.2.i_crit_edge: ; preds = %ks0127_write.exit162.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit162.2.i

do.body.i156.2.i:                                 ; preds = %ks0127_write.exit162.1.i
  %103 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp3.i155.2.i = icmp sgt i32 %103, 0
  br i1 %cmp3.i155.2.i, label %do.end.i159.2.i, label %do.body.i156.2.i.ks0127_write.exit162.2.i_crit_edge

do.body.i156.2.i.ks0127_write.exit162.2.i_crit_edge: ; preds = %do.body.i156.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit162.2.i

do.end.i159.2.i:                                  ; preds = %do.body.i156.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i158.2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i) #8
  br label %ks0127_write.exit162.2.i

ks0127_write.exit162.2.i:                         ; preds = %do.end.i159.2.i, %do.body.i156.2.i.ks0127_write.exit162.2.i_crit_edge, %ks0127_write.exit162.1.i.ks0127_write.exit162.2.i_crit_edge
  %arrayidx.i161.2.i = getelementptr %struct.ks0127, ptr %call.i, i32 0, i32 2, i32 60
  %104 = ptrtoint ptr %arrayidx.i161.2.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %98, ptr %arrayidx.i161.2.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i151.i) #5
  %105 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 61), align 1
  %106 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i151.i) #5
  %108 = ptrtoint ptr %msg.i151.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 61, ptr %msg.i151.i, align 1
  %109 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %105, ptr %75, align 1
  %call.i.i153.3.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %107, ptr noundef nonnull %msg.i151.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i153.3.i)
  %cmp.not.i154.3.i = icmp eq i32 %call.i.i153.3.i, 2
  br i1 %cmp.not.i154.3.i, label %ks0127_write.exit162.2.i.ks0127_write.exit162.3.i_crit_edge, label %do.body.i156.3.i

ks0127_write.exit162.2.i.ks0127_write.exit162.3.i_crit_edge: ; preds = %ks0127_write.exit162.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit162.3.i

do.body.i156.3.i:                                 ; preds = %ks0127_write.exit162.2.i
  %110 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp3.i155.3.i = icmp sgt i32 %110, 0
  br i1 %cmp3.i155.3.i, label %do.end.i159.3.i, label %do.body.i156.3.i.ks0127_write.exit162.3.i_crit_edge

do.body.i156.3.i.ks0127_write.exit162.3.i_crit_edge: ; preds = %do.body.i156.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit162.3.i

do.end.i159.3.i:                                  ; preds = %do.body.i156.3.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i158.3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i) #8
  br label %ks0127_write.exit162.3.i

ks0127_write.exit162.3.i:                         ; preds = %do.end.i159.3.i, %do.body.i156.3.i.ks0127_write.exit162.3.i_crit_edge, %ks0127_write.exit162.2.i.ks0127_write.exit162.3.i_crit_edge
  %arrayidx.i161.3.i = getelementptr %struct.ks0127, ptr %call.i, i32 0, i32 2, i32 61
  %111 = ptrtoint ptr %arrayidx.i161.3.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %105, ptr %arrayidx.i161.3.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i151.i) #5
  %112 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 62), align 1
  %113 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i151.i) #5
  %115 = ptrtoint ptr %msg.i151.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 62, ptr %msg.i151.i, align 1
  %116 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %112, ptr %75, align 1
  %call.i.i153.4.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %114, ptr noundef nonnull %msg.i151.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i153.4.i)
  %cmp.not.i154.4.i = icmp eq i32 %call.i.i153.4.i, 2
  br i1 %cmp.not.i154.4.i, label %ks0127_write.exit162.3.i.ks0127_write.exit162.4.i_crit_edge, label %do.body.i156.4.i

ks0127_write.exit162.3.i.ks0127_write.exit162.4.i_crit_edge: ; preds = %ks0127_write.exit162.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit162.4.i

do.body.i156.4.i:                                 ; preds = %ks0127_write.exit162.3.i
  %117 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp3.i155.4.i = icmp sgt i32 %117, 0
  br i1 %cmp3.i155.4.i, label %do.end.i159.4.i, label %do.body.i156.4.i.ks0127_write.exit162.4.i_crit_edge

do.body.i156.4.i.ks0127_write.exit162.4.i_crit_edge: ; preds = %do.body.i156.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit162.4.i

do.end.i159.4.i:                                  ; preds = %do.body.i156.4.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i158.4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i) #8
  br label %ks0127_write.exit162.4.i

ks0127_write.exit162.4.i:                         ; preds = %do.end.i159.4.i, %do.body.i156.4.i.ks0127_write.exit162.4.i_crit_edge, %ks0127_write.exit162.3.i.ks0127_write.exit162.4.i_crit_edge
  %arrayidx.i161.4.i = getelementptr %struct.ks0127, ptr %call.i, i32 0, i32 2, i32 62
  %118 = ptrtoint ptr %arrayidx.i161.4.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %112, ptr %arrayidx.i161.4.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i151.i) #5
  %119 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 63), align 1
  %120 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i151.i) #5
  %122 = ptrtoint ptr %msg.i151.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 63, ptr %msg.i151.i, align 1
  %123 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %119, ptr %75, align 1
  %call.i.i153.5.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %121, ptr noundef nonnull %msg.i151.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i153.5.i)
  %cmp.not.i154.5.i = icmp eq i32 %call.i.i153.5.i, 2
  br i1 %cmp.not.i154.5.i, label %ks0127_write.exit162.4.i.ks0127_write.exit162.5.i_crit_edge, label %do.body.i156.5.i

ks0127_write.exit162.4.i.ks0127_write.exit162.5.i_crit_edge: ; preds = %ks0127_write.exit162.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit162.5.i

do.body.i156.5.i:                                 ; preds = %ks0127_write.exit162.4.i
  %124 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp3.i155.5.i = icmp sgt i32 %124, 0
  br i1 %cmp3.i155.5.i, label %do.end.i159.5.i, label %do.body.i156.5.i.ks0127_write.exit162.5.i_crit_edge

do.body.i156.5.i.ks0127_write.exit162.5.i_crit_edge: ; preds = %do.body.i156.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit162.5.i

do.end.i159.5.i:                                  ; preds = %do.body.i156.5.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i158.5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i) #8
  br label %ks0127_write.exit162.5.i

ks0127_write.exit162.5.i:                         ; preds = %do.end.i159.5.i, %do.body.i156.5.i.ks0127_write.exit162.5.i_crit_edge, %ks0127_write.exit162.4.i.ks0127_write.exit162.5.i_crit_edge
  %arrayidx.i161.5.i = getelementptr %struct.ks0127, ptr %call.i, i32 0, i32 2, i32 63
  %125 = ptrtoint ptr %arrayidx.i161.5.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %119, ptr %arrayidx.i161.5.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i151.i) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #5
  %126 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %reg.addr.i.i, align 1
  %127 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #5
  %129 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %val.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #5
  %130 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %131 = call ptr @memset(ptr %130, i32 255, i32 16)
  %addr1.i.i = getelementptr inbounds %struct.i2c_client, ptr %128, i32 0, i32 1
  %132 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %addr1.i.i, align 2
  %134 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %133, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %135 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 0, ptr %flags.i.i, align 2
  %136 = ptrtoint ptr %130 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 1, ptr %130, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %137 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %reg.addr.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %138 = load i16, ptr %addr1.i.i, align 2
  %139 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %138, ptr %arrayinit.element.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %140 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 2049, ptr %flags4.i.i, align 2
  %len5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %141 = ptrtoint ptr %len5.i.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 1, ptr %len5.i.i, align 4
  %buf6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %142 = ptrtoint ptr %buf6.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %val.i.i, ptr %buf6.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %128, i32 0, i32 3
  %143 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %adapter.i.i, align 8
  %call7.i164.i = call i32 @i2c_transfer(ptr noundef %144, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call7.i164.i)
  %cmp.not.i165.i = icmp eq i32 %call7.i164.i, 2
  br i1 %cmp.not.i165.i, label %ks0127_write.exit162.5.i.ks0127_read.exit.i_crit_edge, label %do.body.i166.i

ks0127_write.exit162.5.i.ks0127_read.exit.i_crit_edge: ; preds = %ks0127_write.exit162.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_read.exit.i

do.body.i166.i:                                   ; preds = %ks0127_write.exit162.5.i
  %145 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp8.i.i = icmp sgt i32 %145, 0
  br i1 %cmp8.i.i, label %do.end.i168.i, label %do.body.i166.i.ks0127_read.exit.i_crit_edge

do.body.i166.i.ks0127_read.exit.i_crit_edge:      ; preds = %do.body.i166.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_read.exit.i

do.end.i168.i:                                    ; preds = %do.body.i166.i
  call void @__sanitizer_cov_trace_pc() #7
  %call12.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name.i.i) #8
  br label %ks0127_read.exit.i

ks0127_read.exit.i:                               ; preds = %do.end.i168.i, %do.body.i166.i.ks0127_read.exit.i_crit_edge, %ks0127_write.exit162.5.i.ks0127_read.exit.i_crit_edge
  %146 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %val.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %147)
  %cmp34.i = icmp sgt i8 %147, -1
  br i1 %cmp34.i, label %do.body37.i, label %if.end51.i

do.body37.i:                                      ; preds = %ks0127_read.exit.i
  %148 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %cmp38.i = icmp sgt i32 %148, 0
  br i1 %cmp38.i, label %do.body37.i.cleanup.sink.split.i_crit_edge, label %do.body37.i.cleanup_crit_edge

do.body37.i.cleanup_crit_edge:                    ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body37.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end51.i:                                       ; preds = %ks0127_read.exit.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i169.i) #5
  %149 = ptrtoint ptr %reg.addr.i169.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 61, ptr %reg.addr.i169.i, align 1
  %150 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i170.i) #5
  %152 = ptrtoint ptr %val.i170.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %val.i170.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i171.i) #5
  %153 = getelementptr inbounds i8, ptr %msgs.i171.i, i32 4
  %154 = call ptr @memset(ptr %153, i32 255, i32 16)
  %addr1.i173.i = getelementptr inbounds %struct.i2c_client, ptr %151, i32 0, i32 1
  %155 = ptrtoint ptr %addr1.i173.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %addr1.i173.i, align 2
  %157 = ptrtoint ptr %msgs.i171.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %156, ptr %msgs.i171.i, align 4
  %flags.i174.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i171.i, i32 0, i32 1
  %158 = ptrtoint ptr %flags.i174.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 0, ptr %flags.i174.i, align 2
  %159 = ptrtoint ptr %153 to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 1, ptr %153, align 4
  %buf.i176.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i171.i, i32 0, i32 3
  %160 = ptrtoint ptr %buf.i176.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %reg.addr.i169.i, ptr %buf.i176.i, align 4
  %arrayinit.element.i177.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i171.i, i32 1
  %161 = load i16, ptr %addr1.i173.i, align 2
  %162 = ptrtoint ptr %arrayinit.element.i177.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %161, ptr %arrayinit.element.i177.i, align 4
  %flags4.i178.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i171.i, i32 1, i32 1
  %163 = ptrtoint ptr %flags4.i178.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 2049, ptr %flags4.i178.i, align 2
  %len5.i179.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i171.i, i32 1, i32 2
  %164 = ptrtoint ptr %len5.i179.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 1, ptr %len5.i179.i, align 4
  %buf6.i180.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i171.i, i32 1, i32 3
  %165 = ptrtoint ptr %buf6.i180.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %val.i170.i, ptr %buf6.i180.i, align 4
  %adapter.i181.i = getelementptr inbounds %struct.i2c_client, ptr %151, i32 0, i32 3
  %166 = ptrtoint ptr %adapter.i181.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %adapter.i181.i, align 8
  %call7.i182.i = call i32 @i2c_transfer(ptr noundef %167, ptr noundef nonnull %msgs.i171.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call7.i182.i)
  %cmp.not.i183.i = icmp eq i32 %call7.i182.i, 2
  br i1 %cmp.not.i183.i, label %if.end51.i.ks0127_read.exit189.i_crit_edge, label %do.body.i185.i

if.end51.i.ks0127_read.exit189.i_crit_edge:       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_read.exit189.i

do.body.i185.i:                                   ; preds = %if.end51.i
  %168 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %cmp8.i184.i = icmp sgt i32 %168, 0
  br i1 %cmp8.i184.i, label %do.end.i188.i, label %do.body.i185.i.ks0127_read.exit189.i_crit_edge

do.body.i185.i.ks0127_read.exit189.i_crit_edge:   ; preds = %do.body.i185.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_read.exit189.i

do.end.i188.i:                                    ; preds = %do.body.i185.i
  call void @__sanitizer_cov_trace_pc() #7
  %call12.i187.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name.i.i) #8
  br label %ks0127_read.exit189.i

ks0127_read.exit189.i:                            ; preds = %do.end.i188.i, %do.body.i185.i.ks0127_read.exit189.i_crit_edge, %if.end51.i.ks0127_read.exit189.i_crit_edge
  %169 = ptrtoint ptr %val.i170.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %val.i170.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i171.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i170.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i169.i) #5
  %171 = and i8 %170, 15
  %and54.i = zext i8 %171 to i32
  %172 = zext i32 %and54.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %172, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and54.i, label %do.body84.i [
    i32 0, label %do.body55.i
    i32 9, label %do.body70.i
  ]

do.body55.i:                                      ; preds = %ks0127_read.exit189.i
  %173 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %cmp56.i = icmp sgt i32 %173, 0
  br i1 %cmp56.i, label %do.body55.i.cleanup.sink.split.i_crit_edge, label %do.body55.i.cleanup_crit_edge

do.body55.i.cleanup_crit_edge:                    ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body55.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

do.body70.i:                                      ; preds = %ks0127_read.exit189.i
  %174 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %cmp71.i = icmp sgt i32 %174, 0
  br i1 %cmp71.i, label %do.body70.i.cleanup.sink.split.i_crit_edge, label %do.body70.i.cleanup_crit_edge

do.body70.i.cleanup_crit_edge:                    ; preds = %do.body70.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body70.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body70.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

do.body84.i:                                      ; preds = %ks0127_read.exit189.i
  %175 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %cmp85.i = icmp sgt i32 %175, 0
  br i1 %cmp85.i, label %do.body84.i.cleanup.sink.split.i_crit_edge, label %do.body84.i.cleanup_crit_edge

do.body84.i.cleanup_crit_edge:                    ; preds = %do.body84.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body84.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body84.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %do.body84.i.cleanup.sink.split.i_crit_edge, %do.body70.i.cleanup.sink.split.i_crit_edge, %do.body55.i.cleanup.sink.split.i_crit_edge, %do.body37.i.cleanup.sink.split.i_crit_edge
  %.str.50.sink.i = phi ptr [ @.str.47, %do.body37.i.cleanup.sink.split.i_crit_edge ], [ @.str.50, %do.body55.i.cleanup.sink.split.i_crit_edge ], [ @.str.53, %do.body70.i.cleanup.sink.split.i_crit_edge ], [ @.str.56, %do.body84.i.cleanup.sink.split.i_crit_edge ]
  %call65.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.50.sink.i, ptr noundef %name.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %do.body84.i.cleanup_crit_edge, %do.body70.i.cleanup_crit_edge, %do.body55.i.cleanup_crit_edge, %do.body37.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %do.body37.i.cleanup_crit_edge ], [ 0, %do.body55.i.cleanup_crit_edge ], [ 0, %do.body70.i.cleanup_crit_edge ], [ 0, %do.body84.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks0127_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  %msg.i3 = alloca [2 x i8], align 1
  %msg.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #5
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i) #5
  %4 = getelementptr inbounds [2 x i8], ptr %msg.i, i32 0, i32 1
  %5 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 30, ptr %msg.i, align 1
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 32, ptr %4, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %msg.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i, label %entry.ks0127_write.exit_crit_edge, label %do.body.i

entry.ks0127_write.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit

do.body.i:                                        ; preds = %entry
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3.i = icmp sgt i32 %7, 0
  br i1 %cmp3.i, label %do.end.i, label %do.body.i.ks0127_write.exit_crit_edge

do.body.i.ks0127_write.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 9
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i) #8
  br label %ks0127_write.exit

ks0127_write.exit:                                ; preds = %do.end.i, %do.body.i.ks0127_write.exit_crit_edge, %entry.ks0127_write.exit_crit_edge
  %arrayidx.i = getelementptr %struct.ks0127, ptr %1, i32 0, i32 2, i32 30
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 32, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i) #5
  %9 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i3) #5
  %11 = getelementptr inbounds [2 x i8], ptr %msg.i3, i32 0, i32 1
  %12 = ptrtoint ptr %msg.i3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %msg.i3, align 1
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -84, ptr %11, align 1
  %call.i.i5 = call i32 @i2c_transfer_buffer_flags(ptr noundef %10, ptr noundef nonnull %msg.i3, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i5)
  %cmp.not.i6 = icmp eq i32 %call.i.i5, 2
  br i1 %cmp.not.i6, label %ks0127_write.exit.ks0127_write.exit13_crit_edge, label %do.body.i8

ks0127_write.exit.ks0127_write.exit13_crit_edge:  ; preds = %ks0127_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit13

do.body.i8:                                       ; preds = %ks0127_write.exit
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp3.i7 = icmp sgt i32 %14, 0
  br i1 %cmp3.i7, label %do.end.i11, label %do.body.i8.ks0127_write.exit13_crit_edge

do.body.i8.ks0127_write.exit13_crit_edge:         ; preds = %do.body.i8
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit13

do.end.i11:                                       ; preds = %do.body.i8
  call void @__sanitizer_cov_trace_pc() #7
  %name.i9 = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 9
  %call7.i10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i9) #8
  br label %ks0127_write.exit13

ks0127_write.exit13:                              ; preds = %do.end.i11, %do.body.i8.ks0127_write.exit13_crit_edge, %ks0127_write.exit.ks0127_write.exit13_crit_edge
  %arrayidx.i12 = getelementptr %struct.ks0127, ptr %1, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -84, ptr %arrayidx.i12, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i3) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks0127_s_routing(ptr noundef %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #2 align 64 {
entry:
  %msg.i671 = alloca [2 x i8], align 1
  %msg.i.i660 = alloca [2 x i8], align 1
  %msg.i.i649 = alloca [2 x i8], align 1
  %msg.i.i638 = alloca [2 x i8], align 1
  %msg.i.i627 = alloca [2 x i8], align 1
  %msg.i.i616 = alloca [2 x i8], align 1
  %msg.i.i605 = alloca [2 x i8], align 1
  %msg.i.i594 = alloca [2 x i8], align 1
  %msg.i.i583 = alloca [2 x i8], align 1
  %msg.i.i570 = alloca [2 x i8], align 1
  %msg.i.i557 = alloca [2 x i8], align 1
  %msg.i.i544 = alloca [2 x i8], align 1
  %msg.i.i533 = alloca [2 x i8], align 1
  %msg.i.i520 = alloca [2 x i8], align 1
  %msg.i.i507 = alloca [2 x i8], align 1
  %msg.i.i494 = alloca [2 x i8], align 1
  %msg.i.i481 = alloca [2 x i8], align 1
  %msg.i.i469 = alloca [2 x i8], align 1
  %msg.i.i456 = alloca [2 x i8], align 1
  %msg.i.i443 = alloca [2 x i8], align 1
  %msg.i432 = alloca [2 x i8], align 1
  %msg.i421 = alloca [2 x i8], align 1
  %msg.i410 = alloca [2 x i8], align 1
  %msg.i399 = alloca [2 x i8], align 1
  %msg.i.i386 = alloca [2 x i8], align 1
  %msg.i.i373 = alloca [2 x i8], align 1
  %msg.i.i360 = alloca [2 x i8], align 1
  %msg.i.i349 = alloca [2 x i8], align 1
  %msg.i.i337 = alloca [2 x i8], align 1
  %msg.i.i325 = alloca [2 x i8], align 1
  %msg.i.i312 = alloca [2 x i8], align 1
  %msg.i.i299 = alloca [2 x i8], align 1
  %msg.i.i287 = alloca [2 x i8], align 1
  %msg.i.i275 = alloca [2 x i8], align 1
  %msg.i264 = alloca [2 x i8], align 1
  %msg.i253 = alloca [2 x i8], align 1
  %msg.i242 = alloca [2 x i8], align 1
  %msg.i = alloca [2 x i8], align 1
  %msg.i.i228 = alloca [2 x i8], align 1
  %msg.i.i215 = alloca [2 x i8], align 1
  %msg.i.i202 = alloca [2 x i8], align 1
  %msg.i.i191 = alloca [2 x i8], align 1
  %msg.i.i179 = alloca [2 x i8], align 1
  %msg.i.i167 = alloca [2 x i8], align 1
  %msg.i.i154 = alloca [2 x i8], align 1
  %msg.i.i142 = alloca [2 x i8], align 1
  %msg.i.i130 = alloca [2 x i8], align 1
  %msg.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %input to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %input, label %do.body58 [
    i32 0, label %entry.do.body_crit_edge
    i32 1, label %entry.do.body_crit_edge682
    i32 2, label %entry.do.body_crit_edge683
    i32 4, label %entry.do.body_crit_edge684
    i32 5, label %entry.do.body_crit_edge685
    i32 6, label %entry.do.body_crit_edge686
    i32 8, label %entry.do.body8_crit_edge
    i32 9, label %entry.do.body8_crit_edge687
    i32 10, label %entry.do.body8_crit_edge688
    i32 15, label %do.body33
  ]

entry.do.body8_crit_edge688:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8

entry.do.body8_crit_edge687:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8

entry.do.body_crit_edge686:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge685:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge684:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge683:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge682:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge682, %entry.do.body_crit_edge683, %entry.do.body_crit_edge684, %entry.do.body_crit_edge685, %entry.do.body_crit_edge686
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %do.end, label %do.body.do.end4_crit_edge

do.body.do.end4_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %input) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %do.body.do.end4_crit_edge
  %arrayidx.i = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %and7.i = and i8 %3, -4
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i) #5
  %6 = getelementptr inbounds [2 x i8], ptr %msg.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %msg.i.i, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %and7.i, ptr %6, align 1
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %msg.i.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp.not.i.i, label %do.end4.ks0127_and_or.exit_crit_edge, label %do.body.i.i

do.end4.ks0127_and_or.exit_crit_edge:             ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit

do.body.i.i:                                      ; preds = %do.end4
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3.i.i = icmp sgt i32 %9, 0
  br i1 %cmp3.i.i, label %do.end.i.i, label %do.body.i.i.ks0127_and_or.exit_crit_edge

do.body.i.i.ks0127_and_or.exit_crit_edge:         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i) #8
  br label %ks0127_and_or.exit

ks0127_and_or.exit:                               ; preds = %do.end.i.i, %do.body.i.i.ks0127_and_or.exit_crit_edge, %do.end4.ks0127_and_or.exit_crit_edge
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %and7.i, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i) #5
  %and7.i132 = and i8 %3, -68
  %11 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i130) #5
  %13 = getelementptr inbounds [2 x i8], ptr %msg.i.i130, i32 0, i32 1
  %14 = ptrtoint ptr %msg.i.i130 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %msg.i.i130, align 1
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %and7.i132, ptr %13, align 1
  %call.i.i.i134 = call i32 @i2c_transfer_buffer_flags(ptr noundef %12, ptr noundef nonnull %msg.i.i130, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i134)
  %cmp.not.i.i135 = icmp eq i32 %call.i.i.i134, 2
  br i1 %cmp.not.i.i135, label %ks0127_and_or.exit.ks0127_and_or.exit141_crit_edge, label %do.body.i.i137

ks0127_and_or.exit.ks0127_and_or.exit141_crit_edge: ; preds = %ks0127_and_or.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit141

do.body.i.i137:                                   ; preds = %ks0127_and_or.exit
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp3.i.i136 = icmp sgt i32 %16, 0
  br i1 %cmp3.i.i136, label %do.end.i.i140, label %do.body.i.i137.ks0127_and_or.exit141_crit_edge

do.body.i.i137.ks0127_and_or.exit141_crit_edge:   ; preds = %do.body.i.i137
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit141

do.end.i.i140:                                    ; preds = %do.body.i.i137
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i138 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i138) #8
  br label %ks0127_and_or.exit141

ks0127_and_or.exit141:                            ; preds = %do.end.i.i140, %do.body.i.i137.ks0127_and_or.exit141_crit_edge, %ks0127_and_or.exit.ks0127_and_or.exit141_crit_edge
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %and7.i132, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i130) #5
  %conv = trunc i32 %input to i8
  %arrayidx.i143 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %arrayidx.i143 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i143, align 1
  %and7.i144 = and i8 %19, -80
  %or8.i = or i8 %and7.i144, %conv
  %20 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i142) #5
  %22 = getelementptr inbounds [2 x i8], ptr %msg.i.i142, i32 0, i32 1
  %23 = ptrtoint ptr %msg.i.i142 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %msg.i.i142, align 1
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %or8.i, ptr %22, align 1
  %call.i.i.i146 = call i32 @i2c_transfer_buffer_flags(ptr noundef %21, ptr noundef nonnull %msg.i.i142, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i146)
  %cmp.not.i.i147 = icmp eq i32 %call.i.i.i146, 2
  br i1 %cmp.not.i.i147, label %ks0127_and_or.exit141.ks0127_and_or.exit153_crit_edge, label %do.body.i.i149

ks0127_and_or.exit141.ks0127_and_or.exit153_crit_edge: ; preds = %ks0127_and_or.exit141
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit153

do.body.i.i149:                                   ; preds = %ks0127_and_or.exit141
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp3.i.i148 = icmp sgt i32 %25, 0
  br i1 %cmp3.i.i148, label %do.end.i.i152, label %do.body.i.i149.ks0127_and_or.exit153_crit_edge

do.body.i.i149.ks0127_and_or.exit153_crit_edge:   ; preds = %do.body.i.i149
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit153

do.end.i.i152:                                    ; preds = %do.body.i.i149
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i150 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i150) #8
  br label %ks0127_and_or.exit153

ks0127_and_or.exit153:                            ; preds = %do.end.i.i152, %do.body.i.i149.ks0127_and_or.exit153_crit_edge, %ks0127_and_or.exit141.ks0127_and_or.exit153_crit_edge
  %26 = ptrtoint ptr %arrayidx.i143 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %or8.i, ptr %arrayidx.i143, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i142) #5
  %arrayidx.i155 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 3
  %27 = ptrtoint ptr %arrayidx.i155 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i155, align 1
  %and7.i156 = and i8 %28, 112
  %or8.i157 = or i8 %and7.i156, 10
  %29 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i154) #5
  %31 = getelementptr inbounds [2 x i8], ptr %msg.i.i154, i32 0, i32 1
  %32 = ptrtoint ptr %msg.i.i154 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 3, ptr %msg.i.i154, align 1
  %33 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %or8.i157, ptr %31, align 1
  %call.i.i.i159 = call i32 @i2c_transfer_buffer_flags(ptr noundef %30, ptr noundef nonnull %msg.i.i154, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i159)
  %cmp.not.i.i160 = icmp eq i32 %call.i.i.i159, 2
  br i1 %cmp.not.i.i160, label %ks0127_and_or.exit153.ks0127_and_or.exit166_crit_edge, label %do.body.i.i162

ks0127_and_or.exit153.ks0127_and_or.exit166_crit_edge: ; preds = %ks0127_and_or.exit153
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit166

do.body.i.i162:                                   ; preds = %ks0127_and_or.exit153
  %34 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp3.i.i161 = icmp sgt i32 %34, 0
  br i1 %cmp3.i.i161, label %do.end.i.i165, label %do.body.i.i162.ks0127_and_or.exit166_crit_edge

do.body.i.i162.ks0127_and_or.exit166_crit_edge:   ; preds = %do.body.i.i162
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit166

do.end.i.i165:                                    ; preds = %do.body.i.i162
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i163 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i164 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i163) #8
  br label %ks0127_and_or.exit166

ks0127_and_or.exit166:                            ; preds = %do.end.i.i165, %do.body.i.i162.ks0127_and_or.exit166_crit_edge, %ks0127_and_or.exit153.ks0127_and_or.exit166_crit_edge
  %35 = ptrtoint ptr %arrayidx.i155 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %or8.i157, ptr %arrayidx.i155, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i154) #5
  %arrayidx.i168 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 4
  %36 = ptrtoint ptr %arrayidx.i168 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i168, align 1
  %and7.i169 = and i8 %37, 3
  %38 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i167) #5
  %40 = getelementptr inbounds [2 x i8], ptr %msg.i.i167, i32 0, i32 1
  %41 = ptrtoint ptr %msg.i.i167 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 4, ptr %msg.i.i167, align 1
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %and7.i169, ptr %40, align 1
  %call.i.i.i171 = call i32 @i2c_transfer_buffer_flags(ptr noundef %39, ptr noundef nonnull %msg.i.i167, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i171)
  %cmp.not.i.i172 = icmp eq i32 %call.i.i.i171, 2
  br i1 %cmp.not.i.i172, label %ks0127_and_or.exit166.ks0127_and_or.exit178_crit_edge, label %do.body.i.i174

ks0127_and_or.exit166.ks0127_and_or.exit178_crit_edge: ; preds = %ks0127_and_or.exit166
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit178

do.body.i.i174:                                   ; preds = %ks0127_and_or.exit166
  %43 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp3.i.i173 = icmp sgt i32 %43, 0
  br i1 %cmp3.i.i173, label %do.end.i.i177, label %do.body.i.i174.ks0127_and_or.exit178_crit_edge

do.body.i.i174.ks0127_and_or.exit178_crit_edge:   ; preds = %do.body.i.i174
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit178

do.end.i.i177:                                    ; preds = %do.body.i.i174
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i175 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i176 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i175) #8
  br label %ks0127_and_or.exit178

ks0127_and_or.exit178:                            ; preds = %do.end.i.i177, %do.body.i.i174.ks0127_and_or.exit178_crit_edge, %ks0127_and_or.exit166.ks0127_and_or.exit178_crit_edge
  %44 = ptrtoint ptr %arrayidx.i168 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %and7.i169, ptr %arrayidx.i168, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i167) #5
  %arrayidx.i180 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 47
  %45 = ptrtoint ptr %arrayidx.i180 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i180, align 1
  %and7.i181 = and i8 %46, -49
  %47 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i179) #5
  %49 = getelementptr inbounds [2 x i8], ptr %msg.i.i179, i32 0, i32 1
  %50 = ptrtoint ptr %msg.i.i179 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 47, ptr %msg.i.i179, align 1
  %51 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %and7.i181, ptr %49, align 1
  %call.i.i.i183 = call i32 @i2c_transfer_buffer_flags(ptr noundef %48, ptr noundef nonnull %msg.i.i179, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i183)
  %cmp.not.i.i184 = icmp eq i32 %call.i.i.i183, 2
  br i1 %cmp.not.i.i184, label %ks0127_and_or.exit178.ks0127_and_or.exit190_crit_edge, label %do.body.i.i186

ks0127_and_or.exit178.ks0127_and_or.exit190_crit_edge: ; preds = %ks0127_and_or.exit178
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit190

do.body.i.i186:                                   ; preds = %ks0127_and_or.exit178
  %52 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp3.i.i185 = icmp sgt i32 %52, 0
  br i1 %cmp3.i.i185, label %do.end.i.i189, label %do.body.i.i186.ks0127_and_or.exit190_crit_edge

do.body.i.i186.ks0127_and_or.exit190_crit_edge:   ; preds = %do.body.i.i186
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit190

do.end.i.i189:                                    ; preds = %do.body.i.i186
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i187 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i188 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i187) #8
  br label %ks0127_and_or.exit190

ks0127_and_or.exit190:                            ; preds = %do.end.i.i189, %do.body.i.i186.ks0127_and_or.exit190_crit_edge, %ks0127_and_or.exit178.ks0127_and_or.exit190_crit_edge
  %53 = ptrtoint ptr %arrayidx.i180 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %and7.i181, ptr %arrayidx.i180, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i179) #5
  %54 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 15), align 1
  %55 = or i8 %54, 12
  %arrayidx.i192 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 15
  %56 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i191) #5
  %58 = getelementptr inbounds [2 x i8], ptr %msg.i.i191, i32 0, i32 1
  %59 = ptrtoint ptr %msg.i.i191 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 15, ptr %msg.i.i191, align 1
  %60 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %55, ptr %58, align 1
  %call.i.i.i194 = call i32 @i2c_transfer_buffer_flags(ptr noundef %57, ptr noundef nonnull %msg.i.i191, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i194)
  %cmp.not.i.i195 = icmp eq i32 %call.i.i.i194, 2
  br i1 %cmp.not.i.i195, label %ks0127_and_or.exit190.ks0127_and_or.exit201_crit_edge, label %do.body.i.i197

ks0127_and_or.exit190.ks0127_and_or.exit201_crit_edge: ; preds = %ks0127_and_or.exit190
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit201

do.body.i.i197:                                   ; preds = %ks0127_and_or.exit190
  %61 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp3.i.i196 = icmp sgt i32 %61, 0
  br i1 %cmp3.i.i196, label %do.end.i.i200, label %do.body.i.i197.ks0127_and_or.exit201_crit_edge

do.body.i.i197.ks0127_and_or.exit201_crit_edge:   ; preds = %do.body.i.i197
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit201

do.end.i.i200:                                    ; preds = %do.body.i.i197
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i198 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i199 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i198) #8
  br label %ks0127_and_or.exit201

ks0127_and_or.exit201:                            ; preds = %do.end.i.i200, %do.body.i.i197.ks0127_and_or.exit201_crit_edge, %ks0127_and_or.exit190.ks0127_and_or.exit201_crit_edge
  %62 = ptrtoint ptr %arrayidx.i192 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %55, ptr %arrayidx.i192, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i191) #5
  %arrayidx.i203 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 23
  %63 = ptrtoint ptr %arrayidx.i203 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.i203, align 1
  %and7.i204 = and i8 %64, 8
  %or8.i205 = or i8 %and7.i204, -127
  %65 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i202) #5
  %67 = getelementptr inbounds [2 x i8], ptr %msg.i.i202, i32 0, i32 1
  %68 = ptrtoint ptr %msg.i.i202 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 23, ptr %msg.i.i202, align 1
  %69 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %or8.i205, ptr %67, align 1
  %call.i.i.i207 = call i32 @i2c_transfer_buffer_flags(ptr noundef %66, ptr noundef nonnull %msg.i.i202, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i207)
  %cmp.not.i.i208 = icmp eq i32 %call.i.i.i207, 2
  br i1 %cmp.not.i.i208, label %ks0127_and_or.exit201.ks0127_and_or.exit214_crit_edge, label %do.body.i.i210

ks0127_and_or.exit201.ks0127_and_or.exit214_crit_edge: ; preds = %ks0127_and_or.exit201
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit214

do.body.i.i210:                                   ; preds = %ks0127_and_or.exit201
  %70 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp3.i.i209 = icmp sgt i32 %70, 0
  br i1 %cmp3.i.i209, label %do.end.i.i213, label %do.body.i.i210.ks0127_and_or.exit214_crit_edge

do.body.i.i210.ks0127_and_or.exit214_crit_edge:   ; preds = %do.body.i.i210
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit214

do.end.i.i213:                                    ; preds = %do.body.i.i210
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i211 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i212 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i211) #8
  br label %ks0127_and_or.exit214

ks0127_and_or.exit214:                            ; preds = %do.end.i.i213, %do.body.i.i210.ks0127_and_or.exit214_crit_edge, %ks0127_and_or.exit201.ks0127_and_or.exit214_crit_edge
  %71 = ptrtoint ptr %arrayidx.i203 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %or8.i205, ptr %arrayidx.i203, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i202) #5
  %arrayidx.i216 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 25
  %72 = ptrtoint ptr %arrayidx.i216 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.i216, align 1
  %and7.i217 = and i8 %73, 15
  %or8.i218 = or i8 %and7.i217, -112
  %74 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i215) #5
  %76 = getelementptr inbounds [2 x i8], ptr %msg.i.i215, i32 0, i32 1
  %77 = ptrtoint ptr %msg.i.i215 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 25, ptr %msg.i.i215, align 1
  %78 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %or8.i218, ptr %76, align 1
  %call.i.i.i220 = call i32 @i2c_transfer_buffer_flags(ptr noundef %75, ptr noundef nonnull %msg.i.i215, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i220)
  %cmp.not.i.i221 = icmp eq i32 %call.i.i.i220, 2
  br i1 %cmp.not.i.i221, label %ks0127_and_or.exit214.ks0127_and_or.exit227_crit_edge, label %do.body.i.i223

ks0127_and_or.exit214.ks0127_and_or.exit227_crit_edge: ; preds = %ks0127_and_or.exit214
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit227

do.body.i.i223:                                   ; preds = %ks0127_and_or.exit214
  %79 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp3.i.i222 = icmp sgt i32 %79, 0
  br i1 %cmp3.i.i222, label %do.end.i.i226, label %do.body.i.i223.ks0127_and_or.exit227_crit_edge

do.body.i.i223.ks0127_and_or.exit227_crit_edge:   ; preds = %do.body.i.i223
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit227

do.end.i.i226:                                    ; preds = %do.body.i.i223
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i224 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i225 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i224) #8
  br label %ks0127_and_or.exit227

ks0127_and_or.exit227:                            ; preds = %do.end.i.i226, %do.body.i.i223.ks0127_and_or.exit227_crit_edge, %ks0127_and_or.exit214.ks0127_and_or.exit227_crit_edge
  %80 = ptrtoint ptr %arrayidx.i216 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %or8.i218, ptr %arrayidx.i216, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i215) #5
  %arrayidx.i229 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 19
  %81 = ptrtoint ptr %arrayidx.i229 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx.i229, align 1
  %and7.i230 = and i8 %82, 15
  %or8.i231 = or i8 %and7.i230, -112
  %83 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i228) #5
  %85 = getelementptr inbounds [2 x i8], ptr %msg.i.i228, i32 0, i32 1
  %86 = ptrtoint ptr %msg.i.i228 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 19, ptr %msg.i.i228, align 1
  %87 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %or8.i231, ptr %85, align 1
  %call.i.i.i233 = call i32 @i2c_transfer_buffer_flags(ptr noundef %84, ptr noundef nonnull %msg.i.i228, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i233)
  %cmp.not.i.i234 = icmp eq i32 %call.i.i.i233, 2
  br i1 %cmp.not.i.i234, label %ks0127_and_or.exit227.ks0127_and_or.exit240_crit_edge, label %do.body.i.i236

ks0127_and_or.exit227.ks0127_and_or.exit240_crit_edge: ; preds = %ks0127_and_or.exit227
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit240

do.body.i.i236:                                   ; preds = %ks0127_and_or.exit227
  %88 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp3.i.i235 = icmp sgt i32 %88, 0
  br i1 %cmp3.i.i235, label %do.end.i.i239, label %do.body.i.i236.ks0127_and_or.exit240_crit_edge

do.body.i.i236.ks0127_and_or.exit240_crit_edge:   ; preds = %do.body.i.i236
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit240

do.end.i.i239:                                    ; preds = %do.body.i.i236
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i237 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i238 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i237) #8
  br label %ks0127_and_or.exit240

ks0127_and_or.exit240:                            ; preds = %do.end.i.i239, %do.body.i.i236.ks0127_and_or.exit240_crit_edge, %ks0127_and_or.exit227.ks0127_and_or.exit240_crit_edge
  %89 = ptrtoint ptr %arrayidx.i229 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %or8.i231, ptr %arrayidx.i229, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i228) #5
  %90 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 43), align 1
  %91 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i) #5
  %93 = getelementptr inbounds [2 x i8], ptr %msg.i, i32 0, i32 1
  %94 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 43, ptr %msg.i, align 1
  %95 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %90, ptr %93, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %92, ptr noundef nonnull %msg.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i, label %ks0127_and_or.exit240.ks0127_write.exit_crit_edge, label %do.body.i

ks0127_and_or.exit240.ks0127_write.exit_crit_edge: ; preds = %ks0127_and_or.exit240
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit

do.body.i:                                        ; preds = %ks0127_and_or.exit240
  %96 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp3.i = icmp sgt i32 %96, 0
  br i1 %cmp3.i, label %do.end.i, label %do.body.i.ks0127_write.exit_crit_edge

do.body.i.ks0127_write.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i) #8
  br label %ks0127_write.exit

ks0127_write.exit:                                ; preds = %do.end.i, %do.body.i.ks0127_write.exit_crit_edge, %ks0127_and_or.exit240.ks0127_write.exit_crit_edge
  %arrayidx.i241 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 43
  %97 = ptrtoint ptr %arrayidx.i241 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %90, ptr %arrayidx.i241, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i) #5
  %98 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 44), align 1
  %99 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i242) #5
  %101 = getelementptr inbounds [2 x i8], ptr %msg.i242, i32 0, i32 1
  %102 = ptrtoint ptr %msg.i242 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 44, ptr %msg.i242, align 1
  %103 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %98, ptr %101, align 1
  %call.i.i244 = call i32 @i2c_transfer_buffer_flags(ptr noundef %100, ptr noundef nonnull %msg.i242, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i244)
  %cmp.not.i245 = icmp eq i32 %call.i.i244, 2
  br i1 %cmp.not.i245, label %ks0127_write.exit.ks0127_write.exit252_crit_edge, label %do.body.i247

ks0127_write.exit.ks0127_write.exit252_crit_edge: ; preds = %ks0127_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit252

do.body.i247:                                     ; preds = %ks0127_write.exit
  %104 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp3.i246 = icmp sgt i32 %104, 0
  br i1 %cmp3.i246, label %do.end.i250, label %do.body.i247.ks0127_write.exit252_crit_edge

do.body.i247.ks0127_write.exit252_crit_edge:      ; preds = %do.body.i247
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit252

do.end.i250:                                      ; preds = %do.body.i247
  call void @__sanitizer_cov_trace_pc() #7
  %name.i248 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i249 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i248) #8
  br label %ks0127_write.exit252

ks0127_write.exit252:                             ; preds = %do.end.i250, %do.body.i247.ks0127_write.exit252_crit_edge, %ks0127_write.exit.ks0127_write.exit252_crit_edge
  %arrayidx.i251 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 44
  %105 = ptrtoint ptr %arrayidx.i251 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %98, ptr %arrayidx.i251, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i242) #5
  %106 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 41), align 1
  %107 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i253) #5
  %109 = getelementptr inbounds [2 x i8], ptr %msg.i253, i32 0, i32 1
  %110 = ptrtoint ptr %msg.i253 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 41, ptr %msg.i253, align 1
  %111 = ptrtoint ptr %109 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %106, ptr %109, align 1
  %call.i.i255 = call i32 @i2c_transfer_buffer_flags(ptr noundef %108, ptr noundef nonnull %msg.i253, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i255)
  %cmp.not.i256 = icmp eq i32 %call.i.i255, 2
  br i1 %cmp.not.i256, label %ks0127_write.exit252.ks0127_write.exit263_crit_edge, label %do.body.i258

ks0127_write.exit252.ks0127_write.exit263_crit_edge: ; preds = %ks0127_write.exit252
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit263

do.body.i258:                                     ; preds = %ks0127_write.exit252
  %112 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp3.i257 = icmp sgt i32 %112, 0
  br i1 %cmp3.i257, label %do.end.i261, label %do.body.i258.ks0127_write.exit263_crit_edge

do.body.i258.ks0127_write.exit263_crit_edge:      ; preds = %do.body.i258
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit263

do.end.i261:                                      ; preds = %do.body.i258
  call void @__sanitizer_cov_trace_pc() #7
  %name.i259 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i260 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i259) #8
  br label %ks0127_write.exit263

ks0127_write.exit263:                             ; preds = %do.end.i261, %do.body.i258.ks0127_write.exit263_crit_edge, %ks0127_write.exit252.ks0127_write.exit263_crit_edge
  %arrayidx.i262 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 41
  %113 = ptrtoint ptr %arrayidx.i262 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %106, ptr %arrayidx.i262, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i253) #5
  %114 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 42), align 1
  %115 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i264) #5
  %117 = getelementptr inbounds [2 x i8], ptr %msg.i264, i32 0, i32 1
  %118 = ptrtoint ptr %msg.i264 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 42, ptr %msg.i264, align 1
  %119 = ptrtoint ptr %117 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %114, ptr %117, align 1
  %call.i.i266 = call i32 @i2c_transfer_buffer_flags(ptr noundef %116, ptr noundef nonnull %msg.i264, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i266)
  %cmp.not.i267 = icmp eq i32 %call.i.i266, 2
  br i1 %cmp.not.i267, label %ks0127_write.exit263.ks0127_write.exit274_crit_edge, label %do.body.i269

ks0127_write.exit263.ks0127_write.exit274_crit_edge: ; preds = %ks0127_write.exit263
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit274

do.body.i269:                                     ; preds = %ks0127_write.exit263
  %120 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp3.i268 = icmp sgt i32 %120, 0
  br i1 %cmp3.i268, label %do.end.i272, label %do.body.i269.ks0127_write.exit274_crit_edge

do.body.i269.ks0127_write.exit274_crit_edge:      ; preds = %do.body.i269
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit274

do.end.i272:                                      ; preds = %do.body.i269
  call void @__sanitizer_cov_trace_pc() #7
  %name.i270 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i271 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i270) #8
  br label %ks0127_write.exit274

ks0127_write.exit274:                             ; preds = %do.end.i272, %do.body.i269.ks0127_write.exit274_crit_edge, %ks0127_write.exit263.ks0127_write.exit274_crit_edge
  %arrayidx.i273 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 42
  %121 = ptrtoint ptr %arrayidx.i273 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %114, ptr %arrayidx.i273, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i264) #5
  br label %sw.epilog

do.body8:                                         ; preds = %entry.do.body8_crit_edge, %entry.do.body8_crit_edge687, %entry.do.body8_crit_edge688
  %122 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp9 = icmp sgt i32 %122, 0
  br i1 %cmp9, label %do.end14, label %do.body8.do.end21_crit_edge

do.body8.do.end21_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end21

do.end14:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #7
  %name16 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name16, i32 noundef %input) #8
  br label %do.end21

do.end21:                                         ; preds = %do.end14, %do.body8.do.end21_crit_edge
  %arrayidx.i276 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 1
  %123 = ptrtoint ptr %arrayidx.i276 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx.i276, align 1
  %and7.i277 = and i8 %124, -4
  %dev_priv.i.i.i278 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %125 = ptrtoint ptr %dev_priv.i.i.i278 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev_priv.i.i.i278, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i275) #5
  %127 = getelementptr inbounds [2 x i8], ptr %msg.i.i275, i32 0, i32 1
  %128 = ptrtoint ptr %msg.i.i275 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 1, ptr %msg.i.i275, align 1
  %129 = ptrtoint ptr %127 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %and7.i277, ptr %127, align 1
  %call.i.i.i279 = call i32 @i2c_transfer_buffer_flags(ptr noundef %126, ptr noundef nonnull %msg.i.i275, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i279)
  %cmp.not.i.i280 = icmp eq i32 %call.i.i.i279, 2
  br i1 %cmp.not.i.i280, label %do.end21.ks0127_and_or.exit286_crit_edge, label %do.body.i.i282

do.end21.ks0127_and_or.exit286_crit_edge:         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit286

do.body.i.i282:                                   ; preds = %do.end21
  %130 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp3.i.i281 = icmp sgt i32 %130, 0
  br i1 %cmp3.i.i281, label %do.end.i.i285, label %do.body.i.i282.ks0127_and_or.exit286_crit_edge

do.body.i.i282.ks0127_and_or.exit286_crit_edge:   ; preds = %do.body.i.i282
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit286

do.end.i.i285:                                    ; preds = %do.body.i.i282
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i283 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i284 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i283) #8
  br label %ks0127_and_or.exit286

ks0127_and_or.exit286:                            ; preds = %do.end.i.i285, %do.body.i.i282.ks0127_and_or.exit286_crit_edge, %do.end21.ks0127_and_or.exit286_crit_edge
  %131 = ptrtoint ptr %arrayidx.i276 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %and7.i277, ptr %arrayidx.i276, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i275) #5
  %and7.i289 = and i8 %124, -68
  %132 = ptrtoint ptr %dev_priv.i.i.i278 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev_priv.i.i.i278, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i287) #5
  %134 = getelementptr inbounds [2 x i8], ptr %msg.i.i287, i32 0, i32 1
  %135 = ptrtoint ptr %msg.i.i287 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 1, ptr %msg.i.i287, align 1
  %136 = ptrtoint ptr %134 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %and7.i289, ptr %134, align 1
  %call.i.i.i291 = call i32 @i2c_transfer_buffer_flags(ptr noundef %133, ptr noundef nonnull %msg.i.i287, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i291)
  %cmp.not.i.i292 = icmp eq i32 %call.i.i.i291, 2
  br i1 %cmp.not.i.i292, label %ks0127_and_or.exit286.ks0127_and_or.exit298_crit_edge, label %do.body.i.i294

ks0127_and_or.exit286.ks0127_and_or.exit298_crit_edge: ; preds = %ks0127_and_or.exit286
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit298

do.body.i.i294:                                   ; preds = %ks0127_and_or.exit286
  %137 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp3.i.i293 = icmp sgt i32 %137, 0
  br i1 %cmp3.i.i293, label %do.end.i.i297, label %do.body.i.i294.ks0127_and_or.exit298_crit_edge

do.body.i.i294.ks0127_and_or.exit298_crit_edge:   ; preds = %do.body.i.i294
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit298

do.end.i.i297:                                    ; preds = %do.body.i.i294
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i295 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i296 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i295) #8
  br label %ks0127_and_or.exit298

ks0127_and_or.exit298:                            ; preds = %do.end.i.i297, %do.body.i.i294.ks0127_and_or.exit298_crit_edge, %ks0127_and_or.exit286.ks0127_and_or.exit298_crit_edge
  %138 = ptrtoint ptr %arrayidx.i276 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %and7.i289, ptr %arrayidx.i276, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i287) #5
  %conv22 = trunc i32 %input to i8
  %arrayidx.i300 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 2
  %139 = ptrtoint ptr %arrayidx.i300 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx.i300, align 1
  %and7.i301 = and i8 %140, -80
  %or8.i302 = or i8 %and7.i301, %conv22
  %141 = ptrtoint ptr %dev_priv.i.i.i278 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev_priv.i.i.i278, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i299) #5
  %143 = getelementptr inbounds [2 x i8], ptr %msg.i.i299, i32 0, i32 1
  %144 = ptrtoint ptr %msg.i.i299 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 2, ptr %msg.i.i299, align 1
  %145 = ptrtoint ptr %143 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %or8.i302, ptr %143, align 1
  %call.i.i.i304 = call i32 @i2c_transfer_buffer_flags(ptr noundef %142, ptr noundef nonnull %msg.i.i299, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i304)
  %cmp.not.i.i305 = icmp eq i32 %call.i.i.i304, 2
  br i1 %cmp.not.i.i305, label %ks0127_and_or.exit298.ks0127_and_or.exit311_crit_edge, label %do.body.i.i307

ks0127_and_or.exit298.ks0127_and_or.exit311_crit_edge: ; preds = %ks0127_and_or.exit298
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit311

do.body.i.i307:                                   ; preds = %ks0127_and_or.exit298
  %146 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp3.i.i306 = icmp sgt i32 %146, 0
  br i1 %cmp3.i.i306, label %do.end.i.i310, label %do.body.i.i307.ks0127_and_or.exit311_crit_edge

do.body.i.i307.ks0127_and_or.exit311_crit_edge:   ; preds = %do.body.i.i307
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit311

do.end.i.i310:                                    ; preds = %do.body.i.i307
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i308 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i309 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i308) #8
  br label %ks0127_and_or.exit311

ks0127_and_or.exit311:                            ; preds = %do.end.i.i310, %do.body.i.i307.ks0127_and_or.exit311_crit_edge, %ks0127_and_or.exit298.ks0127_and_or.exit311_crit_edge
  %147 = ptrtoint ptr %arrayidx.i300 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %or8.i302, ptr %arrayidx.i300, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i299) #5
  %arrayidx.i313 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 3
  %148 = ptrtoint ptr %arrayidx.i313 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx.i313, align 1
  %and7.i314 = and i8 %149, 112
  %or8.i315 = or i8 %and7.i314, 10
  %150 = ptrtoint ptr %dev_priv.i.i.i278 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev_priv.i.i.i278, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i312) #5
  %152 = getelementptr inbounds [2 x i8], ptr %msg.i.i312, i32 0, i32 1
  %153 = ptrtoint ptr %msg.i.i312 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 3, ptr %msg.i.i312, align 1
  %154 = ptrtoint ptr %152 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %or8.i315, ptr %152, align 1
  %call.i.i.i317 = call i32 @i2c_transfer_buffer_flags(ptr noundef %151, ptr noundef nonnull %msg.i.i312, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i317)
  %cmp.not.i.i318 = icmp eq i32 %call.i.i.i317, 2
  br i1 %cmp.not.i.i318, label %ks0127_and_or.exit311.ks0127_and_or.exit324_crit_edge, label %do.body.i.i320

ks0127_and_or.exit311.ks0127_and_or.exit324_crit_edge: ; preds = %ks0127_and_or.exit311
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit324

do.body.i.i320:                                   ; preds = %ks0127_and_or.exit311
  %155 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %cmp3.i.i319 = icmp sgt i32 %155, 0
  br i1 %cmp3.i.i319, label %do.end.i.i323, label %do.body.i.i320.ks0127_and_or.exit324_crit_edge

do.body.i.i320.ks0127_and_or.exit324_crit_edge:   ; preds = %do.body.i.i320
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit324

do.end.i.i323:                                    ; preds = %do.body.i.i320
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i321 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i322 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i321) #8
  br label %ks0127_and_or.exit324

ks0127_and_or.exit324:                            ; preds = %do.end.i.i323, %do.body.i.i320.ks0127_and_or.exit324_crit_edge, %ks0127_and_or.exit311.ks0127_and_or.exit324_crit_edge
  %156 = ptrtoint ptr %arrayidx.i313 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %or8.i315, ptr %arrayidx.i313, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i312) #5
  %arrayidx.i326 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 4
  %157 = ptrtoint ptr %arrayidx.i326 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx.i326, align 1
  %and7.i327 = and i8 %158, 3
  %159 = ptrtoint ptr %dev_priv.i.i.i278 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %dev_priv.i.i.i278, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i325) #5
  %161 = getelementptr inbounds [2 x i8], ptr %msg.i.i325, i32 0, i32 1
  %162 = ptrtoint ptr %msg.i.i325 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 4, ptr %msg.i.i325, align 1
  %163 = ptrtoint ptr %161 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %and7.i327, ptr %161, align 1
  %call.i.i.i329 = call i32 @i2c_transfer_buffer_flags(ptr noundef %160, ptr noundef nonnull %msg.i.i325, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i329)
  %cmp.not.i.i330 = icmp eq i32 %call.i.i.i329, 2
  br i1 %cmp.not.i.i330, label %ks0127_and_or.exit324.ks0127_and_or.exit336_crit_edge, label %do.body.i.i332

ks0127_and_or.exit324.ks0127_and_or.exit336_crit_edge: ; preds = %ks0127_and_or.exit324
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit336

do.body.i.i332:                                   ; preds = %ks0127_and_or.exit324
  %164 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %cmp3.i.i331 = icmp sgt i32 %164, 0
  br i1 %cmp3.i.i331, label %do.end.i.i335, label %do.body.i.i332.ks0127_and_or.exit336_crit_edge

do.body.i.i332.ks0127_and_or.exit336_crit_edge:   ; preds = %do.body.i.i332
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit336

do.end.i.i335:                                    ; preds = %do.body.i.i332
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i333 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i334 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i333) #8
  br label %ks0127_and_or.exit336

ks0127_and_or.exit336:                            ; preds = %do.end.i.i335, %do.body.i.i332.ks0127_and_or.exit336_crit_edge, %ks0127_and_or.exit324.ks0127_and_or.exit336_crit_edge
  %165 = ptrtoint ptr %arrayidx.i326 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %and7.i327, ptr %arrayidx.i326, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i325) #5
  %arrayidx.i338 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 47
  %166 = ptrtoint ptr %arrayidx.i338 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx.i338, align 1
  %and7.i339 = and i8 %167, -49
  %168 = ptrtoint ptr %dev_priv.i.i.i278 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dev_priv.i.i.i278, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i337) #5
  %170 = getelementptr inbounds [2 x i8], ptr %msg.i.i337, i32 0, i32 1
  %171 = ptrtoint ptr %msg.i.i337 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 47, ptr %msg.i.i337, align 1
  %172 = ptrtoint ptr %170 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %and7.i339, ptr %170, align 1
  %call.i.i.i341 = call i32 @i2c_transfer_buffer_flags(ptr noundef %169, ptr noundef nonnull %msg.i.i337, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i341)
  %cmp.not.i.i342 = icmp eq i32 %call.i.i.i341, 2
  br i1 %cmp.not.i.i342, label %ks0127_and_or.exit336.ks0127_and_or.exit348_crit_edge, label %do.body.i.i344

ks0127_and_or.exit336.ks0127_and_or.exit348_crit_edge: ; preds = %ks0127_and_or.exit336
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit348

do.body.i.i344:                                   ; preds = %ks0127_and_or.exit336
  %173 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %cmp3.i.i343 = icmp sgt i32 %173, 0
  br i1 %cmp3.i.i343, label %do.end.i.i347, label %do.body.i.i344.ks0127_and_or.exit348_crit_edge

do.body.i.i344.ks0127_and_or.exit348_crit_edge:   ; preds = %do.body.i.i344
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit348

do.end.i.i347:                                    ; preds = %do.body.i.i344
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i345 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i346 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i345) #8
  br label %ks0127_and_or.exit348

ks0127_and_or.exit348:                            ; preds = %do.end.i.i347, %do.body.i.i344.ks0127_and_or.exit348_crit_edge, %ks0127_and_or.exit336.ks0127_and_or.exit348_crit_edge
  %174 = ptrtoint ptr %arrayidx.i338 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %and7.i339, ptr %arrayidx.i338, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i337) #5
  %175 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 15), align 1
  %arrayidx.i350 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 15
  %176 = ptrtoint ptr %dev_priv.i.i.i278 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dev_priv.i.i.i278, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i349) #5
  %178 = getelementptr inbounds [2 x i8], ptr %msg.i.i349, i32 0, i32 1
  %179 = ptrtoint ptr %msg.i.i349 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 15, ptr %msg.i.i349, align 1
  %180 = ptrtoint ptr %178 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %175, ptr %178, align 1
  %call.i.i.i352 = call i32 @i2c_transfer_buffer_flags(ptr noundef %177, ptr noundef nonnull %msg.i.i349, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i352)
  %cmp.not.i.i353 = icmp eq i32 %call.i.i.i352, 2
  br i1 %cmp.not.i.i353, label %ks0127_and_or.exit348.ks0127_and_or.exit359_crit_edge, label %do.body.i.i355

ks0127_and_or.exit348.ks0127_and_or.exit359_crit_edge: ; preds = %ks0127_and_or.exit348
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit359

do.body.i.i355:                                   ; preds = %ks0127_and_or.exit348
  %181 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %cmp3.i.i354 = icmp sgt i32 %181, 0
  br i1 %cmp3.i.i354, label %do.end.i.i358, label %do.body.i.i355.ks0127_and_or.exit359_crit_edge

do.body.i.i355.ks0127_and_or.exit359_crit_edge:   ; preds = %do.body.i.i355
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit359

do.end.i.i358:                                    ; preds = %do.body.i.i355
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i356 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i357 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i356) #8
  br label %ks0127_and_or.exit359

ks0127_and_or.exit359:                            ; preds = %do.end.i.i358, %do.body.i.i355.ks0127_and_or.exit359_crit_edge, %ks0127_and_or.exit348.ks0127_and_or.exit359_crit_edge
  %182 = ptrtoint ptr %arrayidx.i350 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %175, ptr %arrayidx.i350, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i349) #5
  %183 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 23), align 1
  %184 = and i8 %183, -16
  %arrayidx.i361 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 23
  %185 = ptrtoint ptr %arrayidx.i361 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %arrayidx.i361, align 1
  %and7.i362 = and i8 %186, 8
  %187 = or i8 %184, %and7.i362
  %or8.i363 = or i8 %187, 1
  %188 = ptrtoint ptr %dev_priv.i.i.i278 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %dev_priv.i.i.i278, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i360) #5
  %190 = getelementptr inbounds [2 x i8], ptr %msg.i.i360, i32 0, i32 1
  %191 = ptrtoint ptr %msg.i.i360 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 23, ptr %msg.i.i360, align 1
  %192 = ptrtoint ptr %190 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %or8.i363, ptr %190, align 1
  %call.i.i.i365 = call i32 @i2c_transfer_buffer_flags(ptr noundef %189, ptr noundef nonnull %msg.i.i360, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i365)
  %cmp.not.i.i366 = icmp eq i32 %call.i.i.i365, 2
  br i1 %cmp.not.i.i366, label %ks0127_and_or.exit359.ks0127_and_or.exit372_crit_edge, label %do.body.i.i368

ks0127_and_or.exit359.ks0127_and_or.exit372_crit_edge: ; preds = %ks0127_and_or.exit359
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit372

do.body.i.i368:                                   ; preds = %ks0127_and_or.exit359
  %193 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %cmp3.i.i367 = icmp sgt i32 %193, 0
  br i1 %cmp3.i.i367, label %do.end.i.i371, label %do.body.i.i368.ks0127_and_or.exit372_crit_edge

do.body.i.i368.ks0127_and_or.exit372_crit_edge:   ; preds = %do.body.i.i368
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit372

do.end.i.i371:                                    ; preds = %do.body.i.i368
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i369 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i370 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i369) #8
  br label %ks0127_and_or.exit372

ks0127_and_or.exit372:                            ; preds = %do.end.i.i371, %do.body.i.i368.ks0127_and_or.exit372_crit_edge, %ks0127_and_or.exit359.ks0127_and_or.exit372_crit_edge
  %194 = ptrtoint ptr %arrayidx.i361 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %or8.i363, ptr %arrayidx.i361, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i360) #5
  %195 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 25), align 1
  %196 = and i8 %195, -16
  %arrayidx.i374 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 25
  %197 = ptrtoint ptr %arrayidx.i374 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %arrayidx.i374, align 1
  %and7.i375 = and i8 %198, 15
  %or8.i376 = or i8 %and7.i375, %196
  %199 = ptrtoint ptr %dev_priv.i.i.i278 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %dev_priv.i.i.i278, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i373) #5
  %201 = getelementptr inbounds [2 x i8], ptr %msg.i.i373, i32 0, i32 1
  %202 = ptrtoint ptr %msg.i.i373 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 25, ptr %msg.i.i373, align 1
  %203 = ptrtoint ptr %201 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %or8.i376, ptr %201, align 1
  %call.i.i.i378 = call i32 @i2c_transfer_buffer_flags(ptr noundef %200, ptr noundef nonnull %msg.i.i373, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i378)
  %cmp.not.i.i379 = icmp eq i32 %call.i.i.i378, 2
  br i1 %cmp.not.i.i379, label %ks0127_and_or.exit372.ks0127_and_or.exit385_crit_edge, label %do.body.i.i381

ks0127_and_or.exit372.ks0127_and_or.exit385_crit_edge: ; preds = %ks0127_and_or.exit372
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit385

do.body.i.i381:                                   ; preds = %ks0127_and_or.exit372
  %204 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %cmp3.i.i380 = icmp sgt i32 %204, 0
  br i1 %cmp3.i.i380, label %do.end.i.i384, label %do.body.i.i381.ks0127_and_or.exit385_crit_edge

do.body.i.i381.ks0127_and_or.exit385_crit_edge:   ; preds = %do.body.i.i381
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit385

do.end.i.i384:                                    ; preds = %do.body.i.i381
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i382 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i383 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i382) #8
  br label %ks0127_and_or.exit385

ks0127_and_or.exit385:                            ; preds = %do.end.i.i384, %do.body.i.i381.ks0127_and_or.exit385_crit_edge, %ks0127_and_or.exit372.ks0127_and_or.exit385_crit_edge
  %205 = ptrtoint ptr %arrayidx.i374 to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %or8.i376, ptr %arrayidx.i374, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i373) #5
  %206 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 19), align 1
  %207 = and i8 %206, -16
  %arrayidx.i387 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 19
  %208 = ptrtoint ptr %arrayidx.i387 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx.i387, align 1
  %and7.i388 = and i8 %209, 15
  %or8.i389 = or i8 %and7.i388, %207
  %210 = ptrtoint ptr %dev_priv.i.i.i278 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %dev_priv.i.i.i278, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i386) #5
  %212 = getelementptr inbounds [2 x i8], ptr %msg.i.i386, i32 0, i32 1
  %213 = ptrtoint ptr %msg.i.i386 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 19, ptr %msg.i.i386, align 1
  %214 = ptrtoint ptr %212 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %or8.i389, ptr %212, align 1
  %call.i.i.i391 = call i32 @i2c_transfer_buffer_flags(ptr noundef %211, ptr noundef nonnull %msg.i.i386, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i391)
  %cmp.not.i.i392 = icmp eq i32 %call.i.i.i391, 2
  br i1 %cmp.not.i.i392, label %ks0127_and_or.exit385.ks0127_and_or.exit398_crit_edge, label %do.body.i.i394

ks0127_and_or.exit385.ks0127_and_or.exit398_crit_edge: ; preds = %ks0127_and_or.exit385
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit398

do.body.i.i394:                                   ; preds = %ks0127_and_or.exit385
  %215 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %cmp3.i.i393 = icmp sgt i32 %215, 0
  br i1 %cmp3.i.i393, label %do.end.i.i397, label %do.body.i.i394.ks0127_and_or.exit398_crit_edge

do.body.i.i394.ks0127_and_or.exit398_crit_edge:   ; preds = %do.body.i.i394
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit398

do.end.i.i397:                                    ; preds = %do.body.i.i394
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i395 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i396 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i395) #8
  br label %ks0127_and_or.exit398

ks0127_and_or.exit398:                            ; preds = %do.end.i.i397, %do.body.i.i394.ks0127_and_or.exit398_crit_edge, %ks0127_and_or.exit385.ks0127_and_or.exit398_crit_edge
  %216 = ptrtoint ptr %arrayidx.i387 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %or8.i389, ptr %arrayidx.i387, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i386) #5
  %217 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 43), align 1
  %218 = ptrtoint ptr %dev_priv.i.i.i278 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %dev_priv.i.i.i278, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i399) #5
  %220 = getelementptr inbounds [2 x i8], ptr %msg.i399, i32 0, i32 1
  %221 = ptrtoint ptr %msg.i399 to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 43, ptr %msg.i399, align 1
  %222 = ptrtoint ptr %220 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %217, ptr %220, align 1
  %call.i.i401 = call i32 @i2c_transfer_buffer_flags(ptr noundef %219, ptr noundef nonnull %msg.i399, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i401)
  %cmp.not.i402 = icmp eq i32 %call.i.i401, 2
  br i1 %cmp.not.i402, label %ks0127_and_or.exit398.ks0127_write.exit409_crit_edge, label %do.body.i404

ks0127_and_or.exit398.ks0127_write.exit409_crit_edge: ; preds = %ks0127_and_or.exit398
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit409

do.body.i404:                                     ; preds = %ks0127_and_or.exit398
  %223 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %223)
  %cmp3.i403 = icmp sgt i32 %223, 0
  br i1 %cmp3.i403, label %do.end.i407, label %do.body.i404.ks0127_write.exit409_crit_edge

do.body.i404.ks0127_write.exit409_crit_edge:      ; preds = %do.body.i404
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit409

do.end.i407:                                      ; preds = %do.body.i404
  call void @__sanitizer_cov_trace_pc() #7
  %name.i405 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i406 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i405) #8
  br label %ks0127_write.exit409

ks0127_write.exit409:                             ; preds = %do.end.i407, %do.body.i404.ks0127_write.exit409_crit_edge, %ks0127_and_or.exit398.ks0127_write.exit409_crit_edge
  %arrayidx.i408 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 43
  %224 = ptrtoint ptr %arrayidx.i408 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %217, ptr %arrayidx.i408, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i399) #5
  %225 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 44), align 1
  %226 = ptrtoint ptr %dev_priv.i.i.i278 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %dev_priv.i.i.i278, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i410) #5
  %228 = getelementptr inbounds [2 x i8], ptr %msg.i410, i32 0, i32 1
  %229 = ptrtoint ptr %msg.i410 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 44, ptr %msg.i410, align 1
  %230 = ptrtoint ptr %228 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %225, ptr %228, align 1
  %call.i.i412 = call i32 @i2c_transfer_buffer_flags(ptr noundef %227, ptr noundef nonnull %msg.i410, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i412)
  %cmp.not.i413 = icmp eq i32 %call.i.i412, 2
  br i1 %cmp.not.i413, label %ks0127_write.exit409.ks0127_write.exit420_crit_edge, label %do.body.i415

ks0127_write.exit409.ks0127_write.exit420_crit_edge: ; preds = %ks0127_write.exit409
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit420

do.body.i415:                                     ; preds = %ks0127_write.exit409
  %231 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %cmp3.i414 = icmp sgt i32 %231, 0
  br i1 %cmp3.i414, label %do.end.i418, label %do.body.i415.ks0127_write.exit420_crit_edge

do.body.i415.ks0127_write.exit420_crit_edge:      ; preds = %do.body.i415
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit420

do.end.i418:                                      ; preds = %do.body.i415
  call void @__sanitizer_cov_trace_pc() #7
  %name.i416 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i417 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i416) #8
  br label %ks0127_write.exit420

ks0127_write.exit420:                             ; preds = %do.end.i418, %do.body.i415.ks0127_write.exit420_crit_edge, %ks0127_write.exit409.ks0127_write.exit420_crit_edge
  %arrayidx.i419 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 44
  %232 = ptrtoint ptr %arrayidx.i419 to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %225, ptr %arrayidx.i419, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i410) #5
  %233 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 41), align 1
  %234 = ptrtoint ptr %dev_priv.i.i.i278 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %dev_priv.i.i.i278, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i421) #5
  %236 = getelementptr inbounds [2 x i8], ptr %msg.i421, i32 0, i32 1
  %237 = ptrtoint ptr %msg.i421 to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 41, ptr %msg.i421, align 1
  %238 = ptrtoint ptr %236 to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %233, ptr %236, align 1
  %call.i.i423 = call i32 @i2c_transfer_buffer_flags(ptr noundef %235, ptr noundef nonnull %msg.i421, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i423)
  %cmp.not.i424 = icmp eq i32 %call.i.i423, 2
  br i1 %cmp.not.i424, label %ks0127_write.exit420.ks0127_write.exit431_crit_edge, label %do.body.i426

ks0127_write.exit420.ks0127_write.exit431_crit_edge: ; preds = %ks0127_write.exit420
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit431

do.body.i426:                                     ; preds = %ks0127_write.exit420
  %239 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %cmp3.i425 = icmp sgt i32 %239, 0
  br i1 %cmp3.i425, label %do.end.i429, label %do.body.i426.ks0127_write.exit431_crit_edge

do.body.i426.ks0127_write.exit431_crit_edge:      ; preds = %do.body.i426
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit431

do.end.i429:                                      ; preds = %do.body.i426
  call void @__sanitizer_cov_trace_pc() #7
  %name.i427 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i428 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i427) #8
  br label %ks0127_write.exit431

ks0127_write.exit431:                             ; preds = %do.end.i429, %do.body.i426.ks0127_write.exit431_crit_edge, %ks0127_write.exit420.ks0127_write.exit431_crit_edge
  %arrayidx.i430 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 41
  %240 = ptrtoint ptr %arrayidx.i430 to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %233, ptr %arrayidx.i430, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i421) #5
  %241 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 42), align 1
  %242 = ptrtoint ptr %dev_priv.i.i.i278 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %dev_priv.i.i.i278, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i432) #5
  %244 = getelementptr inbounds [2 x i8], ptr %msg.i432, i32 0, i32 1
  %245 = ptrtoint ptr %msg.i432 to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 42, ptr %msg.i432, align 1
  %246 = ptrtoint ptr %244 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %241, ptr %244, align 1
  %call.i.i434 = call i32 @i2c_transfer_buffer_flags(ptr noundef %243, ptr noundef nonnull %msg.i432, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i434)
  %cmp.not.i435 = icmp eq i32 %call.i.i434, 2
  br i1 %cmp.not.i435, label %ks0127_write.exit431.ks0127_write.exit442_crit_edge, label %do.body.i437

ks0127_write.exit431.ks0127_write.exit442_crit_edge: ; preds = %ks0127_write.exit431
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit442

do.body.i437:                                     ; preds = %ks0127_write.exit431
  %247 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %247)
  %cmp3.i436 = icmp sgt i32 %247, 0
  br i1 %cmp3.i436, label %do.end.i440, label %do.body.i437.ks0127_write.exit442_crit_edge

do.body.i437.ks0127_write.exit442_crit_edge:      ; preds = %do.body.i437
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit442

do.end.i440:                                      ; preds = %do.body.i437
  call void @__sanitizer_cov_trace_pc() #7
  %name.i438 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i439 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i438) #8
  br label %ks0127_write.exit442

ks0127_write.exit442:                             ; preds = %do.end.i440, %do.body.i437.ks0127_write.exit442_crit_edge, %ks0127_write.exit431.ks0127_write.exit442_crit_edge
  %arrayidx.i441 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 42
  %248 = ptrtoint ptr %arrayidx.i441 to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 %241, ptr %arrayidx.i441, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i432) #5
  br label %sw.epilog

do.body33:                                        ; preds = %entry
  %249 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %cmp34 = icmp sgt i32 %249, 0
  br i1 %cmp34, label %do.end39, label %do.body33.do.end46_crit_edge

do.body33.do.end46_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end46

do.end39:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #7
  %name41 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name41) #8
  br label %do.end46

do.end46:                                         ; preds = %do.end39, %do.body33.do.end46_crit_edge
  %norm = getelementptr inbounds %struct.ks0127, ptr %sd, i32 0, i32 1
  %250 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %250)
  %251 = load i64, ptr %norm, align 8
  %and47 = and i64 %251, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and47)
  %tobool.not = icmp eq i64 %and47, 0
  %arrayidx.i457 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 1
  %252 = ptrtoint ptr %arrayidx.i457 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %arrayidx.i457, align 1
  br i1 %tobool.not, label %if.else, label %if.then48

if.then48:                                        ; preds = %do.end46
  %or8.i446 = or i8 %253, 3
  %dev_priv.i.i.i447 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %254 = ptrtoint ptr %dev_priv.i.i.i447 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %dev_priv.i.i.i447, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i443) #5
  %256 = getelementptr inbounds [2 x i8], ptr %msg.i.i443, i32 0, i32 1
  %257 = ptrtoint ptr %msg.i.i443 to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 1, ptr %msg.i.i443, align 1
  %258 = ptrtoint ptr %256 to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %or8.i446, ptr %256, align 1
  %call.i.i.i448 = call i32 @i2c_transfer_buffer_flags(ptr noundef %255, ptr noundef nonnull %msg.i.i443, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i448)
  %cmp.not.i.i449 = icmp eq i32 %call.i.i.i448, 2
  br i1 %cmp.not.i.i449, label %if.then48.ks0127_and_or.exit455_crit_edge, label %do.body.i.i451

if.then48.ks0127_and_or.exit455_crit_edge:        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit455

do.body.i.i451:                                   ; preds = %if.then48
  %259 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %259)
  %cmp3.i.i450 = icmp sgt i32 %259, 0
  br i1 %cmp3.i.i450, label %do.end.i.i454, label %do.body.i.i451.ks0127_and_or.exit455_crit_edge

do.body.i.i451.ks0127_and_or.exit455_crit_edge:   ; preds = %do.body.i.i451
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit455

do.end.i.i454:                                    ; preds = %do.body.i.i451
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i452 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i453 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i452) #8
  br label %ks0127_and_or.exit455

ks0127_and_or.exit455:                            ; preds = %do.end.i.i454, %do.body.i.i451.ks0127_and_or.exit455_crit_edge, %if.then48.ks0127_and_or.exit455_crit_edge
  %260 = ptrtoint ptr %arrayidx.i457 to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 %or8.i446, ptr %arrayidx.i457, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i443) #5
  br label %if.end49

if.else:                                          ; preds = %do.end46
  %and7.i458 = and i8 %253, -4
  %or8.i459 = or i8 %and7.i458, 2
  %dev_priv.i.i.i460 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %261 = ptrtoint ptr %dev_priv.i.i.i460 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %dev_priv.i.i.i460, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i456) #5
  %263 = getelementptr inbounds [2 x i8], ptr %msg.i.i456, i32 0, i32 1
  %264 = ptrtoint ptr %msg.i.i456 to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 1, ptr %msg.i.i456, align 1
  %265 = ptrtoint ptr %263 to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 %or8.i459, ptr %263, align 1
  %call.i.i.i461 = call i32 @i2c_transfer_buffer_flags(ptr noundef %262, ptr noundef nonnull %msg.i.i456, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i461)
  %cmp.not.i.i462 = icmp eq i32 %call.i.i.i461, 2
  br i1 %cmp.not.i.i462, label %if.else.ks0127_and_or.exit468_crit_edge, label %do.body.i.i464

if.else.ks0127_and_or.exit468_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit468

do.body.i.i464:                                   ; preds = %if.else
  %266 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %266)
  %cmp3.i.i463 = icmp sgt i32 %266, 0
  br i1 %cmp3.i.i463, label %do.end.i.i467, label %do.body.i.i464.ks0127_and_or.exit468_crit_edge

do.body.i.i464.ks0127_and_or.exit468_crit_edge:   ; preds = %do.body.i.i464
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit468

do.end.i.i467:                                    ; preds = %do.body.i.i464
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i465 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i466 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i465) #8
  br label %ks0127_and_or.exit468

ks0127_and_or.exit468:                            ; preds = %do.end.i.i467, %do.body.i.i464.ks0127_and_or.exit468_crit_edge, %if.else.ks0127_and_or.exit468_crit_edge
  %267 = ptrtoint ptr %arrayidx.i457 to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 %or8.i459, ptr %arrayidx.i457, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i456) #5
  br label %if.end49

if.end49:                                         ; preds = %ks0127_and_or.exit468, %ks0127_and_or.exit455
  %arrayidx.i470 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 1
  %268 = ptrtoint ptr %arrayidx.i470 to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %arrayidx.i470, align 1
  %or8.i471 = or i8 %269, 64
  %dev_priv.i.i.i472 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %270 = ptrtoint ptr %dev_priv.i.i.i472 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %dev_priv.i.i.i472, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i469) #5
  %272 = getelementptr inbounds [2 x i8], ptr %msg.i.i469, i32 0, i32 1
  %273 = ptrtoint ptr %msg.i.i469 to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 1, ptr %msg.i.i469, align 1
  %274 = ptrtoint ptr %272 to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 %or8.i471, ptr %272, align 1
  %call.i.i.i473 = call i32 @i2c_transfer_buffer_flags(ptr noundef %271, ptr noundef nonnull %msg.i.i469, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i473)
  %cmp.not.i.i474 = icmp eq i32 %call.i.i.i473, 2
  br i1 %cmp.not.i.i474, label %if.end49.ks0127_and_or.exit480_crit_edge, label %do.body.i.i476

if.end49.ks0127_and_or.exit480_crit_edge:         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit480

do.body.i.i476:                                   ; preds = %if.end49
  %275 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %275)
  %cmp3.i.i475 = icmp sgt i32 %275, 0
  br i1 %cmp3.i.i475, label %do.end.i.i479, label %do.body.i.i476.ks0127_and_or.exit480_crit_edge

do.body.i.i476.ks0127_and_or.exit480_crit_edge:   ; preds = %do.body.i.i476
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit480

do.end.i.i479:                                    ; preds = %do.body.i.i476
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i477 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i478 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i477) #8
  br label %ks0127_and_or.exit480

ks0127_and_or.exit480:                            ; preds = %do.end.i.i479, %do.body.i.i476.ks0127_and_or.exit480_crit_edge, %if.end49.ks0127_and_or.exit480_crit_edge
  %276 = ptrtoint ptr %arrayidx.i470 to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 %or8.i471, ptr %arrayidx.i470, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i469) #5
  %arrayidx.i482 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 2
  %277 = ptrtoint ptr %arrayidx.i482 to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %arrayidx.i482, align 1
  %or8.i484 = or i8 %278, 79
  %279 = ptrtoint ptr %dev_priv.i.i.i472 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %dev_priv.i.i.i472, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i481) #5
  %281 = getelementptr inbounds [2 x i8], ptr %msg.i.i481, i32 0, i32 1
  %282 = ptrtoint ptr %msg.i.i481 to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 2, ptr %msg.i.i481, align 1
  %283 = ptrtoint ptr %281 to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 %or8.i484, ptr %281, align 1
  %call.i.i.i486 = call i32 @i2c_transfer_buffer_flags(ptr noundef %280, ptr noundef nonnull %msg.i.i481, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i486)
  %cmp.not.i.i487 = icmp eq i32 %call.i.i.i486, 2
  br i1 %cmp.not.i.i487, label %ks0127_and_or.exit480.ks0127_and_or.exit493_crit_edge, label %do.body.i.i489

ks0127_and_or.exit480.ks0127_and_or.exit493_crit_edge: ; preds = %ks0127_and_or.exit480
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit493

do.body.i.i489:                                   ; preds = %ks0127_and_or.exit480
  %284 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %284)
  %cmp3.i.i488 = icmp sgt i32 %284, 0
  br i1 %cmp3.i.i488, label %do.end.i.i492, label %do.body.i.i489.ks0127_and_or.exit493_crit_edge

do.body.i.i489.ks0127_and_or.exit493_crit_edge:   ; preds = %do.body.i.i489
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit493

do.end.i.i492:                                    ; preds = %do.body.i.i489
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i490 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i491 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i490) #8
  br label %ks0127_and_or.exit493

ks0127_and_or.exit493:                            ; preds = %do.end.i.i492, %do.body.i.i489.ks0127_and_or.exit493_crit_edge, %ks0127_and_or.exit480.ks0127_and_or.exit493_crit_edge
  %285 = ptrtoint ptr %arrayidx.i482 to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 %or8.i484, ptr %arrayidx.i482, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i481) #5
  %arrayidx.i495 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 3
  %286 = ptrtoint ptr %arrayidx.i495 to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %arrayidx.i495, align 1
  %and7.i496 = and i8 %287, 112
  %or8.i497 = or i8 %and7.i496, -121
  %288 = ptrtoint ptr %dev_priv.i.i.i472 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %dev_priv.i.i.i472, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i494) #5
  %290 = getelementptr inbounds [2 x i8], ptr %msg.i.i494, i32 0, i32 1
  %291 = ptrtoint ptr %msg.i.i494 to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 3, ptr %msg.i.i494, align 1
  %292 = ptrtoint ptr %290 to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 %or8.i497, ptr %290, align 1
  %call.i.i.i499 = call i32 @i2c_transfer_buffer_flags(ptr noundef %289, ptr noundef nonnull %msg.i.i494, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i499)
  %cmp.not.i.i500 = icmp eq i32 %call.i.i.i499, 2
  br i1 %cmp.not.i.i500, label %ks0127_and_or.exit493.ks0127_and_or.exit506_crit_edge, label %do.body.i.i502

ks0127_and_or.exit493.ks0127_and_or.exit506_crit_edge: ; preds = %ks0127_and_or.exit493
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit506

do.body.i.i502:                                   ; preds = %ks0127_and_or.exit493
  %293 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %293)
  %cmp3.i.i501 = icmp sgt i32 %293, 0
  br i1 %cmp3.i.i501, label %do.end.i.i505, label %do.body.i.i502.ks0127_and_or.exit506_crit_edge

do.body.i.i502.ks0127_and_or.exit506_crit_edge:   ; preds = %do.body.i.i502
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit506

do.end.i.i505:                                    ; preds = %do.body.i.i502
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i503 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i504 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i503) #8
  br label %ks0127_and_or.exit506

ks0127_and_or.exit506:                            ; preds = %do.end.i.i505, %do.body.i.i502.ks0127_and_or.exit506_crit_edge, %ks0127_and_or.exit493.ks0127_and_or.exit506_crit_edge
  %294 = ptrtoint ptr %arrayidx.i495 to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 %or8.i497, ptr %arrayidx.i495, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i494) #5
  %arrayidx.i508 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 4
  %295 = ptrtoint ptr %arrayidx.i508 to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %arrayidx.i508, align 1
  %and7.i509 = and i8 %296, 3
  %or8.i510 = or i8 %and7.i509, 8
  %297 = ptrtoint ptr %dev_priv.i.i.i472 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %dev_priv.i.i.i472, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i507) #5
  %299 = getelementptr inbounds [2 x i8], ptr %msg.i.i507, i32 0, i32 1
  %300 = ptrtoint ptr %msg.i.i507 to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 4, ptr %msg.i.i507, align 1
  %301 = ptrtoint ptr %299 to i32
  call void @__asan_store1_noabort(i32 %301)
  store i8 %or8.i510, ptr %299, align 1
  %call.i.i.i512 = call i32 @i2c_transfer_buffer_flags(ptr noundef %298, ptr noundef nonnull %msg.i.i507, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i512)
  %cmp.not.i.i513 = icmp eq i32 %call.i.i.i512, 2
  br i1 %cmp.not.i.i513, label %ks0127_and_or.exit506.ks0127_and_or.exit519_crit_edge, label %do.body.i.i515

ks0127_and_or.exit506.ks0127_and_or.exit519_crit_edge: ; preds = %ks0127_and_or.exit506
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit519

do.body.i.i515:                                   ; preds = %ks0127_and_or.exit506
  %302 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %302)
  %cmp3.i.i514 = icmp sgt i32 %302, 0
  br i1 %cmp3.i.i514, label %do.end.i.i518, label %do.body.i.i515.ks0127_and_or.exit519_crit_edge

do.body.i.i515.ks0127_and_or.exit519_crit_edge:   ; preds = %do.body.i.i515
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit519

do.end.i.i518:                                    ; preds = %do.body.i.i515
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i516 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i517 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i516) #8
  br label %ks0127_and_or.exit519

ks0127_and_or.exit519:                            ; preds = %do.end.i.i518, %do.body.i.i515.ks0127_and_or.exit519_crit_edge, %ks0127_and_or.exit506.ks0127_and_or.exit519_crit_edge
  %303 = ptrtoint ptr %arrayidx.i508 to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 %or8.i510, ptr %arrayidx.i508, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i507) #5
  %arrayidx.i521 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 47
  %304 = ptrtoint ptr %arrayidx.i521 to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %arrayidx.i521, align 1
  %or8.i523 = or i8 %305, 48
  %306 = ptrtoint ptr %dev_priv.i.i.i472 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %dev_priv.i.i.i472, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i520) #5
  %308 = getelementptr inbounds [2 x i8], ptr %msg.i.i520, i32 0, i32 1
  %309 = ptrtoint ptr %msg.i.i520 to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 47, ptr %msg.i.i520, align 1
  %310 = ptrtoint ptr %308 to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 %or8.i523, ptr %308, align 1
  %call.i.i.i525 = call i32 @i2c_transfer_buffer_flags(ptr noundef %307, ptr noundef nonnull %msg.i.i520, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i525)
  %cmp.not.i.i526 = icmp eq i32 %call.i.i.i525, 2
  br i1 %cmp.not.i.i526, label %ks0127_and_or.exit519.ks0127_and_or.exit532_crit_edge, label %do.body.i.i528

ks0127_and_or.exit519.ks0127_and_or.exit532_crit_edge: ; preds = %ks0127_and_or.exit519
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit532

do.body.i.i528:                                   ; preds = %ks0127_and_or.exit519
  %311 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %311)
  %cmp3.i.i527 = icmp sgt i32 %311, 0
  br i1 %cmp3.i.i527, label %do.end.i.i531, label %do.body.i.i528.ks0127_and_or.exit532_crit_edge

do.body.i.i528.ks0127_and_or.exit532_crit_edge:   ; preds = %do.body.i.i528
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit532

do.end.i.i531:                                    ; preds = %do.body.i.i528
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i529 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i530 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i529) #8
  br label %ks0127_and_or.exit532

ks0127_and_or.exit532:                            ; preds = %do.end.i.i531, %do.body.i.i528.ks0127_and_or.exit532_crit_edge, %ks0127_and_or.exit519.ks0127_and_or.exit532_crit_edge
  %312 = ptrtoint ptr %arrayidx.i521 to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 %or8.i523, ptr %arrayidx.i521, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i520) #5
  %arrayidx.i534 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 15
  %313 = ptrtoint ptr %dev_priv.i.i.i472 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %dev_priv.i.i.i472, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i533) #5
  %315 = getelementptr inbounds [2 x i8], ptr %msg.i.i533, i32 0, i32 1
  %316 = ptrtoint ptr %msg.i.i533 to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 15, ptr %msg.i.i533, align 1
  %317 = ptrtoint ptr %315 to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 113, ptr %315, align 1
  %call.i.i.i536 = call i32 @i2c_transfer_buffer_flags(ptr noundef %314, ptr noundef nonnull %msg.i.i533, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i536)
  %cmp.not.i.i537 = icmp eq i32 %call.i.i.i536, 2
  br i1 %cmp.not.i.i537, label %ks0127_and_or.exit532.ks0127_and_or.exit543_crit_edge, label %do.body.i.i539

ks0127_and_or.exit532.ks0127_and_or.exit543_crit_edge: ; preds = %ks0127_and_or.exit532
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit543

do.body.i.i539:                                   ; preds = %ks0127_and_or.exit532
  %318 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %318)
  %cmp3.i.i538 = icmp sgt i32 %318, 0
  br i1 %cmp3.i.i538, label %do.end.i.i542, label %do.body.i.i539.ks0127_and_or.exit543_crit_edge

do.body.i.i539.ks0127_and_or.exit543_crit_edge:   ; preds = %do.body.i.i539
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit543

do.end.i.i542:                                    ; preds = %do.body.i.i539
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i540 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i541 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i540) #8
  br label %ks0127_and_or.exit543

ks0127_and_or.exit543:                            ; preds = %do.end.i.i542, %do.body.i.i539.ks0127_and_or.exit543_crit_edge, %ks0127_and_or.exit532.ks0127_and_or.exit543_crit_edge
  %319 = ptrtoint ptr %arrayidx.i534 to i32
  call void @__asan_store1_noabort(i32 %319)
  store i8 113, ptr %arrayidx.i534, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i533) #5
  %320 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 25), align 1
  %321 = and i8 %320, -16
  %arrayidx.i545 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 25
  %322 = ptrtoint ptr %arrayidx.i545 to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %arrayidx.i545, align 1
  %and7.i546 = and i8 %323, 15
  %or8.i547 = or i8 %and7.i546, %321
  %324 = ptrtoint ptr %dev_priv.i.i.i472 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %dev_priv.i.i.i472, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i544) #5
  %326 = getelementptr inbounds [2 x i8], ptr %msg.i.i544, i32 0, i32 1
  %327 = ptrtoint ptr %msg.i.i544 to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 25, ptr %msg.i.i544, align 1
  %328 = ptrtoint ptr %326 to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 %or8.i547, ptr %326, align 1
  %call.i.i.i549 = call i32 @i2c_transfer_buffer_flags(ptr noundef %325, ptr noundef nonnull %msg.i.i544, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i549)
  %cmp.not.i.i550 = icmp eq i32 %call.i.i.i549, 2
  br i1 %cmp.not.i.i550, label %ks0127_and_or.exit543.ks0127_and_or.exit556_crit_edge, label %do.body.i.i552

ks0127_and_or.exit543.ks0127_and_or.exit556_crit_edge: ; preds = %ks0127_and_or.exit543
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit556

do.body.i.i552:                                   ; preds = %ks0127_and_or.exit543
  %329 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %329)
  %cmp3.i.i551 = icmp sgt i32 %329, 0
  br i1 %cmp3.i.i551, label %do.end.i.i555, label %do.body.i.i552.ks0127_and_or.exit556_crit_edge

do.body.i.i552.ks0127_and_or.exit556_crit_edge:   ; preds = %do.body.i.i552
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit556

do.end.i.i555:                                    ; preds = %do.body.i.i552
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i553 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i554 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i553) #8
  br label %ks0127_and_or.exit556

ks0127_and_or.exit556:                            ; preds = %do.end.i.i555, %do.body.i.i552.ks0127_and_or.exit556_crit_edge, %ks0127_and_or.exit543.ks0127_and_or.exit556_crit_edge
  %330 = ptrtoint ptr %arrayidx.i545 to i32
  call void @__asan_store1_noabort(i32 %330)
  store i8 %or8.i547, ptr %arrayidx.i545, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i544) #5
  %arrayidx.i558 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 23
  %331 = ptrtoint ptr %arrayidx.i558 to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %arrayidx.i558, align 1
  %and7.i559 = and i8 %332, 8
  %or8.i560 = or i8 %and7.i559, -127
  %333 = ptrtoint ptr %dev_priv.i.i.i472 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %dev_priv.i.i.i472, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i557) #5
  %335 = getelementptr inbounds [2 x i8], ptr %msg.i.i557, i32 0, i32 1
  %336 = ptrtoint ptr %msg.i.i557 to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 23, ptr %msg.i.i557, align 1
  %337 = ptrtoint ptr %335 to i32
  call void @__asan_store1_noabort(i32 %337)
  store i8 %or8.i560, ptr %335, align 1
  %call.i.i.i562 = call i32 @i2c_transfer_buffer_flags(ptr noundef %334, ptr noundef nonnull %msg.i.i557, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i562)
  %cmp.not.i.i563 = icmp eq i32 %call.i.i.i562, 2
  br i1 %cmp.not.i.i563, label %ks0127_and_or.exit556.ks0127_and_or.exit569_crit_edge, label %do.body.i.i565

ks0127_and_or.exit556.ks0127_and_or.exit569_crit_edge: ; preds = %ks0127_and_or.exit556
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit569

do.body.i.i565:                                   ; preds = %ks0127_and_or.exit556
  %338 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %338)
  %cmp3.i.i564 = icmp sgt i32 %338, 0
  br i1 %cmp3.i.i564, label %do.end.i.i568, label %do.body.i.i565.ks0127_and_or.exit569_crit_edge

do.body.i.i565.ks0127_and_or.exit569_crit_edge:   ; preds = %do.body.i.i565
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit569

do.end.i.i568:                                    ; preds = %do.body.i.i565
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i566 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i567 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i566) #8
  br label %ks0127_and_or.exit569

ks0127_and_or.exit569:                            ; preds = %do.end.i.i568, %do.body.i.i565.ks0127_and_or.exit569_crit_edge, %ks0127_and_or.exit556.ks0127_and_or.exit569_crit_edge
  %339 = ptrtoint ptr %arrayidx.i558 to i32
  call void @__asan_store1_noabort(i32 %339)
  store i8 %or8.i560, ptr %arrayidx.i558, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i557) #5
  %340 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 19), align 1
  %341 = and i8 %340, -16
  %arrayidx.i571 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 19
  %342 = ptrtoint ptr %arrayidx.i571 to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %arrayidx.i571, align 1
  %and7.i572 = and i8 %343, 15
  %or8.i573 = or i8 %and7.i572, %341
  %344 = ptrtoint ptr %dev_priv.i.i.i472 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %dev_priv.i.i.i472, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i570) #5
  %346 = getelementptr inbounds [2 x i8], ptr %msg.i.i570, i32 0, i32 1
  %347 = ptrtoint ptr %msg.i.i570 to i32
  call void @__asan_store1_noabort(i32 %347)
  store i8 19, ptr %msg.i.i570, align 1
  %348 = ptrtoint ptr %346 to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 %or8.i573, ptr %346, align 1
  %call.i.i.i575 = call i32 @i2c_transfer_buffer_flags(ptr noundef %345, ptr noundef nonnull %msg.i.i570, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i575)
  %cmp.not.i.i576 = icmp eq i32 %call.i.i.i575, 2
  br i1 %cmp.not.i.i576, label %ks0127_and_or.exit569.ks0127_and_or.exit582_crit_edge, label %do.body.i.i578

ks0127_and_or.exit569.ks0127_and_or.exit582_crit_edge: ; preds = %ks0127_and_or.exit569
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit582

do.body.i.i578:                                   ; preds = %ks0127_and_or.exit569
  %349 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %349)
  %cmp3.i.i577 = icmp sgt i32 %349, 0
  br i1 %cmp3.i.i577, label %do.end.i.i581, label %do.body.i.i578.ks0127_and_or.exit582_crit_edge

do.body.i.i578.ks0127_and_or.exit582_crit_edge:   ; preds = %do.body.i.i578
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit582

do.end.i.i581:                                    ; preds = %do.body.i.i578
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i579 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i580 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i579) #8
  br label %ks0127_and_or.exit582

ks0127_and_or.exit582:                            ; preds = %do.end.i.i581, %do.body.i.i578.ks0127_and_or.exit582_crit_edge, %ks0127_and_or.exit569.ks0127_and_or.exit582_crit_edge
  %350 = ptrtoint ptr %arrayidx.i571 to i32
  call void @__asan_store1_noabort(i32 %350)
  store i8 %or8.i573, ptr %arrayidx.i571, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i570) #5
  %arrayidx.i584 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 16
  %351 = ptrtoint ptr %dev_priv.i.i.i472 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %dev_priv.i.i.i472, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i583) #5
  %353 = getelementptr inbounds [2 x i8], ptr %msg.i.i583, i32 0, i32 1
  %354 = ptrtoint ptr %msg.i.i583 to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 16, ptr %msg.i.i583, align 1
  %355 = ptrtoint ptr %353 to i32
  call void @__asan_store1_noabort(i32 %355)
  store i8 0, ptr %353, align 1
  %call.i.i.i586 = call i32 @i2c_transfer_buffer_flags(ptr noundef %352, ptr noundef nonnull %msg.i.i583, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i586)
  %cmp.not.i.i587 = icmp eq i32 %call.i.i.i586, 2
  br i1 %cmp.not.i.i587, label %ks0127_and_or.exit582.ks0127_and_or.exit593_crit_edge, label %do.body.i.i589

ks0127_and_or.exit582.ks0127_and_or.exit593_crit_edge: ; preds = %ks0127_and_or.exit582
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit593

do.body.i.i589:                                   ; preds = %ks0127_and_or.exit582
  %356 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %356)
  %cmp3.i.i588 = icmp sgt i32 %356, 0
  br i1 %cmp3.i.i588, label %do.end.i.i592, label %do.body.i.i589.ks0127_and_or.exit593_crit_edge

do.body.i.i589.ks0127_and_or.exit593_crit_edge:   ; preds = %do.body.i.i589
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit593

do.end.i.i592:                                    ; preds = %do.body.i.i589
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i590 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i591 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i590) #8
  br label %ks0127_and_or.exit593

ks0127_and_or.exit593:                            ; preds = %do.end.i.i592, %do.body.i.i589.ks0127_and_or.exit593_crit_edge, %ks0127_and_or.exit582.ks0127_and_or.exit593_crit_edge
  %357 = ptrtoint ptr %arrayidx.i584 to i32
  call void @__asan_store1_noabort(i32 %357)
  store i8 0, ptr %arrayidx.i584, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i583) #5
  %arrayidx.i595 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 17
  %358 = ptrtoint ptr %dev_priv.i.i.i472 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %dev_priv.i.i.i472, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i594) #5
  %360 = getelementptr inbounds [2 x i8], ptr %msg.i.i594, i32 0, i32 1
  %361 = ptrtoint ptr %msg.i.i594 to i32
  call void @__asan_store1_noabort(i32 %361)
  store i8 17, ptr %msg.i.i594, align 1
  %362 = ptrtoint ptr %360 to i32
  call void @__asan_store1_noabort(i32 %362)
  store i8 32, ptr %360, align 1
  %call.i.i.i597 = call i32 @i2c_transfer_buffer_flags(ptr noundef %359, ptr noundef nonnull %msg.i.i594, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i597)
  %cmp.not.i.i598 = icmp eq i32 %call.i.i.i597, 2
  br i1 %cmp.not.i.i598, label %ks0127_and_or.exit593.ks0127_and_or.exit604_crit_edge, label %do.body.i.i600

ks0127_and_or.exit593.ks0127_and_or.exit604_crit_edge: ; preds = %ks0127_and_or.exit593
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit604

do.body.i.i600:                                   ; preds = %ks0127_and_or.exit593
  %363 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %363)
  %cmp3.i.i599 = icmp sgt i32 %363, 0
  br i1 %cmp3.i.i599, label %do.end.i.i603, label %do.body.i.i600.ks0127_and_or.exit604_crit_edge

do.body.i.i600.ks0127_and_or.exit604_crit_edge:   ; preds = %do.body.i.i600
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit604

do.end.i.i603:                                    ; preds = %do.body.i.i600
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i601 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i602 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i601) #8
  br label %ks0127_and_or.exit604

ks0127_and_or.exit604:                            ; preds = %do.end.i.i603, %do.body.i.i600.ks0127_and_or.exit604_crit_edge, %ks0127_and_or.exit593.ks0127_and_or.exit604_crit_edge
  %364 = ptrtoint ptr %arrayidx.i595 to i32
  call void @__asan_store1_noabort(i32 %364)
  store i8 32, ptr %arrayidx.i595, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i594) #5
  %arrayidx.i606 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 21
  %365 = ptrtoint ptr %dev_priv.i.i.i472 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %dev_priv.i.i.i472, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i605) #5
  %367 = getelementptr inbounds [2 x i8], ptr %msg.i.i605, i32 0, i32 1
  %368 = ptrtoint ptr %msg.i.i605 to i32
  call void @__asan_store1_noabort(i32 %368)
  store i8 21, ptr %msg.i.i605, align 1
  %369 = ptrtoint ptr %367 to i32
  call void @__asan_store1_noabort(i32 %369)
  store i8 -24, ptr %367, align 1
  %call.i.i.i608 = call i32 @i2c_transfer_buffer_flags(ptr noundef %366, ptr noundef nonnull %msg.i.i605, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i608)
  %cmp.not.i.i609 = icmp eq i32 %call.i.i.i608, 2
  br i1 %cmp.not.i.i609, label %ks0127_and_or.exit604.ks0127_and_or.exit615_crit_edge, label %do.body.i.i611

ks0127_and_or.exit604.ks0127_and_or.exit615_crit_edge: ; preds = %ks0127_and_or.exit604
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit615

do.body.i.i611:                                   ; preds = %ks0127_and_or.exit604
  %370 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %370)
  %cmp3.i.i610 = icmp sgt i32 %370, 0
  br i1 %cmp3.i.i610, label %do.end.i.i614, label %do.body.i.i611.ks0127_and_or.exit615_crit_edge

do.body.i.i611.ks0127_and_or.exit615_crit_edge:   ; preds = %do.body.i.i611
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit615

do.end.i.i614:                                    ; preds = %do.body.i.i611
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i612 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i613 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i612) #8
  br label %ks0127_and_or.exit615

ks0127_and_or.exit615:                            ; preds = %do.end.i.i614, %do.body.i.i611.ks0127_and_or.exit615_crit_edge, %ks0127_and_or.exit604.ks0127_and_or.exit615_crit_edge
  %371 = ptrtoint ptr %arrayidx.i606 to i32
  call void @__asan_store1_noabort(i32 %371)
  store i8 -24, ptr %arrayidx.i606, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i605) #5
  %arrayidx.i617 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 22
  %372 = ptrtoint ptr %dev_priv.i.i.i472 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %dev_priv.i.i.i472, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i616) #5
  %374 = getelementptr inbounds [2 x i8], ptr %msg.i.i616, i32 0, i32 1
  %375 = ptrtoint ptr %msg.i.i616 to i32
  call void @__asan_store1_noabort(i32 %375)
  store i8 22, ptr %msg.i.i616, align 1
  %376 = ptrtoint ptr %374 to i32
  call void @__asan_store1_noabort(i32 %376)
  store i8 0, ptr %374, align 1
  %call.i.i.i619 = call i32 @i2c_transfer_buffer_flags(ptr noundef %373, ptr noundef nonnull %msg.i.i616, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i619)
  %cmp.not.i.i620 = icmp eq i32 %call.i.i.i619, 2
  br i1 %cmp.not.i.i620, label %ks0127_and_or.exit615.ks0127_and_or.exit626_crit_edge, label %do.body.i.i622

ks0127_and_or.exit615.ks0127_and_or.exit626_crit_edge: ; preds = %ks0127_and_or.exit615
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit626

do.body.i.i622:                                   ; preds = %ks0127_and_or.exit615
  %377 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %377)
  %cmp3.i.i621 = icmp sgt i32 %377, 0
  br i1 %cmp3.i.i621, label %do.end.i.i625, label %do.body.i.i622.ks0127_and_or.exit626_crit_edge

do.body.i.i622.ks0127_and_or.exit626_crit_edge:   ; preds = %do.body.i.i622
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit626

do.end.i.i625:                                    ; preds = %do.body.i.i622
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i623 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i624 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i623) #8
  br label %ks0127_and_or.exit626

ks0127_and_or.exit626:                            ; preds = %do.end.i.i625, %do.body.i.i622.ks0127_and_or.exit626_crit_edge, %ks0127_and_or.exit615.ks0127_and_or.exit626_crit_edge
  %378 = ptrtoint ptr %arrayidx.i617 to i32
  call void @__asan_store1_noabort(i32 %378)
  store i8 0, ptr %arrayidx.i617, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i616) #5
  %arrayidx.i628 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 43
  %379 = ptrtoint ptr %dev_priv.i.i.i472 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %dev_priv.i.i.i472, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i627) #5
  %381 = getelementptr inbounds [2 x i8], ptr %msg.i.i627, i32 0, i32 1
  %382 = ptrtoint ptr %msg.i.i627 to i32
  call void @__asan_store1_noabort(i32 %382)
  store i8 43, ptr %msg.i.i627, align 1
  %383 = ptrtoint ptr %381 to i32
  call void @__asan_store1_noabort(i32 %383)
  store i8 -18, ptr %381, align 1
  %call.i.i.i630 = call i32 @i2c_transfer_buffer_flags(ptr noundef %380, ptr noundef nonnull %msg.i.i627, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i630)
  %cmp.not.i.i631 = icmp eq i32 %call.i.i.i630, 2
  br i1 %cmp.not.i.i631, label %ks0127_and_or.exit626.ks0127_and_or.exit637_crit_edge, label %do.body.i.i633

ks0127_and_or.exit626.ks0127_and_or.exit637_crit_edge: ; preds = %ks0127_and_or.exit626
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit637

do.body.i.i633:                                   ; preds = %ks0127_and_or.exit626
  %384 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %384)
  %cmp3.i.i632 = icmp sgt i32 %384, 0
  br i1 %cmp3.i.i632, label %do.end.i.i636, label %do.body.i.i633.ks0127_and_or.exit637_crit_edge

do.body.i.i633.ks0127_and_or.exit637_crit_edge:   ; preds = %do.body.i.i633
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit637

do.end.i.i636:                                    ; preds = %do.body.i.i633
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i634 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i635 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i634) #8
  br label %ks0127_and_or.exit637

ks0127_and_or.exit637:                            ; preds = %do.end.i.i636, %do.body.i.i633.ks0127_and_or.exit637_crit_edge, %ks0127_and_or.exit626.ks0127_and_or.exit637_crit_edge
  %385 = ptrtoint ptr %arrayidx.i628 to i32
  call void @__asan_store1_noabort(i32 %385)
  store i8 -18, ptr %arrayidx.i628, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i627) #5
  %arrayidx.i639 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 44
  %386 = ptrtoint ptr %dev_priv.i.i.i472 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %dev_priv.i.i.i472, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i638) #5
  %388 = getelementptr inbounds [2 x i8], ptr %msg.i.i638, i32 0, i32 1
  %389 = ptrtoint ptr %msg.i.i638 to i32
  call void @__asan_store1_noabort(i32 %389)
  store i8 44, ptr %msg.i.i638, align 1
  %390 = ptrtoint ptr %388 to i32
  call void @__asan_store1_noabort(i32 %390)
  store i8 0, ptr %388, align 1
  %call.i.i.i641 = call i32 @i2c_transfer_buffer_flags(ptr noundef %387, ptr noundef nonnull %msg.i.i638, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i641)
  %cmp.not.i.i642 = icmp eq i32 %call.i.i.i641, 2
  br i1 %cmp.not.i.i642, label %ks0127_and_or.exit637.ks0127_and_or.exit648_crit_edge, label %do.body.i.i644

ks0127_and_or.exit637.ks0127_and_or.exit648_crit_edge: ; preds = %ks0127_and_or.exit637
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit648

do.body.i.i644:                                   ; preds = %ks0127_and_or.exit637
  %391 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %391)
  %cmp3.i.i643 = icmp sgt i32 %391, 0
  br i1 %cmp3.i.i643, label %do.end.i.i647, label %do.body.i.i644.ks0127_and_or.exit648_crit_edge

do.body.i.i644.ks0127_and_or.exit648_crit_edge:   ; preds = %do.body.i.i644
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit648

do.end.i.i647:                                    ; preds = %do.body.i.i644
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i645 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i646 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i645) #8
  br label %ks0127_and_or.exit648

ks0127_and_or.exit648:                            ; preds = %do.end.i.i647, %do.body.i.i644.ks0127_and_or.exit648_crit_edge, %ks0127_and_or.exit637.ks0127_and_or.exit648_crit_edge
  %392 = ptrtoint ptr %arrayidx.i639 to i32
  call void @__asan_store1_noabort(i32 %392)
  store i8 0, ptr %arrayidx.i639, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i638) #5
  %arrayidx.i650 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 41
  %393 = ptrtoint ptr %dev_priv.i.i.i472 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %dev_priv.i.i.i472, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i649) #5
  %395 = getelementptr inbounds [2 x i8], ptr %msg.i.i649, i32 0, i32 1
  %396 = ptrtoint ptr %msg.i.i649 to i32
  call void @__asan_store1_noabort(i32 %396)
  store i8 41, ptr %msg.i.i649, align 1
  %397 = ptrtoint ptr %395 to i32
  call void @__asan_store1_noabort(i32 %397)
  store i8 79, ptr %395, align 1
  %call.i.i.i652 = call i32 @i2c_transfer_buffer_flags(ptr noundef %394, ptr noundef nonnull %msg.i.i649, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i652)
  %cmp.not.i.i653 = icmp eq i32 %call.i.i.i652, 2
  br i1 %cmp.not.i.i653, label %ks0127_and_or.exit648.ks0127_and_or.exit659_crit_edge, label %do.body.i.i655

ks0127_and_or.exit648.ks0127_and_or.exit659_crit_edge: ; preds = %ks0127_and_or.exit648
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit659

do.body.i.i655:                                   ; preds = %ks0127_and_or.exit648
  %398 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %398)
  %cmp3.i.i654 = icmp sgt i32 %398, 0
  br i1 %cmp3.i.i654, label %do.end.i.i658, label %do.body.i.i655.ks0127_and_or.exit659_crit_edge

do.body.i.i655.ks0127_and_or.exit659_crit_edge:   ; preds = %do.body.i.i655
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit659

do.end.i.i658:                                    ; preds = %do.body.i.i655
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i656 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i657 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i656) #8
  br label %ks0127_and_or.exit659

ks0127_and_or.exit659:                            ; preds = %do.end.i.i658, %do.body.i.i655.ks0127_and_or.exit659_crit_edge, %ks0127_and_or.exit648.ks0127_and_or.exit659_crit_edge
  %399 = ptrtoint ptr %arrayidx.i650 to i32
  call void @__asan_store1_noabort(i32 %399)
  store i8 79, ptr %arrayidx.i650, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i649) #5
  %arrayidx.i661 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 42
  %400 = ptrtoint ptr %dev_priv.i.i.i472 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %dev_priv.i.i.i472, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i660) #5
  %402 = getelementptr inbounds [2 x i8], ptr %msg.i.i660, i32 0, i32 1
  %403 = ptrtoint ptr %msg.i.i660 to i32
  call void @__asan_store1_noabort(i32 %403)
  store i8 42, ptr %msg.i.i660, align 1
  %404 = ptrtoint ptr %402 to i32
  call void @__asan_store1_noabort(i32 %404)
  store i8 0, ptr %402, align 1
  %call.i.i.i663 = call i32 @i2c_transfer_buffer_flags(ptr noundef %401, ptr noundef nonnull %msg.i.i660, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i663)
  %cmp.not.i.i664 = icmp eq i32 %call.i.i.i663, 2
  br i1 %cmp.not.i.i664, label %ks0127_and_or.exit659.ks0127_and_or.exit670_crit_edge, label %do.body.i.i666

ks0127_and_or.exit659.ks0127_and_or.exit670_crit_edge: ; preds = %ks0127_and_or.exit659
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit670

do.body.i.i666:                                   ; preds = %ks0127_and_or.exit659
  %405 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %405)
  %cmp3.i.i665 = icmp sgt i32 %405, 0
  br i1 %cmp3.i.i665, label %do.end.i.i669, label %do.body.i.i666.ks0127_and_or.exit670_crit_edge

do.body.i.i666.ks0127_and_or.exit670_crit_edge:   ; preds = %do.body.i.i666
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit670

do.end.i.i669:                                    ; preds = %do.body.i.i666
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i667 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i668 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i667) #8
  br label %ks0127_and_or.exit670

ks0127_and_or.exit670:                            ; preds = %do.end.i.i669, %do.body.i.i666.ks0127_and_or.exit670_crit_edge, %ks0127_and_or.exit659.ks0127_and_or.exit670_crit_edge
  %406 = ptrtoint ptr %arrayidx.i661 to i32
  call void @__asan_store1_noabort(i32 %406)
  store i8 0, ptr %arrayidx.i661, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i660) #5
  br label %sw.epilog

do.body58:                                        ; preds = %entry
  %407 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %407)
  %cmp59 = icmp sgt i32 %407, 0
  br i1 %cmp59, label %do.end64, label %do.body58.sw.epilog_crit_edge

do.body58.sw.epilog_crit_edge:                    ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end64:                                         ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #7
  %name66 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name66, i32 noundef %input) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end64, %do.body58.sw.epilog_crit_edge, %ks0127_and_or.exit670, %ks0127_write.exit442, %ks0127_write.exit274
  %408 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @reg_defaults, i32 0, i32 20), align 1
  %dev_priv.i.i672 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %409 = ptrtoint ptr %dev_priv.i.i672 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %dev_priv.i.i672, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i671) #5
  %411 = getelementptr inbounds [2 x i8], ptr %msg.i671, i32 0, i32 1
  %412 = ptrtoint ptr %msg.i671 to i32
  call void @__asan_store1_noabort(i32 %412)
  store i8 20, ptr %msg.i671, align 1
  %413 = ptrtoint ptr %411 to i32
  call void @__asan_store1_noabort(i32 %413)
  store i8 %408, ptr %411, align 1
  %call.i.i673 = call i32 @i2c_transfer_buffer_flags(ptr noundef %410, ptr noundef nonnull %msg.i671, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i673)
  %cmp.not.i674 = icmp eq i32 %call.i.i673, 2
  br i1 %cmp.not.i674, label %sw.epilog.ks0127_write.exit681_crit_edge, label %do.body.i676

sw.epilog.ks0127_write.exit681_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit681

do.body.i676:                                     ; preds = %sw.epilog
  %414 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %414)
  %cmp3.i675 = icmp sgt i32 %414, 0
  br i1 %cmp3.i675, label %do.end.i679, label %do.body.i676.ks0127_write.exit681_crit_edge

do.body.i676.ks0127_write.exit681_crit_edge:      ; preds = %do.body.i676
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit681

do.end.i679:                                      ; preds = %do.body.i676
  call void @__sanitizer_cov_trace_pc() #7
  %name.i677 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i678 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i677) #8
  br label %ks0127_write.exit681

ks0127_write.exit681:                             ; preds = %do.end.i679, %do.body.i676.ks0127_write.exit681_crit_edge, %sw.epilog.ks0127_write.exit681_crit_edge
  %arrayidx.i680 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 20
  %415 = ptrtoint ptr %arrayidx.i680 to i32
  call void @__asan_store1_noabort(i32 %415)
  store i8 %408, ptr %arrayidx.i680, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i671) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks0127_s_std(ptr noundef %sd, i64 noundef %std) #2 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %msg.i.i184 = alloca [2 x i8], align 1
  %msg.i.i171 = alloca [2 x i8], align 1
  %msg.i.i158 = alloca [2 x i8], align 1
  %msg.i.i145 = alloca [2 x i8], align 1
  %msg.i.i132 = alloca [2 x i8], align 1
  %msg.i.i120 = alloca [2 x i8], align 1
  %msg.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 20
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  %and7.i = and i8 %1, -16
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i) #5
  %4 = getelementptr inbounds [2 x i8], ptr %msg.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 20, ptr %msg.i.i, align 1
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %and7.i, ptr %4, align 1
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %msg.i.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp.not.i.i, label %entry.ks0127_and_or.exit_crit_edge, label %do.body.i.i

entry.ks0127_and_or.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit

do.body.i.i:                                      ; preds = %entry
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3.i.i = icmp sgt i32 %7, 0
  br i1 %cmp3.i.i, label %do.end.i.i, label %do.body.i.i.ks0127_and_or.exit_crit_edge

do.body.i.i.ks0127_and_or.exit_crit_edge:         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i) #8
  br label %ks0127_and_or.exit

ks0127_and_or.exit:                               ; preds = %do.end.i.i, %do.body.i.i.ks0127_and_or.exit_crit_edge, %entry.ks0127_and_or.exit_crit_edge
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %and7.i, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i) #5
  %norm = getelementptr inbounds %struct.ks0127, ptr %sd, i32 0, i32 1
  %9 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %std, ptr %norm, align 8
  %and = and i64 %std, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %ks0127_and_or.exit
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp sgt i32 %10, 0
  br i1 %cmp, label %do.end, label %do.body.do.end5_crit_edge

do.body.do.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name) #8
  br label %do.end5

do.end5:                                          ; preds = %do.end, %do.body.do.end5_crit_edge
  %arrayidx.i121 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 18
  %11 = ptrtoint ptr %arrayidx.i121 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i121, align 1
  %and7.i122 = and i8 %12, -97
  %or8.i = or i8 %and7.i122, 32
  %13 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i120) #5
  %15 = getelementptr inbounds [2 x i8], ptr %msg.i.i120, i32 0, i32 1
  %16 = ptrtoint ptr %msg.i.i120 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 18, ptr %msg.i.i120, align 1
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %or8.i, ptr %15, align 1
  %call.i.i.i124 = call i32 @i2c_transfer_buffer_flags(ptr noundef %14, ptr noundef nonnull %msg.i.i120, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i124)
  %cmp.not.i.i125 = icmp eq i32 %call.i.i.i124, 2
  br i1 %cmp.not.i.i125, label %do.end5.ks0127_and_or.exit131_crit_edge, label %do.body.i.i127

do.end5.ks0127_and_or.exit131_crit_edge:          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit131

do.body.i.i127:                                   ; preds = %do.end5
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp3.i.i126 = icmp sgt i32 %18, 0
  br i1 %cmp3.i.i126, label %do.end.i.i130, label %do.body.i.i127.ks0127_and_or.exit131_crit_edge

do.body.i.i127.ks0127_and_or.exit131_crit_edge:   ; preds = %do.body.i.i127
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit131

do.end.i.i130:                                    ; preds = %do.body.i.i127
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i128 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i128) #8
  br label %ks0127_and_or.exit131

ks0127_and_or.exit131:                            ; preds = %do.end.i.i130, %do.body.i.i127.ks0127_and_or.exit131_crit_edge, %do.end5.ks0127_and_or.exit131_crit_edge
  %19 = ptrtoint ptr %arrayidx.i121 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %or8.i, ptr %arrayidx.i121, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i120) #5
  br label %if.end98

if.else:                                          ; preds = %ks0127_and_or.exit
  %and6 = and i64 %std, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and6)
  %tobool7.not = icmp eq i64 %and6, 0
  br i1 %tobool7.not, label %if.else22, label %do.body9

do.body9:                                         ; preds = %if.else
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp10 = icmp sgt i32 %20, 0
  br i1 %cmp10, label %do.end14, label %do.body9.do.end21_crit_edge

do.body9.do.end21_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end21

do.end14:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  %name16 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name16) #8
  br label %do.end21

do.end21:                                         ; preds = %do.end14, %do.body9.do.end21_crit_edge
  %arrayidx.i133 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 18
  %21 = ptrtoint ptr %arrayidx.i133 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i133, align 1
  %and7.i134 = and i8 %22, -97
  %or8.i135 = or i8 %and7.i134, 64
  %23 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i132) #5
  %25 = getelementptr inbounds [2 x i8], ptr %msg.i.i132, i32 0, i32 1
  %26 = ptrtoint ptr %msg.i.i132 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 18, ptr %msg.i.i132, align 1
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %or8.i135, ptr %25, align 1
  %call.i.i.i137 = call i32 @i2c_transfer_buffer_flags(ptr noundef %24, ptr noundef nonnull %msg.i.i132, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i137)
  %cmp.not.i.i138 = icmp eq i32 %call.i.i.i137, 2
  br i1 %cmp.not.i.i138, label %do.end21.ks0127_and_or.exit144_crit_edge, label %do.body.i.i140

do.end21.ks0127_and_or.exit144_crit_edge:         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit144

do.body.i.i140:                                   ; preds = %do.end21
  %28 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp3.i.i139 = icmp sgt i32 %28, 0
  br i1 %cmp3.i.i139, label %do.end.i.i143, label %do.body.i.i140.ks0127_and_or.exit144_crit_edge

do.body.i.i140.ks0127_and_or.exit144_crit_edge:   ; preds = %do.body.i.i140
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit144

do.end.i.i143:                                    ; preds = %do.body.i.i140
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i141 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i141) #8
  br label %ks0127_and_or.exit144

ks0127_and_or.exit144:                            ; preds = %do.end.i.i143, %do.body.i.i140.ks0127_and_or.exit144_crit_edge, %do.end21.ks0127_and_or.exit144_crit_edge
  %29 = ptrtoint ptr %arrayidx.i133 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %or8.i135, ptr %arrayidx.i133, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i132) #5
  br label %if.end98

if.else22:                                        ; preds = %if.else
  %and23 = and i64 %std, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and23)
  %tobool24.not = icmp eq i64 %and23, 0
  br i1 %tobool24.not, label %if.else39, label %do.body26

do.body26:                                        ; preds = %if.else22
  %30 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp27 = icmp sgt i32 %30, 0
  br i1 %cmp27, label %do.end31, label %do.body26.do.end38_crit_edge

do.body26.do.end38_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end38

do.end31:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #7
  %name33 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name33) #8
  br label %do.end38

do.end38:                                         ; preds = %do.end31, %do.body26.do.end38_crit_edge
  %arrayidx.i146 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 18
  %31 = ptrtoint ptr %arrayidx.i146 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i146, align 1
  %and7.i147 = and i8 %32, -97
  %or8.i148 = or i8 %and7.i147, 32
  %33 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i145) #5
  %35 = getelementptr inbounds [2 x i8], ptr %msg.i.i145, i32 0, i32 1
  %36 = ptrtoint ptr %msg.i.i145 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 18, ptr %msg.i.i145, align 1
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %or8.i148, ptr %35, align 1
  %call.i.i.i150 = call i32 @i2c_transfer_buffer_flags(ptr noundef %34, ptr noundef nonnull %msg.i.i145, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i150)
  %cmp.not.i.i151 = icmp eq i32 %call.i.i.i150, 2
  br i1 %cmp.not.i.i151, label %do.end38.ks0127_and_or.exit157_crit_edge, label %do.body.i.i153

do.end38.ks0127_and_or.exit157_crit_edge:         ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit157

do.body.i.i153:                                   ; preds = %do.end38
  %38 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp3.i.i152 = icmp sgt i32 %38, 0
  br i1 %cmp3.i.i152, label %do.end.i.i156, label %do.body.i.i153.ks0127_and_or.exit157_crit_edge

do.body.i.i153.ks0127_and_or.exit157_crit_edge:   ; preds = %do.body.i.i153
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit157

do.end.i.i156:                                    ; preds = %do.body.i.i153
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i154 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i154) #8
  br label %ks0127_and_or.exit157

ks0127_and_or.exit157:                            ; preds = %do.end.i.i156, %do.body.i.i153.ks0127_and_or.exit157_crit_edge, %do.end38.ks0127_and_or.exit157_crit_edge
  %39 = ptrtoint ptr %arrayidx.i146 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %or8.i148, ptr %arrayidx.i146, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i145) #5
  br label %if.end98

if.else39:                                        ; preds = %if.else22
  %and40 = and i64 %std, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and40)
  %tobool41.not = icmp eq i64 %and40, 0
  br i1 %tobool41.not, label %if.else56, label %do.body43

do.body43:                                        ; preds = %if.else39
  %40 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp44 = icmp sgt i32 %40, 0
  br i1 %cmp44, label %do.end48, label %do.body43.do.end55_crit_edge

do.body43.do.end55_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end55

do.end48:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #7
  %name50 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name50) #8
  br label %do.end55

do.end55:                                         ; preds = %do.end48, %do.body43.do.end55_crit_edge
  %arrayidx.i159 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 18
  %41 = ptrtoint ptr %arrayidx.i159 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i159, align 1
  %and7.i160 = and i8 %42, -97
  %or8.i161 = or i8 %and7.i160, 64
  %43 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i158) #5
  %45 = getelementptr inbounds [2 x i8], ptr %msg.i.i158, i32 0, i32 1
  %46 = ptrtoint ptr %msg.i.i158 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 18, ptr %msg.i.i158, align 1
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %or8.i161, ptr %45, align 1
  %call.i.i.i163 = call i32 @i2c_transfer_buffer_flags(ptr noundef %44, ptr noundef nonnull %msg.i.i158, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i163)
  %cmp.not.i.i164 = icmp eq i32 %call.i.i.i163, 2
  br i1 %cmp.not.i.i164, label %do.end55.ks0127_and_or.exit170_crit_edge, label %do.body.i.i166

do.end55.ks0127_and_or.exit170_crit_edge:         ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit170

do.body.i.i166:                                   ; preds = %do.end55
  %48 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp3.i.i165 = icmp sgt i32 %48, 0
  br i1 %cmp3.i.i165, label %do.end.i.i169, label %do.body.i.i166.ks0127_and_or.exit170_crit_edge

do.body.i.i166.ks0127_and_or.exit170_crit_edge:   ; preds = %do.body.i.i166
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit170

do.end.i.i169:                                    ; preds = %do.body.i.i166
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i167 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i168 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i167) #8
  br label %ks0127_and_or.exit170

ks0127_and_or.exit170:                            ; preds = %do.end.i.i169, %do.body.i.i166.ks0127_and_or.exit170_crit_edge, %do.end55.ks0127_and_or.exit170_crit_edge
  %49 = ptrtoint ptr %arrayidx.i159 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %or8.i161, ptr %arrayidx.i159, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i158) #5
  br label %if.end98

if.else56:                                        ; preds = %if.else39
  %and57 = and i64 %std, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and57)
  %tobool58.not = icmp eq i64 %and57, 0
  %50 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp81 = icmp sgt i32 %50, 0
  br i1 %tobool58.not, label %do.body80, label %do.body60

do.body60:                                        ; preds = %if.else56
  br i1 %cmp81, label %do.end65, label %do.body60.do.end72_crit_edge

do.body60.do.end72_crit_edge:                     ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end72

do.end65:                                         ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #7
  %name67 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name67) #8
  br label %do.end72

do.end72:                                         ; preds = %do.end65, %do.body60.do.end72_crit_edge
  %arrayidx.i172 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 18
  %51 = ptrtoint ptr %arrayidx.i172 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i172, align 1
  %or8.i174 = or i8 %52, 32
  %53 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i171) #5
  %55 = getelementptr inbounds [2 x i8], ptr %msg.i.i171, i32 0, i32 1
  %56 = ptrtoint ptr %msg.i.i171 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 18, ptr %msg.i.i171, align 1
  %57 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %or8.i174, ptr %55, align 1
  %call.i.i.i176 = call i32 @i2c_transfer_buffer_flags(ptr noundef %54, ptr noundef nonnull %msg.i.i171, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i176)
  %cmp.not.i.i177 = icmp eq i32 %call.i.i.i176, 2
  br i1 %cmp.not.i.i177, label %do.end72.ks0127_and_or.exit183_crit_edge, label %do.body.i.i179

do.end72.ks0127_and_or.exit183_crit_edge:         ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit183

do.body.i.i179:                                   ; preds = %do.end72
  %58 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp3.i.i178 = icmp sgt i32 %58, 0
  br i1 %cmp3.i.i178, label %do.end.i.i182, label %do.body.i.i179.ks0127_and_or.exit183_crit_edge

do.body.i.i179.ks0127_and_or.exit183_crit_edge:   ; preds = %do.body.i.i179
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit183

do.end.i.i182:                                    ; preds = %do.body.i.i179
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i180 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i181 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i180) #8
  br label %ks0127_and_or.exit183

ks0127_and_or.exit183:                            ; preds = %do.end.i.i182, %do.body.i.i179.ks0127_and_or.exit183_crit_edge, %do.end72.ks0127_and_or.exit183_crit_edge
  %59 = ptrtoint ptr %arrayidx.i172 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %or8.i174, ptr %arrayidx.i172, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i171) #5
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.i, align 1
  %and7.i186 = and i8 %61, -16
  %62 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i184) #5
  %64 = getelementptr inbounds [2 x i8], ptr %msg.i.i184, i32 0, i32 1
  %65 = ptrtoint ptr %msg.i.i184 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 20, ptr %msg.i.i184, align 1
  %66 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %and7.i186, ptr %64, align 1
  %call.i.i.i188 = call i32 @i2c_transfer_buffer_flags(ptr noundef %63, ptr noundef nonnull %msg.i.i184, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i188)
  %cmp.not.i.i189 = icmp eq i32 %call.i.i.i188, 2
  br i1 %cmp.not.i.i189, label %ks0127_and_or.exit183.ks0127_and_or.exit195_crit_edge, label %do.body.i.i191

ks0127_and_or.exit183.ks0127_and_or.exit195_crit_edge: ; preds = %ks0127_and_or.exit183
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit195

do.body.i.i191:                                   ; preds = %ks0127_and_or.exit183
  %67 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp3.i.i190 = icmp sgt i32 %67, 0
  br i1 %cmp3.i.i190, label %do.end.i.i194, label %do.body.i.i191.ks0127_and_or.exit195_crit_edge

do.body.i.i191.ks0127_and_or.exit195_crit_edge:   ; preds = %do.body.i.i191
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit195

do.end.i.i194:                                    ; preds = %do.body.i.i191
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i192 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i193 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i192) #8
  br label %ks0127_and_or.exit195

ks0127_and_or.exit195:                            ; preds = %do.end.i.i194, %do.body.i.i191.ks0127_and_or.exit195_crit_edge, %ks0127_and_or.exit183.ks0127_and_or.exit195_crit_edge
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %and7.i186, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i184) #5
  %call73 = call i32 @schedule_timeout_interruptible(i32 noundef 11) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %69 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 20, ptr %reg.addr.i, align 1
  %70 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #5
  %72 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %val.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #5
  %73 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %74 = call ptr @memset(ptr %73, i32 255, i32 16)
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %71, i32 0, i32 1
  %75 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %addr1.i, align 2
  %77 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %78 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 0, ptr %flags.i, align 2
  %79 = ptrtoint ptr %73 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 1, ptr %73, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %80 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %81 = load i16, ptr %addr1.i, align 2
  %82 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %arrayinit.element.i, align 4
  %flags4.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %83 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 2049, ptr %flags4.i, align 2
  %len5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %84 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 1, ptr %len5.i, align 4
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %85 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %val.i, ptr %buf6.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %71, i32 0, i32 3
  %86 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %adapter.i, align 8
  %call7.i = call i32 @i2c_transfer(ptr noundef %87, ptr noundef nonnull %msgs.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call7.i)
  %cmp.not.i = icmp eq i32 %call7.i, 2
  br i1 %cmp.not.i, label %ks0127_and_or.exit195.ks0127_read.exit_crit_edge, label %do.body.i

ks0127_and_or.exit195.ks0127_read.exit_crit_edge: ; preds = %ks0127_and_or.exit195
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_read.exit

do.body.i:                                        ; preds = %ks0127_and_or.exit195
  %88 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp8.i = icmp sgt i32 %88, 0
  br i1 %cmp8.i, label %do.end.i, label %do.body.i.ks0127_read.exit_crit_edge

do.body.i.ks0127_read.exit_crit_edge:             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_read.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name.i) #8
  br label %ks0127_read.exit

ks0127_read.exit:                                 ; preds = %do.end.i, %do.body.i.ks0127_read.exit_crit_edge, %ks0127_and_or.exit195.ks0127_read.exit_crit_edge
  %89 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %91 = and i8 %90, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool76.not = icmp eq i8 %91, 0
  br i1 %tobool76.not, label %if.then77, label %ks0127_read.exit.if.end98_crit_edge

ks0127_read.exit.if.end98_crit_edge:              ; preds = %ks0127_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98

if.then77:                                        ; preds = %ks0127_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @ks0127_and_or(ptr noundef %sd, i8 noundef zeroext 20, i8 noundef zeroext -16, i8 noundef zeroext 15)
  br label %if.end98

do.body80:                                        ; preds = %if.else56
  br i1 %cmp81, label %do.end86, label %do.body80.if.end98_crit_edge

do.body80.if.end98_crit_edge:                     ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98

do.end86:                                         ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #7
  %name88 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name88, i64 noundef %std) #8
  br label %if.end98

if.end98:                                         ; preds = %do.end86, %do.body80.if.end98_crit_edge, %if.then77, %ks0127_read.exit.if.end98_crit_edge, %ks0127_and_or.exit170, %ks0127_and_or.exit157, %ks0127_and_or.exit144, %ks0127_and_or.exit131
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks0127_querystd(ptr noundef %sd, ptr noundef %std) #2 align 64 {
entry:
  %reg.addr.i.i = alloca i8, align 1
  %val.i.i = alloca i8, align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name) #8
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %tobool.not.i = icmp eq ptr %std, null
  br i1 %tobool.not.i, label %do.end2.cond.end.i_crit_edge, label %cond.true.i

do.end2.cond.end.i_crit_edge:                     ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i

cond.true.i:                                      ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %std, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %do.end2.cond.end.i_crit_edge
  %cond.i = phi i64 [ %2, %cond.true.i ], [ 16777215, %do.end2.cond.end.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #5
  %3 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %reg.addr.i.i, align 1
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #5
  %6 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %val.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #5
  %7 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %addr1.i.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr1.i.i, align 2
  %11 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i.i, align 2
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %7, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %reg.addr.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %15 = load i16, ptr %addr1.i.i, align 2
  %16 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %arrayinit.element.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %17 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 2049, ptr %flags4.i.i, align 2
  %len5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %18 = ptrtoint ptr %len5.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %len5.i.i, align 4
  %buf6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %19 = ptrtoint ptr %buf6.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %val.i.i, ptr %buf6.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 3
  %20 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter.i.i, align 8
  %call7.i.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call7.i.i)
  %cmp.not.i.i = icmp eq i32 %call7.i.i, 2
  br i1 %cmp.not.i.i, label %cond.end.i.ks0127_read.exit.i_crit_edge, label %do.body.i.i

cond.end.i.ks0127_read.exit.i_crit_edge:          ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_read.exit.i

do.body.i.i:                                      ; preds = %cond.end.i
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp8.i.i = icmp sgt i32 %22, 0
  br i1 %cmp8.i.i, label %do.end.i.i, label %do.body.i.i.ks0127_read.exit.i_crit_edge

do.body.i.i.ks0127_read.exit.i_crit_edge:         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_read.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call12.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name.i.i) #8
  br label %ks0127_read.exit.i

ks0127_read.exit.i:                               ; preds = %do.end.i.i, %do.body.i.i.ks0127_read.exit.i_crit_edge, %cond.end.i.ks0127_read.exit.i_crit_edge
  %23 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %val.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #5
  %conv.i = zext i8 %24 to i32
  %and3.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %ks0127_read.exit.i.if.end14.i_crit_edge, label %if.else.i

ks0127_read.exit.i.if.end14.i_crit_edge:          ; preds = %ks0127_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.else.i:                                        ; preds = %ks0127_read.exit.i
  %and7.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.else11.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %and10.i = and i64 %cond.i, 255
  br label %if.end14.i

if.else11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %and12.i = and i64 %cond.i, 45056
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else11.i, %if.then9.i, %ks0127_read.exit.i.if.end14.i_crit_edge
  %std.0.i = phi i64 [ %and10.i, %if.then9.i ], [ %and12.i, %if.else11.i ], [ 0, %ks0127_read.exit.i.if.end14.i_crit_edge ]
  br i1 %tobool.not.i, label %if.end14.i.ks0127_status.exit_crit_edge, label %if.then24.i

if.end14.i.ks0127_status.exit_crit_edge:          ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_status.exit

if.then24.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  %and16.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  %std.1.v.i = select i1 %tobool17.not.i, i64 255, i64 45056
  %std.1.i = and i64 %std.0.i, %std.1.v.i
  %25 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %std.1.i, ptr %std, align 8
  br label %ks0127_status.exit

ks0127_status.exit:                               ; preds = %if.then24.i, %if.end14.i.ks0127_status.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks0127_g_input_status(ptr noundef %sd, ptr noundef writeonly %status) #2 align 64 {
entry:
  %reg.addr.i.i = alloca i8, align 1
  %val.i.i = alloca i8, align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name) #8
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #5
  %1 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %reg.addr.i.i, align 1
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #5
  %4 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %val.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #5
  %5 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %addr1.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr1.i.i, align 2
  %9 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i.i, align 2
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %5, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %reg.addr.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %13 = load i16, ptr %addr1.i.i, align 2
  %14 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %arrayinit.element.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %15 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2049, ptr %flags4.i.i, align 2
  %len5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %16 = ptrtoint ptr %len5.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %len5.i.i, align 4
  %buf6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %17 = ptrtoint ptr %buf6.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %val.i.i, ptr %buf6.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter.i.i, align 8
  %call7.i.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call7.i.i)
  %cmp.not.i.i = icmp eq i32 %call7.i.i, 2
  br i1 %cmp.not.i.i, label %do.end2.ks0127_read.exit.i_crit_edge, label %do.body.i.i

do.end2.ks0127_read.exit.i_crit_edge:             ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_read.exit.i

do.body.i.i:                                      ; preds = %do.end2
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp8.i.i = icmp sgt i32 %20, 0
  br i1 %cmp8.i.i, label %do.end.i.i, label %do.body.i.i.ks0127_read.exit.i_crit_edge

do.body.i.i.ks0127_read.exit.i_crit_edge:         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_read.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call12.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name.i.i) #8
  br label %ks0127_read.exit.i

ks0127_read.exit.i:                               ; preds = %do.end.i.i, %do.body.i.i.ks0127_read.exit.i_crit_edge, %do.end2.ks0127_read.exit.i_crit_edge
  %21 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %val.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #5
  %tobool26.not.i = icmp eq ptr %status, null
  br i1 %tobool26.not.i, label %ks0127_read.exit.i.ks0127_status.exit_crit_edge, label %if.then27.i

ks0127_read.exit.i.ks0127_status.exit_crit_edge:  ; preds = %ks0127_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_status.exit

if.then27.i:                                      ; preds = %ks0127_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = zext i8 %22 to i32
  %and.i = lshr i32 %conv.i, 4
  %23 = and i32 %and.i, 2
  %and3.i = shl nuw nsw i32 %conv.i, 2
  %24 = and i32 %and3.i, 4
  %25 = or i32 %24, %23
  %26 = xor i32 %25, 4
  %27 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %status, align 4
  br label %ks0127_status.exit

ks0127_status.exit:                               ; preds = %if.then27.i, %ks0127_read.exit.i.ks0127_status.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks0127_s_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  %msg.i.i34 = alloca [2 x i8], align 1
  %msg.i.i22 = alloca [2 x i8], align 1
  %msg.i.i10 = alloca [2 x i8], align 1
  %msg.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name, i32 noundef %enable) #8
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %arrayidx.i23 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 30
  %1 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i23, align 1
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %do.end2
  %or8.i = or i8 %2, 48
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %3 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i) #5
  %5 = getelementptr inbounds [2 x i8], ptr %msg.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 30, ptr %msg.i.i, align 1
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %or8.i, ptr %5, align 1
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %4, ptr noundef nonnull %msg.i.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp.not.i.i, label %if.then3.ks0127_and_or.exit_crit_edge, label %do.body.i.i

if.then3.ks0127_and_or.exit_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit

do.body.i.i:                                      ; preds = %if.then3
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp3.i.i = icmp sgt i32 %8, 0
  br i1 %cmp3.i.i, label %do.end.i.i, label %do.body.i.i.ks0127_and_or.exit_crit_edge

do.body.i.i.ks0127_and_or.exit_crit_edge:         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i) #8
  br label %ks0127_and_or.exit

ks0127_and_or.exit:                               ; preds = %do.end.i.i, %do.body.i.i.ks0127_and_or.exit_crit_edge, %if.then3.ks0127_and_or.exit_crit_edge
  %9 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %or8.i, ptr %arrayidx.i23, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i) #5
  %arrayidx.i11 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 13
  %10 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i11, align 1
  %and7.i12 = and i8 %11, 127
  %12 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i10) #5
  %14 = getelementptr inbounds [2 x i8], ptr %msg.i.i10, i32 0, i32 1
  %15 = ptrtoint ptr %msg.i.i10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 13, ptr %msg.i.i10, align 1
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %and7.i12, ptr %14, align 1
  %call.i.i.i14 = call i32 @i2c_transfer_buffer_flags(ptr noundef %13, ptr noundef nonnull %msg.i.i10, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i14)
  %cmp.not.i.i15 = icmp eq i32 %call.i.i.i14, 2
  br i1 %cmp.not.i.i15, label %ks0127_and_or.exit.ks0127_and_or.exit21_crit_edge, label %do.body.i.i17

ks0127_and_or.exit.ks0127_and_or.exit21_crit_edge: ; preds = %ks0127_and_or.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit21

do.body.i.i17:                                    ; preds = %ks0127_and_or.exit
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp3.i.i16 = icmp sgt i32 %17, 0
  br i1 %cmp3.i.i16, label %do.end.i.i20, label %do.body.i.i17.ks0127_and_or.exit21_crit_edge

do.body.i.i17.ks0127_and_or.exit21_crit_edge:     ; preds = %do.body.i.i17
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit21

do.end.i.i20:                                     ; preds = %do.body.i.i17
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i18 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i18) #8
  br label %ks0127_and_or.exit21

ks0127_and_or.exit21:                             ; preds = %do.end.i.i20, %do.body.i.i17.ks0127_and_or.exit21_crit_edge, %ks0127_and_or.exit.ks0127_and_or.exit21_crit_edge
  %18 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %and7.i12, ptr %arrayidx.i11, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i10) #5
  br label %if.end4

if.else:                                          ; preds = %do.end2
  %and7.i24 = and i8 %2, -49
  %dev_priv.i.i.i25 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %19 = ptrtoint ptr %dev_priv.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_priv.i.i.i25, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i22) #5
  %21 = getelementptr inbounds [2 x i8], ptr %msg.i.i22, i32 0, i32 1
  %22 = ptrtoint ptr %msg.i.i22 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 30, ptr %msg.i.i22, align 1
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %and7.i24, ptr %21, align 1
  %call.i.i.i26 = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %msg.i.i22, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i26)
  %cmp.not.i.i27 = icmp eq i32 %call.i.i.i26, 2
  br i1 %cmp.not.i.i27, label %if.else.ks0127_and_or.exit33_crit_edge, label %do.body.i.i29

if.else.ks0127_and_or.exit33_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit33

do.body.i.i29:                                    ; preds = %if.else
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp3.i.i28 = icmp sgt i32 %24, 0
  br i1 %cmp3.i.i28, label %do.end.i.i32, label %do.body.i.i29.ks0127_and_or.exit33_crit_edge

do.body.i.i29.ks0127_and_or.exit33_crit_edge:     ; preds = %do.body.i.i29
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit33

do.end.i.i32:                                     ; preds = %do.body.i.i29
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i30 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i30) #8
  br label %ks0127_and_or.exit33

ks0127_and_or.exit33:                             ; preds = %do.end.i.i32, %do.body.i.i29.ks0127_and_or.exit33_crit_edge, %if.else.ks0127_and_or.exit33_crit_edge
  %25 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %and7.i24, ptr %arrayidx.i23, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i22) #5
  %arrayidx.i35 = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 13
  %26 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i35, align 1
  %or8.i37 = or i8 %27, -128
  %28 = ptrtoint ptr %dev_priv.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_priv.i.i.i25, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i34) #5
  %30 = getelementptr inbounds [2 x i8], ptr %msg.i.i34, i32 0, i32 1
  %31 = ptrtoint ptr %msg.i.i34 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 13, ptr %msg.i.i34, align 1
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %or8.i37, ptr %30, align 1
  %call.i.i.i39 = call i32 @i2c_transfer_buffer_flags(ptr noundef %29, ptr noundef nonnull %msg.i.i34, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i39)
  %cmp.not.i.i40 = icmp eq i32 %call.i.i.i39, 2
  br i1 %cmp.not.i.i40, label %ks0127_and_or.exit33.ks0127_and_or.exit46_crit_edge, label %do.body.i.i42

ks0127_and_or.exit33.ks0127_and_or.exit46_crit_edge: ; preds = %ks0127_and_or.exit33
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit46

do.body.i.i42:                                    ; preds = %ks0127_and_or.exit33
  %33 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp3.i.i41 = icmp sgt i32 %33, 0
  br i1 %cmp3.i.i41, label %do.end.i.i45, label %do.body.i.i42.ks0127_and_or.exit46_crit_edge

do.body.i.i42.ks0127_and_or.exit46_crit_edge:     ; preds = %do.body.i.i42
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_and_or.exit46

do.end.i.i45:                                     ; preds = %do.body.i.i42
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i43 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i.i44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i43) #8
  br label %ks0127_and_or.exit46

ks0127_and_or.exit46:                             ; preds = %do.end.i.i45, %do.body.i.i42.ks0127_and_or.exit46_crit_edge, %ks0127_and_or.exit33.ks0127_and_or.exit46_crit_edge
  %34 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %or8.i37, ptr %arrayidx.i35, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i34) #5
  br label %if.end4

if.end4:                                          ; preds = %ks0127_and_or.exit46, %ks0127_and_or.exit21
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ks0127_and_or(ptr noundef %sd, i8 noundef zeroext %reg, i8 noundef zeroext %and_v, i8 noundef zeroext %or_v) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %reg to i32
  %arrayidx = getelementptr %struct.ks0127, ptr %sd, i32 0, i32 2, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %and7 = and i8 %1, %and_v
  %or8 = or i8 %and7, %or_v
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i) #5
  %4 = getelementptr inbounds [2 x i8], ptr %msg.i, i32 0, i32 1
  %5 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %reg, ptr %msg.i, align 1
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %or8, ptr %4, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %msg.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i, label %entry.ks0127_write.exit_crit_edge, label %do.body.i

entry.ks0127_write.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit

do.body.i:                                        ; preds = %entry
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3.i = icmp sgt i32 %7, 0
  br i1 %cmp3.i, label %do.end.i, label %do.body.i.ks0127_write.exit_crit_edge

do.body.i.ks0127_write.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks0127_write.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i) #8
  br label %ks0127_write.exit

ks0127_write.exit:                                ; preds = %do.end.i, %do.body.i.ks0127_write.exit_crit_edge, %entry.ks0127_write.exit_crit_edge
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %or8, ptr %arrayidx, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !102, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @__UNIQUE_ID_description292, !1, !"__UNIQUE_ID_description292", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ks0127.c", i32 34, i32 1}
!2 = !{ptr @__UNIQUE_ID_author293, !3, !"__UNIQUE_ID_author293", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/ks0127.c", i32 35, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/media/i2c/ks0127.c", i32 36, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/ks0127.c", i32 200, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype296, !8, !"__UNIQUE_ID_debugtype296", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_debug297, !11, !"__UNIQUE_ID_debug297", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/ks0127.c", i32 201, i32 1}
!12 = !{ptr @__initcall__kmod_ks0127__298_705_ks0127_driver_init6, !13, !"__initcall__kmod_ks0127__298_705_ks0127_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/ks0127.c", i32 705, i32 1}
!14 = !{ptr @__exitcall_ks0127_driver_exit, !13, !"__exitcall_ks0127_driver_exit", i1 false, i1 false}
!15 = !{ptr @debug, !16, !"debug", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/ks0127.c", i32 198, i32 12}
!17 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/ks0127.c", i32 698, i32 11}
!20 = !{ptr @ks0127_driver, !21, !"ks0127_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/ks0127.c", i32 696, i32 26}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/ks0127.c", i32 658, i32 2}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ks0127_probe._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @ks0127_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ks0127_ops, !31, !"ks0127_ops", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/ks0127.c", i32 646, i32 37}
!32 = !{ptr @ks0127_video_ops, !33, !"ks0127_video_ops", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/ks0127.c", i32 638, i32 43}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/ks0127.c", i32 413, i32 3}
!36 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ks0127_s_routing._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @ks0127_s_routing._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/ks0127.c", i32 447, i32 3}
!41 = !{ptr @ks0127_s_routing._entry.8, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @ks0127_s_routing._entry_ptr.10, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/ks0127.c", i32 479, i32 3}
!45 = !{ptr @ks0127_s_routing._entry.11, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ks0127_s_routing._entry_ptr.13, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/ks0127.c", i32 523, i32 3}
!49 = !{ptr @ks0127_s_routing._entry.14, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @ks0127_s_routing._entry_ptr.16, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @reg_defaults, !52, !"reg_defaults", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/ks0127.c", i32 203, i32 11}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/i2c/ks0127.c", i32 543, i32 3}
!55 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @ks0127_s_std._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @ks0127_s_std._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/ks0127.c", i32 547, i32 3}
!60 = !{ptr @ks0127_s_std._entry.19, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @ks0127_s_std._entry_ptr.21, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/ks0127.c", i32 551, i32 3}
!64 = !{ptr @ks0127_s_std._entry.22, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @ks0127_s_std._entry_ptr.24, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/ks0127.c", i32 555, i32 3}
!68 = !{ptr @ks0127_s_std._entry.25, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @ks0127_s_std._entry_ptr.27, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/ks0127.c", i32 559, i32 3}
!72 = !{ptr @ks0127_s_std._entry.28, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @ks0127_s_std._entry_ptr.30, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/i2c/ks0127.c", i32 572, i32 3}
!76 = !{ptr @ks0127_s_std._entry.31, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @ks0127_s_std._entry_ptr.33, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/i2c/ks0127.c", i32 323, i32 3}
!80 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @ks0127_read._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @ks0127_read._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/i2c/ks0127.c", i32 626, i32 2}
!85 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ks0127_querystd._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @ks0127_querystd._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/i2c/ks0127.c", i32 632, i32 2}
!90 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ks0127_g_input_status._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @ks0127_g_input_status._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/i2c/ks0127.c", i32 580, i32 2}
!95 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @ks0127_s_stream._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @ks0127_s_stream._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = distinct !{null, !99, !"initialized", i1 false, i1 false}
!99 = !{!"../drivers/media/i2c/ks0127.c", i32 207, i32 13}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/i2c/ks0127.c", i32 336, i32 3}
!102 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @ks0127_write._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @ks0127_write._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/i2c/ks0127.c", i32 362, i32 2}
!107 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @ks0127_init._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @ks0127_init._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/i2c/ks0127.c", i32 382, i32 3}
!112 = !{ptr @ks0127_init._entry.46, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @ks0127_init._entry_ptr.48, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/i2c/ks0127.c", i32 388, i32 3}
!116 = !{ptr @ks0127_init._entry.49, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @ks0127_init._entry_ptr.51, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/i2c/ks0127.c", i32 392, i32 3}
!120 = !{ptr @ks0127_init._entry.52, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @ks0127_init._entry_ptr.54, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/i2c/ks0127.c", i32 396, i32 3}
!124 = !{ptr @ks0127_init._entry.55, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @ks0127_init._entry_ptr.57, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @ks0127_id, !127, !"ks0127_id", i1 false, i1 false}
!127 = !{!"../drivers/media/i2c/ks0127.c", i32 688, i32 35}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
