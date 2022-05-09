; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/saa6752hs.c_pt.bc'
source_filename = "../drivers/media/i2c/saa6752hs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.saa6752hs_mpeg_params = type { i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.102, i32, i32 }
%union.anon.102 = type { i32 }
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
%struct.saa6752hs_state = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, %struct.anon.100, i32, i32, %struct.saa6752hs_mpeg_params, i32, i64 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.100 = type { ptr, ptr, ptr }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_format = type { i32, %union.anon.101 }
%union.anon.101 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.103, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.103 = type { i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_description292 = internal constant [64 x i8] c"saa6752hs.description=device driver for saa6752hs MPEG2 encoder\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [35 x i8] c"saa6752hs.author=Andrew de Quincey\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [43 x i8] c"saa6752hs.file=drivers/media/i2c/saa6752hs\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [22 x i8] c"saa6752hs.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_saa6752hs__296_791_saa6752hs_driver_init6 = internal global ptr @saa6752hs_driver_init, section ".initcall6.init", align 4
@saa6752hs_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @saa6752hs_probe, ptr @saa6752hs_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @saa6752hs_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_saa6752hs_driver_exit = internal global ptr @saa6752hs_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"saa6752hs\00", [22 x i8] zeroinitializer }, align 32
@saa6752hs_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"saa6752hs\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@saa6752hs_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 672, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s %d-%04x: chip found @ 0x%x (%s)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"saa6752hs_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/media/i2c/saa6752hs.c\00", [34 x i8] zeroinitializer }, align 32
@saa6752hs_probe._entry_ptr = internal global ptr @saa6752hs_probe._entry, section ".printk_index", align 4
@saa6752hs_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @saa6752hs_core_ops, ptr null, ptr null, ptr @saa6752hs_video_ops, ptr null, ptr null, ptr null, ptr @saa6752hs_pad_ops }, [32 x i8] zeroinitializer }, align 32
@saa6752hs_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s %d-%04x: supports AC-3\0A\00", [35 x i8] zeroinitializer }, align 32
@saa6752hs_probe._entry_ptr.6 = internal global ptr @saa6752hs_probe._entry.4, section ".printk_index", align 4
@param_defaults = internal constant { %struct.saa6752hs_mpeg_params, [60 x i8] } { %struct.saa6752hs_mpeg_params { i16 16, i16 256, i16 260, i16 259, i32 1, i32 11, i32 12, i32 1, i32 0, i32 4000, i32 6000 }, [60 x i8] zeroinitializer }, align 32
@saa6752hs_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"saa6752hs:691:(hdl)->_lock\00", [37 x i8] zeroinitializer }, align 32
@saa6752hs_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr @saa6752hs_try_ctrl, ptr @saa6752hs_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@saa6752hs_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr @saa6752hs_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa6752hs_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr @saa6752hs_s_std, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@saa6752hs_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr null, ptr null, ptr null, ptr @saa6752hs_get_fmt, ptr @saa6752hs_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@PAT = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\C2\00G@\00\10\00\00\B0\0D\00\01\C1\00\00\00\01\E0\00\00\00\00\00", [41 x i8] zeroinitializer }, align 32
@PMT_AC3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\C2\01G@\10\10\00\02\B0\1A\00\01\C1\00\00\E1\04\F0\00\02\E1\00\F0\00\06\E1\03\F0\03j\01\00\ED\DE-\F3", [60 x i8] zeroinitializer }, align 32
@PMT = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\C2\01G@\00\10\00\02\B0\17\00\01\C1\00\00\E0\00\F0\00\02\E0\00\F0\00\04\E0\00\F0\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@v4l2_format_table = internal constant { [5 x { i32, { %struct.v4l2_pix_format, [152 x i8] } }], [228 x i8] } { [5 x { i32, { %struct.v4l2_pix_format, [152 x i8] } }] [{ i32, { %struct.v4l2_pix_format, [152 x i8] } } { i32 0, { %struct.v4l2_pix_format, [152 x i8] } { %struct.v4l2_pix_format { i32 720, i32 576, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, [152 x i8] undef } }, { i32, { %struct.v4l2_pix_format, [152 x i8] } } { i32 0, { %struct.v4l2_pix_format, [152 x i8] } { %struct.v4l2_pix_format { i32 480, i32 576, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, [152 x i8] undef } }, { i32, { %struct.v4l2_pix_format, [152 x i8] } } { i32 0, { %struct.v4l2_pix_format, [152 x i8] } { %struct.v4l2_pix_format { i32 352, i32 576, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, [152 x i8] undef } }, { i32, { %struct.v4l2_pix_format, [152 x i8] } } { i32 0, { %struct.v4l2_pix_format, [152 x i8] } { %struct.v4l2_pix_format { i32 352, i32 288, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, [152 x i8] undef } }, { i32, { %struct.v4l2_pix_format, [152 x i8] } } { i32 0, { %struct.v4l2_pix_format, [152 x i8] } { %struct.v4l2_pix_format zeroinitializer, [152 x i8] undef } }], [228 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 480, i64 720]
@__sancov_gen_cov_switch_values.9 = internal global [14 x i64] [i64 12, i64 32, i64 10029312, i64 10029313, i64 10029314, i64 10029315, i64 10029316, i64 10029412, i64 10029413, i64 10029415, i64 10029423, i64 10029512, i64 10029513, i64 10029518]
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"saa6752hs_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 782, i32 26 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 784, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [13 x i8] c"saa6752hs_id\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 776, i32 35 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 671, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"saa6752hs_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 656, i32 37 }
@___asan_gen_.34 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 686, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"param_defaults\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 203, i32 43 }
@___asan_gen_.43 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 691, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [19 x i8] c"saa6752hs_ctrl_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 638, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant [19 x i8] c"saa6752hs_core_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 643, i32 42 }
@___asan_gen_.55 = private unnamed_addr constant [20 x i8] c"saa6752hs_video_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 647, i32 43 }
@___asan_gen_.58 = private unnamed_addr constant [18 x i8] c"saa6752hs_pad_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 651, i32 41 }
@___asan_gen_.61 = private unnamed_addr constant [4 x i8] c"PAT\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 115, i32 17 }
@___asan_gen_.64 = private unnamed_addr constant [8 x i8] c"PMT_AC3\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 170, i32 17 }
@___asan_gen_.67 = private unnamed_addr constant [4 x i8] c"PMT\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 141, i32 17 }
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"v4l2_format_table\00", align 1
@___asan_gen_.71 = private constant [33 x i8] c"../drivers/media/i2c/saa6752hs.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 67, i32 33 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_saa6752hs_driver_exit, ptr @__initcall__kmod_saa6752hs__296_791_saa6752hs_driver_init6, ptr @saa6752hs_driver_exit, ptr @saa6752hs_probe._entry, ptr @saa6752hs_probe._entry.4, ptr @saa6752hs_probe._entry_ptr, ptr @saa6752hs_probe._entry_ptr.6, ptr @saa6752hs_driver, ptr @.str, ptr @saa6752hs_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @saa6752hs_ops, ptr @.str.5, ptr @param_defaults, ptr @saa6752hs_probe._key, ptr @.str.7, ptr @saa6752hs_ctrl_ops, ptr @saa6752hs_core_ops, ptr @saa6752hs_video_ops, ptr @saa6752hs_pad_ops, ptr @PAT, ptr @PMT_AC3, ptr @PMT, ptr @v4l2_format_table], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa6752hs_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa6752hs_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa6752hs_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa6752hs_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa6752hs_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_defaults to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa6752hs_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa6752hs_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa6752hs_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa6752hs_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa6752hs_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PAT to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PMT_AC3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PMT to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v4l2_format_table to i32), i32 1020, i32 1248, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @saa6752hs_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @saa6752hs_driver) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @saa6752hs_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @i2c_del_driver(ptr noundef nonnull @saa6752hs_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa6752hs_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %addr = alloca i8, align 1
  %data = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr) #11
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 19, ptr %addr, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data) #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %1 = call ptr @memset(ptr %data, i32 255, i32 12)
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr.i, align 4
  %addr1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %10 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %addr1, align 2
  %conv = zext i16 %11 to i32
  %shl = shl nuw nsw i32 %conv, 1
  %name5 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 12
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %5, i32 noundef %9, i32 noundef %conv, i32 noundef %shl, ptr noundef %name5) #14
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 448, i32 noundef 3520) #11
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = getelementptr inbounds [12 x i8], ptr %data, i32 0, i32 9
  %13 = getelementptr inbounds [12 x i8], ptr %data, i32 0, i32 8
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @saa6752hs_ops) #11
  %call.i114 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr, i32 noundef 1, i16 noundef zeroext 0) #11
  %call.i115 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %data, i32 noundef 12, i16 noundef zeroext 1) #11
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %conv14 = zext i8 %15 to i32
  %shl15 = shl nuw nsw i32 %conv14, 8
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %12, align 1
  %conv17 = zext i8 %17 to i32
  %or = or i32 %shl15, %conv17
  %revision = getelementptr inbounds %struct.saa6752hs_state, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %revision to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or, ptr %revision, align 8
  %has_ac3 = getelementptr inbounds %struct.saa6752hs_state, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %has_ac3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %has_ac3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 518, i32 %or)
  %cmp19 = icmp eq i32 %or, 518
  br i1 %cmp19, label %if.then21, label %if.end.if.end35_crit_edge

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %has_ac3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %has_ac3, align 4
  %21 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %25 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter, align 8
  %nr.i116 = getelementptr inbounds %struct.i2c_adapter, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %nr.i116 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr.i116, align 4
  %29 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %addr1, align 2
  %conv33 = zext i16 %30 to i32
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %24, i32 noundef %28, i32 noundef %conv33) #14
  br label %if.end35

