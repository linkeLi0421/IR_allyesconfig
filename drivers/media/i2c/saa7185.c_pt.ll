; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/saa7185.c_pt.bc'
source_filename = "../drivers/media/i2c/saa7185.c"
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
%struct.saa7185 = type { %struct.v4l2_subdev, [128 x i8], i64 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }

@__UNIQUE_ID_description292 = internal constant [57 x i8] c"saa7185.description=Philips SAA7185 video encoder driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [26 x i8] c"saa7185.author=Dave Perks\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [39 x i8] c"saa7185.file=drivers/media/i2c/saa7185\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"saa7185.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [14 x i8] c"saa7185.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype296 = internal constant [27 x i8] c"saa7185.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug297 = internal constant [37 x i8] c"saa7185.parm=debug:Debug level (0-1)\00", section ".modinfo", align 1
@__initcall__kmod_saa7185__298_353_saa7185_driver_init6 = internal global ptr @saa7185_driver_init, section ".initcall6.init", align 4
@saa7185_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @saa7185_probe, ptr @saa7185_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @saa7185_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_saa7185_driver_exit = internal global ptr @saa7185_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"saa7185\00", [24 x i8] zeroinitializer }, align 32
@saa7185_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"saa7185\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@saa7185_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s %d-%04x: chip found @ 0x%x (%s)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"saa7185_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/saa7185.c\00", [36 x i8] zeroinitializer }, align 32
@saa7185_probe._entry_ptr = internal global ptr @saa7185_probe._entry, section ".printk_index", align 4
@saa7185_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @saa7185_core_ops, ptr null, ptr null, ptr @saa7185_video_ops, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@init_common = internal constant { [110 x i8], [50 x i8] } { [110 x i8] c":\0FBkC\00D\00E\22F\ACG\0EH\03I\1DJ\ACK\F0L\C8M\B9N\D4O8PGQ\C1R\E3STT\A3UTV\F2W\90X\00Y\00Z\00[v\\\A5]<^:_:`\00g\00h\00i\00j\00k\91l m\00n\0Eo\00p q\15r\90sat\00u\00v\00w\15x\90yazp{\16|5} ", [50 x i8] zeroinitializer }, align 32
@init_ntsc = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"a\1Db\E6c\1Fd|e\F0f!", [20 x i8] zeroinitializer }, align 32
@saa7185_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: init error %d\0A\00", [43 x i8] zeroinitializer }, align 32
@saa7185_probe._entry_ptr.6 = internal global ptr @saa7185_probe._entry.4, section ".printk_index", align 4
@saa7185_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: revision 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@saa7185_probe._entry_ptr.9 = internal global ptr @saa7185_probe._entry.7, section ".printk_index", align 4
@saa7185_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr @saa7185_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7185_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr @saa7185_s_routing, ptr null, ptr null, ptr null, ptr @saa7185_s_std_output, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@init_pal = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"a\1Eb\C8c\CBd\8Ae\09f*", [20 x i8] zeroinitializer }, align 32
@saa7185_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: %02x set to %02x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"saa7185_write\00", [18 x i8] zeroinitializer }, align 32
@saa7185_write._entry_ptr = internal global ptr @saa7185_write._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.12 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 27, i32 12 }
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"saa7185_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 344, i32 26 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 346, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [11 x i8] c"saa7185_id\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 338, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 304, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"saa7185_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 285, i32 37 }
@___asan_gen_.39 = private unnamed_addr constant [12 x i8] c"init_common\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 109, i32 28 }
@___asan_gen_.42 = private unnamed_addr constant [10 x i8] c"init_ntsc\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 196, i32 28 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 318, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 320, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"saa7185_core_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 276, i32 42 }
@___asan_gen_.60 = private unnamed_addr constant [18 x i8] c"saa7185_video_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 280, i32 43 }
@___asan_gen_.63 = private unnamed_addr constant [9 x i8] c"init_pal\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 186, i32 28 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private constant [31 x i8] c"../drivers/media/i2c/saa7185.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 60, i32 2 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug297, ptr @__UNIQUE_ID_debugtype296, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_saa7185_driver_exit, ptr @__initcall__kmod_saa7185__298_353_saa7185_driver_init6, ptr @__param_debug, ptr @saa7185_driver_exit, ptr @saa7185_probe._entry, ptr @saa7185_probe._entry.4, ptr @saa7185_probe._entry.7, ptr @saa7185_probe._entry_ptr, ptr @saa7185_probe._entry_ptr.6, ptr @saa7185_probe._entry_ptr.9, ptr @saa7185_write._entry, ptr @saa7185_write._entry_ptr, ptr @debug, ptr @saa7185_driver, ptr @.str, ptr @saa7185_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @saa7185_ops, ptr @init_common, ptr @init_ntsc, ptr @.str.5, ptr @.str.8, ptr @saa7185_core_ops, ptr @saa7185_video_ops, ptr @init_pal, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7185_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7185_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7185_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7185_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_common to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ntsc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7185_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7185_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7185_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7185_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_pal to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7185_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7185_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @saa7185_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @saa7185_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @saa7185_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7185_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #5
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %9, i32 noundef %13, i32 noundef %conv, i32 noundef %shl, ptr noundef %name6) #8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 336, i32 noundef 3520) #5
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %norm = getelementptr inbounds %struct.saa7185, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 45056, ptr %norm, align 8
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @saa7185_ops) #5
  %call14 = tail call fastcc i32 @saa7185_write_block(ptr noundef nonnull %call.i, ptr noundef nonnull @init_common, i32 noundef 110)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call14)
  %cmp15 = icmp sgt i32 %call14, -1
  br i1 %cmp15, label %if.end19, label %if.end12.do.body23_crit_edge

