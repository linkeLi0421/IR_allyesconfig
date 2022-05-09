; ModuleID = '/llk/IR_all_yes/drivers/media/spi/gs1662.c_pt.bc'
source_filename = "../drivers/media/spi/gs1662.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_dv_timings_cap = type { i32, i32, [2 x i32], %union.anon.95 }
%union.anon.95 = type { %struct.v4l2_bt_timings_cap, [24 x i8] }
%struct.v4l2_bt_timings_cap = type { i32, i32, i32, i32, i64, i64, i32, i32, [16 x i32] }
%struct.v4l2_bt_timings = type <{ i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_fract, i8, i8, [46 x i8] }>
%struct.v4l2_fract = type { i32, i32 }
%struct.gs = type { ptr, %struct.v4l2_subdev, %struct.v4l2_dv_timings, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_dv_timings = type { i32, %union.anon.93 }
%union.anon.93 = type { [32 x i32] }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
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
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.92 }
%union.anon.92 = type { i32, [28 x i8] }
%struct.gs_reg_fmt = type <{ i16, %struct.v4l2_dv_timings }>
%struct.v4l2_enum_dv_timings = type { i32, i32, [2 x i32], %struct.v4l2_dv_timings }

@__initcall__kmod_gs1662__292_480_gs_driver_init6 = internal global ptr @gs_driver_init, section ".initcall6.init", align 4
@gs_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @gs_id, ptr @gs_probe, ptr @gs_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_gs_driver_exit = internal global ptr @gs_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file293 = internal constant [37 x i8] c"gs1662.file=drivers/media/spi/gs1662\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [19 x i8] c"gs1662.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [75 x i8] c"gs1662.author=Charles-Antoine Couret <charles-antoine.couret@nexvision.fr>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [61 x i8] c"gs1662.description=Gennum GS1662 HD/SD-SDI Serializer driver\00", section ".modinfo", align 1
@gs_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"gs1662\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gs1662\00", [25 x i8] zeroinitializer }, align 32
@gs_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @gs_core_ops, ptr null, ptr null, ptr @gs_video_ops, ptr null, ptr null, ptr null, ptr @gs_pad_ops }, [32 x i8] zeroinitializer }, align 32
@gs_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gs_g_register, ptr @gs_s_register, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@gs_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gs_g_input_status, ptr @gs_s_stream, ptr null, ptr null, ptr null, ptr @gs_s_dv_timings, ptr @gs_g_dv_timings, ptr @gs_query_dv_timings, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@gs_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gs_dv_timings_cap, ptr @gs_enum_dv_timings, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@gs_timings_cap = internal constant { %struct.v4l2_dv_timings_cap, [48 x i8] } { %struct.v4l2_dv_timings_cap { i32 0, i32 0, [2 x i32] zeroinitializer, %union.anon.95 { %struct.v4l2_bt_timings_cap { i32 720, i32 2048, i32 487, i32 1080, i64 10519200, i64 74250000, i32 17, i32 3, [16 x i32] zeroinitializer }, [24 x i8] undef } }, [48 x i8] zeroinitializer }, align 32
@fmt_cap = internal constant { [12 x { i32, { %struct.v4l2_bt_timings, [4 x i8] } }], [400 x i8] } { [12 x { i32, { %struct.v4l2_bt_timings, [4 x i8] } }] [{ i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 720, i32 487, i32 1, i32 2, i64 13500000, i32 16, i32 121, i32 0, i32 0, i32 19, i32 0, i32 0, i32 19, i32 0, i32 16, i32 32, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 720, i32 576, i32 0, i32 0, i64 27000000, i32 12, i32 64, i32 68, i32 5, i32 5, i32 39, i32 0, i32 0, i32 0, i32 1, i32 208, %struct.v4l2_fract { i32 4, i32 3 }, i8 17, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 59400000, i32 1760, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 3, i32 130, %struct.v4l2_fract zeroinitializer, i8 60, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 2420, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 144, %struct.v4l2_fract zeroinitializer, i8 61, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 1760, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 62, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 440, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 144, %struct.v4l2_fract zeroinitializer, i8 19, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 110, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 4, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 74250000, i32 638, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 32, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 74250000, i32 528, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 1, i32 144, %struct.v4l2_fract zeroinitializer, i8 33, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 74250000, i32 88, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 34, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 1, i32 3, i64 74250000, i32 528, i32 44, i32 148, i32 2, i32 5, i32 15, i32 2, i32 5, i32 16, i32 1, i32 152, %struct.v4l2_fract zeroinitializer, i8 20, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 1, i32 3, i64 74250000, i32 88, i32 44, i32 148, i32 2, i32 5, i32 15, i32 2, i32 5, i32 16, i32 1, i32 154, %struct.v4l2_fract zeroinitializer, i8 5, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }], [400 x i8] zeroinitializer }, align 32
@reg_fmt = internal constant { [22 x <{ i16, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } }>], [764 x i8] } { [22 x <{ i16, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } }>] [<{ i16, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } }> <{ i16 0, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 110, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 4, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } } }>, <{ i16, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } }> <{ i16 1, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 110, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 4, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } } }>, <{ i16, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } }> <{ i16 2, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 1760, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 62, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } } }>, <{ i16, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } }> <{ i16 3, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 1760, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 62, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } } }>, <{ i16, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } }> <{ i16 4, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 440, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 144, %struct.v4l2_fract zeroinitializer, i8 19, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } } }>, <{ i16, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } }> <{ i16 5, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 440, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 144, %struct.v4l2_fract zeroinitializer, i8 19, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } } }>, <{ i16, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } }> <{ i16 6, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 2420, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 144, %struct.v4l2_fract zeroinitializer, i8 61, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } } }>, <{ i16, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } }> <{ i16 7, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 2420, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 144, %struct.v4l2_fract zeroinitializer, i8 61, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } } }>, <{ i16, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } }> <{ i16 8, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 59400000, i32 1760, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 3, i32 130, %struct.v4l2_fract zeroinitializer, i8 60, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } } }>, <{ i16, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } }> <{ i16 9, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 59400000, i32 1760, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 3, i32 130, %struct.v4l2_fract zeroinitializer, i8 60, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } } }>, <{ i16, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } }> <{ i16 10, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 1, i32 3, i64 74250000, i32 88, i32 44, i32 148, i32 2, i32 5, i32 15, i32 2, i32 5, i32 16, i32 1, i32 154, %struct.v4l2_fract zeroinitializer, i8 5, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } } }>, <{ i16, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } }> <{ i16 11, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 74250000, i32 88, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 34, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } } }>, <{ i16, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } }> <{ i16 20, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 1, i32 3, i64 74250000, i32 528, i32 44, i32 148, i32 2, i32 5, i32 15, i32 2, i32 5, i32 16, i32 1, i32 152, %struct.v4l2_fract zeroinitializer, i8 20, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } } }>, <{ i16, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } }> <{ i16 12, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 1, i32 3, i64 74250000, i32 528, i32 44, i32 148, i32 2, i32 5, i32 15, i32 2, i32 5, i32 16, i32 1, i32 152, %struct.v4l2_fract zeroinitializer, i8 20, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } } }>, <{ i16, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } }> <{ i16 13, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 74250000, i32 528, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 1, i32 144, %struct.v4l2_fract zeroinitializer, i8 33, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } } }>, <{ i16, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } }> <{ i16 14, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 74250000, i32 528, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 1, i32 144, %struct.v4l2_fract zeroinitializer, i8 33, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } } }>, <{ i16, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } }> <{ i16 16, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 74250000, i32 638, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 32, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } } }>, <{ i16, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } }> <{ i16 18, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 74250000, i32 638, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 32, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } } }>, <{ i16, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } }> <{ i16 22, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 720, i32 487, i32 1, i32 2, i64 13500000, i32 16, i32 121, i32 0, i32 0, i32 19, i32 0, i32 0, i32 19, i32 0, i32 16, i32 32, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } } }>, <{ i16, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } }> <{ i16 25, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 720, i32 487, i32 1, i32 2, i64 13500000, i32 16, i32 121, i32 0, i32 0, i32 19, i32 0, i32 0, i32 19, i32 0, i32 16, i32 32, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } } }>, <{ i16, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } }> <{ i16 24, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 720, i32 576, i32 0, i32 0, i64 27000000, i32 12, i32 64, i32 68, i32 5, i32 5, i32 39, i32 0, i32 0, i32 0, i32 1, i32 208, %struct.v4l2_fract { i32 4, i32 3 }, i8 17, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } } }>, <{ i16, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } }> <{ i16 26, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 720, i32 576, i32 0, i32 0, i64 27000000, i32 12, i32 64, i32 68, i32 5, i32 5, i32 39, i32 0, i32 0, i32 0, i32 1, i32 208, %struct.v4l2_fract { i32 4, i32 3 }, i8 17, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } } }>], [764 x i8] zeroinitializer }, align 32
@switch.table.gs_query_dv_timings = internal constant { [31 x i32], [36 x i8] } { [31 x i32] [i32 16, i32 0, i32 17, i32 0, i32 12, i32 0, i32 18, i32 0, i32 20, i32 19, i32 21, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 13, i32 14, i32 15], [36 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [10 x i8] c"gs_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 470, i32 26 }
@___asan_gen_.6 = private unnamed_addr constant [6 x i8] c"gs_id\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 66, i32 35 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 472, i32 12 }
@___asan_gen_.12 = private unnamed_addr constant [7 x i8] c"gs_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 426, i32 37 }
@___asan_gen_.15 = private unnamed_addr constant [12 x i8] c"gs_core_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 405, i32 42 }
@___asan_gen_.18 = private unnamed_addr constant [13 x i8] c"gs_video_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 412, i32 43 }
@___asan_gen_.21 = private unnamed_addr constant [11 x i8] c"gs_pad_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 420, i32 41 }
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"gs_timings_cap\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 128, i32 41 }
@___asan_gen_.27 = private unnamed_addr constant [8 x i8] c"fmt_cap\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 72, i32 37 }
@___asan_gen_.30 = private unnamed_addr constant [8 x i8] c"reg_fmt\00", align 1
@___asan_gen_.31 = private constant [30 x i8] c"../drivers/media/spi/gs1662.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 87, i32 32 }
@___asan_gen_.33 = private unnamed_addr constant [33 x i8] c"switch.table.gs_query_dv_timings\00", align 1
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_gs_driver_exit, ptr @__initcall__kmod_gs1662__292_480_gs_driver_init6, ptr @gs_driver_exit, ptr @gs_driver, ptr @gs_id, ptr @.str, ptr @gs_ops, ptr @gs_core_ops, ptr @gs_video_ops, ptr @gs_pad_ops, ptr @gs_timings_cap, ptr @fmt_cap, ptr @reg_fmt, ptr @switch.table.gs_query_dv_timings], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_timings_cap to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmt_cap to i32), i32 1584, i32 1984, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_fmt to i32), i32 2948, i32 3712, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gs_query_dv_timings to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gs_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @gs_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gs_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @gs_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gs_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 336, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %spi, ptr %call.i, align 4
  %sd1 = getelementptr inbounds %struct.gs, ptr %call.i, i32 0, i32 1
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %mode, align 8
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %irq, align 4
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %3 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 10000000, ptr %max_speed_hz, align 8
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %4 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 16, ptr %bits_per_word, align 1
  %call2 = tail call i32 @spi_setup(ptr noundef %spi) #5
  tail call void @v4l2_spi_subdev_init(ptr noundef %sd1, ptr noundef %spi, ptr noundef nonnull @gs_ops) #5
  %current_timings = getelementptr inbounds %struct.gs, ptr %call.i, i32 0, i32 2
  %5 = call ptr @memcpy(ptr %current_timings, ptr getelementptr inbounds ([22 x <{ i16, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } }>], ptr @reg_fmt, i32 0, i32 0, i32 1, i32 0), i32 132)
  %enabled = getelementptr inbounds %struct.gs, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %enabled, align 4
  %call3 = tail call fastcc i32 @gs_write_register(ptr noundef %spi, i16 noundef zeroext 0, i16 noundef zeroext 768)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gs_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_spi_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gs_write_register(ptr noundef %spi, i16 noundef zeroext %addr, i16 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  %buf_addr = alloca i16, align 2
  %buf_value = alloca i16, align 2
  %msg = alloca %struct.spi_message, align 4
  %tx = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf_addr) #5
  %0 = ptrtoint ptr %buf_addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %addr, ptr %buf_addr, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf_value) #5
  %1 = ptrtoint ptr %buf_value to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %value, ptr %buf_value, align 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #5
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %tx) #5
  %2 = getelementptr inbounds i8, ptr %tx, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 188)
  %4 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %buf_addr, ptr %tx, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %tx, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %len, align 4
  %delay = getelementptr inbounds %struct.spi_transfer, ptr %tx, i32 0, i32 9
  %6 = ptrtoint ptr %delay to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %delay, align 2
  %arrayinit.element = getelementptr inbounds %struct.spi_transfer, ptr %tx, i32 1
  %7 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %buf_value, ptr %arrayinit.element, align 4
  %len3 = getelementptr inbounds %struct.spi_transfer, ptr %tx, i32 1, i32 2
  %8 = ptrtoint ptr %len3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %len3, align 4
  %delay8 = getelementptr inbounds %struct.spi_transfer, ptr %tx, i32 1, i32 9
  %9 = ptrtoint ptr %delay8 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %delay8, align 2
  %10 = getelementptr inbounds i8, ptr %msg, i32 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 40)
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %14 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %15 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %tx, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %17 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tx, i32 0, i32 18, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %19 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %transfer_list.i11 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %tx, i32 0, i32 1, i32 18
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i13 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i11, ptr noundef %21, ptr noundef nonnull %msg) #5
  br i1 %call.i.i.i13, label %if.end.i.i.i15, label %spi_message_add_tail.exit.spi_message_add_tail.exit16_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit16_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit16