if.end35:                                         ; preds = %if.then21, %if.end.if.end35_crit_edge
  %params = getelementptr inbounds %struct.saa6752hs_state, ptr %call.i, i32 0, i32 5
  %31 = call ptr @memcpy(ptr %params, ptr @param_defaults, i32 36)
  %hdl36 = getelementptr inbounds %struct.saa6752hs_state, ptr %call.i, i32 0, i32 1
  %call38 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl36, i32 noundef 14, ptr noundef nonnull @saa6752hs_probe._key, ptr noundef nonnull @.str.7) #11
  %32 = ptrtoint ptr %has_ac3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %has_ac3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not = icmp eq i32 %33, 0
  %conv40 = select i1 %tobool.not, i8 1, i8 4
  %call41 = call ptr @v4l2_ctrl_new_std_menu(ptr noundef %hdl36, ptr noundef nonnull @saa6752hs_ctrl_ops, i32 noundef 10029413, i8 noundef zeroext %conv40, i64 noundef 13, i8 noundef zeroext 1) #11
  %call42 = call ptr @v4l2_ctrl_new_std_menu(ptr noundef %hdl36, ptr noundef nonnull @saa6752hs_ctrl_ops, i32 noundef 10029415, i8 noundef zeroext 13, i64 noundef -10241, i8 noundef zeroext 11) #11
  %34 = ptrtoint ptr %has_ac3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %has_ac3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool44.not = icmp eq i32 %35, 0
  br i1 %tobool44.not, label %if.end35.if.end47_crit_edge, label %if.then45

if.end35.if.end47_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then45:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %call46 = call ptr @v4l2_ctrl_new_std_menu(ptr noundef %hdl36, ptr noundef nonnull @saa6752hs_ctrl_ops, i32 noundef 10029423, i8 noundef zeroext 14, i64 noundef -20481, i8 noundef zeroext 12) #11
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end35.if.end47_crit_edge
  %call48 = call ptr @v4l2_ctrl_new_std_menu(ptr noundef %hdl36, ptr noundef nonnull @saa6752hs_ctrl_ops, i32 noundef 10029412, i8 noundef zeroext 1, i64 noundef -3, i8 noundef zeroext 1) #11
  %call49 = call ptr @v4l2_ctrl_new_std_menu(ptr noundef %hdl36, ptr noundef nonnull @saa6752hs_ctrl_ops, i32 noundef 10029512, i8 noundef zeroext 1, i64 noundef -3, i8 noundef zeroext 1) #11
  %call50 = call ptr @v4l2_ctrl_new_std_menu(ptr noundef %hdl36, ptr noundef nonnull @saa6752hs_ctrl_ops, i32 noundef 10029513, i8 noundef zeroext 2, i64 noundef 1, i8 noundef zeroext 1) #11
  %call51 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl36, ptr noundef nonnull @saa6752hs_ctrl_ops, i32 noundef 10029520, i64 noundef 1000000, i64 noundef 27000000, i64 noundef 1000, i64 noundef 8000000) #11
  %36 = getelementptr inbounds %struct.saa6752hs_state, ptr %call.i, i32 0, i32 2
  %video_bitrate_peak = getelementptr inbounds %struct.saa6752hs_state, ptr %call.i, i32 0, i32 2, i32 2
  %37 = ptrtoint ptr %video_bitrate_peak to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call51, ptr %video_bitrate_peak, align 4
  %call52 = call ptr @v4l2_ctrl_new_std_menu(ptr noundef %hdl36, ptr noundef nonnull @saa6752hs_ctrl_ops, i32 noundef 10029312, i8 noundef zeroext 1, i64 noundef -3, i8 noundef zeroext 1) #11
  %call53 = call ptr @v4l2_ctrl_new_std_menu(ptr noundef %hdl36, ptr noundef nonnull @saa6752hs_ctrl_ops, i32 noundef 10029518, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0) #11
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call53, ptr %36, align 4
  %call54 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl36, ptr noundef nonnull @saa6752hs_ctrl_ops, i32 noundef 10029519, i64 noundef 1000000, i64 noundef 27000000, i64 noundef 1000, i64 noundef 6000000) #11
  %video_bitrate = getelementptr inbounds %struct.saa6752hs_state, ptr %call.i, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %video_bitrate to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call54, ptr %video_bitrate, align 4
  %call55 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl36, ptr noundef nonnull @saa6752hs_ctrl_ops, i32 noundef 10029313, i64 noundef 0, i64 noundef 16383, i64 noundef 1, i64 noundef 16) #11
  %call56 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl36, ptr noundef nonnull @saa6752hs_ctrl_ops, i32 noundef 10029314, i64 noundef 0, i64 noundef 16383, i64 noundef 1, i64 noundef 260) #11
  %call57 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl36, ptr noundef nonnull @saa6752hs_ctrl_ops, i32 noundef 10029315, i64 noundef 0, i64 noundef 16383, i64 noundef 1, i64 noundef 256) #11
  %call58 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl36, ptr noundef nonnull @saa6752hs_ctrl_ops, i32 noundef 10029316, i64 noundef 0, i64 noundef 16383, i64 noundef 1, i64 noundef 259) #11
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %40 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %hdl36, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.saa6752hs_state, ptr %call.i, i32 0, i32 1, i32 9
  %41 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool59.not = icmp eq i32 %42, 0
  br i1 %tobool59.not, label %if.end62, label %if.then60