if.end12.do.body23_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body23

if.end19:                                         ; preds = %if.end12
  %call18 = tail call fastcc i32 @saa7185_write_block(ptr noundef nonnull %call.i, ptr noundef nonnull @init_ntsc, i32 noundef 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp20 = icmp slt i32 %call18, 0
  br i1 %cmp20, label %if.end19.do.body23_crit_edge, label %do.body37

if.end19.do.body23_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body23

do.body23:                                        ; preds = %if.end19.do.body23_crit_edge, %if.end12.do.body23_crit_edge
  %i.073 = phi i32 [ %call18, %if.end19.do.body23_crit_edge ], [ %call14, %if.end12.do.body23_crit_edge ]
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp24 = icmp sgt i32 %17, 0
  br i1 %cmp24, label %do.end29, label %do.body23.cleanup_crit_edge

do.body23.cleanup_crit_edge:                      ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end29:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #7
  %name31 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name31, i32 noundef %i.073) #8
  br label %cleanup

do.body37:                                        ; preds = %if.end19
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp38 = icmp sgt i32 %18, 0
  br i1 %cmp38, label %do.end43, label %do.body37.cleanup_crit_edge

do.body37.cleanup_crit_edge:                      ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end43:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  %name45 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 11
  %19 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %20) #5
  %shr = ashr i32 %call1.i, 5
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name45, i32 noundef %shr) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %do.body37.cleanup_crit_edge, %do.end29, %do.body23.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ], [ 0, %do.body37.cleanup_crit_edge ], [ 0, %do.end43 ], [ 0, %do.body23.cleanup_crit_edge ], [ 0, %do.end29 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7185_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #5
  %arrayidx = getelementptr %struct.saa7185, ptr %1, i32 0, i32 1, i32 97
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = or i8 %3, 64
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i, align 4
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp sgt i32 %7, 0
  br i1 %cmp.i, label %do.end.i, label %entry.saa7185_write.exit_crit_edge

entry.saa7185_write.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %saa7185_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 9
  %conv3.i = zext i8 %4 to i32
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 97, i32 noundef %conv3.i) #8
  br label %saa7185_write.exit

