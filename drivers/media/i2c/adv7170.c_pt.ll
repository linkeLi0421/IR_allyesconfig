; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/adv7170.c_pt.bc'
source_filename = "../drivers/media/i2c/adv7170.c"
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
%struct.adv7170 = type { %struct.v4l2_subdev, [128 x i8], i64, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.93, i16, i16, i16, [10 x i16] }
%union.anon.93 = type { i16 }

@__UNIQUE_ID_description292 = internal constant [64 x i8] c"adv7170.description=Analog Devices ADV7170 video encoder driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [33 x i8] c"adv7170.author=Maxim Yevtyushkin\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [39 x i8] c"adv7170.file=drivers/media/i2c/adv7170\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"adv7170.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [14 x i8] c"adv7170.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype296 = internal constant [27 x i8] c"adv7170.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug297 = internal constant [37 x i8] c"adv7170.parm=debug:Debug level (0-1)\00", section ".modinfo", align 1
@__initcall__kmod_adv7170__298_397_adv7170_driver_init6 = internal global ptr @adv7170_driver_init, section ".initcall6.init", align 4
@adv7170_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @adv7170_probe, ptr @adv7170_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @adv7170_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adv7170_driver_exit = internal global ptr @adv7170_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adv7170\00", [24 x i8] zeroinitializer }, align 32
@adv7170_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adv7170\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"adv7171\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@adv7170_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s %d-%04x: chip found @ 0x%x (%s)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adv7170_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/adv7170.c\00", [36 x i8] zeroinitializer }, align 32
@adv7170_probe._entry_ptr = internal global ptr @adv7170_probe._entry, section ".printk_index", align 4
@adv7170_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @adv7170_video_ops, ptr null, ptr null, ptr null, ptr @adv7170_pad_ops }, [32 x i8] zeroinitializer }, align 32
@init_NTSC = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\00\10\01 \02\0E\03\80\040\05\00\06\00\07L\08\00\09\16\0A|\0B\F0\0C!\0D\00\0E\00\0F\00\10\00\11\00\12\00\13\00\14\00\15\00\16\00\17\00\18\00\19\00", [44 x i8] zeroinitializer }, align 32
@adv7170_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: revision %d\0A\00", [45 x i8] zeroinitializer }, align 32
@adv7170_probe._entry_ptr.6 = internal global ptr @adv7170_probe._entry.4, section ".printk_index", align 4
@adv7170_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: init error 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@adv7170_probe._entry_ptr.9 = internal global ptr @adv7170_probe._entry.7, section ".printk_index", align 4
@adv7170_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr @adv7170_s_routing, ptr null, ptr null, ptr null, ptr @adv7170_s_std_output, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@adv7170_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @adv7170_enum_mbus_code, ptr null, ptr null, ptr @adv7170_get_fmt, ptr @adv7170_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@adv7170_s_routing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: set input from %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adv7170_s_routing\00", [46 x i8] zeroinitializer }, align 32
@adv7170_s_routing._entry_ptr = internal global ptr @adv7170_s_routing._entry, section ".printk_index", align 4
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"decoder\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ZR36060\00", [24 x i8] zeroinitializer }, align 32
@adv7170_s_routing._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.11, ptr @.str.3, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: illegal input: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@adv7170_s_routing._entry_ptr.16 = internal global ptr @adv7170_s_routing._entry.14, section ".printk_index", align 4
@adv7170_s_routing._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.11, ptr @.str.3, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: switched to %s\0A\00", [42 x i8] zeroinitializer }, align 32
@adv7170_s_routing._entry_ptr.19 = internal global ptr @adv7170_s_routing._entry.17, section ".printk_index", align 4
@inputs = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.20, ptr @.str.21], [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pass_through\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"play_back\00", [22 x i8] zeroinitializer }, align 32
@adv7170_s_std_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: set norm %llx\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adv7170_s_std_output\00", [43 x i8] zeroinitializer }, align 32
@adv7170_s_std_output._entry_ptr = internal global ptr @adv7170_s_std_output._entry, section ".printk_index", align 4
@init_PAL = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\00q\01 \02\0E\03\80\040\05\00\06\00\07L\08\00\09\CB\0A\8A\0B\09\0C*\0D\00\0E\00\0F\00\10\00\11\00\12\00\13\00\14\00\15\00\16\00\17\00\18\00\19\00", [44 x i8] zeroinitializer }, align 32
@adv7170_s_std_output._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: illegal norm: %llx\0A\00", [38 x i8] zeroinitializer }, align 32
@adv7170_s_std_output._entry_ptr.26 = internal global ptr @adv7170_s_std_output._entry.24, section ".printk_index", align 4
@adv7170_s_std_output._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.3, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: switched to %llx\0A\00", [40 x i8] zeroinitializer }, align 32
@adv7170_s_std_output._entry_ptr.29 = internal global ptr @adv7170_s_std_output._entry.27, section ".printk_index", align 4
@adv7170_codes = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 8198, i32 8207], [24 x i8] zeroinitializer }, align 32
@adv7170_set_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: illegal v4l2_mbus_framefmt code: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adv7170_set_fmt\00", [16 x i8] zeroinitializer }, align 32
@adv7170_set_fmt._entry_ptr = internal global ptr @adv7170_set_fmt._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 8198, i64 8207]
@___asan_gen_.33 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 32, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"adv7170_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 388, i32 26 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 390, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [11 x i8] c"adv7170_id\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 381, i32 35 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 348, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [12 x i8] c"adv7170_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 330, i32 37 }
@___asan_gen_.60 = private unnamed_addr constant [10 x i8] c"init_NTSC\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 125, i32 28 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 364, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 367, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [18 x i8] c"adv7170_video_ops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 319, i32 43 }
@___asan_gen_.78 = private unnamed_addr constant [16 x i8] c"adv7170_pad_ops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 324, i32 41 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 221, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 244, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 247, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [7 x i8] c"inputs\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 51, i32 14 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 51, i32 27 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 51, i32 43 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 188, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [9 x i8] c"init_PAL\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 154, i32 28 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 203, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 207, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [14 x i8] c"adv7170_codes\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 53, i32 12 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.151 = private constant [31 x i8] c"../drivers/media/i2c/adv7170.c\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 306, i32 3 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug297, ptr @__UNIQUE_ID_debugtype296, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_adv7170_driver_exit, ptr @__initcall__kmod_adv7170__298_397_adv7170_driver_init6, ptr @__param_debug, ptr @adv7170_driver_exit, ptr @adv7170_probe._entry, ptr @adv7170_probe._entry.4, ptr @adv7170_probe._entry.7, ptr @adv7170_probe._entry_ptr, ptr @adv7170_probe._entry_ptr.6, ptr @adv7170_probe._entry_ptr.9, ptr @adv7170_s_routing._entry, ptr @adv7170_s_routing._entry.14, ptr @adv7170_s_routing._entry.17, ptr @adv7170_s_routing._entry_ptr, ptr @adv7170_s_routing._entry_ptr.16, ptr @adv7170_s_routing._entry_ptr.19, ptr @adv7170_s_std_output._entry, ptr @adv7170_s_std_output._entry.24, ptr @adv7170_s_std_output._entry.27, ptr @adv7170_s_std_output._entry_ptr, ptr @adv7170_s_std_output._entry_ptr.26, ptr @adv7170_s_std_output._entry_ptr.29, ptr @adv7170_set_fmt._entry, ptr @adv7170_set_fmt._entry_ptr, ptr @debug, ptr @adv7170_driver, ptr @.str, ptr @adv7170_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @adv7170_ops, ptr @init_NTSC, ptr @.str.5, ptr @.str.8, ptr @adv7170_video_ops, ptr @adv7170_pad_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @inputs, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @init_PAL, ptr @.str.25, ptr @.str.28, ptr @adv7170_codes, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7170_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7170_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7170_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7170_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_NTSC to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7170_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7170_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7170_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7170_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7170_s_routing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7170_s_routing._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7170_s_routing._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inputs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7170_s_std_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_PAL to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7170_s_std_output._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7170_s_std_output._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7170_codes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7170_set_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7170_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adv7170_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adv7170_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @adv7170_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7170_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 344, i32 noundef 3520) #6
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %do.end
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @adv7170_ops) #6
  %norm = getelementptr inbounds %struct.adv7170, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 45056, ptr %norm, align 8
  %input = getelementptr inbounds %struct.adv7170, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %input, align 8
  %call14 = tail call fastcc i32 @adv7170_write_block(ptr noundef nonnull %call.i, ptr noundef nonnull @init_NTSC)
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
  %arrayidx.i = getelementptr %struct.adv7170, ptr %call.i, i32 0, i32 1, i32 7
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -52, ptr %arrayidx.i, align 1
  %call3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 7, i8 noundef zeroext -52) #6
  %21 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_priv.i.i, align 4
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 76, ptr %arrayidx.i, align 1
  %call3.i77 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %22, i8 noundef zeroext 7, i8 noundef zeroext 76) #6
  %24 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %25, i8 noundef zeroext 18) #6
  %26 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp22 = icmp sgt i32 %26, 0
  br i1 %cmp22, label %do.end27, label %if.then17.if.end35_crit_edge