if.then60:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  call void @v4l2_ctrl_handler_free(ptr noundef %hdl36) #11
  br label %cleanup

if.end62:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  call void @v4l2_ctrl_cluster(i32 noundef 3, ptr noundef %36) #11
  %call64 = call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl36) #11
  %standard = getelementptr inbounds %struct.saa6752hs_state, ptr %call.i, i32 0, i32 7
  %43 = ptrtoint ptr %standard to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 0, ptr %standard, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.then60, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %42, %if.then60 ], [ 0, %if.end62 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa6752hs_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #11
  %hdl = getelementptr inbounds %struct.saa6752hs_state, ptr %1, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa6752hs_init(ptr nocapture noundef readonly %sd, i32 noundef %leading_null_bytes) #2 align 64 {
entry:
  %buf.i238 = alloca [3 x i8], align 1
  %buf.i236 = alloca [2 x i8], align 1
  %buf.i234 = alloca [2 x i8], align 1
  %buf.i229 = alloca [3 x i8], align 1
  %buf.i225 = alloca [3 x i8], align 1
  %buf.i221 = alloca [3 x i8], align 1
  %buf.i219 = alloca [3 x i8], align 1
  %buf.i217 = alloca [2 x i8], align 1
  %buf.i215 = alloca [2 x i8], align 1
  %buf.i213 = alloca [2 x i8], align 1
  %buf.i211 = alloca [2 x i8], align 1
  %buf.i209 = alloca [3 x i8], align 1
  %buf.i15.i = alloca [3 x i8], align 1
  %buf.i13.i = alloca [2 x i8], align 1
  %buf.i11.i = alloca [2 x i8], align 1
  %buf.i7.i = alloca [3 x i8], align 1
  %buf.i3.i = alloca [3 x i8], align 1
  %buf.i1.i = alloca [3 x i8], align 1
  %buf.i.i = alloca [2 x i8], align 1
  %buf.i207 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  %buf = alloca [9 x i8], align 1
  %buf2 = alloca [4 x i8], align 4
  %localPAT = alloca [256 x i8], align 1
  %localPMT = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %buf) #11
  %0 = call ptr @memset(ptr %buf, i32 255, i32 9)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf2) #11
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %1 = ptrtoint ptr %buf2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %buf2, align 4
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %localPAT) #11
  %4 = call ptr @memset(ptr %localPAT, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %localPMT) #11
  %5 = call ptr @memset(ptr %localPMT, i32 255, i32 256)
  %video_format = getelementptr inbounds %struct.saa6752hs_state, ptr %sd, i32 0, i32 6
  %6 = ptrtoint ptr %video_format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %video_format, align 4
  %conv = trunc i32 %7 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #11
  %8 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 65, ptr %buf.i, align 1
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %8, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #11
  %standard = getelementptr inbounds %struct.saa6752hs_state, ptr %sd, i32 0, i32 7
  %11 = ptrtoint ptr %standard to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %standard, align 8
  %and = and i64 %12, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp ne i64 %and, 0
  %conv2 = zext i1 %tobool.not to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i207) #11
  %13 = getelementptr inbounds [2 x i8], ptr %buf.i207, i32 0, i32 1
  %14 = ptrtoint ptr %buf.i207 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 64, ptr %buf.i207, align 1
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv2, ptr %13, align 1
  %call.i.i208 = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf.i207, i32 noundef 2, i16 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i207) #11
  %vi_bitrate_mode.i = getelementptr inbounds %struct.saa6752hs_state, ptr %sd, i32 0, i32 5, i32 8
  %16 = ptrtoint ptr %vi_bitrate_mode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vi_bitrate_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp ne i32 %17, 0
  %conv2.i = zext i1 %cmp.i to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #11
  %18 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 113, ptr %buf.i.i, align 1
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv2.i, ptr %18, align 1
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf.i.i, i32 noundef 2, i16 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #11
  %21 = ptrtoint ptr %vi_bitrate_mode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vi_bitrate_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp4.i = icmp eq i32 %22, 0
  %vi_bitrate.i = getelementptr inbounds %struct.saa6752hs_state, ptr %sd, i32 0, i32 5, i32 9
  %23 = ptrtoint ptr %vi_bitrate.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vi_bitrate.i, align 4
  br i1 %cmp4.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i1.i) #11
  %25 = getelementptr inbounds [3 x i8], ptr %buf.i1.i, i32 0, i32 1
  %26 = getelementptr inbounds [3 x i8], ptr %buf.i1.i, i32 0, i32 2
  %27 = ptrtoint ptr %buf.i1.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -128, ptr %buf.i1.i, align 1
  %28 = lshr i32 %24, 8
  %conv1.i.i = trunc i32 %28 to i8
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv1.i.i, ptr %25, align 1
  %conv4.i.i = trunc i32 %24 to i8
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv4.i.i, ptr %26, align 1
  %call.i.i2.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf.i1.i, i32 noundef 3, i16 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i1.i) #11
  %vi_bitrate_peak.i = getelementptr inbounds %struct.saa6752hs_state, ptr %sd, i32 0, i32 5, i32 10
  %31 = ptrtoint ptr %vi_bitrate_peak.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vi_bitrate_peak.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i3.i) #11
  %33 = getelementptr inbounds [3 x i8], ptr %buf.i3.i, i32 0, i32 1
  %34 = getelementptr inbounds [3 x i8], ptr %buf.i3.i, i32 0, i32 2
  %35 = ptrtoint ptr %buf.i3.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -127, ptr %buf.i3.i, align 1
  %36 = lshr i32 %32, 8
  %conv1.i4.i = trunc i32 %36 to i8
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv1.i4.i, ptr %33, align 1
  %conv4.i5.i = trunc i32 %32 to i8
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv4.i5.i, ptr %34, align 1
  %call.i.i6.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf.i3.i, i32 noundef 3, i16 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i3.i) #11
  br label %saa6752hs_set_bitrate.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i7.i) #11
  %39 = getelementptr inbounds [3 x i8], ptr %buf.i7.i, i32 0, i32 1
  %40 = getelementptr inbounds [3 x i8], ptr %buf.i7.i, i32 0, i32 2
  %41 = ptrtoint ptr %buf.i7.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -127, ptr %buf.i7.i, align 1
  %42 = lshr i32 %24, 8
  %conv1.i8.i = trunc i32 %42 to i8
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv1.i8.i, ptr %39, align 1
  %conv4.i9.i = trunc i32 %24 to i8
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv4.i9.i, ptr %40, align 1
  %call.i.i10.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf.i7.i, i32 noundef 3, i16 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i7.i) #11
  br label %saa6752hs_set_bitrate.exit

