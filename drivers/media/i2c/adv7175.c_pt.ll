; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/adv7175.c_pt.bc'
source_filename = "../drivers/media/i2c/adv7175.c"
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
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.adv7175 = type { %struct.v4l2_subdev, i64, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.93, i16, i16, i16, [10 x i16] }
%union.anon.93 = type { i16 }

@__UNIQUE_ID_description292 = internal constant [64 x i8] c"adv7175.description=Analog Devices ADV7175 video encoder driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [26 x i8] c"adv7175.author=Dave Perks\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [39 x i8] c"adv7175.file=drivers/media/i2c/adv7175\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"adv7175.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [14 x i8] c"adv7175.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype296 = internal constant [27 x i8] c"adv7175.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug297 = internal constant [37 x i8] c"adv7175.parm=debug:Debug level (0-1)\00", section ".modinfo", align 1
@__initcall__kmod_adv7175__298_452_adv7175_driver_init6 = internal global ptr @adv7175_driver_init, section ".initcall6.init", align 4
@adv7175_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @adv7175_probe, ptr @adv7175_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @adv7175_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adv7175_driver_exit = internal global ptr @adv7175_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adv7175\00", [24 x i8] zeroinitializer }, align 32
@adv7175_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adv7175\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"adv7176\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@adv7175_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s %d-%04x: chip found @ 0x%x (%s)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adv7175_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/adv7175.c\00", [36 x i8] zeroinitializer }, align 32
@adv7175_probe._entry_ptr = internal global ptr @adv7175_probe._entry, section ".printk_index", align 4
@adv7175_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @adv7175_core_ops, ptr null, ptr null, ptr @adv7175_video_ops, ptr null, ptr null, ptr null, ptr @adv7175_pad_ops }, [32 x i8] zeroinitializer }, align 32
@init_common = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\00\11\01\00\02\0C\03\8C\04y\05&\06@\07F\08!\09\00\0A\00\0B\00\0C\80\0DO\0E\00\0F\00\10\00\11\00", [60 x i8] zeroinitializer }, align 32
@adv7175_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: revision %d\0A\00", [45 x i8] zeroinitializer }, align 32
@adv7175_probe._entry_ptr.6 = internal global ptr @adv7175_probe._entry.4, section ".printk_index", align 4
@adv7175_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: init error 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@adv7175_probe._entry_ptr.9 = internal global ptr @adv7175_probe._entry.7, section ".printk_index", align 4
@adv7175_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr @adv7175_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adv7175_s_power, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@adv7175_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr @adv7175_s_routing, ptr null, ptr null, ptr null, ptr @adv7175_s_std_output, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@adv7175_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @adv7175_enum_mbus_code, ptr null, ptr null, ptr @adv7175_get_fmt, ptr @adv7175_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@adv7175_s_routing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: illegal input: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adv7175_s_routing\00", [46 x i8] zeroinitializer }, align 32
@adv7175_s_routing._entry_ptr = internal global ptr @adv7175_s_routing._entry, section ".printk_index", align 4
@adv7175_s_routing._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.3, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: switched to %s\0A\00", [42 x i8] zeroinitializer }, align 32
@adv7175_s_routing._entry_ptr.14 = internal global ptr @adv7175_s_routing._entry.12, section ".printk_index", align 4
@inputs = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17], [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pass_through\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"play_back\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"color_bar\00", [22 x i8] zeroinitializer }, align 32
@init_ntsc = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\00\14\01\00\02U\03U\04U\05%\06\1A", [18 x i8] zeroinitializer }, align 32
@init_pal = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\00\11\01\00\02\0C\03\8C\04y\05&\06@", [18 x i8] zeroinitializer }, align 32
@adv7175_s_std_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: illegal norm: %llx\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adv7175_s_std_output\00", [43 x i8] zeroinitializer }, align 32
@adv7175_s_std_output._entry_ptr = internal global ptr @adv7175_s_std_output._entry, section ".printk_index", align 4
@adv7175_s_std_output._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.3, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: switched to %llx\0A\00", [40 x i8] zeroinitializer }, align 32
@adv7175_s_std_output._entry_ptr.22 = internal global ptr @adv7175_s_std_output._entry.20, section ".printk_index", align 4
@adv7175_codes = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 8198, i32 8207], [24 x i8] zeroinitializer }, align 32
@adv7175_set_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: illegal v4l2_mbus_framefmt code: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adv7175_set_fmt\00", [16 x i8] zeroinitializer }, align 32
@adv7175_set_fmt._entry_ptr = internal global ptr @adv7175_set_fmt._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 8198, i64 8207]
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 31, i32 12 }
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"adv7175_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 443, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 445, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant [11 x i8] c"adv7175_id\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 436, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 403, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [12 x i8] c"adv7175_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 384, i32 37 }
@___asan_gen_.53 = private unnamed_addr constant [12 x i8] c"init_common\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 140, i32 28 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 419, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 422, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"adv7175_core_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 368, i32 42 }
@___asan_gen_.71 = private unnamed_addr constant [18 x i8] c"adv7175_video_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 373, i32 43 }
@___asan_gen_.74 = private unnamed_addr constant [16 x i8] c"adv7175_pad_ops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 378, i32 41 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 282, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 285, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [7 x i8] c"inputs\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 48, i32 14 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 48, i32 27 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 48, i32 43 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 48, i32 56 }
@___asan_gen_.104 = private unnamed_addr constant [10 x i8] c"init_ntsc\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 173, i32 28 }
@___asan_gen_.107 = private unnamed_addr constant [9 x i8] c"init_pal\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 163, i32 28 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 221, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 225, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [14 x i8] c"adv7175_codes\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 50, i32 12 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.135 = private constant [31 x i8] c"../drivers/media/i2c/adv7175.c\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 345, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug297, ptr @__UNIQUE_ID_debugtype296, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_adv7175_driver_exit, ptr @__initcall__kmod_adv7175__298_452_adv7175_driver_init6, ptr @__param_debug, ptr @adv7175_driver_exit, ptr @adv7175_probe._entry, ptr @adv7175_probe._entry.4, ptr @adv7175_probe._entry.7, ptr @adv7175_probe._entry_ptr, ptr @adv7175_probe._entry_ptr.6, ptr @adv7175_probe._entry_ptr.9, ptr @adv7175_s_routing._entry, ptr @adv7175_s_routing._entry.12, ptr @adv7175_s_routing._entry_ptr, ptr @adv7175_s_routing._entry_ptr.14, ptr @adv7175_s_std_output._entry, ptr @adv7175_s_std_output._entry.20, ptr @adv7175_s_std_output._entry_ptr, ptr @adv7175_s_std_output._entry_ptr.22, ptr @adv7175_set_fmt._entry, ptr @adv7175_set_fmt._entry_ptr, ptr @debug, ptr @adv7175_driver, ptr @.str, ptr @adv7175_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @adv7175_ops, ptr @init_common, ptr @.str.5, ptr @.str.8, ptr @adv7175_core_ops, ptr @adv7175_video_ops, ptr @adv7175_pad_ops, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @inputs, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @init_ntsc, ptr @init_pal, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @adv7175_codes, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7175_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7175_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7175_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7175_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_common to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7175_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7175_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7175_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7175_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7175_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7175_s_routing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7175_s_routing._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inputs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ntsc to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_pal to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7175_s_std_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7175_s_std_output._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7175_codes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7175_set_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7175_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adv7175_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adv7175_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @adv7175_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7175_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
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
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %6 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %addr, align 2
  %conv = zext i16 %15 to i32
  %shl = shl nuw nsw i32 %conv, 1
  %name6 = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 12
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %9, i32 noundef %13, i32 noundef %conv, i32 noundef %shl, ptr noundef %name6) #9
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 216, i32 noundef 3520) #6
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %do.end
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @adv7175_ops) #6
  %norm = getelementptr inbounds %struct.adv7175, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 45056, ptr %norm, align 8
  %input = getelementptr inbounds %struct.adv7175, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %input, align 8
  %call14 = tail call fastcc i32 @adv7175_write_block(ptr noundef nonnull %call.i, ptr noundef nonnull @init_common, i32 noundef 36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call14)
  %cmp15 = icmp sgt i32 %call14, -1
  br i1 %cmp15, label %if.then17, label %if.end12.do.body39_crit_edge