if.end.i.i.i15:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transfer_list.i11, ptr %prev.i.i.i, align 4
  %23 = ptrtoint ptr %transfer_list.i11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg, ptr %transfer_list.i11, align 4
  %prev3.i.i.i14 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %tx, i32 0, i32 1, i32 18, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i.i14, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %transfer_list.i11, ptr %21, align 4
  br label %spi_message_add_tail.exit16

spi_message_add_tail.exit16:                      ; preds = %if.end.i.i.i15, %spi_message_add_tail.exit.spi_message_add_tail.exit16_crit_edge
  %call = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg) #5
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %tx) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf_value) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf_addr) #5
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gs_g_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef %reg) #2 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %val, align 2, !annotation !39
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %3 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %reg1, align 1
  %conv = trunc i64 %4 to i16
  %call2 = call fastcc i32 @gs_read_register(ptr noundef %1, i16 noundef zeroext %conv, ptr noundef nonnull %val)
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %val, align 2
  %conv3 = zext i16 %6 to i64
  %val4 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %7 = ptrtoint ptr %val4 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %conv3, ptr %val4, align 1
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %8 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 2, ptr %size, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gs_s_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %2 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %reg1, align 1
  %conv = trunc i64 %3 to i16
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %4 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %val, align 1
  %conv3 = trunc i64 %5 to i16
  %call4 = tail call fastcc i32 @gs_write_register(ptr noundef %1, i16 noundef zeroext %conv, i16 noundef zeroext %conv3)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gs_read_register(ptr noundef %spi, i16 noundef zeroext %addr, ptr nocapture noundef writeonly %value) unnamed_addr #2 align 64 {