saa7185_write.exit:                               ; preds = %do.end.i, %entry.saa7185_write.exit_crit_edge
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %4, ptr %arrayidx, align 1
  %call8.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 97, i8 noundef zeroext %4) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @saa7185_write_block(ptr noundef %sd, ptr nocapture noundef readonly %data, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %block_data = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
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
  %call.i.i = tail call i32 %7(ptr noundef %3) #5
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %while.cond21.preheader, label %if.then

while.cond21.preheader:                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp2260 = icmp ugt i32 %len, 1
  br i1 %cmp2260, label %while.body24.lr.ph, label %while.cond21.preheader.if.end33_crit_edge

while.cond21.preheader.if.end33_crit_edge:        ; preds = %while.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

while.body24.lr.ph:                               ; preds = %while.cond21.preheader
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  br label %while.body24

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %block_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp56 = icmp ugt i32 %len, 1
  %8 = call ptr @memset(ptr %block_data, i32 255, i32 32)
  br i1 %cmp56, label %if.then.while.body_crit_edge, label %if.then.while.end_crit_edge

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.then.while.body_crit_edge:                     ; preds = %if.then
  br label %while.body

while.body:                                       ; preds = %do.end.while.body_crit_edge, %if.then.while.body_crit_edge
  %len.addr.058 = phi i32 [ %sub, %do.end.while.body_crit_edge ], [ %len, %if.then.while.body_crit_edge ]
  %data.addr.057 = phi ptr [ %add.ptr, %do.end.while.body_crit_edge ], [ %data, %if.then.while.body_crit_edge ]
  %9 = ptrtoint ptr %data.addr.057 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data.addr.057, align 1
  %11 = ptrtoint ptr %block_data to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %block_data, align 1
  br label %do.body

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %while.body
  %data.addr.1 = phi ptr [ %data.addr.057, %while.body ], [ %add.ptr, %land.lhs.true.do.body_crit_edge ]
  %len.addr.1 = phi i32 [ %len.addr.058, %while.body ], [ %sub, %land.lhs.true.do.body_crit_edge ]
  %reg.0 = phi i8 [ %10, %while.body ], [ %inc6, %land.lhs.true.do.body_crit_edge ]
  %block_len.0 = phi i32 [ 1, %while.body ], [ %inc8, %land.lhs.true.do.body_crit_edge ]
  %arrayidx4 = getelementptr i8, ptr %data.addr.1, i32 1
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4, align 1
  %idxprom = zext i8 %reg.0 to i32
  %arrayidx7 = getelementptr %struct.saa7185, ptr %sd, i32 0, i32 1, i32 %idxprom
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
  call void @__sanitizer_cov_trace_pc() #7
  %call.i67 = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %block_data, i32 noundef %inc8, i16 noundef zeroext 0) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end:                                           ; preds = %land.lhs.true
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %block_data, i32 noundef %inc8, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp18 = icmp sgt i32 %call.i, -1
  %or.cond66 = select i1 %cmp18, i1 %cmp10, i1 false
  br i1 %or.cond66, label %do.end.while.body_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

do.end.while.body_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %do.end.while.end_crit_edge, %do.end.thread, %if.then.while.end_crit_edge
  %ret.1 = phi i32 [ -1, %if.then.while.end_crit_edge ], [ %call.i67, %do.end.thread ], [ %call.i, %do.end.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %block_data) #5
  br label %if.end33

while.body24:                                     ; preds = %saa7185_write.exit.while.body24_crit_edge, %while.body24.lr.ph
  %len.addr.262 = phi i32 [ %len, %while.body24.lr.ph ], [ %sub31, %saa7185_write.exit.while.body24_crit_edge ]
  %data.addr.261 = phi ptr [ %data, %while.body24.lr.ph ], [ %incdec.ptr25, %saa7185_write.exit.while.body24_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %data.addr.261, i32 1
  %18 = ptrtoint ptr %data.addr.261 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data.addr.261, align 1
  %20 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %incdec.ptr, align 1
  %22 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_priv.i, align 4
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i54 = icmp sgt i32 %24, 0
  %conv.i55 = zext i8 %19 to i32
  br i1 %cmp.i54, label %do.end.i, label %while.body24.saa7185_write.exit_crit_edge

while.body24.saa7185_write.exit_crit_edge:        ; preds = %while.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %saa7185_write.exit

do.end.i:                                         ; preds = %while.body24
  call void @__sanitizer_cov_trace_pc() #7
  %conv3.i = zext i8 %21 to i32
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef %conv.i55, i32 noundef %conv3.i) #8
  br label %saa7185_write.exit