if.then17.if.end35_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

do.end27:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %name29 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %and = and i32 %call1.i, 1
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name29, i32 noundef %and) #9
  br label %if.end35

if.end35:                                         ; preds = %do.end27, %if.then17.if.end35_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp36 = icmp slt i32 %call1.i, 0
  br i1 %cmp36, label %if.end35.do.body39_crit_edge, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end35.do.body39_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body39

do.body39:                                        ; preds = %if.end35.do.body39_crit_edge, %if.end12.do.body39_crit_edge
  %i.081 = phi i32 [ %call1.i, %if.end35.do.body39_crit_edge ], [ %call14, %if.end12.do.body39_crit_edge ]
  %27 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp40 = icmp sgt i32 %27, 0
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
define internal i32 @adv7170_remove(ptr nocapture noundef readonly %client) #2 align 64 {
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
define internal fastcc i32 @adv7170_write_block(ptr nocapture noundef %sd, ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
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
  br i1 %tobool.not, label %entry.while.body24_crit_edge, label %if.then

entry.while.body24_crit_edge:                     ; preds = %entry
  br label %while.body24

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %block_data) #6
  %8 = call ptr @memset(ptr %block_data, i32 255, i32 32)
  br label %while.body

while.body:                                       ; preds = %do.end.while.body_crit_edge, %if.then
  %len.addr.02 = phi i32 [ 52, %if.then ], [ %sub, %do.end.while.body_crit_edge ]
  %data.addr.01 = phi ptr [ %data, %if.then ], [ %add.ptr, %do.end.while.body_crit_edge ]
  %9 = ptrtoint ptr %data.addr.01 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data.addr.01, align 1
  %11 = ptrtoint ptr %block_data to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %block_data, align 1
  br label %do.body

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %while.body
  %data.addr.1 = phi ptr [ %data.addr.01, %while.body ], [ %add.ptr, %land.lhs.true.do.body_crit_edge ]
  %len.addr.1 = phi i32 [ %len.addr.02, %while.body ], [ %sub, %land.lhs.true.do.body_crit_edge ]
  %reg.0 = phi i8 [ %10, %while.body ], [ %inc6, %land.lhs.true.do.body_crit_edge ]
  %block_len.0 = phi i32 [ 1, %while.body ], [ %inc8, %land.lhs.true.do.body_crit_edge ]
  %arrayidx4 = getelementptr i8, ptr %data.addr.1, i32 1
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4, align 1
  %idxprom = zext i8 %reg.0 to i32
  %arrayidx7 = getelementptr %struct.adv7170, ptr %sd, i32 0, i32 1, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx7, align 1
  %inc8 = add nuw nsw i32 %block_len.0, 1
  %arrayidx9 = getelementptr [32 x i8], ptr %block_data, i32 0, i32 %block_len.0
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %13, ptr %arrayidx9, align 1
  %sub = add i32 %len.addr.1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp10 = icmp ugt i32 %sub, 1
  br i1 %cmp10, label %land.lhs.true, label %do.end.thread