entry:
  %buf_addr = alloca i16, align 2
  %buf_value = alloca i16, align 2
  %msg = alloca %struct.spi_message, align 4
  %tx = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf_addr) #5
  %0 = and i16 %addr, 4095
  %1 = or i16 %0, -32768
  %2 = ptrtoint ptr %buf_addr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %buf_addr, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf_value) #5
  %3 = ptrtoint ptr %buf_value to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %buf_value, align 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #5
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %tx) #5
  %4 = getelementptr inbounds i8, ptr %tx, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 188)
  %6 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %buf_addr, ptr %tx, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %tx, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %len, align 4
  %delay = getelementptr inbounds %struct.spi_transfer, ptr %tx, i32 0, i32 9
  %8 = ptrtoint ptr %delay to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %delay, align 2
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %tx, i32 1, i32 1
  %9 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buf_value, ptr %rx_buf, align 4
  %len4 = getelementptr inbounds %struct.spi_transfer, ptr %tx, i32 1, i32 2
  %10 = ptrtoint ptr %len4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %len4, align 4
  %delay9 = getelementptr inbounds %struct.spi_transfer, ptr %tx, i32 1, i32 9
  %11 = ptrtoint ptr %delay9 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %delay9, align 2
  %12 = getelementptr inbounds i8, ptr %msg, i32 8
  %13 = call ptr @memset(ptr %12, i32 0, i32 40)
  %14 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %16 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %tx, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tx, i32 0, i32 18, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %21 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %transfer_list.i12 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %tx, i32 0, i32 1, i32 18
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i14 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i12, ptr noundef %23, ptr noundef nonnull %msg) #5
  br i1 %call.i.i.i14, label %if.end.i.i.i16, label %spi_message_add_tail.exit.spi_message_add_tail.exit17_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit17_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit17