saa7185_write.exit:                               ; preds = %do.end.i, %while.body24.saa7185_write.exit_crit_edge
  %arrayidx.i = getelementptr %struct.saa7185, ptr %sd, i32 0, i32 1, i32 %conv.i55
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %21, ptr %arrayidx.i, align 1
  %call8.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext %19, i8 noundef zeroext %21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8.i)
  %cmp27 = icmp sgt i32 %call8.i, -1
  %incdec.ptr25 = getelementptr i8, ptr %data.addr.261, i32 2
  %sub31 = add i32 %len.addr.262, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub31)
  %cmp22 = icmp ugt i32 %sub31, 1
  %or.cond65 = select i1 %cmp27, i1 %cmp22, i1 false
  br i1 %or.cond65, label %saa7185_write.exit.while.body24_crit_edge, label %saa7185_write.exit.if.end33_crit_edge

saa7185_write.exit.if.end33_crit_edge:            ; preds = %saa7185_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

saa7185_write.exit.while.body24_crit_edge:        ; preds = %saa7185_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body24

if.end33:                                         ; preds = %saa7185_write.exit.if.end33_crit_edge, %while.end, %while.cond21.preheader.if.end33_crit_edge
  %ret.3 = phi i32 [ %ret.1, %while.end ], [ -1, %while.cond21.preheader.if.end33_crit_edge ], [ %call8.i, %saa7185_write.exit.if.end33_crit_edge ]
  ret i32 %ret.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7185_init(ptr noundef %sd, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call fastcc i32 @saa7185_write_block(ptr noundef %sd, ptr noundef nonnull @init_common, i32 noundef 110)
  %norm = getelementptr inbounds %struct.saa7185, ptr %sd, i32 0, i32 2
  %0 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %norm, align 8
  %and = and i64 %1, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %init_pal.init_ntsc = select i1 %tobool.not, ptr @init_pal, ptr @init_ntsc
  %call3 = tail call fastcc i32 @saa7185_write_block(ptr noundef %sd, ptr noundef nonnull %init_pal.init_ntsc, i32 noundef 12)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7185_s_routing(ptr noundef %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %input to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %input, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb15
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %1 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_priv.i.i, align 4
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp sgt i32 %3, 0
  br i1 %cmp.i, label %do.end.i, label %sw.bb.saa7185_write.exit_crit_edge

sw.bb.saa7185_write.exit_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %saa7185_write.exit

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 58, i32 noundef 15) #8
  br label %saa7185_write.exit

saa7185_write.exit:                               ; preds = %do.end.i, %sw.bb.saa7185_write.exit_crit_edge
  %arrayidx.i = getelementptr %struct.saa7185, ptr %sd, i32 0, i32 1, i32 58
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 15, ptr %arrayidx.i, align 1
  %call8.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 58, i8 noundef zeroext 15) #5
  %arrayidx = getelementptr %struct.saa7185, ptr %sd, i32 0, i32 1, i32 97
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %7 = or i8 %6, 8
  %8 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_priv.i.i, align 4
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i37 = icmp sgt i32 %10, 0
  br i1 %cmp.i37, label %do.end.i41, label %saa7185_write.exit.saa7185_write.exit44_crit_edge

saa7185_write.exit.saa7185_write.exit44_crit_edge: ; preds = %saa7185_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %saa7185_write.exit44

do.end.i41:                                       ; preds = %saa7185_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  %name.i39 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i = zext i8 %7 to i32
  %call4.i40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i39, i32 noundef 97, i32 noundef %conv3.i) #8
  br label %saa7185_write.exit44