saa6752hs_set_bitrate.exit:                       ; preds = %if.else.i, %if.then.i
  %tot_bitrate.0.in.i = phi ptr [ %vi_bitrate_peak.i, %if.then.i ], [ %vi_bitrate.i, %if.else.i ]
  %45 = ptrtoint ptr %tot_bitrate.0.in.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %tot_bitrate.0.i = load i32, ptr %tot_bitrate.0.in.i, align 4
  %au_encoding.i = getelementptr inbounds %struct.saa6752hs_state, ptr %sd, i32 0, i32 5, i32 4
  %46 = ptrtoint ptr %au_encoding.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %au_encoding.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %47)
  %cmp12.i = icmp eq i32 %47, 4
  %conv14.i = zext i1 %cmp12.i to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i11.i) #11
  %48 = getelementptr inbounds [2 x i8], ptr %buf.i11.i, i32 0, i32 1
  %49 = ptrtoint ptr %buf.i11.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -109, ptr %buf.i11.i, align 1
  %50 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv14.i, ptr %48, align 1
  %call.i.i12.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf.i11.i, i32 noundef 2, i16 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i11.i) #11
  %51 = ptrtoint ptr %au_encoding.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %au_encoding.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %52)
  %cmp16.i = icmp eq i32 %52, 4
  %au_l2_bitrate.i = getelementptr inbounds %struct.saa6752hs_state, ptr %sd, i32 0, i32 5, i32 5
  %au_ac3_bitrate.i = getelementptr inbounds %struct.saa6752hs_state, ptr %sd, i32 0, i32 5, i32 6
  %au_l2_bitrate.sink.i = select i1 %cmp16.i, ptr %au_ac3_bitrate.i, ptr %au_l2_bitrate.i
  %.sink19.i = select i1 %cmp16.i, i32 14, i32 13
  %53 = ptrtoint ptr %au_l2_bitrate.sink.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %au_l2_bitrate.sink.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %.sink19.i)
  %cmp22.i = icmp eq i32 %54, %.sink19.i
  %conv25.i = zext i1 %cmp22.i to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i13.i) #11
  %55 = getelementptr inbounds [2 x i8], ptr %buf.i13.i, i32 0, i32 1
  %56 = ptrtoint ptr %buf.i13.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -108, ptr %buf.i13.i, align 1
  %57 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv25.i, ptr %55, align 1
  %call.i.i14.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf.i13.i, i32 noundef 2, i16 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i13.i) #11
  %cond.i = select i1 %cmp22.i, i32 384, i32 256
  %add.i = add i32 %tot_bitrate.0.i, 768
  %add26.i = add i32 %add.i, %cond.i
  %58 = call i32 @llvm.smin.i32(i32 %add26.i, i32 27000) #11
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i15.i) #11
  %59 = getelementptr inbounds [3 x i8], ptr %buf.i15.i, i32 0, i32 1
  %60 = getelementptr inbounds [3 x i8], ptr %buf.i15.i, i32 0, i32 2
  %61 = ptrtoint ptr %buf.i15.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -79, ptr %buf.i15.i, align 1
  %62 = lshr i32 %58, 8
  %conv1.i16.i = trunc i32 %62 to i8
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv1.i16.i, ptr %59, align 1
  %conv4.i17.i = trunc i32 %58 to i8
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv4.i17.i, ptr %60, align 1
  %call.i.i18.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf.i15.i, i32 noundef 3, i16 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i15.i) #11
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i209) #11
  %65 = getelementptr inbounds [3 x i8], ptr %buf.i209, i32 0, i32 1
  %66 = getelementptr inbounds [3 x i8], ptr %buf.i209, i32 0, i32 2
  %67 = ptrtoint ptr %buf.i209 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 114, ptr %buf.i209, align 1
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 3, ptr %65, align 1
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 13, ptr %66, align 1
  %call.i.i210 = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf.i209, i32 noundef 3, i16 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i209) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i211) #11
  %70 = getelementptr inbounds [2 x i8], ptr %buf.i211, i32 0, i32 1
  %71 = ptrtoint ptr %buf.i211 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -126, ptr %buf.i211, align 1
  %72 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 4, ptr %70, align 1
  %call.i.i212 = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf.i211, i32 noundef 2, i16 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i211) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i213) #11
  %73 = getelementptr inbounds [2 x i8], ptr %buf.i213, i32 0, i32 1
  %74 = ptrtoint ptr %buf.i213 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -125, ptr %buf.i213, align 1
  %75 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 12, ptr %73, align 1
  %call.i.i214 = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf.i213, i32 noundef 2, i16 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i213) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i215) #11
  %76 = getelementptr inbounds [2 x i8], ptr %buf.i215, i32 0, i32 1
  %77 = ptrtoint ptr %buf.i215 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 -48, ptr %buf.i215, align 1
  %78 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -127, ptr %76, align 1
  %call.i.i216 = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf.i215, i32 noundef 2, i16 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i215) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i217) #11
  %79 = getelementptr inbounds [2 x i8], ptr %buf.i217, i32 0, i32 1
  %80 = ptrtoint ptr %buf.i217 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -80, ptr %buf.i217, align 1
  %81 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 5, ptr %79, align 1
  %call.i.i218 = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf.i217, i32 noundef 2, i16 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i217) #11
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i219) #11
  %82 = getelementptr inbounds [3 x i8], ptr %buf.i219, i32 0, i32 1
  %83 = getelementptr inbounds [3 x i8], ptr %buf.i219, i32 0, i32 2
  %84 = ptrtoint ptr %buf.i219 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 -10, ptr %buf.i219, align 1
  %85 = lshr i32 %leading_null_bytes, 8
  %conv1.i = trunc i32 %85 to i8
  %86 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv1.i, ptr %82, align 1
  %conv4.i = trunc i32 %leading_null_bytes to i8
  %87 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv4.i, ptr %83, align 1
  %call.i.i220 = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf.i219, i32 noundef 3, i16 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i219) #11
  %88 = call ptr @memcpy(ptr %localPAT, ptr @PAT, i32 23)
  %params = getelementptr inbounds %struct.saa6752hs_state, ptr %sd, i32 0, i32 5
  %89 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %params, align 8
  %91 = lshr i16 %90, 8
  %92 = trunc i16 %91 to i8
  %93 = and i8 %92, 15
  %conv7 = or i8 %93, -32
  %arrayidx = getelementptr inbounds [256 x i8], ptr %localPAT, i32 0, i32 17
  %94 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv7, ptr %arrayidx, align 1
  %conv12 = trunc i16 %90 to i8
  %arrayidx13 = getelementptr inbounds [256 x i8], ptr %localPAT, i32 0, i32 18
  %95 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv12, ptr %arrayidx13, align 1
  %arrayidx14 = getelementptr inbounds [256 x i8], ptr %localPAT, i32 0, i32 7
  %call15 = call i32 @crc32_be(i32 noundef -1, ptr noundef %arrayidx14, i32 noundef 12) #15
  %shr16 = lshr i32 %call15, 24
  %conv18 = trunc i32 %shr16 to i8
  %arrayidx19 = getelementptr inbounds [256 x i8], ptr %localPAT, i32 0, i32 19
  %96 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv18, ptr %arrayidx19, align 1
  %shr20 = lshr i32 %call15, 16
  %conv22 = trunc i32 %shr20 to i8
  %arrayidx23 = getelementptr inbounds [256 x i8], ptr %localPAT, i32 0, i32 20
  %97 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv22, ptr %arrayidx23, align 1
  %shr24 = lshr i32 %call15, 8
  %conv26 = trunc i32 %shr24 to i8
  %arrayidx27 = getelementptr inbounds [256 x i8], ptr %localPAT, i32 0, i32 21
  %98 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv26, ptr %arrayidx27, align 1
  %conv29 = trunc i32 %call15 to i8
  %arrayidx30 = getelementptr inbounds [256 x i8], ptr %localPAT, i32 0, i32 22
  %99 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv29, ptr %arrayidx30, align 1
  %100 = ptrtoint ptr %au_encoding.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %au_encoding.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %101)
  %cmp = icmp eq i32 %101, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %saa6752hs_set_bitrate.exit
  call void @__sanitizer_cov_trace_pc() #13
  %102 = call ptr @memcpy(ptr %localPMT, ptr @PMT_AC3, i32 36)
  br label %if.end