if.end.i.i.i16:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %transfer_list.i12, ptr %prev.i.i.i, align 4
  %25 = ptrtoint ptr %transfer_list.i12 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg, ptr %transfer_list.i12, align 4
  %prev3.i.i.i15 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %tx, i32 0, i32 1, i32 18, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i15 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i.i15, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %transfer_list.i12, ptr %23, align 4
  br label %spi_message_add_tail.exit17

spi_message_add_tail.exit17:                      ; preds = %if.end.i.i.i16, %spi_message_add_tail.exit.spi_message_add_tail.exit17_crit_edge
  %call = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg) #5
  %28 = ptrtoint ptr %buf_value to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %buf_value, align 2
  %30 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %value, align 2
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %tx) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf_value) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf_addr) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gs_g_input_status(ptr nocapture noundef readonly %sd, ptr nocapture noundef %status) #2 align 64 {
entry:
  %reg_value = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_value) #5
  %0 = ptrtoint ptr %reg_value to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg_value, align 2, !annotation !39
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 4
  %call4 = call fastcc i32 @gs_read_register(ptr noundef %2, i16 noundef zeroext 18, ptr noundef nonnull %reg_value)
  %3 = ptrtoint ptr %reg_value to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %reg_value, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

for.cond:                                         ; preds = %if.end
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  %call4.1 = call fastcc i32 @gs_read_register(ptr noundef %6, i16 noundef zeroext 19, ptr noundef nonnull %reg_value)
  %7 = ptrtoint ptr %reg_value to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %reg_value, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.1 = icmp eq i16 %8, 0
  br i1 %tobool.not.1, label %if.end.1, label %for.cond.if.end12_crit_edge