saa7185_write.exit44:                             ; preds = %do.end.i41, %saa7185_write.exit.saa7185_write.exit44_crit_edge
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %7, ptr %arrayidx, align 1
  %call8.i43 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 97, i8 noundef zeroext %7) #5
  %12 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i.i, align 4
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i46 = icmp sgt i32 %14, 0
  br i1 %cmp.i46, label %do.end.i50, label %saa7185_write.exit44.saa7185_write.exit53_crit_edge

saa7185_write.exit44.saa7185_write.exit53_crit_edge: ; preds = %saa7185_write.exit44
  call void @__sanitizer_cov_trace_pc() #7
  br label %saa7185_write.exit53

do.end.i50:                                       ; preds = %saa7185_write.exit44
  call void @__sanitizer_cov_trace_pc() #7
  %name.i48 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4.i49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i48, i32 noundef 110, i32 noundef 1) #8
  br label %saa7185_write.exit53

saa7185_write.exit53:                             ; preds = %do.end.i50, %saa7185_write.exit44.saa7185_write.exit53_crit_edge
  %arrayidx.i51 = getelementptr %struct.saa7185, ptr %sd, i32 0, i32 1, i32 110
  %15 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %arrayidx.i51, align 1
  %call8.i52 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 110, i8 noundef zeroext 1) #5
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %dev_priv.i.i54 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %16 = ptrtoint ptr %dev_priv.i.i54 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_priv.i.i54, align 4
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i55 = icmp sgt i32 %18, 0
  br i1 %cmp.i55, label %do.end.i59, label %sw.bb5.saa7185_write.exit62_crit_edge

sw.bb5.saa7185_write.exit62_crit_edge:            ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %saa7185_write.exit62

do.end.i59:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  %name.i57 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4.i58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i57, i32 noundef 58, i32 noundef 15) #8
  br label %saa7185_write.exit62

saa7185_write.exit62:                             ; preds = %do.end.i59, %sw.bb5.saa7185_write.exit62_crit_edge
  %arrayidx.i60 = getelementptr %struct.saa7185, ptr %sd, i32 0, i32 1, i32 58
  %19 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 15, ptr %arrayidx.i60, align 1
  %call8.i61 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 58, i8 noundef zeroext 15) #5
  %arrayidx8 = getelementptr %struct.saa7185, ptr %sd, i32 0, i32 1, i32 97
  %20 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx8, align 1
  %22 = and i8 %21, -9
  %23 = ptrtoint ptr %dev_priv.i.i54 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_priv.i.i54, align 4
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i64 = icmp sgt i32 %25, 0
  br i1 %cmp.i64, label %do.end.i69, label %saa7185_write.exit62.saa7185_write.exit72_crit_edge

saa7185_write.exit62.saa7185_write.exit72_crit_edge: ; preds = %saa7185_write.exit62
  call void @__sanitizer_cov_trace_pc() #7
  br label %saa7185_write.exit72

do.end.i69:                                       ; preds = %saa7185_write.exit62
  call void @__sanitizer_cov_trace_pc() #7
  %name.i66 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i67 = zext i8 %22 to i32
  %call4.i68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i66, i32 noundef 97, i32 noundef %conv3.i67) #8
  br label %saa7185_write.exit72

saa7185_write.exit72:                             ; preds = %do.end.i69, %saa7185_write.exit62.saa7185_write.exit72_crit_edge
  %26 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %22, ptr %arrayidx8, align 1
  %call8.i71 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext 97, i8 noundef zeroext %22) #5
  %27 = ptrtoint ptr %dev_priv.i.i54 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_priv.i.i54, align 4
  %29 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i74 = icmp sgt i32 %29, 0
  br i1 %cmp.i74, label %do.end.i78, label %saa7185_write.exit72.saa7185_write.exit81_crit_edge

saa7185_write.exit72.saa7185_write.exit81_crit_edge: ; preds = %saa7185_write.exit72
  call void @__sanitizer_cov_trace_pc() #7
  br label %saa7185_write.exit81

do.end.i78:                                       ; preds = %saa7185_write.exit72
  call void @__sanitizer_cov_trace_pc() #7
  %name.i76 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4.i77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i76, i32 noundef 110, i32 noundef 0) #8
  br label %saa7185_write.exit81