do.end.thread:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call.i7 = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %block_data, i32 noundef %inc8, i16 noundef zeroext 0) #6
  br label %while.end

land.lhs.true:                                    ; preds = %do.body
  %add.ptr = getelementptr i8, ptr %data.addr.1, i32 2
  %inc6 = add i8 %reg.0, 1
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %inc6)
  %cmp13 = icmp eq i8 %17, %inc6
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %block_len.0)
  %cmp15 = icmp ult i32 %block_len.0, 31
  %or.cond = select i1 %cmp13, i1 %cmp15, i1 false
  br i1 %or.cond, label %land.lhs.true.do.body_crit_edge, label %do.end

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end:                                           ; preds = %land.lhs.true
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %block_data, i32 noundef %inc8, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp18 = icmp sgt i32 %call.i, -1
  %or.cond6 = select i1 %cmp18, i1 %cmp10, i1 false
  br i1 %or.cond6, label %do.end.while.body_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.end.while.body_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %do.end.while.end_crit_edge, %do.end.thread
  %call.i10 = phi i32 [ %call.i7, %do.end.thread ], [ %call.i, %do.end.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %block_data) #6
  br label %if.end33

while.body24:                                     ; preds = %while.body24.while.body24_crit_edge, %entry.while.body24_crit_edge
  %len.addr.24 = phi i32 [ %sub31, %while.body24.while.body24_crit_edge ], [ 52, %entry.while.body24_crit_edge ]
  %data.addr.23 = phi ptr [ %incdec.ptr25, %while.body24.while.body24_crit_edge ], [ %data, %entry.while.body24_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %data.addr.23, i32 1
  %18 = ptrtoint ptr %data.addr.23 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data.addr.23, align 1
  %20 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %incdec.ptr, align 1
  %22 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_priv.i, align 4
  %idxprom.i = zext i8 %19 to i32
  %arrayidx.i = getelementptr %struct.adv7170, ptr %sd, i32 0, i32 1, i32 %idxprom.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %21, ptr %arrayidx.i, align 1
  %call3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext %19, i8 noundef zeroext %21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp27 = icmp slt i32 %call3.i, 0
  %incdec.ptr25 = getelementptr i8, ptr %data.addr.23, i32 2
  %sub31 = add nsw i32 %len.addr.24, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub31)
  %cmp22.not = icmp eq i32 %sub31, 0
  %or.cond5 = select i1 %cmp27, i1 true, i1 %cmp22.not
  br i1 %or.cond5, label %while.body24.if.end33_crit_edge, label %while.body24.while.body24_crit_edge