for.cond.if.end12_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end.1:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.1)
  %tobool5.not.1 = icmp eq i32 %call4.1, 0
  br i1 %tobool5.not.1, label %for.cond.1, label %if.end.1.cleanup.sink.split_crit_edge

if.end.1.cleanup.sink.split_crit_edge:            ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

for.cond.1:                                       ; preds = %if.end.1
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 4
  %call4.2 = call fastcc i32 @gs_read_register(ptr noundef %10, i16 noundef zeroext 20, ptr noundef nonnull %reg_value)
  %11 = ptrtoint ptr %reg_value to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %reg_value, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not.2 = icmp eq i16 %12, 0
  br i1 %tobool.not.2, label %if.end.2, label %for.cond.1.if.end12_crit_edge

for.cond.1.if.end12_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end.2:                                         ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.2)
  %tobool5.not.2 = icmp eq i32 %call4.2, 0
  br i1 %tobool5.not.2, label %for.cond.2, label %if.end.2.cleanup.sink.split_crit_edge

if.end.2.cleanup.sink.split_crit_edge:            ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

for.cond.2:                                       ; preds = %if.end.2
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 4
  %call4.3 = call fastcc i32 @gs_read_register(ptr noundef %14, i16 noundef zeroext 21, ptr noundef nonnull %reg_value)
  %15 = ptrtoint ptr %reg_value to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %reg_value, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not.3 = icmp eq i16 %16, 0
  br i1 %tobool.not.3, label %if.end.3, label %for.cond.2.if.end12_crit_edge

for.cond.2.if.end12_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end.3:                                         ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.3)
  %tobool5.not.3 = icmp eq i32 %call4.3, 0
  br i1 %tobool5.not.3, label %for.cond.3, label %if.end.3.cleanup.sink.split_crit_edge

if.end.3.cleanup.sink.split_crit_edge:            ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

