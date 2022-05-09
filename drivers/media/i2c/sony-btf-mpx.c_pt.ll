; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/sony-btf-mpx.c_pt.bc'
source_filename = "../drivers/media/i2c/sony-btf-mpx.c"
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
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.116 = type { i32, i16, i16, i16, i16, i16, i16, i16, i16 }
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
%struct.sony_btf_mpx = type { %struct.v4l2_subdev, i32, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__UNIQUE_ID_description292 = internal constant [45 x i8] c"sony_btf_mpx.description=sony-btf-mpx driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [49 x i8] c"sony_btf_mpx.file=drivers/media/i2c/sony-btf-mpx\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [28 x i8] c"sony_btf_mpx.license=GPL v2\00", section ".modinfo", align 1
@__param_str_debug = internal constant [19 x i8] c"sony_btf_mpx.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype295 = internal constant [32 x i8] c"sony_btf_mpx.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug296 = internal constant [56 x i8] c"sony_btf_mpx.parm=debug:debug level 0=off(default) 1=on\00", section ".modinfo", align 1
@__param_str_force_mpx_mode = internal constant [28 x i8] c"sony_btf_mpx.force_mpx_mode\00", align 1
@force_mpx_mode = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_force_mpx_mode = internal constant %struct.kernel_param { ptr @__param_str_force_mpx_mode, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @force_mpx_mode } }, section "__param", align 4
@__UNIQUE_ID_force_mpx_modetype297 = internal constant [41 x i8] c"sony_btf_mpx.parmtype=force_mpx_mode:int\00", section ".modinfo", align 1
@__initcall__kmod_sony_btf_mpx__298_385_sony_btf_mpx_driver_init6 = internal global ptr @sony_btf_mpx_driver_init, section ".initcall6.init", align 4
@sony_btf_mpx_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @sony_btf_mpx_probe, ptr @sony_btf_mpx_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sony_btf_mpx_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_sony_btf_mpx_driver_exit = internal global ptr @sony_btf_mpx_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sony-btf-mpx\00", [19 x i8] zeroinitializer }, align 32
@sony_btf_mpx_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"sony-btf-mpx\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sony_btf_mpx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s %d-%04x: chip found @ 0x%x (%s)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sony_btf_mpx_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/media/i2c/sony-btf-mpx.c\00", [63 x i8] zeroinitializer }, align 32
@sony_btf_mpx_probe._entry_ptr = internal global ptr @sony_btf_mpx_probe._entry, section ".printk_index", align 4
@sony_btf_mpx_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr @sony_btf_mpx_tuner_ops, ptr null, ptr @sony_btf_mpx_video_ops, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@sony_btf_mpx_tuner_ops = internal constant { %struct.v4l2_subdev_tuner_ops, [52 x i8] } { %struct.v4l2_subdev_tuner_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sony_btf_mpx_g_tuner, ptr @sony_btf_mpx_s_tuner, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@sony_btf_mpx_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr @sony_btf_mpx_s_std, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@mpx_audio_modes = internal constant { [13 x %struct.anon.116], [92 x i8] } { [13 x %struct.anon.116] [%struct.anon.116 { i32 0, i16 4099, i16 32, i16 256, i16 9731, i16 20480, i16 0, i16 1, i16 29952 }, %struct.anon.116 { i32 0, i16 4099, i16 32, i16 256, i16 9731, i16 20480, i16 0, i16 3, i16 29952 }, %struct.anon.116 { i32 1, i16 4099, i16 32, i16 256, i16 9729, i16 20480, i16 0, i16 3, i16 29952 }, %struct.anon.116 { i32 2, i16 4099, i16 288, i16 256, i16 9731, i16 20480, i16 0, i16 8, i16 29952 }, %struct.anon.116 { i32 0, i16 4099, i16 32, i16 256, i16 9731, i16 30976, i16 0, i16 10, i16 29952 }, %struct.anon.116 { i32 2, i16 4099, i16 288, i16 256, i16 9731, i16 30976, i16 0, i16 10, i16 29952 }, %struct.anon.116 { i32 0, i16 4099, i16 32, i16 256, i16 9731, i16 20480, i16 0, i16 4, i16 29952 }, %struct.anon.116 { i32 1, i16 4099, i16 32, i16 256, i16 9729, i16 20480, i16 0, i16 4, i16 29952 }, %struct.anon.116 { i32 1, i16 4099, i16 32, i16 256, i16 9729, i16 20480, i16 0, i16 5, i16 29952 }, %struct.anon.116 { i32 1, i16 4099, i16 32, i16 256, i16 9729, i16 20480, i16 0, i16 7, i16 29952 }, %struct.anon.116 { i32 2, i16 4099, i16 288, i16 256, i16 9731, i16 20480, i16 0, i16 11, i16 29952 }, %struct.anon.116 { i32 0, i16 3, i16 512, i16 256, i16 31747, i16 20480, i16 8704, i16 9, i16 29952 }, %struct.anon.116 { i32 3, i16 3, i16 288, i16 256, i16 31747, i16 20480, i16 0, i16 9, i16 29952 }], [92 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.5 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 19, i32 12 }
@___asan_gen_.8 = private unnamed_addr constant [15 x i8] c"force_mpx_mode\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 33, i32 12 }
@___asan_gen_.11 = private unnamed_addr constant [20 x i8] c"sony_btf_mpx_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 377, i32 26 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 379, i32 11 }
@___asan_gen_.17 = private unnamed_addr constant [16 x i8] c"sony_btf_mpx_id\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 371, i32 35 }
@___asan_gen_.20 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 343, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"sony_btf_mpx_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 327, i32 37 }
@___asan_gen_.35 = private unnamed_addr constant [23 x i8] c"sony_btf_mpx_tuner_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 318, i32 43 }
@___asan_gen_.38 = private unnamed_addr constant [23 x i8] c"sony_btf_mpx_video_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 323, i32 43 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"mpx_audio_modes\00", align 1
@___asan_gen_.42 = private constant [36 x i8] c"../drivers/media/i2c/sony-btf-mpx.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 126, i32 3 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_debug296, ptr @__UNIQUE_ID_debugtype295, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_force_mpx_modetype297, ptr @__UNIQUE_ID_license294, ptr @__exitcall_sony_btf_mpx_driver_exit, ptr @__initcall__kmod_sony_btf_mpx__298_385_sony_btf_mpx_driver_init6, ptr @__param_debug, ptr @__param_force_mpx_mode, ptr @sony_btf_mpx_driver_exit, ptr @sony_btf_mpx_probe._entry, ptr @sony_btf_mpx_probe._entry_ptr, ptr @debug, ptr @force_mpx_mode, ptr @sony_btf_mpx_driver, ptr @.str, ptr @sony_btf_mpx_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @sony_btf_mpx_ops, ptr @sony_btf_mpx_tuner_ops, ptr @sony_btf_mpx_video_ops, ptr @mpx_audio_modes], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_mpx_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_btf_mpx_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_btf_mpx_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_btf_mpx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_btf_mpx_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_btf_mpx_tuner_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_btf_mpx_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpx_audio_modes to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sony_btf_mpx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @sony_btf_mpx_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sony_btf_mpx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @sony_btf_mpx_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sony_btf_mpx_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
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
  %and.i = and i32 %call.i.i, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326592, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 201326592
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 204, i32 noundef 3520) #6
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @sony_btf_mpx_ops) #6
  %mpxmode = getelementptr inbounds %struct.sony_btf_mpx, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %mpxmode to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %mpxmode, align 4
  %audmode = getelementptr inbounds %struct.sony_btf_mpx, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %audmode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sony_btf_mpx_remove(ptr nocapture noundef readonly %client) #2 align 64 {
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sony_btf_mpx_g_tuner(ptr nocapture noundef readonly %sd, ptr nocapture noundef writeonly %vt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 3
  %0 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 114, ptr %capability, align 4
  %rxsubchans = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 6
  %1 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 15, ptr %rxsubchans, align 4
  %audmode = getelementptr inbounds %struct.sony_btf_mpx, ptr %sd, i32 0, i32 2
  %2 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %audmode, align 4
  %audmode1 = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 7
  %4 = ptrtoint ptr %audmode1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %audmode1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sony_btf_mpx_s_tuner(ptr nocapture noundef %sd, ptr nocapture noundef readonly %vt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 7
  %2 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %audmode, align 4
  %audmode1 = getelementptr inbounds %struct.sony_btf_mpx, ptr %sd, i32 0, i32 2
  %4 = ptrtoint ptr %audmode1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %audmode1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp2.not = icmp eq i32 %3, %5
  br i1 %cmp2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %audmode1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %audmode1, align 4
  tail call fastcc void @mpx_setup(ptr noundef %sd)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mpx_setup(ptr nocapture noundef readonly %t) unnamed_addr #2 align 64 {
entry:
  %buffer.i72 = alloca [5 x i8], align 1
  %msg.i73 = alloca %struct.i2c_msg, align 4
  %buffer.i62 = alloca [5 x i8], align 1
  %msg.i63 = alloca %struct.i2c_msg, align 4
  %buffer.i52 = alloca [5 x i8], align 1
  %msg.i53 = alloca %struct.i2c_msg, align 4
  %buffer.i42 = alloca [5 x i8], align 1
  %msg.i43 = alloca %struct.i2c_msg, align 4
  %buffer.i32 = alloca [5 x i8], align 1
  %msg.i33 = alloca %struct.i2c_msg, align 4
  %buffer.i22 = alloca [5 x i8], align 1
  %msg.i23 = alloca %struct.i2c_msg, align 4
  %buffer.i12 = alloca [5 x i8], align 1
  %msg.i13 = alloca %struct.i2c_msg, align 4
  %buffer.i2 = alloca [5 x i8], align 1
  %msg.i3 = alloca %struct.i2c_msg, align 4
  %buffer.i = alloca [5 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %buffer = alloca [3 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %t, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buffer) #6
  %2 = getelementptr inbounds [3 x i8], ptr %buffer, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %buffer, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #6
  %4 = getelementptr inbounds i8, ptr %msg, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4
  %mpxmode = getelementptr inbounds %struct.sony_btf_mpx, ptr %t, i32 0, i32 1
  %6 = ptrtoint ptr %mpxmode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mpxmode, align 4
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %buffer, align 1
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -128, ptr %2, align 1
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %3, align 1
  %addr = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr, align 2
  %13 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %15 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 3, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buffer, ptr %buf, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter, align 8
  %call4 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg, i32 noundef 1) #6
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %2, align 1
  %20 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter, align 8
  %call7 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg, i32 noundef 1) #6
  %audmode = getelementptr inbounds %struct.sony_btf_mpx, ptr %t, i32 0, i32 2
  %22 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %audmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not = icmp ne i32 %23, 0
  %inc = zext i1 %cmp.not to i32
  %spec.select = add i32 %7, %inc
  %arrayidx8 = getelementptr [13 x %struct.anon.116], ptr @mpx_audio_modes, i32 0, i32 %spec.select
  %24 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp9.not = icmp eq i32 %25, 0
  br i1 %cmp9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %entry
  %26 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %23, label %if.then10.sw.epilog24_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb19
    i32 3, label %sw.bb22
    i32 2, label %sw.bb23
  ]