if.end12.do.body39_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body39

if.then17:                                        ; preds = %if.end12
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 11
  %18 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 7, i8 noundef zeroext -58) #6
  %20 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i76 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 7, i8 noundef zeroext 70) #6
  %22 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i78 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %23, i8 noundef zeroext 18) #6
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp22 = icmp sgt i32 %24, 0
  br i1 %cmp22, label %do.end27, label %if.then17.if.end35_crit_edge

if.then17.if.end35_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

do.end27:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %name29 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %and = and i32 %call1.i78, 1
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name29, i32 noundef %and) #9
  br label %if.end35

if.end35:                                         ; preds = %do.end27, %if.then17.if.end35_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i78)
  %cmp36 = icmp slt i32 %call1.i78, 0
  br i1 %cmp36, label %if.end35.do.body39_crit_edge, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end35.do.body39_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body39

do.body39:                                        ; preds = %if.end35.do.body39_crit_edge, %if.end12.do.body39_crit_edge
  %i.081 = phi i32 [ %call1.i78, %if.end35.do.body39_crit_edge ], [ %call14, %if.end12.do.body39_crit_edge ]
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp40 = icmp sgt i32 %25, 0
  br i1 %cmp40, label %do.end45, label %do.body39.cleanup_crit_edge

do.body39.cleanup_crit_edge:                      ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end45:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  %name47 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name47, i32 noundef %i.081) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %do.body39.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ], [ 0, %do.body39.cleanup_crit_edge ], [ 0, %do.end45 ], [ 0, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7175_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adv7175_write_block(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %data, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %block_data = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %3) #6
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %while.cond18.preheader, label %if.then

while.cond18.preheader:                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp1954 = icmp ugt i32 %len, 1
  br i1 %cmp1954, label %while.cond18.preheader.while.body21_crit_edge, label %while.cond18.preheader.if.end30_crit_edge

while.cond18.preheader.if.end30_crit_edge:        ; preds = %while.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

while.cond18.preheader.while.body21_crit_edge:    ; preds = %while.cond18.preheader
  br label %while.body21

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %block_data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp50 = icmp ugt i32 %len, 1
  %8 = call ptr @memset(ptr %block_data, i32 255, i32 32)
  br i1 %cmp50, label %if.then.while.body_crit_edge, label %if.then.while.end_crit_edge

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.then.while.body_crit_edge:                     ; preds = %if.then
  br label %while.body

while.body:                                       ; preds = %do.end.while.body_crit_edge, %if.then.while.body_crit_edge
  %len.addr.052 = phi i32 [ %sub, %do.end.while.body_crit_edge ], [ %len, %if.then.while.body_crit_edge ]
  %data.addr.051 = phi ptr [ %add.ptr, %do.end.while.body_crit_edge ], [ %data, %if.then.while.body_crit_edge ]
  %9 = ptrtoint ptr %data.addr.051 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data.addr.051, align 1
  %11 = ptrtoint ptr %block_data to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %block_data, align 1
  br label %do.body

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %while.body
  %data.addr.1 = phi ptr [ %data.addr.051, %while.body ], [ %add.ptr, %land.lhs.true.do.body_crit_edge ]
  %len.addr.1 = phi i32 [ %len.addr.052, %while.body ], [ %sub, %land.lhs.true.do.body_crit_edge ]
  %reg.0 = phi i8 [ %10, %while.body ], [ %inc6, %land.lhs.true.do.body_crit_edge ]
  %block_len.0 = phi i32 [ 1, %while.body ], [ %inc4, %land.lhs.true.do.body_crit_edge ]
  %arrayidx3 = getelementptr i8, ptr %data.addr.1, i32 1
  %12 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx3, align 1
  %inc4 = add nuw nsw i32 %block_len.0, 1
  %arrayidx5 = getelementptr [32 x i8], ptr %block_data, i32 0, i32 %block_len.0
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx5, align 1
  %sub = add i32 %len.addr.1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp7 = icmp ugt i32 %sub, 1
  br i1 %cmp7, label %land.lhs.true, label %do.end.thread

do.end.thread:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call.i61 = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %block_data, i32 noundef %inc4, i16 noundef zeroext 0) #6
  br label %while.end