if.else:                                          ; preds = %saa6752hs_set_bitrate.exit
  call void @__sanitizer_cov_trace_pc() #13
  %103 = call ptr @memcpy(ptr %localPMT, ptr @PMT, i32 33)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %size.0 = phi i32 [ 36, %if.then ], [ 33, %if.else ]
  %conv41 = or i8 %93, 64
  %arrayidx42 = getelementptr inbounds [256 x i8], ptr %localPMT, i32 0, i32 3
  %104 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv41, ptr %arrayidx42, align 1
  %arrayidx48 = getelementptr inbounds [256 x i8], ptr %localPMT, i32 0, i32 4
  %105 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv12, ptr %arrayidx48, align 1
  %ts_pid_pcr = getelementptr inbounds %struct.saa6752hs_state, ptr %sd, i32 0, i32 5, i32 3
  %106 = ptrtoint ptr %ts_pid_pcr to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %ts_pid_pcr, align 2
  %108 = lshr i16 %107, 8
  %109 = trunc i16 %108 to i8
  %110 = and i8 %109, 15
  %conv54 = or i8 %110, -32
  %arrayidx55 = getelementptr inbounds [256 x i8], ptr %localPMT, i32 0, i32 15
  %111 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv54, ptr %arrayidx55, align 1
  %conv60 = trunc i16 %107 to i8
  %arrayidx61 = getelementptr inbounds [256 x i8], ptr %localPMT, i32 0, i32 16
  %112 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv60, ptr %arrayidx61, align 1
  %ts_pid_video = getelementptr inbounds %struct.saa6752hs_state, ptr %sd, i32 0, i32 5, i32 2
  %113 = ptrtoint ptr %ts_pid_video to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %ts_pid_video, align 4
  %115 = lshr i16 %114, 8
  %116 = trunc i16 %115 to i8
  %117 = and i8 %116, 15
  %conv67 = or i8 %117, -32
  %arrayidx68 = getelementptr inbounds [256 x i8], ptr %localPMT, i32 0, i32 20
  %118 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv67, ptr %arrayidx68, align 1
  %conv73 = trunc i16 %114 to i8
  %arrayidx74 = getelementptr inbounds [256 x i8], ptr %localPMT, i32 0, i32 21
  %119 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv73, ptr %arrayidx74, align 1
  %ts_pid_audio = getelementptr inbounds %struct.saa6752hs_state, ptr %sd, i32 0, i32 5, i32 1
  %120 = ptrtoint ptr %ts_pid_audio to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %ts_pid_audio, align 2
  %122 = lshr i16 %121, 8
  %123 = trunc i16 %122 to i8
  %124 = and i8 %123, 15
  %conv80 = or i8 %124, -32
  %arrayidx81 = getelementptr inbounds [256 x i8], ptr %localPMT, i32 0, i32 25
  %125 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv80, ptr %arrayidx81, align 1
  %conv86 = trunc i16 %121 to i8
  %arrayidx87 = getelementptr inbounds [256 x i8], ptr %localPMT, i32 0, i32 26
  %126 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv86, ptr %arrayidx87, align 1
  %arrayidx88 = getelementptr inbounds [256 x i8], ptr %localPMT, i32 0, i32 7
  %sub89 = add nsw i32 %size.0, -11
  %call90 = call i32 @crc32_be(i32 noundef -1, ptr noundef %arrayidx88, i32 noundef %sub89) #15
  %shr91 = lshr i32 %call90, 24
  %conv93 = trunc i32 %shr91 to i8
  %sub94 = add nsw i32 %size.0, -4
  %arrayidx95 = getelementptr [256 x i8], ptr %localPMT, i32 0, i32 %sub94
  %127 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %conv93, ptr %arrayidx95, align 1
  %shr96 = lshr i32 %call90, 16
  %conv98 = trunc i32 %shr96 to i8
  %sub99 = add nsw i32 %size.0, -3
  %arrayidx100 = getelementptr [256 x i8], ptr %localPMT, i32 0, i32 %sub99
  %128 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv98, ptr %arrayidx100, align 1
  %shr101 = lshr i32 %call90, 8
  %conv103 = trunc i32 %shr101 to i8
  %sub104 = add nsw i32 %size.0, -2
  %arrayidx105 = getelementptr [256 x i8], ptr %localPMT, i32 0, i32 %sub104
  %129 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %conv103, ptr %arrayidx105, align 1
  %conv107 = trunc i32 %call90 to i8
  %sub108 = add nsw i32 %size.0, -1
  %arrayidx109 = getelementptr [256 x i8], ptr %localPMT, i32 0, i32 %sub108
  %130 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv107, ptr %arrayidx109, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i221) #11
  %131 = getelementptr inbounds [3 x i8], ptr %buf.i221, i32 0, i32 1
  %132 = getelementptr inbounds [3 x i8], ptr %buf.i221, i32 0, i32 2
  %133 = ptrtoint ptr %buf.i221 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 -63, ptr %buf.i221, align 1
  %134 = ptrtoint ptr %131 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %123, ptr %131, align 1
  %135 = ptrtoint ptr %132 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %conv86, ptr %132, align 1
  %call.i.i224 = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf.i221, i32 noundef 3, i16 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i221) #11
  %136 = ptrtoint ptr %ts_pid_video to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %ts_pid_video, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i225) #11
  %138 = getelementptr inbounds [3 x i8], ptr %buf.i225, i32 0, i32 1
  %139 = getelementptr inbounds [3 x i8], ptr %buf.i225, i32 0, i32 2
  %140 = ptrtoint ptr %buf.i225 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 -64, ptr %buf.i225, align 1
  %141 = lshr i16 %137, 8
  %conv1.i226 = trunc i16 %141 to i8
  %142 = ptrtoint ptr %138 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv1.i226, ptr %138, align 1
  %conv4.i227 = trunc i16 %137 to i8
  %143 = ptrtoint ptr %139 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv4.i227, ptr %139, align 1
  %call.i.i228 = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf.i225, i32 noundef 3, i16 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i225) #11
  %144 = ptrtoint ptr %ts_pid_pcr to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %ts_pid_pcr, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i229) #11
  %146 = getelementptr inbounds [3 x i8], ptr %buf.i229, i32 0, i32 1
  %147 = getelementptr inbounds [3 x i8], ptr %buf.i229, i32 0, i32 2
  %148 = ptrtoint ptr %buf.i229 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 -60, ptr %buf.i229, align 1
  %149 = lshr i16 %145, 8
  %conv1.i230 = trunc i16 %149 to i8
  %150 = ptrtoint ptr %146 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %conv1.i230, ptr %146, align 1
  %conv4.i231 = trunc i16 %145 to i8
  %151 = ptrtoint ptr %147 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %conv4.i231, ptr %147, align 1
  %call.i.i232 = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf.i229, i32 noundef 3, i16 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i229) #11
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %localPAT, i32 noundef 23, i16 noundef zeroext 0) #11
  %call.i233 = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %localPMT, i32 noundef %size.0, i16 noundef zeroext 0) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i234) #11
  %152 = getelementptr inbounds [2 x i8], ptr %buf.i234, i32 0, i32 1
  %153 = ptrtoint ptr %buf.i234 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 -92, ptr %buf.i234, align 1
  %154 = ptrtoint ptr %152 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 1, ptr %152, align 1
  %call.i.i235 = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf.i234, i32 noundef 2, i16 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i234) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i236) #11
  %155 = getelementptr inbounds [2 x i8], ptr %buf.i236, i32 0, i32 1
  %156 = ptrtoint ptr %buf.i236 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 -92, ptr %buf.i236, align 1
  %157 = ptrtoint ptr %155 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 0, ptr %155, align 1
  %call.i.i237 = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf.i236, i32 noundef 2, i16 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i236) #11
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i238) #11
  %158 = getelementptr inbounds [3 x i8], ptr %buf.i238, i32 0, i32 1
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 -1, ptr %158, align 1, !annotation !58
  %160 = getelementptr inbounds [3 x i8], ptr %buf.i238, i32 0, i32 2
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 -1, ptr %160, align 1, !annotation !58
  %162 = ptrtoint ptr %buf.i238 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 2, ptr %buf.i238, align 1
  %call.i.i239 = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf.i238, i32 noundef 1, i16 noundef zeroext 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %163 = load volatile i32, ptr @jiffies, align 128
  %add.i240 = add i32 %163, 300
  %164 = ptrtoint ptr %buf.i238 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 16, ptr %buf.i238, align 1
  %call.i13.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf.i238, i32 noundef 1, i16 noundef zeroext 0) #11
  %call.i24.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf.i238, i32 noundef 1, i16 noundef zeroext 1) #11
  %165 = ptrtoint ptr %buf.i238 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %buf.i238, align 1
  %167 = and i8 %166, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool.not5.i = icmp eq i8 %167, 0
  br i1 %tobool.not5.i, label %if.end.saa6752hs_chip_command.exit_crit_edge, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  br label %if.end.i