saa7185_write.exit81:                             ; preds = %do.end.i78, %saa7185_write.exit72.saa7185_write.exit81_crit_edge
  %arrayidx.i79 = getelementptr %struct.saa7185, ptr %sd, i32 0, i32 1, i32 110
  %30 = ptrtoint ptr %arrayidx.i79 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx.i79, align 1
  %call8.i80 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext 110, i8 noundef zeroext 0) #5
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  %dev_priv.i.i82 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %31 = ptrtoint ptr %dev_priv.i.i82 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_priv.i.i82, align 4
  %33 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i83 = icmp sgt i32 %33, 0
  br i1 %cmp.i83, label %do.end.i87, label %sw.bb15.saa7185_write.exit90_crit_edge

sw.bb15.saa7185_write.exit90_crit_edge:           ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #7
  br label %saa7185_write.exit90

do.end.i87:                                       ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #7
  %name.i85 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4.i86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i85, i32 noundef 58, i32 noundef 143) #8
  br label %saa7185_write.exit90

saa7185_write.exit90:                             ; preds = %do.end.i87, %sw.bb15.saa7185_write.exit90_crit_edge
  %arrayidx.i88 = getelementptr %struct.saa7185, ptr %sd, i32 0, i32 1, i32 58
  %34 = ptrtoint ptr %arrayidx.i88 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -113, ptr %arrayidx.i88, align 1
  %call8.i89 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %32, i8 noundef zeroext 58, i8 noundef zeroext -113) #5
  %arrayidx18 = getelementptr %struct.saa7185, ptr %sd, i32 0, i32 1, i32 97
  %35 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx18, align 1
  %37 = or i8 %36, 8
  %38 = ptrtoint ptr %dev_priv.i.i82 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_priv.i.i82, align 4
  %40 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i92 = icmp sgt i32 %40, 0
  br i1 %cmp.i92, label %do.end.i97, label %saa7185_write.exit90.saa7185_write.exit100_crit_edge

saa7185_write.exit90.saa7185_write.exit100_crit_edge: ; preds = %saa7185_write.exit90
  call void @__sanitizer_cov_trace_pc() #7
  br label %saa7185_write.exit100

do.end.i97:                                       ; preds = %saa7185_write.exit90
  call void @__sanitizer_cov_trace_pc() #7
  %name.i94 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i95 = zext i8 %37 to i32
  %call4.i96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i94, i32 noundef 97, i32 noundef %conv3.i95) #8
  br label %saa7185_write.exit100

saa7185_write.exit100:                            ; preds = %do.end.i97, %saa7185_write.exit90.saa7185_write.exit100_crit_edge
  %41 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %37, ptr %arrayidx18, align 1
  %call8.i99 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %39, i8 noundef zeroext 97, i8 noundef zeroext %37) #5
  %42 = ptrtoint ptr %dev_priv.i.i82 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_priv.i.i82, align 4
  %44 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i102 = icmp sgt i32 %44, 0
  br i1 %cmp.i102, label %do.end.i106, label %saa7185_write.exit100.saa7185_write.exit109_crit_edge

saa7185_write.exit100.saa7185_write.exit109_crit_edge: ; preds = %saa7185_write.exit100
  call void @__sanitizer_cov_trace_pc() #7
  br label %saa7185_write.exit109

do.end.i106:                                      ; preds = %saa7185_write.exit100
  call void @__sanitizer_cov_trace_pc() #7
  %name.i104 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4.i105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i104, i32 noundef 110, i32 noundef 1) #8
  br label %saa7185_write.exit109

saa7185_write.exit109:                            ; preds = %do.end.i106, %saa7185_write.exit100.saa7185_write.exit109_crit_edge
  %arrayidx.i107 = getelementptr %struct.saa7185, ptr %sd, i32 0, i32 1, i32 110
  %45 = ptrtoint ptr %arrayidx.i107 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %arrayidx.i107, align 1
  %call8.i108 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %43, i8 noundef zeroext 110, i8 noundef zeroext 1) #5
  br label %cleanup