land.lhs.true:                                    ; preds = %do.body
  %add.ptr = getelementptr i8, ptr %data.addr.1, i32 2
  %inc6 = add i8 %reg.0, 1
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %inc6)
  %cmp10 = icmp eq i8 %16, %inc6
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %block_len.0)
  %cmp12 = icmp ult i32 %block_len.0, 31
  %or.cond = select i1 %cmp10, i1 %cmp12, i1 false
  br i1 %or.cond, label %land.lhs.true.do.body_crit_edge, label %do.end

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end:                                           ; preds = %land.lhs.true
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %block_data, i32 noundef %inc4, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp15 = icmp sgt i32 %call.i, -1
  %or.cond60 = select i1 %cmp15, i1 %cmp7, i1 false
  br i1 %or.cond60, label %do.end.while.body_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.end.while.body_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %do.end.while.end_crit_edge, %do.end.thread, %if.then.while.end_crit_edge
  %ret.1 = phi i32 [ -1, %if.then.while.end_crit_edge ], [ %call.i61, %do.end.thread ], [ %call.i, %do.end.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %block_data) #6
  br label %if.end30

while.body21:                                     ; preds = %while.body21.while.body21_crit_edge, %while.cond18.preheader.while.body21_crit_edge
  %len.addr.256 = phi i32 [ %sub28, %while.body21.while.body21_crit_edge ], [ %len, %while.cond18.preheader.while.body21_crit_edge ]
  %data.addr.255 = phi ptr [ %incdec.ptr22, %while.body21.while.body21_crit_edge ], [ %data, %while.cond18.preheader.while.body21_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %data.addr.255, i32 1
  %17 = ptrtoint ptr %data.addr.255 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %data.addr.255, align 1
  %19 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %incdec.ptr, align 1
  %21 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_priv.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %22, i8 noundef zeroext %18, i8 noundef zeroext %20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp24 = icmp sgt i32 %call1.i, -1
  %incdec.ptr22 = getelementptr i8, ptr %data.addr.255, i32 2
  %sub28 = add i32 %len.addr.256, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub28)
  %cmp19 = icmp ugt i32 %sub28, 1
  %or.cond59 = select i1 %cmp24, i1 %cmp19, i1 false
  br i1 %or.cond59, label %while.body21.while.body21_crit_edge, label %while.body21.if.end30_crit_edge