while.body24.while.body24_crit_edge:              ; preds = %while.body24
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body24

while.body24.if.end33_crit_edge:                  ; preds = %while.body24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.end33:                                         ; preds = %while.body24.if.end33_crit_edge, %while.end
  %ret.3 = phi i32 [ %call.i10, %while.end ], [ %call3.i, %while.body24.if.end33_crit_edge ]
  ret i32 %ret.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7170_s_routing(ptr noundef %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %input)
  %cmp2 = icmp eq i32 %input, 0
  %cond = select i1 %cmp2, ptr @.str.12, ptr @.str.13
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name, ptr noundef nonnull %cond) #9
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %1 = zext i32 %input to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %input, label %do.body17 [
    i32 0, label %do.end5.do.body30_crit_edge
    i32 1, label %sw.bb11
  ]

do.end5.do.body30_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body30

sw.bb11:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body30

do.body17:                                        ; preds = %do.end5
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp18 = icmp sgt i32 %2, 0
  br i1 %cmp18, label %do.end22, label %do.body17.cleanup_crit_edge

do.body17.cleanup_crit_edge:                      ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end22:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  %name24 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name24, i32 noundef %input) #9
  br label %cleanup

do.body30:                                        ; preds = %sw.bb11, %do.end5.do.body30_crit_edge
  %.sink95 = phi i8 [ 0, %sw.bb11 ], [ 32, %do.end5.do.body30_crit_edge ]
  %.sink91 = phi i8 [ 8, %sw.bb11 ], [ 14, %do.end5.do.body30_crit_edge ]
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %3 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_priv.i.i, align 4
  %arrayidx.i = getelementptr %struct.adv7170, ptr %sd, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.sink95, ptr %arrayidx.i, align 1
  %call3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext %.sink95) #6
  %6 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i, align 4
  %arrayidx.i62 = getelementptr %struct.adv7170, ptr %sd, i32 0, i32 1, i32 8
  %8 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx.i62, align 1
  %call3.i63 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 8, i8 noundef zeroext 0) #6
  %9 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_priv.i.i, align 4
  %arrayidx.i65 = getelementptr %struct.adv7170, ptr %sd, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %arrayidx.i65 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink91, ptr %arrayidx.i65, align 1
  %call3.i66 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 2, i8 noundef zeroext %.sink91) #6
  %12 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i.i, align 4
  %arrayidx.i68 = getelementptr %struct.adv7170, ptr %sd, i32 0, i32 1, i32 7
  %14 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -52, ptr %arrayidx.i68, align 1
  %call3.i69 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 7, i8 noundef zeroext -52) #6
  %15 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_priv.i.i, align 4
  %17 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 76, ptr %arrayidx.i68, align 1
  %call3.i72 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 7, i8 noundef zeroext 76) #6
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp31 = icmp sgt i32 %18, 0
  br i1 %cmp31, label %do.end35, label %do.body30.do.end42_crit_edge