for.cond.3:                                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status, align 4
  %or = or i32 %18, 2
  store i32 %or, ptr %status, align 4
  br label %if.end12

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %for.cond, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end12:                                         ; preds = %for.cond.3, %for.cond.2.if.end12_crit_edge, %for.cond.1.if.end12_crit_edge, %for.cond.if.end12_crit_edge, %entry.if.end12_crit_edge
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 4
  %call14 = call fastcc i32 @gs_read_register(ptr noundef %20, i16 noundef zeroext 4, ptr noundef nonnull %reg_value)
  %21 = ptrtoint ptr %reg_value to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %reg_value, align 2
  %23 = and i16 %22, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool16.not = icmp eq i16 %23, 0
  br i1 %tobool16.not, label %if.then17, label %if.end12.if.end19_crit_edge

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status, align 4
  %or18 = or i32 %25, 256
  store i32 %or18, ptr %status, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end12.if.end19_crit_edge
  %26 = and i16 %22, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool22.not = icmp eq i16 %26, 0
  br i1 %tobool22.not, label %if.then23, label %if.end19.if.end25_crit_edge

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %status, align 4
  %or24 = or i32 %28, 1024
  store i32 %or24, ptr %status, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end19.if.end25_crit_edge
  %29 = and i16 %22, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool28.not = icmp eq i16 %29, 0
  br i1 %tobool28.not, label %if.then29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %status, align 4
  %or30 = or i32 %31, 2048
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then29, %if.end.cleanup.sink.split_crit_edge, %if.end.3.cleanup.sink.split_crit_edge, %if.end.2.cleanup.sink.split_crit_edge, %if.end.1.cleanup.sink.split_crit_edge
  %or30.sink = phi i32 [ %or30, %if.then29 ], [ 1, %if.end.3.cleanup.sink.split_crit_edge ], [ 1, %if.end.2.cleanup.sink.split_crit_edge ], [ 1, %if.end.1.cleanup.sink.split_crit_edge ], [ 1, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call14, %if.then29 ], [ %call4.3, %if.end.3.cleanup.sink.split_crit_edge ], [ %call4.2, %if.end.2.cleanup.sink.split_crit_edge ], [ %call4.1, %if.end.1.cleanup.sink.split_crit_edge ], [ %call4, %if.end.cleanup.sink.split_crit_edge ]
  %32 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or30.sink, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end25.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end25.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_value) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gs_s_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -4
  %enabled = getelementptr i8, ptr %sd, i32 328
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %enable)
  %cmp = icmp eq i32 %1, %enable
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %enable, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.then2

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then2:                                         ; preds = %if.end
  %current_timings = getelementptr i8, ptr %sd, i32 196
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then2
  %i.07.i = phi i32 [ 0, %if.then2 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %format.i = getelementptr [22 x %struct.gs_reg_fmt], ptr @reg_fmt, i32 0, i32 %i.07.i, i32 1
  %call.i = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %current_timings, ptr noundef %format.i, i32 noundef 0, i1 noundef zeroext false) #5
  br i1 %call.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr [22 x %struct.gs_reg_fmt], ptr @reg_fmt, i32 0, i32 %i.07.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx.i, align 2
  %5 = or i16 %4, 32
  br label %cleanup.sink.split

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 22
  br i1 %exitcond.not.i, label %for.inc.i.cleanup.sink.split_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.cleanup.sink.split_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.inc.i.cleanup.sink.split_crit_edge, %if.then.i, %if.end.cleanup.sink.split_crit_edge
  %.sink19 = phi i16 [ %5, %if.then.i ], [ 0, %if.end.cleanup.sink.split_crit_edge ], [ 0, %for.inc.i.cleanup.sink.split_crit_edge ]
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %call8 = tail call fastcc i32 @gs_write_register(ptr noundef %7, i16 noundef zeroext 6, i16 noundef zeroext %.sink19)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call8, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gs_s_dv_timings(ptr nocapture noundef writeonly %sd, ptr noundef %timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.07.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %format.i = getelementptr [22 x %struct.gs_reg_fmt], ptr @reg_fmt, i32 0, i32 %i.07.i, i32 1
  %call.i = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings, ptr noundef %format.i, i32 noundef 0, i1 noundef zeroext false) #5
  br i1 %call.i, label %get_register_timings.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 22
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