while.body21.if.end30_crit_edge:                  ; preds = %while.body21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

while.body21.while.body21_crit_edge:              ; preds = %while.body21
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body21

if.end30:                                         ; preds = %while.body21.if.end30_crit_edge, %while.end, %while.cond18.preheader.if.end30_crit_edge
  %ret.3 = phi i32 [ %ret.1, %while.end ], [ -1, %while.cond18.preheader.if.end30_crit_edge ], [ %call1.i, %while.body21.if.end30_crit_edge ]
  ret i32 %ret.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7175_init(ptr nocapture noundef readonly %sd, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @adv7175_write_block(ptr noundef %sd, ptr noundef nonnull @init_common, i32 noundef 36)
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext -58) #6
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i6 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 7, i8 noundef zeroext 70) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7175_s_power(ptr nocapture noundef readonly %sd, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %dev_priv.i.i3 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i3, align 4
  %. = select i1 %tobool.not, i8 120, i8 0
  %call1.i4 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %.) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7175_s_routing(ptr noundef %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %input to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %input, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %sw.bb12
    i32 2, label %sw.bb23
  ]

sw.bb:                                            ; preds = %entry
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %1 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 1, i8 noundef zeroext 0) #6
  %norm = getelementptr inbounds %struct.adv7175, ptr %sd, i32 0, i32 1
  %3 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %norm, align 8
  %and = and i64 %4, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %sw.bb.if.end_crit_edge, label %if.then

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i10.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 2, i8 noundef zeroext 0) #6
  %7 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i12.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 3, i8 noundef zeroext 85) #6
  %9 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i14.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 4, i8 noundef zeroext 85) #6
  %11 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i16.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 5, i8 noundef zeroext 37) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %13 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i81 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 12, i8 noundef zeroext -128) #6
  %15 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %norm, align 8
  %and4 = and i64 %16, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and4)
  %tobool5.not = icmp eq i64 %and4, 0
  %17 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_priv.i.i, align 4
  %. = select i1 %tobool5.not, i8 79, i8 73
  %call1.i85 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 13, i8 noundef zeroext %.) #6
  br label %do.body39