do.body30.do.end42_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42

do.end35:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  %name37 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %arrayidx = getelementptr [2 x ptr], ptr @inputs, i32 0, i32 %input
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name37, ptr noundef %20) #9
  br label %do.end42

do.end42:                                         ; preds = %do.end35, %do.body30.do.end42_crit_edge
  %input43 = getelementptr inbounds %struct.adv7170, ptr %sd, i32 0, i32 3
  %21 = ptrtoint ptr %input43 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %input, ptr %input43, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %do.end22, %do.body17.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end42 ], [ -22, %do.end22 ], [ -22, %do.body17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7170_s_std_output(ptr noundef %sd, i64 noundef %std) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name, i64 noundef %std) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %and = and i64 %std, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %do.end4
  %1 = tail call fastcc i32 @adv7170_write_block(ptr noundef %sd, ptr noundef nonnull @init_NTSC)
  %input = getelementptr inbounds %struct.adv7170, ptr %sd, i32 0, i32 3
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7 = icmp eq i32 %3, 0
  br i1 %cmp7, label %if.then5.do.body40.sink.split_crit_edge, label %if.then5.do.body40_crit_edge

if.then5.do.body40_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body40

if.then5.do.body40.sink.split_crit_edge:          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body40.sink.split

if.else:                                          ; preds = %do.end4
  %and13 = and i64 %std, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and13)
  %tobool14.not = icmp eq i64 %and13, 0
  br i1 %tobool14.not, label %do.body25, label %if.then15