if.end.saa6752hs_chip_command.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %saa6752hs_chip_command.exit

if.end.i:                                         ; preds = %if.end21.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %168 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i240, %168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i241 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i241, label %if.end.i.saa6752hs_chip_command.exit_crit_edge, label %if.end21.i

if.end.i.saa6752hs_chip_command.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %saa6752hs_chip_command.exit

if.end21.i:                                       ; preds = %if.end.i
  call void @msleep(i32 noundef 10) #11
  %169 = ptrtoint ptr %buf.i238 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 16, ptr %buf.i238, align 1
  %call.i1.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf.i238, i32 noundef 1, i16 noundef zeroext 0) #11
  %call.i2.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf.i238, i32 noundef 1, i16 noundef zeroext 1) #11
  %170 = ptrtoint ptr %buf.i238 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %buf.i238, align 1
  %172 = and i8 %171, 32
  %tobool.not.i = icmp eq i8 %172, 0
  br i1 %tobool.not.i, label %if.end21.i.saa6752hs_chip_command.exit_crit_edge, label %if.end21.i.if.end.i_crit_edge

if.end21.i.if.end.i_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end21.i.saa6752hs_chip_command.exit_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %saa6752hs_chip_command.exit

saa6752hs_chip_command.exit:                      ; preds = %if.end21.i.saa6752hs_chip_command.exit_crit_edge, %if.end.i.saa6752hs_chip_command.exit_crit_edge, %if.end.saa6752hs_chip_command.exit_crit_edge
  %173 = getelementptr inbounds [4 x i8], ptr %buf2, i32 0, i32 3
  %174 = getelementptr inbounds [4 x i8], ptr %buf2, i32 0, i32 2
  %175 = getelementptr inbounds [4 x i8], ptr %buf2, i32 0, i32 1
  %176 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 8
  %177 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 7
  %178 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 6
  %179 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 5
  %180 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 4
  %181 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 3
  %182 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 2
  %183 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 1
  call void @msleep(i32 noundef 50) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i238) #11
  %184 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 -31, ptr %buf, align 1
  %185 = ptrtoint ptr %183 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 -89, ptr %183, align 1
  %186 = ptrtoint ptr %182 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 -2, ptr %182, align 1
  %187 = ptrtoint ptr %181 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 -126, ptr %181, align 1
  %188 = ptrtoint ptr %180 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 -80, ptr %180, align 1
  %call.i242 = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf, i32 noundef 5, i16 noundef zeroext 0) #11
  %call.i243 = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf2, i32 noundef 4, i16 noundef zeroext 1) #11
  %189 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 -32, ptr %buf, align 1
  %190 = ptrtoint ptr %183 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 -89, ptr %183, align 1
  %191 = ptrtoint ptr %182 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 -2, ptr %182, align 1
  %192 = ptrtoint ptr %181 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 -126, ptr %181, align 1
  %193 = ptrtoint ptr %180 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 -80, ptr %180, align 1
  %194 = ptrtoint ptr %buf2 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %buf2, align 4
  %196 = ptrtoint ptr %179 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %195, ptr %179, align 1
  %vi_aspect = getelementptr inbounds %struct.saa6752hs_state, ptr %sd, i32 0, i32 5, i32 7
  %197 = ptrtoint ptr %vi_aspect to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %vi_aspect, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %198)
  %cond155 = icmp eq i32 %198, 2
  %199 = ptrtoint ptr %175 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %175, align 1
  %201 = and i8 %200, -65
  %masksel = select i1 %cond155, i8 64, i8 0
  %storemerge = or i8 %201, %masksel
  %202 = ptrtoint ptr %178 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %storemerge, ptr %178, align 1
  %203 = ptrtoint ptr %174 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %174, align 2
  %205 = ptrtoint ptr %177 to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %204, ptr %177, align 1
  %206 = ptrtoint ptr %173 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %173, align 1
  %208 = ptrtoint ptr %176 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %207, ptr %176, align 1
  %call.i244 = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf, i32 noundef 9, i16 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %localPMT) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %localPAT) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf2) #11
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %buf) #11
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_be(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @saa6752hs_s_std(ptr nocapture noundef writeonly %sd, i64 noundef %std) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %standard = getelementptr inbounds %struct.saa6752hs_state, ptr %sd, i32 0, i32 7
  %0 = ptrtoint ptr %standard to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %std, ptr %standard, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @saa6752hs_get_fmt(ptr nocapture noundef %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %format) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %video_format = getelementptr inbounds %struct.saa6752hs_state, ptr %sd, i32 0, i32 6
  %2 = ptrtoint ptr %video_format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %video_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %video_format to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %video_format, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %5 = ptrtoint ptr %video_format to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %video_format, align 4
  %fmt = getelementptr [5 x %struct.v4l2_format], ptr @v4l2_format_table, i32 0, i32 %6, i32 1
  %7 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fmt, align 4
  %9 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %format1, align 4
  %10 = load i32, ptr %video_format, align 4
  %height = getelementptr [5 x %struct.v4l2_format], ptr @v4l2_format_table, i32 0, i32 %10, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  %height10 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %height10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %height10, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %code, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %15 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %colorspace, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @saa6752hs_set_fmt(ptr nocapture noundef writeonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %code, align 4
  %3 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %format1, align 4
  %sub5 = add i32 %4, -480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5)
  %cmp7 = icmp slt i32 %sub5, 0
  %sub9 = sub i32 480, %4
  %cond12 = select i1 %cmp7, i32 %sub9, i32 %sub5
  %sub15 = add i32 %4, -720
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub15)
  %cmp17 = icmp slt i32 %sub15, 0
  %sub19 = sub i32 720, %4
  %cond22 = select i1 %cmp17, i32 %sub19, i32 %sub15
  call void @__sanitizer_cov_trace_cmp4(i32 %cond22, i32 %cond12)
  %cmp23 = icmp slt i32 %cond22, %cond12
  br i1 %cmp23, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 720, ptr %format1, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 576, ptr %height, align 4
  br label %if.end59