sw.bb12:                                          ; preds = %entry
  %dev_priv.i.i90 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %19 = ptrtoint ptr %dev_priv.i.i90 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_priv.i.i90, align 4
  %call1.i91 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext 1, i8 noundef zeroext 0) #6
  %norm14 = getelementptr inbounds %struct.adv7175, ptr %sd, i32 0, i32 1
  %21 = ptrtoint ptr %norm14 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %norm14, align 8
  %and15 = and i64 %22, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and15)
  %tobool16.not = icmp eq i64 %and15, 0
  br i1 %tobool16.not, label %sw.bb12.if.end18_crit_edge, label %if.then17

sw.bb12.if.end18_crit_edge:                       ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then17:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %dev_priv.i.i90 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_priv.i.i90, align 4
  %call1.i10.i93 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext 2, i8 noundef zeroext 85) #6
  %25 = ptrtoint ptr %dev_priv.i.i90 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_priv.i.i90, align 4
  %call1.i12.i95 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext 3, i8 noundef zeroext 85) #6
  %27 = ptrtoint ptr %dev_priv.i.i90 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_priv.i.i90, align 4
  %call1.i14.i96 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext 4, i8 noundef zeroext 85) #6
  %29 = ptrtoint ptr %dev_priv.i.i90 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_priv.i.i90, align 4
  %call1.i16.i97 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %30, i8 noundef zeroext 5, i8 noundef zeroext 37) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %sw.bb12.if.end18_crit_edge
  %31 = ptrtoint ptr %dev_priv.i.i90 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_priv.i.i90, align 4
  %call1.i99 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %32, i8 noundef zeroext 12, i8 noundef zeroext 0) #6
  %33 = ptrtoint ptr %dev_priv.i.i90 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_priv.i.i90, align 4
  %call1.i101 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext 13, i8 noundef zeroext 73) #6
  br label %do.body39

sw.bb23:                                          ; preds = %entry
  %dev_priv.i.i106 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %35 = ptrtoint ptr %dev_priv.i.i106 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_priv.i.i106, align 4
  %call1.i107 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %36, i8 noundef zeroext 1, i8 noundef zeroext -128) #6
  %norm25 = getelementptr inbounds %struct.adv7175, ptr %sd, i32 0, i32 1
  %37 = ptrtoint ptr %norm25 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %norm25, align 8
  %and26 = and i64 %38, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and26)
  %tobool27.not = icmp eq i64 %and26, 0
  br i1 %tobool27.not, label %sw.bb23.if.end29_crit_edge, label %if.then28