get_register_timings.exit:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %current_timings = getelementptr i8, ptr %sd, i32 196
  %0 = call ptr @memcpy(ptr %current_timings, ptr %timings, i32 132)
  br label %cleanup

cleanup:                                          ; preds = %get_register_timings.exit, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %get_register_timings.exit ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gs_g_dv_timings(ptr nocapture noundef readonly %sd, ptr nocapture noundef writeonly %timings) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %current_timings = getelementptr i8, ptr %sd, i32 196
  %0 = call ptr @memcpy(ptr %timings, ptr %current_timings, i32 132)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gs_query_dv_timings(ptr nocapture noundef readonly %sd, ptr nocapture noundef writeonly %timings) #2 align 64 {
entry:
  %reg_value = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_value) #5
  %0 = ptrtoint ptr %reg_value to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg_value, align 2, !annotation !39
  %enabled = getelementptr i8, ptr %sd, i32 328
  %1 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 4
  %call4 = call fastcc i32 @gs_read_register(ptr noundef %4, i16 noundef zeroext 18, ptr noundef nonnull %reg_value)
  %5 = ptrtoint ptr %reg_value to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg_value, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool5.not = icmp eq i16 %6, 0
  br i1 %tobool5.not, label %for.cond, label %for.body.preheader.if.end12_crit_edge

for.body.preheader.if.end12_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

for.cond:                                         ; preds = %for.body.preheader
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 4
  %call4.1 = call fastcc i32 @gs_read_register(ptr noundef %8, i16 noundef zeroext 19, ptr noundef nonnull %reg_value)
  %9 = ptrtoint ptr %reg_value to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %reg_value, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool5.not.1 = icmp eq i16 %10, 0
  br i1 %tobool5.not.1, label %for.cond.1, label %for.cond.if.end12_crit_edge

for.cond.if.end12_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

for.cond.1:                                       ; preds = %for.cond
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 4
  %call4.2 = call fastcc i32 @gs_read_register(ptr noundef %12, i16 noundef zeroext 20, ptr noundef nonnull %reg_value)
  %13 = ptrtoint ptr %reg_value to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %reg_value, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool5.not.2 = icmp eq i16 %14, 0
  br i1 %tobool5.not.2, label %for.cond.2, label %for.cond.1.if.end12_crit_edge

for.cond.1.if.end12_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

for.cond.2:                                       ; preds = %for.cond.1
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 4
  %call4.3 = call fastcc i32 @gs_read_register(ptr noundef %16, i16 noundef zeroext 21, ptr noundef nonnull %reg_value)
  %17 = ptrtoint ptr %reg_value to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %reg_value, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool5.not.3 = icmp eq i16 %18, 0
  br i1 %tobool5.not.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.2.if.end12_crit_edge