if.else:                                          ; preds = %if.end
  %sub = add i32 %4, -352
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  %sub2 = sub i32 352, %4
  %cond = select i1 %cmp, i32 %sub2, i32 %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %cond12, i32 %cond)
  %cmp26 = icmp slt i32 %cond12, %cond
  br i1 %cmp26, label %if.then27, label %if.else30

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 480, ptr %format1, align 4
  %height29 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %height29 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 576, ptr %height29, align 4
  br label %if.end59

if.else30:                                        ; preds = %if.else
  %9 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 352, ptr %format1, align 4
  %height33 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %height33 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height33, align 4
  %sub34 = add i32 %11, -576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub34)
  %cmp36 = icmp slt i32 %sub34, 0
  %sub38 = sub i32 576, %11
  %cond41 = select i1 %cmp36, i32 %sub38, i32 %sub34
  %sub44 = add i32 %11, -288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub44)
  %cmp46 = icmp slt i32 %sub44, 0
  %sub48 = sub i32 288, %11
  %cond51 = select i1 %cmp46, i32 %sub48, i32 %sub44
  call void @__sanitizer_cov_trace_cmp4(i32 %cond41, i32 %cond51)
  %cmp52 = icmp slt i32 %cond41, %cond51
  br i1 %cmp52, label %if.then53, label %if.else55

if.then53:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %height33 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 576, ptr %height33, align 4
  br label %if.end59

if.else55:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %height33 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 288, ptr %height33, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.else55, %if.then53, %if.then27, %if.then24
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %15 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %colorspace, align 4
  %16 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp60 = icmp eq i32 %17, 0
  br i1 %cmp60, label %if.then61, label %if.end66

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sd_state, align 4
  %20 = call ptr @memcpy(ptr %19, ptr %format1, i32 48)
  br label %cleanup

if.end66:                                         ; preds = %if.end59
  %21 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %format1, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %if.else75 [
    i32 720, label %if.then69
    i32 480, label %if.then73
  ]

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  %video_format = getelementptr inbounds %struct.saa6752hs_state, ptr %sd, i32 0, i32 6
  %24 = ptrtoint ptr %video_format to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %video_format, align 4
  br label %cleanup

if.then73:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  %video_format74 = getelementptr inbounds %struct.saa6752hs_state, ptr %sd, i32 0, i32 6
  %25 = ptrtoint ptr %video_format74 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %video_format74, align 4
  br label %cleanup

if.else75:                                        ; preds = %if.end66
  %height76 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %height76 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %27)
  %cmp77 = icmp eq i32 %27, 576
  %video_format79 = getelementptr inbounds %struct.saa6752hs_state, ptr %sd, i32 0, i32 6
  br i1 %cmp77, label %if.then78, label %if.else80

if.then78:                                        ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %video_format79 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %video_format79, align 4
  br label %cleanup

if.else80:                                        ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %video_format79 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3, ptr %video_format79, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else80, %if.then78, %if.then73, %if.then69, %if.then61, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then61 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then73 ], [ 0, %if.else80 ], [ 0, %if.then78 ], [ 0, %if.then69 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @saa6752hs_try_ctrl(ptr nocapture noundef readonly %ctrl) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10029518, i32 %3)
  %cond = icmp eq i32 %3, 10029518
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %land.lhs.true, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %video_bitrate_peak = getelementptr i8, ptr %1, i32 192
  %6 = ptrtoint ptr %video_bitrate_peak to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %video_bitrate_peak, align 4
  %val1 = getelementptr inbounds %struct.v4l2_ctrl, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val1, align 4
  %video_bitrate = getelementptr i8, ptr %1, i32 188
  %10 = ptrtoint ptr %video_bitrate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %video_bitrate, align 4
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %11, i32 0, i32 22
  %12 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp3 = icmp slt i32 %9, %13
  br i1 %cmp3, label %if.then, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %val1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %val1, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %land.lhs.true.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa6752hs_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 10029312, label %entry.sw.epilog_crit_edge
    i32 10029313, label %sw.bb
    i32 10029314, label %sw.bb2
    i32 10029315, label %sw.bb5
    i32 10029316, label %sw.bb8
    i32 10029413, label %sw.bb11
    i32 10029415, label %sw.bb13
    i32 10029423, label %sw.bb15
    i32 10029412, label %entry.sw.epilog_crit_edge52
    i32 10029512, label %entry.sw.epilog_crit_edge53
    i32 10029513, label %sw.bb17
    i32 10029518, label %sw.bb19
  ]