sw.bb23.if.end29_crit_edge:                       ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then28:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %dev_priv.i.i106 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_priv.i.i106, align 4
  %call1.i10.i109 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %40, i8 noundef zeroext 2, i8 noundef zeroext 85) #6
  %41 = ptrtoint ptr %dev_priv.i.i106 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_priv.i.i106, align 4
  %call1.i12.i111 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %42, i8 noundef zeroext 3, i8 noundef zeroext 85) #6
  %43 = ptrtoint ptr %dev_priv.i.i106 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_priv.i.i106, align 4
  %call1.i14.i112 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext 4, i8 noundef zeroext 85) #6
  %45 = ptrtoint ptr %dev_priv.i.i106 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev_priv.i.i106, align 4
  %call1.i16.i113 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %46, i8 noundef zeroext 5, i8 noundef zeroext 37) #6
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %sw.bb23.if.end29_crit_edge
  %47 = ptrtoint ptr %dev_priv.i.i106 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_priv.i.i106, align 4
  %call1.i115 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %48, i8 noundef zeroext 13, i8 noundef zeroext 73) #6
  br label %do.body39

do.body:                                          ; preds = %entry
  %49 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp = icmp sgt i32 %49, 0
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name, i32 noundef %input) #9
  br label %cleanup

do.body39:                                        ; preds = %if.end29, %if.end18, %if.end
  %dev_priv.i.i.sink122 = phi ptr [ %dev_priv.i.i, %if.end ], [ %dev_priv.i.i90, %if.end18 ], [ %dev_priv.i.i106, %if.end29 ]
  %50 = ptrtoint ptr %dev_priv.i.i.sink122 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_priv.i.i.sink122, align 4
  %call1.i87 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %51, i8 noundef zeroext 7, i8 noundef zeroext -58) #6
  %52 = ptrtoint ptr %dev_priv.i.i.sink122 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_priv.i.i.sink122, align 4
  %call1.i89 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %53, i8 noundef zeroext 7, i8 noundef zeroext 70) #6
  %54 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp40 = icmp sgt i32 %54, 0
  br i1 %cmp40, label %do.end44, label %do.body39.do.end51_crit_edge

do.body39.do.end51_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end51

do.end44:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  %name46 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %arrayidx = getelementptr [3 x ptr], ptr @inputs, i32 0, i32 %input
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx, align 4
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name46, ptr noundef %56) #9
  br label %do.end51

do.end51:                                         ; preds = %do.end44, %do.body39.do.end51_crit_edge
  %input52 = getelementptr inbounds %struct.adv7175, ptr %sd, i32 0, i32 2
  %57 = ptrtoint ptr %input52 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %input, ptr %input52, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end51, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end51 ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7175_s_std_output(ptr noundef %sd, i64 noundef %std) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %std, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @adv7175_write_block(ptr noundef %sd, ptr noundef nonnull @init_ntsc, i32 noundef 14)
  %input = getelementptr inbounds %struct.adv7175, ptr %sd, i32 0, i32 2
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %input, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then.do.body40.sink.split_crit_edge, label %if.then.do.body40_crit_edge

if.then.do.body40_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body40

if.then.do.body40.sink.split_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body40.sink.split

if.else:                                          ; preds = %entry
  %and6 = and i64 %std, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and6)
  %tobool7.not = icmp eq i64 %and6, 0
  br i1 %tobool7.not, label %if.else17, label %if.then8

if.then8:                                         ; preds = %if.else
  %call9 = tail call fastcc i32 @adv7175_write_block(ptr noundef %sd, ptr noundef nonnull @init_pal, i32 noundef 14)
  %input10 = getelementptr inbounds %struct.adv7175, ptr %sd, i32 0, i32 2
  %2 = ptrtoint ptr %input10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11 = icmp eq i32 %3, 0
  br i1 %cmp11, label %if.then8.do.body40.sink.split_crit_edge, label %if.then8.do.body40_crit_edge

if.then8.do.body40_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body40

if.then8.do.body40.sink.split_crit_edge:          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body40.sink.split

if.else17:                                        ; preds = %if.else
  %and18 = and i64 %std, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and18)
  %tobool19.not = icmp eq i64 %and18, 0
  br i1 %tobool19.not, label %do.body, label %if.then20