if.then10.sw.epilog24_crit_edge:                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog24

sw.bb:                                            ; preds = %if.then10
  %27 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %25, label %sw.bb.sw.epilog24_crit_edge [
    i32 1, label %sw.bb14
    i32 3, label %sw.bb18
  ]

sw.bb.sw.epilog24_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog24

sw.bb14:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %source16 = getelementptr [13 x %struct.anon.116], ptr @mpx_audio_modes, i32 0, i32 %spec.select, i32 2
  %28 = ptrtoint ptr %source16 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %source16, align 2
  br label %sw.epilog24

sw.bb18:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog24

sw.bb19:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %source21 = getelementptr [13 x %struct.anon.116], ptr @mpx_audio_modes, i32 0, i32 %spec.select, i32 2
  %30 = ptrtoint ptr %source21 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %source21, align 2
  br label %sw.epilog24

sw.bb22:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog24

sw.bb23:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog24

sw.epilog24:                                      ; preds = %sw.bb23, %sw.bb22, %sw.bb19, %sw.bb18, %sw.bb14, %sw.bb.sw.epilog24_crit_edge, %if.then10.sw.epilog24_crit_edge
  %source.0 = phi i16 [ 0, %if.then10.sw.epilog24_crit_edge ], [ 1024, %sw.bb23 ], [ 768, %sw.bb22 ], [ %31, %sw.bb19 ], [ 512, %sw.bb18 ], [ %29, %sw.bb14 ], [ 0, %sw.bb.sw.epilog24_crit_edge ]
  %source26 = getelementptr [13 x %struct.anon.116], ptr @mpx_audio_modes, i32 0, i32 %spec.select, i32 2
  %32 = ptrtoint ptr %source26 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %source26, align 2
  %or1 = or i16 %33, %source.0
  %extract.t93 = trunc i16 %or1 to i8
  %extract96 = lshr i16 %source.0, 8
  %extract.t97 = trunc i16 %extract96 to i8
  br label %if.end31

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %source30 = getelementptr [13 x %struct.anon.116], ptr @mpx_audio_modes, i32 0, i32 %spec.select, i32 2
  %34 = ptrtoint ptr %source30 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %source30, align 2
  %extract.t92 = trunc i16 %35 to i8
  %extract94 = lshr i16 %35, 8
  %extract.t95 = trunc i16 %extract94 to i8
  br label %if.end31