cleanup:                                          ; preds = %saa7185_write.exit109, %saa7185_write.exit81, %saa7185_write.exit53, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %saa7185_write.exit109 ], [ 0, %saa7185_write.exit81 ], [ 0, %saa7185_write.exit53 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7185_s_std_output(ptr noundef %sd, i64 noundef %std) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %std, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.else:                                          ; preds = %entry
  %and2 = and i64 %std, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2)
  %tobool3.not = icmp eq i64 %and2, 0
  br i1 %tobool3.not, label %if.else.cleanup_crit_edge, label %if.else.if.end7_crit_edge

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.else.if.end7_crit_edge, %entry.if.end7_crit_edge
  %init_pal.sink = phi ptr [ @init_ntsc, %entry.if.end7_crit_edge ], [ @init_pal, %if.else.if.end7_crit_edge ]
  %call5 = tail call fastcc i32 @saa7185_write_block(ptr noundef %sd, ptr noundef nonnull %init_pal.sink, i32 noundef 12)
  %norm = getelementptr inbounds %struct.saa7185, ptr %sd, i32 0, i32 2
  %0 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %std, ptr %norm, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !18, !20, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !46, !47, !48, !49, !51, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__UNIQUE_ID_description292, !1, !"__UNIQUE_ID_description292", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/saa7185.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_author293, !3, !"__UNIQUE_ID_author293", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/saa7185.c", i32 24, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/media/i2c/saa7185.c", i32 25, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/saa7185.c", i32 28, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype296, !8, !"__UNIQUE_ID_debugtype296", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_debug297, !11, !"__UNIQUE_ID_debug297", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/saa7185.c", i32 29, i32 1}
!12 = !{ptr @__initcall__kmod_saa7185__298_353_saa7185_driver_init6, !13, !"__initcall__kmod_saa7185__298_353_saa7185_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/saa7185.c", i32 353, i32 1}
!14 = !{ptr @__exitcall_saa7185_driver_exit, !13, !"__exitcall_saa7185_driver_exit", i1 false, i1 false}
!15 = !{ptr @debug, !16, !"debug", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/saa7185.c", i32 27, i32 12}
!17 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/saa7185.c", i32 346, i32 11}
!20 = !{ptr @saa7185_driver, !21, !"saa7185_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/saa7185.c", i32 344, i32 26}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/saa7185.c", i32 304, i32 2}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @saa7185_probe._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @saa7185_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/saa7185.c", i32 318, i32 3}
!30 = !{ptr @saa7185_probe._entry.4, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @saa7185_probe._entry_ptr.6, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/saa7185.c", i32 320, i32 3}
!34 = !{ptr @saa7185_probe._entry.7, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @saa7185_probe._entry_ptr.9, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @saa7185_ops, !37, !"saa7185_ops", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/saa7185.c", i32 285, i32 37}
!38 = !{ptr @saa7185_core_ops, !39, !"saa7185_core_ops", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/saa7185.c", i32 276, i32 42}
!40 = !{ptr @init_pal, !41, !"init_pal", i1 false, i1 false}
!41 = !{!"../drivers/media/i2c/saa7185.c", i32 186, i32 28}
!42 = !{ptr @saa7185_video_ops, !43, !"saa7185_video_ops", i1 false, i1 false}
!43 = !{!"../drivers/media/i2c/saa7185.c", i32 280, i32 43}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/i2c/saa7185.c", i32 60, i32 2}
!46 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @saa7185_write._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @saa7185_write._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @init_common, !50, !"init_common", i1 false, i1 false}
!50 = !{!"../drivers/media/i2c/saa7185.c", i32 109, i32 28}
!51 = !{ptr @init_ntsc, !52, !"init_ntsc", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/saa7185.c", i32 196, i32 28}
!53 = !{ptr @saa7185_id, !54, !"saa7185_id", i1 false, i1 false}
!54 = !{!"../drivers/media/i2c/saa7185.c", i32 338, i32 35}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