if.then15:                                        ; preds = %if.else
  %4 = tail call fastcc i32 @adv7170_write_block(ptr noundef %sd, ptr noundef nonnull @init_PAL)
  %input17 = getelementptr inbounds %struct.adv7170, ptr %sd, i32 0, i32 3
  %5 = ptrtoint ptr %input17 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %input17, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp18 = icmp eq i32 %6, 0
  br i1 %cmp18, label %if.then15.do.body40.sink.split_crit_edge, label %if.then15.do.body40_crit_edge

if.then15.do.body40_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body40

if.then15.do.body40.sink.split_crit_edge:         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body40.sink.split

do.body25:                                        ; preds = %if.else
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp26 = icmp sgt i32 %7, 0
  br i1 %cmp26, label %do.end30, label %do.body25.cleanup_crit_edge

do.body25.cleanup_crit_edge:                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end30:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  %name32 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name32, i64 noundef %std) #9
  br label %cleanup

do.body40.sink.split:                             ; preds = %if.then15.do.body40.sink.split_crit_edge, %if.then5.do.body40.sink.split_crit_edge
  %dev_priv.i.i77 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %8 = ptrtoint ptr %dev_priv.i.i77 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_priv.i.i77, align 4
  %arrayidx.i78 = getelementptr %struct.adv7170, ptr %sd, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %arrayidx.i78 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 14, ptr %arrayidx.i78, align 1
  %call3.i79 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 2, i8 noundef zeroext 14) #6
  br label %do.body40

do.body40:                                        ; preds = %do.body40.sink.split, %if.then15.do.body40_crit_edge, %if.then5.do.body40_crit_edge
  %dev_priv.i.i71 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %11 = ptrtoint ptr %dev_priv.i.i71 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i.i71, align 4
  %arrayidx.i72 = getelementptr %struct.adv7170, ptr %sd, i32 0, i32 1, i32 7
  %13 = ptrtoint ptr %arrayidx.i72 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -52, ptr %arrayidx.i72, align 1
  %call3.i73 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 7, i8 noundef zeroext -52) #6
  %14 = ptrtoint ptr %dev_priv.i.i71 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_priv.i.i71, align 4
  %16 = ptrtoint ptr %arrayidx.i72 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 76, ptr %arrayidx.i72, align 1
  %call3.i76 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 7, i8 noundef zeroext 76) #6
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp41 = icmp sgt i32 %17, 0
  br i1 %cmp41, label %do.end45, label %do.body40.do.end52_crit_edge

do.body40.do.end52_crit_edge:                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end52

do.end45:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  %name47 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name47, i64 noundef %std) #9
  br label %do.end52