if.end31:                                         ; preds = %if.else, %sw.epilog24
  %.sink91.off0 = phi i8 [ %extract.t92, %if.else ], [ %extract.t93, %sw.epilog24 ]
  %.sink.off8 = phi i8 [ %extract.t95, %if.else ], [ %extract.t97, %sw.epilog24 ]
  %modus = getelementptr [13 x %struct.anon.116], ptr @mpx_audio_modes, i32 0, i32 %spec.select, i32 1
  %36 = ptrtoint ptr %modus to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %modus, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buffer.i) #6
  %38 = getelementptr inbounds [5 x i8], ptr %buffer.i, i32 0, i32 1
  %39 = getelementptr inbounds [5 x i8], ptr %buffer.i, i32 0, i32 2
  %40 = getelementptr inbounds [5 x i8], ptr %buffer.i, i32 0, i32 3
  %41 = getelementptr inbounds [5 x i8], ptr %buffer.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %42 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 393215, ptr %42, align 4
  %44 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 16, ptr %buffer.i, align 1
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %38, align 1
  %46 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 48, ptr %39, align 1
  %47 = lshr i16 %37, 8
  %conv6.i = trunc i16 %47 to i8
  %48 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv6.i, ptr %40, align 1
  %conv9.i = trunc i16 %37 to i8
  %49 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv9.i, ptr %41, align 1
  %50 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %addr, align 2
  %52 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %53 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %54 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %buffer.i, ptr %buf.i, align 4
  %55 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %adapter, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %56, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buffer.i) #6
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buffer.i2) #6
  %57 = getelementptr inbounds [5 x i8], ptr %buffer.i2, i32 0, i32 1
  %58 = getelementptr inbounds [5 x i8], ptr %buffer.i2, i32 0, i32 2
  %59 = getelementptr inbounds [5 x i8], ptr %buffer.i2, i32 0, i32 3
  %60 = getelementptr inbounds [5 x i8], ptr %buffer.i2, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i3) #6
  %61 = getelementptr inbounds i8, ptr %msg.i3, i32 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 393215, ptr %61, align 4
  %63 = ptrtoint ptr %buffer.i2 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 18, ptr %buffer.i2, align 1
  %64 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %57, align 1
  %65 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 8, ptr %58, align 1
  %66 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %.sink.off8, ptr %59, align 1
  %67 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %.sink91.off0, ptr %60, align 1
  %68 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %addr, align 2
  %70 = ptrtoint ptr %msg.i3 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %msg.i3, align 4
  %flags.i7 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3, i32 0, i32 1
  %71 = ptrtoint ptr %flags.i7 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 0, ptr %flags.i7, align 2
  %buf.i9 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3, i32 0, i32 3
  %72 = ptrtoint ptr %buf.i9 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %buffer.i2, ptr %buf.i9, align 4
  %73 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %adapter, align 8
  %call.i11 = call i32 @i2c_transfer(ptr noundef %74, ptr noundef nonnull %msg.i3, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i3) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buffer.i2) #6
  %acb = getelementptr [13 x %struct.anon.116], ptr @mpx_audio_modes, i32 0, i32 %spec.select, i32 3
  %75 = ptrtoint ptr %acb to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %acb, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buffer.i12) #6
  %77 = getelementptr inbounds [5 x i8], ptr %buffer.i12, i32 0, i32 1
  %78 = getelementptr inbounds [5 x i8], ptr %buffer.i12, i32 0, i32 2
  %79 = getelementptr inbounds [5 x i8], ptr %buffer.i12, i32 0, i32 3
  %80 = getelementptr inbounds [5 x i8], ptr %buffer.i12, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i13) #6
  %81 = getelementptr inbounds i8, ptr %msg.i13, i32 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 393215, ptr %81, align 4
  %83 = ptrtoint ptr %buffer.i12 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 18, ptr %buffer.i12, align 1
  %84 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %77, align 1
  %85 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 19, ptr %78, align 1
  %86 = lshr i16 %76, 8
  %conv6.i14 = trunc i16 %86 to i8
  %87 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv6.i14, ptr %79, align 1
  %conv9.i15 = trunc i16 %76 to i8
  %88 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv9.i15, ptr %80, align 1
  %89 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %addr, align 2
  %91 = ptrtoint ptr %msg.i13 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %msg.i13, align 4
  %flags.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13, i32 0, i32 1
  %92 = ptrtoint ptr %flags.i17 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 0, ptr %flags.i17, align 2
  %buf.i19 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13, i32 0, i32 3
  %93 = ptrtoint ptr %buf.i19 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %buffer.i12, ptr %buf.i19, align 4
  %94 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %adapter, align 8
  %call.i21 = call i32 @i2c_transfer(ptr noundef %95, ptr noundef nonnull %msg.i13, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i13) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buffer.i12) #6
  %fm_prescale = getelementptr [13 x %struct.anon.116], ptr @mpx_audio_modes, i32 0, i32 %spec.select, i32 4
  %96 = ptrtoint ptr %fm_prescale to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %fm_prescale, align 2
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buffer.i22) #6
  %98 = getelementptr inbounds [5 x i8], ptr %buffer.i22, i32 0, i32 1
  %99 = getelementptr inbounds [5 x i8], ptr %buffer.i22, i32 0, i32 2
  %100 = getelementptr inbounds [5 x i8], ptr %buffer.i22, i32 0, i32 3
  %101 = getelementptr inbounds [5 x i8], ptr %buffer.i22, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i23) #6
  %102 = getelementptr inbounds i8, ptr %msg.i23, i32 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 393215, ptr %102, align 4
  %104 = ptrtoint ptr %buffer.i22 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 18, ptr %buffer.i22, align 1
  %105 = ptrtoint ptr %98 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %98, align 1
  %106 = ptrtoint ptr %99 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 14, ptr %99, align 1
  %107 = lshr i16 %97, 8
  %conv6.i24 = trunc i16 %107 to i8
  %108 = ptrtoint ptr %100 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv6.i24, ptr %100, align 1
  %conv9.i25 = trunc i16 %97 to i8
  %109 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv9.i25, ptr %101, align 1
  %110 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %addr, align 2
  %112 = ptrtoint ptr %msg.i23 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %111, ptr %msg.i23, align 4
  %flags.i27 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 0, i32 1
  %113 = ptrtoint ptr %flags.i27 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 0, ptr %flags.i27, align 2
  %buf.i29 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 0, i32 3
  %114 = ptrtoint ptr %buf.i29 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %buffer.i22, ptr %buf.i29, align 4
  %115 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %adapter, align 8
  %call.i31 = call i32 @i2c_transfer(ptr noundef %116, ptr noundef nonnull %msg.i23, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i23) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buffer.i22) #6
  %nicam_prescale = getelementptr [13 x %struct.anon.116], ptr @mpx_audio_modes, i32 0, i32 %spec.select, i32 5
  %117 = ptrtoint ptr %nicam_prescale to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %nicam_prescale, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buffer.i32) #6
  %119 = getelementptr inbounds [5 x i8], ptr %buffer.i32, i32 0, i32 1
  %120 = getelementptr inbounds [5 x i8], ptr %buffer.i32, i32 0, i32 2
  %121 = getelementptr inbounds [5 x i8], ptr %buffer.i32, i32 0, i32 3
  %122 = getelementptr inbounds [5 x i8], ptr %buffer.i32, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i33) #6
  %123 = getelementptr inbounds i8, ptr %msg.i33, i32 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 393215, ptr %123, align 4
  %125 = ptrtoint ptr %buffer.i32 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 18, ptr %buffer.i32, align 1
  %126 = ptrtoint ptr %119 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %119, align 1
  %127 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 16, ptr %120, align 1
  %128 = lshr i16 %118, 8
  %conv6.i34 = trunc i16 %128 to i8
  %129 = ptrtoint ptr %121 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %conv6.i34, ptr %121, align 1
  %conv9.i35 = trunc i16 %118 to i8
  %130 = ptrtoint ptr %122 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv9.i35, ptr %122, align 1
  %131 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %addr, align 2
  %133 = ptrtoint ptr %msg.i33 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %132, ptr %msg.i33, align 4
  %flags.i37 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33, i32 0, i32 1
  %134 = ptrtoint ptr %flags.i37 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 0, ptr %flags.i37, align 2
  %buf.i39 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33, i32 0, i32 3
  %135 = ptrtoint ptr %buf.i39 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %buffer.i32, ptr %buf.i39, align 4
  %136 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %adapter, align 8
  %call.i41 = call i32 @i2c_transfer(ptr noundef %137, ptr noundef nonnull %msg.i33, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i33) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buffer.i32) #6
  %scart_prescale = getelementptr [13 x %struct.anon.116], ptr @mpx_audio_modes, i32 0, i32 %spec.select, i32 6
  %138 = ptrtoint ptr %scart_prescale to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %scart_prescale, align 2
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buffer.i42) #6
  %140 = getelementptr inbounds [5 x i8], ptr %buffer.i42, i32 0, i32 1
  %141 = getelementptr inbounds [5 x i8], ptr %buffer.i42, i32 0, i32 2
  %142 = getelementptr inbounds [5 x i8], ptr %buffer.i42, i32 0, i32 3
  %143 = getelementptr inbounds [5 x i8], ptr %buffer.i42, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i43) #6
  %144 = getelementptr inbounds i8, ptr %msg.i43, i32 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 393215, ptr %144, align 4
  %146 = ptrtoint ptr %buffer.i42 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 18, ptr %buffer.i42, align 1
  %147 = ptrtoint ptr %140 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 0, ptr %140, align 1
  %148 = ptrtoint ptr %141 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 13, ptr %141, align 1
  %149 = lshr i16 %139, 8
  %conv6.i44 = trunc i16 %149 to i8
  %150 = ptrtoint ptr %142 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %conv6.i44, ptr %142, align 1
  %conv9.i45 = trunc i16 %139 to i8
  %151 = ptrtoint ptr %143 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %conv9.i45, ptr %143, align 1
  %152 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %addr, align 2
  %154 = ptrtoint ptr %msg.i43 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %153, ptr %msg.i43, align 4
  %flags.i47 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i43, i32 0, i32 1
  %155 = ptrtoint ptr %flags.i47 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 0, ptr %flags.i47, align 2
  %buf.i49 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i43, i32 0, i32 3
  %156 = ptrtoint ptr %buf.i49 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %buffer.i42, ptr %buf.i49, align 4
  %157 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %adapter, align 8
  %call.i51 = call i32 @i2c_transfer(ptr noundef %158, ptr noundef nonnull %msg.i43, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i43) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buffer.i42) #6
  %system = getelementptr [13 x %struct.anon.116], ptr @mpx_audio_modes, i32 0, i32 %spec.select, i32 7
  %159 = ptrtoint ptr %system to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %system, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buffer.i52) #6
  %161 = getelementptr inbounds [5 x i8], ptr %buffer.i52, i32 0, i32 1
  %162 = getelementptr inbounds [5 x i8], ptr %buffer.i52, i32 0, i32 2
  %163 = getelementptr inbounds [5 x i8], ptr %buffer.i52, i32 0, i32 3
  %164 = getelementptr inbounds [5 x i8], ptr %buffer.i52, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i53) #6
  %165 = getelementptr inbounds i8, ptr %msg.i53, i32 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 393215, ptr %165, align 4
  %167 = ptrtoint ptr %buffer.i52 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 16, ptr %buffer.i52, align 1
  %168 = ptrtoint ptr %161 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 0, ptr %161, align 1
  %169 = ptrtoint ptr %162 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 32, ptr %162, align 1
  %170 = lshr i16 %160, 8
  %conv6.i54 = trunc i16 %170 to i8
  %171 = ptrtoint ptr %163 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %conv6.i54, ptr %163, align 1
  %conv9.i55 = trunc i16 %160 to i8
  %172 = ptrtoint ptr %164 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %conv9.i55, ptr %164, align 1
  %173 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %addr, align 2
  %175 = ptrtoint ptr %msg.i53 to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %174, ptr %msg.i53, align 4
  %flags.i57 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53, i32 0, i32 1
  %176 = ptrtoint ptr %flags.i57 to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 0, ptr %flags.i57, align 2
  %buf.i59 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53, i32 0, i32 3
  %177 = ptrtoint ptr %buf.i59 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %buffer.i52, ptr %buf.i59, align 4
  %178 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %adapter, align 8
  %call.i61 = call i32 @i2c_transfer(ptr noundef %179, ptr noundef nonnull %msg.i53, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i53) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buffer.i52) #6
  %volume = getelementptr [13 x %struct.anon.116], ptr @mpx_audio_modes, i32 0, i32 %spec.select, i32 8
  %180 = ptrtoint ptr %volume to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %volume, align 2
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buffer.i62) #6
  %182 = getelementptr inbounds [5 x i8], ptr %buffer.i62, i32 0, i32 1
  %183 = getelementptr inbounds [5 x i8], ptr %buffer.i62, i32 0, i32 2
  %184 = getelementptr inbounds [5 x i8], ptr %buffer.i62, i32 0, i32 3
  %185 = getelementptr inbounds [5 x i8], ptr %buffer.i62, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i63) #6
  %186 = getelementptr inbounds i8, ptr %msg.i63, i32 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 393215, ptr %186, align 4
  %188 = ptrtoint ptr %buffer.i62 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 18, ptr %buffer.i62, align 1
  %189 = ptrtoint ptr %182 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 0, ptr %182, align 1
  %190 = ptrtoint ptr %183 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 0, ptr %183, align 1
  %191 = lshr i16 %181, 8
  %conv6.i64 = trunc i16 %191 to i8
  %192 = ptrtoint ptr %184 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %conv6.i64, ptr %184, align 1
  %conv9.i65 = trunc i16 %181 to i8
  %193 = ptrtoint ptr %185 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %conv9.i65, ptr %185, align 1
  %194 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %addr, align 2
  %196 = ptrtoint ptr %msg.i63 to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 %195, ptr %msg.i63, align 4
  %flags.i67 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63, i32 0, i32 1
  %197 = ptrtoint ptr %flags.i67 to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 0, ptr %flags.i67, align 2
  %buf.i69 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63, i32 0, i32 3
  %198 = ptrtoint ptr %buf.i69 to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %buffer.i62, ptr %buf.i69, align 4
  %199 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %adapter, align 8
  %call.i71 = call i32 @i2c_transfer(ptr noundef %200, ptr noundef nonnull %msg.i63, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i63) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buffer.i62) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp57 = icmp eq i32 %25, 1
  br i1 %cmp57, label %if.then59, label %if.end31.if.end64_crit_edge