entry.sw.epilog_crit_edge53:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.sw.epilog_crit_edge52:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %params1 = getelementptr i8, ptr %1, i32 204
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i16
  %7 = ptrtoint ptr %params1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %params1, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val3, align 4
  %conv4 = trunc i32 %9 to i16
  %ts_pid_audio = getelementptr i8, ptr %1, i32 206
  %10 = ptrtoint ptr %ts_pid_audio to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv4, ptr %ts_pid_audio, align 2
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %11 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val6, align 4
  %conv7 = trunc i32 %12 to i16
  %ts_pid_video = getelementptr i8, ptr %1, i32 208
  %13 = ptrtoint ptr %ts_pid_video to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv7, ptr %ts_pid_video, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %val9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %14 = ptrtoint ptr %val9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val9, align 4
  %conv10 = trunc i32 %15 to i16
  %ts_pid_pcr = getelementptr i8, ptr %1, i32 210
  %16 = ptrtoint ptr %ts_pid_pcr to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv10, ptr %ts_pid_pcr, align 2
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %17 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val12, align 4
  %au_encoding = getelementptr i8, ptr %1, i32 212
  %19 = ptrtoint ptr %au_encoding to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %au_encoding, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %val14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %20 = ptrtoint ptr %val14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val14, align 4
  %au_l2_bitrate = getelementptr i8, ptr %1, i32 216
  %22 = ptrtoint ptr %au_l2_bitrate to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %au_l2_bitrate, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %val16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %23 = ptrtoint ptr %val16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val16, align 4
  %au_ac3_bitrate = getelementptr i8, ptr %1, i32 220
  %25 = ptrtoint ptr %au_ac3_bitrate to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %au_ac3_bitrate, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %val18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %26 = ptrtoint ptr %val18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val18, align 4
  %vi_aspect = getelementptr i8, ptr %1, i32 224
  %28 = ptrtoint ptr %vi_aspect to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %vi_aspect, align 4
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %val20 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %29 = ptrtoint ptr %val20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val20, align 4
  %vi_bitrate_mode = getelementptr i8, ptr %1, i32 228
  %31 = ptrtoint ptr %vi_bitrate_mode to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %vi_bitrate_mode, align 4
  %video_bitrate = getelementptr i8, ptr %1, i32 188
  %32 = ptrtoint ptr %video_bitrate to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %video_bitrate, align 4
  %val21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %33, i32 0, i32 22
  %34 = ptrtoint ptr %val21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val21, align 4
  %div = sdiv i32 %35, 1000
  %vi_bitrate = getelementptr i8, ptr %1, i32 232
  %36 = ptrtoint ptr %vi_bitrate to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %div, ptr %vi_bitrate, align 4
  %video_bitrate_peak = getelementptr i8, ptr %1, i32 192
  %37 = ptrtoint ptr %video_bitrate_peak to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %video_bitrate_peak, align 4
  %val22 = getelementptr inbounds %struct.v4l2_ctrl, ptr %38, i32 0, i32 22
  %39 = ptrtoint ptr %val22 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val22, align 4
  %div23 = sdiv i32 %40, 1000
  %vi_bitrate_peak = getelementptr i8, ptr %1, i32 236
  %41 = ptrtoint ptr %vi_bitrate_peak to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %div23, ptr %vi_bitrate_peak, align 4
  %42 = load i32, ptr %val20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp = icmp eq i32 %42, 0
  tail call void @v4l2_ctrl_activate(ptr noundef %38, i1 noundef zeroext %cmp) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb8, %sw.bb5, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge52, %entry.sw.epilog_crit_edge53
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_activate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__UNIQUE_ID_description292, !1, !"__UNIQUE_ID_description292", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/saa6752hs.c", i32 36, i32 1}
!2 = !{ptr @__UNIQUE_ID_author293, !3, !"__UNIQUE_ID_author293", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/saa6752hs.c", i32 37, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/media/i2c/saa6752hs.c", i32 38, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_saa6752hs__296_791_saa6752hs_driver_init6, !8, !"__initcall__kmod_saa6752hs__296_791_saa6752hs_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/saa6752hs.c", i32 791, i32 1}
!9 = !{ptr @__exitcall_saa6752hs_driver_exit, !8, !"__exitcall_saa6752hs_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/saa6752hs.c", i32 784, i32 11}
!12 = !{ptr @saa6752hs_driver, !13, !"saa6752hs_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/saa6752hs.c", i32 782, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/saa6752hs.c", i32 671, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @saa6752hs_probe._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @saa6752hs_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/saa6752hs.c", i32 686, i32 3}
!22 = !{ptr @saa6752hs_probe._entry.4, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @saa6752hs_probe._entry_ptr.6, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @saa6752hs_probe._key, !25, !"_key", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/saa6752hs.c", i32 691, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @saa6752hs_ops, !28, !"saa6752hs_ops", i1 false, i1 false}
!28 = !{!"../drivers/media/i2c/saa6752hs.c", i32 656, i32 37}
!29 = !{ptr @saa6752hs_core_ops, !30, !"saa6752hs_core_ops", i1 false, i1 false}
!30 = !{!"../drivers/media/i2c/saa6752hs.c", i32 643, i32 42}
!31 = !{ptr @PAT, !32, !"PAT", i1 false, i1 false}
!32 = !{!"../drivers/media/i2c/saa6752hs.c", i32 115, i32 17}
!33 = !{ptr @PMT_AC3, !34, !"PMT_AC3", i1 false, i1 false}
!34 = !{!"../drivers/media/i2c/saa6752hs.c", i32 170, i32 17}
!35 = !{ptr @PMT, !36, !"PMT", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/saa6752hs.c", i32 141, i32 17}
!37 = !{ptr @saa6752hs_video_ops, !38, !"saa6752hs_video_ops", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/saa6752hs.c", i32 647, i32 43}
!39 = !{ptr @saa6752hs_pad_ops, !40, !"saa6752hs_pad_ops", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/saa6752hs.c", i32 651, i32 41}
!41 = !{ptr @v4l2_format_table, !42, !"v4l2_format_table", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/saa6752hs.c", i32 67, i32 33}
!43 = !{ptr @param_defaults, !44, !"param_defaults", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/saa6752hs.c", i32 203, i32 43}
!45 = !{ptr @saa6752hs_ctrl_ops, !46, !"saa6752hs_ctrl_ops", i1 false, i1 false}
!46 = !{!"../drivers/media/i2c/saa6752hs.c", i32 638, i32 35}
!47 = !{ptr @saa6752hs_id, !48, !"saa6752hs_id", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/saa6752hs.c", i32 776, i32 35}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"auto-init"}