do.end52:                                         ; preds = %do.end45, %do.body40.do.end52_crit_edge
  %norm = getelementptr inbounds %struct.adv7170, ptr %sd, i32 0, i32 2
  %18 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %std, ptr %norm, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %do.end30, %do.body25.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end52 ], [ -22, %do.end30 ], [ -22, %do.body25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adv7170_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #5 align 64 {
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
  %arrayidx = getelementptr [2 x i32], ptr @adv7170_codes, i32 0, i32 %3
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
define internal i32 @adv7170_get_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %format) #2 align 64 {
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
define internal i32 @adv7170_set_fmt(ptr noundef %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef readonly %format) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.32)
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
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name, i32 noundef %5) #9
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
  %arrayidx.i = getelementptr %struct.adv7170, ptr %sd, i32 0, i32 1, i32 7
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %val.0, ptr %arrayidx.i, align 1
  %call3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 7, i8 noundef zeroext %val.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %sw.epilog.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3.i, %if.then17 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ]
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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !18, !20, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !42, !43, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !59, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !78, !80, !82, !83, !84, !85, !87}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @__UNIQUE_ID_description292, !1, !"__UNIQUE_ID_description292", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/adv7170.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_author293, !3, !"__UNIQUE_ID_author293", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/adv7170.c", i32 28, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/media/i2c/adv7170.c", i32 29, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/adv7170.c", i32 33, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype296, !8, !"__UNIQUE_ID_debugtype296", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_debug297, !11, !"__UNIQUE_ID_debug297", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/adv7170.c", i32 34, i32 1}
!12 = !{ptr @__initcall__kmod_adv7170__298_397_adv7170_driver_init6, !13, !"__initcall__kmod_adv7170__298_397_adv7170_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/adv7170.c", i32 397, i32 1}
!14 = !{ptr @__exitcall_adv7170_driver_exit, !13, !"__exitcall_adv7170_driver_exit", i1 false, i1 false}
!15 = !{ptr @debug, !16, !"debug", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/adv7170.c", i32 32, i32 12}
!17 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/adv7170.c", i32 390, i32 11}
!20 = !{ptr @adv7170_driver, !21, !"adv7170_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/adv7170.c", i32 388, i32 26}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/adv7170.c", i32 348, i32 2}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @adv7170_probe._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @adv7170_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/adv7170.c", i32 364, i32 3}
!30 = !{ptr @adv7170_probe._entry.4, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @adv7170_probe._entry_ptr.6, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/adv7170.c", i32 367, i32 3}
!34 = !{ptr @adv7170_probe._entry.7, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @adv7170_probe._entry_ptr.9, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @adv7170_ops, !37, !"adv7170_ops", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/adv7170.c", i32 330, i32 37}
!38 = !{ptr @adv7170_video_ops, !39, !"adv7170_video_ops", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/adv7170.c", i32 319, i32 43}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/i2c/adv7170.c", i32 221, i32 2}
!42 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @adv7170_s_routing._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @adv7170_s_routing._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/adv7170.c", i32 244, i32 3}
!49 = !{ptr @adv7170_s_routing._entry.14, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @adv7170_s_routing._entry_ptr.16, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/adv7170.c", i32 247, i32 2}
!53 = !{ptr @adv7170_s_routing._entry.17, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @adv7170_s_routing._entry_ptr.19, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/i2c/adv7170.c", i32 51, i32 27}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/i2c/adv7170.c", i32 51, i32 43}
!59 = !{ptr @inputs, !60, !"inputs", i1 false, i1 false}
!60 = !{!"../drivers/media/i2c/adv7170.c", i32 51, i32 14}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/i2c/adv7170.c", i32 188, i32 2}
!63 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @adv7170_s_std_output._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @adv7170_s_std_output._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/adv7170.c", i32 203, i32 3}
!68 = !{ptr @adv7170_s_std_output._entry.24, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @adv7170_s_std_output._entry_ptr.26, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/adv7170.c", i32 207, i32 2}
!72 = !{ptr @adv7170_s_std_output._entry.27, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @adv7170_s_std_output._entry_ptr.29, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @init_PAL, !75, !"init_PAL", i1 false, i1 false}
!75 = !{!"../drivers/media/i2c/adv7170.c", i32 154, i32 28}
!76 = !{ptr @adv7170_pad_ops, !77, !"adv7170_pad_ops", i1 false, i1 false}
!77 = !{!"../drivers/media/i2c/adv7170.c", i32 324, i32 41}
!78 = !{ptr @adv7170_codes, !79, !"adv7170_codes", i1 false, i1 false}
!79 = !{!"../drivers/media/i2c/adv7170.c", i32 53, i32 12}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/i2c/adv7170.c", i32 306, i32 3}
!82 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @adv7170_set_fmt._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @adv7170_set_fmt._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @init_NTSC, !86, !"init_NTSC", i1 false, i1 false}
!86 = !{!"../drivers/media/i2c/adv7170.c", i32 125, i32 28}
!87 = !{ptr @adv7170_id, !88, !"adv7170_id", i1 false, i1 false}
!88 = !{!"../drivers/media/i2c/adv7170.c", i32 381, i32 35}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