if.end31.if.end64_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then59:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %201 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %audmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %cmp61 = icmp eq i32 %202, 0
  %cond = select i1 %cmp61, i32 2032, i32 400
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buffer.i72) #6
  %203 = getelementptr inbounds [5 x i8], ptr %buffer.i72, i32 0, i32 1
  %204 = getelementptr inbounds [5 x i8], ptr %buffer.i72, i32 0, i32 2
  %205 = getelementptr inbounds [5 x i8], ptr %buffer.i72, i32 0, i32 3
  %206 = getelementptr inbounds [5 x i8], ptr %buffer.i72, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i73) #6
  %207 = getelementptr inbounds i8, ptr %msg.i73, i32 4
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 393215, ptr %207, align 4
  %209 = ptrtoint ptr %buffer.i72 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 16, ptr %buffer.i72, align 1
  %210 = ptrtoint ptr %203 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 0, ptr %203, align 1
  %211 = ptrtoint ptr %204 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 34, ptr %204, align 1
  %212 = lshr i32 %cond, 8
  %conv6.i74 = trunc i32 %212 to i8
  %213 = ptrtoint ptr %205 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %conv6.i74, ptr %205, align 1
  %conv9.i75 = trunc i32 %cond to i8
  %214 = ptrtoint ptr %206 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %conv9.i75, ptr %206, align 1
  %215 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %addr, align 2
  %217 = ptrtoint ptr %msg.i73 to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 %216, ptr %msg.i73, align 4
  %flags.i77 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i73, i32 0, i32 1
  %218 = ptrtoint ptr %flags.i77 to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 0, ptr %flags.i77, align 2
  %buf.i79 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i73, i32 0, i32 3
  %219 = ptrtoint ptr %buf.i79 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %buffer.i72, ptr %buf.i79, align 4
  %220 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %adapter, align 8
  %call.i81 = call i32 @i2c_transfer(ptr noundef %221, ptr noundef nonnull %msg.i73, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i73) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buffer.i72) #6
  br label %if.end64