if.then20:                                        ; preds = %if.else17
  %call21 = tail call fastcc i32 @adv7175_write_block(ptr noundef %sd, ptr noundef nonnull @init_pal, i32 noundef 14)
  %input22 = getelementptr inbounds %struct.adv7175, ptr %sd, i32 0, i32 2
  %4 = ptrtoint ptr %input22 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %input22, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp23 = icmp eq i32 %5, 0
  br i1 %cmp23, label %if.then20.do.body40.sink.split_crit_edge, label %if.then20.do.body40_crit_edge

if.then20.do.body40_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body40

if.then20.do.body40.sink.split_crit_edge:         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body40.sink.split

do.body:                                          ; preds = %if.else17
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp30 = icmp sgt i32 %6, 0
  br i1 %cmp30, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name, i64 noundef %std) #9
  br label %cleanup

do.body40.sink.split:                             ; preds = %if.then20.do.body40.sink.split_crit_edge, %if.then8.do.body40.sink.split_crit_edge, %if.then.do.body40.sink.split_crit_edge
  %.sink92 = phi i8 [ 79, %if.then.do.body40.sink.split_crit_edge ], [ 79, %if.then8.do.body40.sink.split_crit_edge ], [ 73, %if.then20.do.body40.sink.split_crit_edge ]
  %dev_priv.i.i85 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %7 = ptrtoint ptr %dev_priv.i.i85 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i85, align 4
  %call1.i86 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 13, i8 noundef zeroext %.sink92) #6
  br label %do.body40

do.body40:                                        ; preds = %do.body40.sink.split, %if.then20.do.body40_crit_edge, %if.then8.do.body40_crit_edge, %if.then.do.body40_crit_edge
  %dev_priv.i.i75 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %9 = ptrtoint ptr %dev_priv.i.i75 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_priv.i.i75, align 4
  %call1.i76 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 7, i8 noundef zeroext -58) #6
  %11 = ptrtoint ptr %dev_priv.i.i75 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i.i75, align 4
  %call1.i78 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 7, i8 noundef zeroext 70) #6
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp41 = icmp sgt i32 %13, 0
  br i1 %cmp41, label %do.end45, label %do.body40.do.end52_crit_edge

do.body40.do.end52_crit_edge:                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end52

do.end45:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  %name47 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name47, i64 noundef %std) #9
  br label %do.end52

do.end52:                                         ; preds = %do.end45, %do.body40.do.end52_crit_edge
  %norm = getelementptr inbounds %struct.adv7175, ptr %sd, i32 0, i32 1
  %14 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %std, ptr %norm, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end52 ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adv7175_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr [2 x i32], ptr @adv7175_codes, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %code2 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %6 = ptrtoint ptr %code2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %code2, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7175_get_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 7) #6
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %and = and i32 %call1.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  %spec.select = select i1 %cmp.not, i32 8198, i32 8207
  %4 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.select, ptr %4, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %6 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %colorspace, align 4
  %7 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %format1, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %height, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %field, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7175_set_fmt(ptr noundef %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef readonly %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 7) #6
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %5, label %do.body [
    i32 8198, label %sw.bb
    i32 8207, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = trunc i32 %call1.i to i8
  %conv3 = and i8 %7, -65
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = trunc i32 %call1.i to i8
  %conv6 = or i8 %8, 64
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name, i32 noundef %5) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb
  %val.0 = phi i8 [ %conv6, %sw.bb4 ], [ %conv3, %sw.bb ]
  %10 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp15 = icmp eq i32 %11, 1
  br i1 %cmp15, label %if.then17, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then17:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i30 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 7, i8 noundef zeroext %val.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %sw.epilog.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ %call1.i30, %if.then17 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !18, !20, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !55, !57, !59, !61, !62, !63, !64, !66, !67, !68, !70, !72, !74, !76, !78, !79, !80, !81, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__UNIQUE_ID_description292, !1, !"__UNIQUE_ID_description292", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/adv7175.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_author293, !3, !"__UNIQUE_ID_author293", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/adv7175.c", i32 24, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/media/i2c/adv7175.c", i32 25, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/adv7175.c", i32 32, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype296, !8, !"__UNIQUE_ID_debugtype296", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_debug297, !11, !"__UNIQUE_ID_debug297", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/adv7175.c", i32 33, i32 1}