for.cond.2.if.end12_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %for.cond.2.if.end12_crit_edge, %for.cond.1.if.end12_crit_edge, %for.cond.if.end12_crit_edge, %for.body.preheader.if.end12_crit_edge
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 4
  %call14 = call fastcc i32 @gs_read_register(ptr noundef %20, i16 noundef zeroext 4, ptr noundef nonnull %reg_value)
  %21 = ptrtoint ptr %reg_value to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %reg_value, align 2
  %conv15 = zext i16 %22 to i32
  %23 = and i32 %conv15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %.not = icmp eq i32 %23, 3
  br i1 %.not, label %if.end21, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  %and23 = and i32 %conv15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end21.cleanup_crit_edge, label %if.end26

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  %24 = lshr i16 %22, 5
  %trunc.i = trunc i16 %24 to i5
  %switch.tableidx = xor i5 %trunc.i, -16
  %25 = sext i5 %switch.tableidx to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %25)
  %.not46 = icmp eq i5 %switch.tableidx, -1
  br i1 %.not46, label %if.end26.cleanup_crit_edge, label %switch.hole_check

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.hole_check:                                ; preds = %if.end26
  %switch.maskindex = zext i5 %switch.tableidx to i32
  %switch.shifted = lshr i32 2147419989, %switch.maskindex
  %26 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %switch.lobit.not = icmp eq i32 %26, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  %27 = zext i5 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [31 x i32], ptr @switch.table.gs_query_dv_timings, i32 0, i32 %27
  %28 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load = load i32, ptr %switch.gep, align 4
  %format.i = getelementptr [22 x %struct.gs_reg_fmt], ptr @reg_fmt, i32 0, i32 %switch.load, i32 1
  %29 = call ptr @memcpy(ptr %timings, ptr %format.i, i32 132)
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %switch.lookup ], [ -16, %entry.cleanup_crit_edge ], [ -37, %if.end12.cleanup_crit_edge ], [ -34, %if.end21.cleanup_crit_edge ], [ -34, %if.end26.cleanup_crit_edge ], [ -67, %for.cond.2.cleanup_crit_edge ], [ -34, %switch.hole_check.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_value) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_match_dv_timings(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gs_dv_timings_cap(ptr nocapture noundef readnone %sd, ptr nocapture noundef %cap) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_dv_timings_cap, ptr %cap, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = call ptr @memcpy(ptr %cap, ptr @gs_timings_cap, i32 144)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gs_enum_dv_timings(ptr nocapture noundef readnone %sd, ptr nocapture noundef %timings) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %1)
  %cmp = icmp ugt i32 %1, 11
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %timings, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %timings4 = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %timings, i32 0, i32 3
  %arrayidx = getelementptr [12 x %struct.v4l2_dv_timings], ptr @fmt_cap, i32 0, i32 %1
  %4 = call ptr @memcpy(ptr %timings4, ptr %arrayidx, i32 132)
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__initcall__kmod_gs1662__292_480_gs_driver_init6, !1, !"__initcall__kmod_gs1662__292_480_gs_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/spi/gs1662.c", i32 480, i32 1}
!2 = !{ptr @__exitcall_gs_driver_exit, !1, !"__exitcall_gs_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file293, !4, !"__UNIQUE_ID_file293", i1 false, i1 false}
!4 = !{!"../drivers/media/spi/gs1662.c", i32 482, i32 1}
!5 = !{ptr @__UNIQUE_ID_license294, !4, !"__UNIQUE_ID_license294", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author295, !7, !"__UNIQUE_ID_author295", i1 false, i1 false}
!7 = !{!"../drivers/media/spi/gs1662.c", i32 483, i32 1}
!8 = !{ptr @__UNIQUE_ID_description296, !9, !"__UNIQUE_ID_description296", i1 false, i1 false}
!9 = !{!"../drivers/media/spi/gs1662.c", i32 484, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/spi/gs1662.c", i32 472, i32 12}
!12 = !{ptr @gs_driver, !13, !"gs_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/spi/gs1662.c", i32 470, i32 26}
!14 = !{ptr @gs_id, !15, !"gs_id", i1 false, i1 false}
!15 = !{!"../drivers/media/spi/gs1662.c", i32 66, i32 35}
!16 = !{ptr @gs_ops, !17, !"gs_ops", i1 false, i1 false}
!17 = !{!"../drivers/media/spi/gs1662.c", i32 426, i32 37}
!18 = !{ptr @gs_core_ops, !19, !"gs_core_ops", i1 false, i1 false}
!19 = !{!"../drivers/media/spi/gs1662.c", i32 405, i32 42}
!20 = !{ptr @gs_video_ops, !21, !"gs_video_ops", i1 false, i1 false}
!21 = !{!"../drivers/media/spi/gs1662.c", i32 412, i32 43}
!22 = !{ptr @gs_pad_ops, !23, !"gs_pad_ops", i1 false, i1 false}
!23 = !{!"../drivers/media/spi/gs1662.c", i32 420, i32 41}
!24 = !{ptr @gs_timings_cap, !25, !"gs_timings_cap", i1 false, i1 false}
!25 = !{!"../drivers/media/spi/gs1662.c", i32 128, i32 41}
!26 = !{ptr @fmt_cap, !27, !"fmt_cap", i1 false, i1 false}
!27 = !{!"../drivers/media/spi/gs1662.c", i32 72, i32 37}
!28 = !{ptr @reg_fmt, !29, !"reg_fmt", i1 false, i1 false}
!29 = !{!"../drivers/media/spi/gs1662.c", i32 87, i32 32}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"auto-init"}