if.end64:                                         ; preds = %if.then59, %if.end31.if.end64_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buffer) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sony_btf_mpx_s_std(ptr nocapture noundef %sd, i64 noundef %std) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %std, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.else:                                          ; preds = %entry
  %and1 = and i64 %std, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %if.else4, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.else4:                                         ; preds = %if.else
  %and5 = and i64 %std, 224
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and5)
  %tobool6.not = icmp eq i64 %and5, 0
  br i1 %tobool6.not, label %if.else8, label %if.else4.if.end14_crit_edge

if.else4.if.end14_crit_edge:                      ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.else8:                                         ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #8
  %and9 = and i64 %std, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and9)
  %tobool10.not = icmp eq i64 %and9, 0
  %spec.select = select i1 %tobool10.not, i32 0, i32 11
  br label %if.end14

if.end14:                                         ; preds = %if.else8, %if.else4.if.end14_crit_edge, %if.else.if.end14_crit_edge, %entry.if.end14_crit_edge
  %default_mpx_mode.0 = phi i32 [ 1, %entry.if.end14_crit_edge ], [ 4, %if.else.if.end14_crit_edge ], [ 6, %if.else4.if.end14_crit_edge ], [ %spec.select, %if.else8 ]
  %mpxmode = getelementptr inbounds %struct.sony_btf_mpx, ptr %sd, i32 0, i32 1
  %0 = ptrtoint ptr %mpxmode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mpxmode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %default_mpx_mode.0, i32 %1)
  %cmp.not = icmp eq i32 %default_mpx_mode.0, %1
  br i1 %cmp.not, label %if.end14.if.end18_crit_edge, label %if.then15

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then15:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %mpxmode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %default_mpx_mode.0, ptr %mpxmode, align 4
  tail call fastcc void @mpx_setup(ptr noundef %sd)
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end14.if.end18_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
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

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !13, !15, !16, !18, !19, !20, !22, !24, !26, !28, !29, !30, !31, !32, !34, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__UNIQUE_ID_description292, !1, !"__UNIQUE_ID_description292", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/sony-btf-mpx.c", i32 16, i32 1}
!2 = !{ptr @__UNIQUE_ID_file293, !3, !"__UNIQUE_ID_file293", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/sony-btf-mpx.c", i32 17, i32 1}
!4 = !{ptr @__UNIQUE_ID_license294, !3, !"__UNIQUE_ID_license294", i1 false, i1 false}
!5 = !{ptr @__param_debug, !6, !"__param_debug", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/sony-btf-mpx.c", i32 20, i32 1}
!7 = !{ptr @__UNIQUE_ID_debugtype295, !6, !"__UNIQUE_ID_debugtype295", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_debug296, !9, !"__UNIQUE_ID_debug296", i1 false, i1 false}
!9 = !{!"../drivers/media/i2c/sony-btf-mpx.c", i32 21, i32 1}
!10 = !{ptr @__param_force_mpx_mode, !11, !"__param_force_mpx_mode", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/sony-btf-mpx.c", i32 34, i32 1}
!12 = !{ptr @__UNIQUE_ID_force_mpx_modetype297, !11, !"__UNIQUE_ID_force_mpx_modetype297", i1 false, i1 false}
!13 = !{ptr @__initcall__kmod_sony_btf_mpx__298_385_sony_btf_mpx_driver_init6, !14, !"__initcall__kmod_sony_btf_mpx__298_385_sony_btf_mpx_driver_init6", i1 false, i1 false}
!14 = !{!"../drivers/media/i2c/sony-btf-mpx.c", i32 385, i32 1}
!15 = !{ptr @__exitcall_sony_btf_mpx_driver_exit, !14, !"__exitcall_sony_btf_mpx_driver_exit", i1 false, i1 false}
!16 = !{ptr @debug, !17, !"debug", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/sony-btf-mpx.c", i32 19, i32 12}
!18 = !{ptr @__param_str_debug, !6, !"__param_str_debug", i1 false, i1 false}
!19 = !{ptr @__param_str_force_mpx_mode, !11, !"__param_str_force_mpx_mode", i1 false, i1 false}
!20 = !{ptr @force_mpx_mode, !21, !"force_mpx_mode", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/sony-btf-mpx.c", i32 33, i32 12}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/sony-btf-mpx.c", i32 379, i32 11}
!24 = !{ptr @sony_btf_mpx_driver, !25, !"sony_btf_mpx_driver", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/sony-btf-mpx.c", i32 377, i32 26}
!26 = !{ptr @.str.1, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/sony-btf-mpx.c", i32 343, i32 2}
!28 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @sony_btf_mpx_probe._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @sony_btf_mpx_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @sony_btf_mpx_ops, !33, !"sony_btf_mpx_ops", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/sony-btf-mpx.c", i32 327, i32 37}
!34 = !{ptr @sony_btf_mpx_tuner_ops, !35, !"sony_btf_mpx_tuner_ops", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/sony-btf-mpx.c", i32 318, i32 43}
!36 = !{ptr @mpx_audio_modes, !37, !"mpx_audio_modes", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/sony-btf-mpx.c", i32 126, i32 3}
!38 = !{ptr @sony_btf_mpx_video_ops, !39, !"sony_btf_mpx_video_ops", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/sony-btf-mpx.c", i32 323, i32 43}
!40 = !{ptr @sony_btf_mpx_id, !41, !"sony_btf_mpx_id", i1 false, i1 false}
!41 = !{!"../drivers/media/i2c/sony-btf-mpx.c", i32 371, i32 35}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