!12 = !{ptr @__initcall__kmod_adv7175__298_452_adv7175_driver_init6, !13, !"__initcall__kmod_adv7175__298_452_adv7175_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/adv7175.c", i32 452, i32 1}
!14 = !{ptr @__exitcall_adv7175_driver_exit, !13, !"__exitcall_adv7175_driver_exit", i1 false, i1 false}
!15 = !{ptr @debug, !16, !"debug", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/adv7175.c", i32 31, i32 12}
!17 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/adv7175.c", i32 445, i32 11}
!20 = !{ptr @adv7175_driver, !21, !"adv7175_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/adv7175.c", i32 443, i32 26}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/adv7175.c", i32 403, i32 2}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @adv7175_probe._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @adv7175_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/adv7175.c", i32 419, i32 3}
!30 = !{ptr @adv7175_probe._entry.4, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @adv7175_probe._entry_ptr.6, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/adv7175.c", i32 422, i32 3}
!34 = !{ptr @adv7175_probe._entry.7, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @adv7175_probe._entry_ptr.9, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @adv7175_ops, !37, !"adv7175_ops", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/adv7175.c", i32 384, i32 37}
!38 = !{ptr @adv7175_core_ops, !39, !"adv7175_core_ops", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/adv7175.c", i32 368, i32 42}
!40 = !{ptr @adv7175_video_ops, !41, !"adv7175_video_ops", i1 false, i1 false}
!41 = !{!"../drivers/media/i2c/adv7175.c", i32 373, i32 43}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/i2c/adv7175.c", i32 282, i32 3}
!44 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @adv7175_s_routing._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @adv7175_s_routing._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/adv7175.c", i32 285, i32 2}
!49 = !{ptr @adv7175_s_routing._entry.12, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @adv7175_s_routing._entry_ptr.14, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/adv7175.c", i32 48, i32 27}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/i2c/adv7175.c", i32 48, i32 43}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/i2c/adv7175.c", i32 48, i32 56}
!57 = !{ptr @inputs, !58, !"inputs", i1 false, i1 false}
!58 = !{!"../drivers/media/i2c/adv7175.c", i32 48, i32 14}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/i2c/adv7175.c", i32 221, i32 3}
!61 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @adv7175_s_std_output._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @adv7175_s_std_output._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/adv7175.c", i32 225, i32 2}
!66 = !{ptr @adv7175_s_std_output._entry.20, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @adv7175_s_std_output._entry_ptr.22, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @init_ntsc, !69, !"init_ntsc", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/adv7175.c", i32 173, i32 28}
!70 = !{ptr @init_pal, !71, !"init_pal", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/adv7175.c", i32 163, i32 28}
!72 = !{ptr @adv7175_pad_ops, !73, !"adv7175_pad_ops", i1 false, i1 false}
!73 = !{!"../drivers/media/i2c/adv7175.c", i32 378, i32 41}
!74 = !{ptr @adv7175_codes, !75, !"adv7175_codes", i1 false, i1 false}
!75 = !{!"../drivers/media/i2c/adv7175.c", i32 50, i32 12}
!76 = !{ptr @.str.23, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/i2c/adv7175.c", i32 345, i32 3}
!78 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @adv7175_set_fmt._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @adv7175_set_fmt._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @init_common, !82, !"init_common", i1 false, i1 false}
!82 = !{!"../drivers/media/i2c/adv7175.c", i32 140, i32 28}
!83 = !{ptr @adv7175_id, !84, !"adv7175_id", i1 false, i1 false}
!84 = !{!"../drivers/media/i2c/adv7175.c", i32 436, i32 35}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
