; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/msi001.c_pt.bc'
source_filename = "../drivers/media/tuners/msi001.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.atomic_t = type { i32 }
%struct.v4l2_frequency_band = type { i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.99 = type { i32, i8, i8 }
%struct.anon.101 = type { i32, i8 }
%struct.msi001_dev = type { ptr, %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.89, %union.anon.90, i32, ptr, i32, %struct.anon.91, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.89 = type { i64 }
%union.anon.90 = type { ptr }
%struct.anon.91 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__initcall__kmod_msi001__315_507_msi001_driver_init6 = internal global ptr @msi001_driver_init, section ".initcall6.init", align 4
@msi001_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @msi001_id_table, ptr @msi001_probe, ptr @msi001_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_msi001_driver_exit = internal global ptr @msi001_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author316 = internal constant [45 x i8] c"msi001.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description317 = internal constant [33 x i8] c"msi001.description=Mirics MSi001\00", section ".modinfo", align 1
@__UNIQUE_ID_file318 = internal constant [40 x i8] c"msi001.file=drivers/media/tuners/msi001\00", section ".modinfo", align 1
@__UNIQUE_ID_license319 = internal constant [19 x i8] c"msi001.license=GPL\00", section ".modinfo", align 1
@msi001_id_table = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"msi001\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"msi001\00", [25 x i8] zeroinitializer }, align 32
@msi001_probe.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msi001_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/media/tuners/msi001.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@bands = internal constant { [2 x %struct.v4l2_frequency_band], [32 x i8] } { [2 x %struct.v4l2_frequency_band] [%struct.v4l2_frequency_band { i32 0, i32 5, i32 0, i32 5120, i32 49000000, i32 263000000, i32 0, [9 x i32] zeroinitializer }, %struct.v4l2_frequency_band { i32 0, i32 5, i32 1, i32 5120, i32 390000000, i32 960000000, i32 0, [9 x i32] zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@msi001_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr @msi001_tuner_ops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@msi001_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"msi001:440:(&dev->hdl)->_lock\00", [34 x i8] zeroinitializer }, align 32
@msi001_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @msi001_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@msi001_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 447, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not initialize controls\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@msi001_probe._entry_ptr = internal global ptr @msi001_probe._entry, section ".printk_index", align 4
@msi001_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 461, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@msi001_probe._entry_ptr.9 = internal global ptr @msi001_probe._entry.8, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@msi001_tuner_ops = internal constant { %struct.v4l2_subdev_tuner_ops, [52 x i8] } { %struct.v4l2_subdev_tuner_ops { ptr @msi001_standby, ptr null, ptr @msi001_s_frequency, ptr @msi001_g_frequency, ptr @msi001_enum_freq_bands, ptr @msi001_g_tuner, ptr @msi001_s_tuner, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@msi001_s_frequency.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"msi001_s_frequency\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tuner=%d type=%d frequency=%u\0A\00", [33 x i8] zeroinitializer }, align 32
@msi001_set_tuner.band_lut = internal constant { [5 x %struct.anon.99], [56 x i8] } { [5 x %struct.anon.99] [%struct.anon.99 { i32 50000000, i8 -31, i8 16 }, %struct.anon.99 { i32 108000000, i8 66, i8 32 }, %struct.anon.99 { i32 330000000, i8 68, i8 16 }, %struct.anon.99 { i32 960000000, i8 72, i8 4 }, %struct.anon.99 { i32 -1, i8 80, i8 2 }], [56 x i8] zeroinitializer }, align 32
@msi001_set_tuner.bandwidth_lut = internal constant { [8 x %struct.anon.101], [32 x i8] } { [8 x %struct.anon.101] [%struct.anon.101 { i32 200000, i8 0 }, %struct.anon.101 { i32 300000, i8 1 }, %struct.anon.101 { i32 600000, i8 2 }, %struct.anon.101 { i32 1536000, i8 3 }, %struct.anon.101 { i32 5000000, i8 4 }, %struct.anon.101 { i32 6000000, i8 5 }, %struct.anon.101 { i32 7000000, i8 6 }, %struct.anon.101 { i32 8000000, i8 7 }], [32 x i8] zeroinitializer }, align 32
@msi001_set_tuner.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"msi001_set_tuner\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"f_rf=%d f_if=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@msi001_set_tuner.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.14, i8 0, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bandwidth selected=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@msi001_set_tuner.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.15, i8 0, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"f_rf=%u:%u f_vco=%llu div_n=%u k_thresh=%u k_frac=%u div_lo=%u\0A\00", [32 x i8] zeroinitializer }, align 32
@msi001_set_tuner.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.16, i8 0, i8 70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"failed %d\0A\00", [21 x i8] zeroinitializer }, align 32
@msi001_set_gain.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"msi001_set_gain\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lna=%d mixer=%d if=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@msi001_set_gain.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.16, i8 0, i8 19, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@msi001_g_frequency.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"msi001_g_frequency\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tuner=%d\0A\00", [22 x i8] zeroinitializer }, align 32
@msi001_enum_freq_bands.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"msi001_enum_freq_bands\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tuner=%d type=%d index=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@msi001_g_tuner.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"msi001_g_tuner\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"index=%d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Mirics MSi001\00", [18 x i8] zeroinitializer }, align 32
@msi001_s_tuner.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.24, i8 0, i8 78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"msi001_s_tuner\00", [17 x i8] zeroinitializer }, align 32
@msi001_s_ctrl.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"msi001_s_ctrl\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"id=%d name=%s val=%d min=%lld max=%lld step=%lld\0A\00", [46 x i8] zeroinitializer }, align 32
@msi001_s_ctrl.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.29, i8 0, i8 102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unknown control %d\0A\00", [44 x i8] zeroinitializer }, align 32
@msi001_remove.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.3, i8 0, i8 120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"msi001_remove\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 10619147, i64 10619148, i64 10619178, i64 10619188, i64 10619198]
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"msi001_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 498, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant [16 x i8] c"msi001_id_table\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 492, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 500, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 427, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [6 x i8] c"bands\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 14, i32 41 }
@___asan_gen_.52 = private unnamed_addr constant [11 x i8] c"msi001_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 375, i32 37 }
@___asan_gen_.55 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 440, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [16 x i8] c"msi001_ctrl_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 418, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 447, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 461, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"msi001_tuner_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 366, i32 43 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 334, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [9 x i8] c"band_lut\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 96, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant [14 x i8] c"bandwidth_lut\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 115, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 143, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 191, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 230, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 281, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 63, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 322, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 353, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 297, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 299, i32 19 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 313, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 386, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 411, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private constant [33 x i8] c"../drivers/media/tuners/msi001.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 480, i32 2 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author316, ptr @__UNIQUE_ID_description317, ptr @__UNIQUE_ID_file318, ptr @__UNIQUE_ID_license319, ptr @__exitcall_msi001_driver_exit, ptr @__initcall__kmod_msi001__315_507_msi001_driver_init6, ptr @msi001_driver_exit, ptr @msi001_probe._entry, ptr @msi001_probe._entry.8, ptr @msi001_probe._entry_ptr, ptr @msi001_probe._entry_ptr.9, ptr @msi001_driver, ptr @msi001_id_table, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @bands, ptr @msi001_ops, ptr @msi001_probe._key, ptr @.str.4, ptr @msi001_ctrl_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @msi001_tuner_ops, ptr @.str.10, ptr @.str.11, ptr @msi001_set_tuner.band_lut, ptr @msi001_set_tuner.bandwidth_lut, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi001_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi001_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bands to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi001_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi001_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi001_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi001_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi001_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi001_tuner_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi001_set_tuner.band_lut to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi001_set_tuner.bandwidth_lut to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @msi001_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @msi001_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @msi001_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @msi001_driver, i32 0, i32 4)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msi001_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi001_probe.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi001_probe, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !106

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi001_probe.__UNIQUE_ID_ddebug313, ptr noundef %spi, ptr noundef nonnull @.str.3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 408) #11
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %spi, ptr %call7.i.i, align 8
  %f_tuner = getelementptr inbounds %struct.msi001_dev, ptr %call7.i.i, i32 0, i32 8
  %2 = ptrtoint ptr %f_tuner to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 49000000, ptr %f_tuner, align 4
  %sd = getelementptr inbounds %struct.msi001_dev, ptr %call7.i.i, i32 0, i32 1
  tail call void @v4l2_spi_subdev_init(ptr noundef %sd, ptr noundef %spi, ptr noundef nonnull @msi001_ops) #8
  %hdl = getelementptr inbounds %struct.msi001_dev, ptr %call7.i.i, i32 0, i32 2
  %call10 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 5, ptr noundef nonnull @msi001_probe._key, ptr noundef nonnull @.str.4) #8
  %call12 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @msi001_ctrl_ops, i32 noundef 10619147, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #8
  %bandwidth_auto = getelementptr inbounds %struct.msi001_dev, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %bandwidth_auto to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call12, ptr %bandwidth_auto, align 8
  %call14 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @msi001_ctrl_ops, i32 noundef 10619148, i64 noundef 200000, i64 noundef 8000000, i64 noundef 1, i64 noundef 200000) #8
  %bandwidth = getelementptr inbounds %struct.msi001_dev, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call14, ptr %bandwidth, align 4
  %error = getelementptr inbounds %struct.msi001_dev, ptr %call7.i.i, i32 0, i32 2, i32 9
  %5 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool16.not = icmp eq i32 %6, 0
  br i1 %tobool16.not, label %if.end24, label %if.end7.err_ctrl_handler_free_crit_edge

if.end7.err_ctrl_handler_free_crit_edge:          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_ctrl_handler_free

if.end24:                                         ; preds = %if.end7
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %bandwidth_auto, i8 noundef zeroext 0, i1 noundef zeroext false) #8
  %call27 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @msi001_ctrl_ops, i32 noundef 10619178, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #8
  %lna_gain = getelementptr inbounds %struct.msi001_dev, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %lna_gain to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call27, ptr %lna_gain, align 8
  %call29 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @msi001_ctrl_ops, i32 noundef 10619188, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #8
  %mixer_gain = getelementptr inbounds %struct.msi001_dev, ptr %call7.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %mixer_gain to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call29, ptr %mixer_gain, align 4
  %call31 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @msi001_ctrl_ops, i32 noundef 10619198, i64 noundef 0, i64 noundef 59, i64 noundef 1, i64 noundef 0) #8
  %if_gain = getelementptr inbounds %struct.msi001_dev, ptr %call7.i.i, i32 0, i32 7
  %9 = ptrtoint ptr %if_gain to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call31, ptr %if_gain, align 8
  %10 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool34.not = icmp eq i32 %11, 0
  br i1 %tobool34.not, label %if.end42, label %if.end24.err_ctrl_handler_free_crit_edge

if.end24.err_ctrl_handler_free_crit_edge:         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_ctrl_handler_free

if.end42:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %ctrl_handler = getelementptr inbounds %struct.msi001_dev, ptr %call7.i.i, i32 0, i32 1, i32 8
  %12 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %hdl, ptr %ctrl_handler, align 4
  br label %cleanup

err_ctrl_handler_free:                            ; preds = %if.end24.err_ctrl_handler_free_crit_edge, %if.end7.err_ctrl_handler_free_crit_edge
  %ret.0 = phi i32 [ %6, %if.end7.err_ctrl_handler_free_crit_edge ], [ %11, %if.end24.err_ctrl_handler_free_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.5) #12
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_ctrl_handler_free, %if.end42, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end42 ], [ %ret.0, %err_ctrl_handler_free ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msi001_remove(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi001_remove.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi001_remove, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !106

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi001_remove.__UNIQUE_ID_ddebug314, ptr noundef %spi, ptr noundef nonnull @.str.3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #8
  %hdl = getelementptr i8, ptr %1, i32 196
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #8
  tail call void @kfree(ptr noundef %add.ptr.i) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_spi_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msi001_standby(ptr nocapture noundef readonly %sd) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %data.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.addr.i)
  %0 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %data.addr.i, align 4
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #8
  %3 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 92)
  %5 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %data.addr.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %7 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 40)
  %9 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.msi001_wreg.exit_crit_edge

entry.msi001_wreg.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %msi001_wreg.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %msi001_wreg.exit

msi001_wreg.exit:                                 ; preds = %if.end.i.i.i.i.i.i.i, %entry.msi001_wreg.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %2, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.addr.i)
  ret i32 %call.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msi001_s_frequency(ptr nocapture noundef %sd, ptr nocapture noundef readonly %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi001_s_frequency.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi001_s_frequency, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !106

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %6 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frequency, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi001_s_frequency.__UNIQUE_ID_ddebug305, ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef %3, i32 noundef %5, i32 noundef %7) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %frequency6 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %8 = ptrtoint ptr %frequency6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frequency6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 326499999, i32 %9)
  %cmp = icmp ugt i32 %9, 326499999
  %. = zext i1 %cmp to i32
  %rangelow = getelementptr [2 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %., i32 4
  %10 = ptrtoint ptr %rangelow to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rangelow, align 4
  %12 = tail call i32 @llvm.umax.i32(i32 %9, i32 %11)
  %rangehigh = getelementptr [2 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %., i32 5
  %13 = ptrtoint ptr %rangehigh to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rangehigh, align 4
  %15 = tail call i32 @llvm.umin.i32(i32 %12, i32 %14)
  %f_tuner = getelementptr i8, ptr %sd, i32 400
  %16 = ptrtoint ptr %f_tuner to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %f_tuner, align 4
  %call19 = tail call fastcc i32 @msi001_set_tuner(ptr noundef %add.ptr.i)
  ret i32 %call19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msi001_g_frequency(ptr nocapture noundef readonly %sd, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi001_g_frequency.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi001_g_frequency, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !106

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi001_g_frequency.__UNIQUE_ID_ddebug304, ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %f_tuner = getelementptr i8, ptr %sd, i32 400
  %4 = ptrtoint ptr %f_tuner to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_tuner, align 4
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %6 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msi001_enum_freq_bands(ptr nocapture noundef readonly %sd, ptr nocapture noundef %band) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi001_enum_freq_bands.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi001_enum_freq_bands, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !106

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %band, align 4
  %type = getelementptr inbounds %struct.v4l2_frequency_band, ptr %band, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %index = getelementptr inbounds %struct.v4l2_frequency_band, ptr %band, i32 0, i32 2
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi001_enum_freq_bands.__UNIQUE_ID_ddebug310, ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %3, i32 noundef %5, i32 noundef %7) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %index6 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %band, i32 0, i32 2
  %8 = ptrtoint ptr %index6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp ugt i32 %9, 1
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %capability = getelementptr [2 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %9, i32 3
  %10 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %capability, align 4
  %capability10 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %band, i32 0, i32 3
  %12 = ptrtoint ptr %capability10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %capability10, align 4
  %rangelow = getelementptr [2 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %9, i32 4
  %13 = ptrtoint ptr %rangelow to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rangelow, align 4
  %rangelow13 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %band, i32 0, i32 4
  %15 = ptrtoint ptr %rangelow13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %rangelow13, align 4
  %rangehigh = getelementptr [2 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %9, i32 5
  %16 = ptrtoint ptr %rangehigh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rangehigh, align 4
  %rangehigh16 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %band, i32 0, i32 5
  %18 = ptrtoint ptr %rangehigh16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %rangehigh16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msi001_g_tuner(ptr nocapture noundef readonly %sd, ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi001_g_tuner.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi001_g_tuner, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !106

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %v, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi001_g_tuner.__UNIQUE_ID_ddebug302, ptr noundef %1, ptr noundef nonnull @.str.24, i32 noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 1
  %call6 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.25, i32 noundef 32) #8
  %type = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 5, ptr %type, align 4
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 3
  %5 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 5120, ptr %capability, align 4
  %rangelow = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 4
  %6 = ptrtoint ptr %rangelow to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 49000000, ptr %rangelow, align 4
  %rangehigh = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 5
  %7 = ptrtoint ptr %rangehigh to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 960000000, ptr %rangehigh, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msi001_s_tuner(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi001_s_tuner.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi001_s_tuner, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !106

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %v, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi001_s_tuner.__UNIQUE_ID_ddebug303, ptr noundef %1, ptr noundef nonnull @.str.24, i32 noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msi001_wreg(ptr nocapture noundef readonly %dev, i32 noundef %data) unnamed_addr #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %data.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %data, ptr %data.addr, align 4
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #8
  %3 = getelementptr inbounds i8, ptr %t.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 92)
  %5 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %data.addr, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %6 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #8
  %7 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 40)
  %9 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_write.exit_crit_edge

entry.spi_write.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %entry.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %2, ptr noundef nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #8
  ret i32 %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msi001_set_tuner(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i339 = alloca %struct.spi_message, align 4
  %t.i.i340 = alloca %struct.spi_transfer, align 4
  %data.addr.i341 = alloca i32, align 4
  %msg.i.i.i326 = alloca %struct.spi_message, align 4
  %t.i.i327 = alloca %struct.spi_transfer, align 4
  %data.addr.i328 = alloca i32, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %data.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %f_tuner = getelementptr inbounds %struct.msi001_dev, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %f_tuner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_tuner, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi001_set_tuner.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi001_set_tuner, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !106

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi001_set_tuner.__UNIQUE_ID_ddebug294, ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %3, i32 noundef 0) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000000, i32 %3)
  %cmp5.not = icmp ugt i32 %3, 50000000
  br i1 %cmp5.not, label %for.inc, label %do.end.if.end15_crit_edge

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

for.inc:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 108000000, i32 %3)
  %cmp5.not.1 = icmp ugt i32 %3, 108000000
  br i1 %cmp5.not.1, label %for.inc.1, label %for.inc.if.end15_crit_edge

for.inc.if.end15_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 330000000, i32 %3)
  %cmp5.not.2 = icmp ugt i32 %3, 330000000
  br i1 %cmp5.not.2, label %for.inc.2, label %for.inc.1.if.end15_crit_edge

for.inc.1.if.end15_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 960000000, i32 %3)
  %cmp5.not.3 = icmp ugt i32 %3, 960000000
  %spec.select = select i1 %cmp5.not.3, i32 4, i32 3
  br label %if.end15

if.end15:                                         ; preds = %for.inc.2, %for.inc.1.if.end15_crit_edge, %for.inc.if.end15_crit_edge, %do.end.if.end15_crit_edge
  %i.0367.lcssa = phi i32 [ 0, %do.end.if.end15_crit_edge ], [ 1, %for.inc.if.end15_crit_edge ], [ 2, %for.inc.1.if.end15_crit_edge ], [ %spec.select, %for.inc.2 ]
  %mode8 = getelementptr [5 x %struct.anon.99], ptr @msi001_set_tuner.band_lut, i32 0, i32 %i.0367.lcssa, i32 1
  %4 = ptrtoint ptr %mode8 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mode8, align 4
  %div_lo10 = getelementptr [5 x %struct.anon.99], ptr @msi001_set_tuner.band_lut, i32 0, i32 %i.0367.lcssa, i32 2
  %6 = ptrtoint ptr %div_lo10 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %div_lo10, align 1
  %conv = zext i8 %7 to i32
  %phi.cast = zext i8 %5 to i32
  %and = and i32 %phi.cast, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  %. = select i1 %tobool17.not, i32 0, i32 120000000
  %bandwidth38 = getelementptr inbounds %struct.msi001_dev, ptr %dev, i32 0, i32 4
  %8 = ptrtoint ptr %bandwidth38 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bandwidth38, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %9, i32 0, i32 22
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %12 = tail call i32 @llvm.umax.i32(i32 %11, i32 200000)
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 8000000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %13)
  %cmp55.not = icmp ugt i32 %13, 200000
  br i1 %cmp55.not, label %for.inc62, label %if.end15.if.end68_crit_edge

if.end15.if.end68_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

for.inc62:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000, i32 %13)
  %cmp55.not.1 = icmp ugt i32 %13, 300000
  br i1 %cmp55.not.1, label %for.inc62.1, label %for.inc62.if.end68_crit_edge

for.inc62.if.end68_crit_edge:                     ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

for.inc62.1:                                      ; preds = %for.inc62
  call void @__sanitizer_cov_trace_const_cmp4(i32 600000, i32 %13)
  %cmp55.not.2 = icmp ugt i32 %13, 600000
  br i1 %cmp55.not.2, label %for.inc62.2, label %for.inc62.1.if.end68_crit_edge

for.inc62.1.if.end68_crit_edge:                   ; preds = %for.inc62.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

for.inc62.2:                                      ; preds = %for.inc62.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536000, i32 %13)
  %cmp55.not.3 = icmp ugt i32 %13, 1536000
  br i1 %cmp55.not.3, label %for.inc62.3, label %for.inc62.2.if.end68_crit_edge

for.inc62.2.if.end68_crit_edge:                   ; preds = %for.inc62.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

for.inc62.3:                                      ; preds = %for.inc62.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000000, i32 %13)
  %cmp55.not.4 = icmp ugt i32 %13, 5000000
  br i1 %cmp55.not.4, label %for.inc62.4, label %for.inc62.3.if.end68_crit_edge

for.inc62.3.if.end68_crit_edge:                   ; preds = %for.inc62.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

for.inc62.4:                                      ; preds = %for.inc62.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %13)
  %cmp55.not.5 = icmp ugt i32 %13, 6000000
  br i1 %cmp55.not.5, label %for.inc62.5, label %for.inc62.4.if.end68_crit_edge

for.inc62.4.if.end68_crit_edge:                   ; preds = %for.inc62.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

for.inc62.5:                                      ; preds = %for.inc62.4
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000000, i32 %13)
  %cmp55.not.6 = icmp ugt i32 %13, 7000000
  %spec.select371 = select i1 %cmp55.not.6, i32 7, i32 6
  br label %if.end68

if.end68:                                         ; preds = %for.inc62.5, %for.inc62.4.if.end68_crit_edge, %for.inc62.3.if.end68_crit_edge, %for.inc62.2.if.end68_crit_edge, %for.inc62.1.if.end68_crit_edge, %for.inc62.if.end68_crit_edge, %if.end15.if.end68_crit_edge
  %i.2368.lcssa = phi i32 [ 0, %if.end15.if.end68_crit_edge ], [ 1, %for.inc62.if.end68_crit_edge ], [ 2, %for.inc62.1.if.end68_crit_edge ], [ 3, %for.inc62.2.if.end68_crit_edge ], [ 4, %for.inc62.3.if.end68_crit_edge ], [ 5, %for.inc62.4.if.end68_crit_edge ], [ %spec.select371, %for.inc62.5 ]
  %val59 = getelementptr [8 x %struct.anon.101], ptr @msi001_set_tuner.bandwidth_lut, i32 0, i32 %i.2368.lcssa, i32 1
  %14 = ptrtoint ptr %val59 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %val59, align 4
  %conv60 = zext i8 %15 to i32
  %phi.bo = shl nuw nsw i32 %conv60, 14
  %arrayidx69 = getelementptr [8 x %struct.anon.101], ptr @msi001_set_tuner.bandwidth_lut, i32 0, i32 %i.2368.lcssa
  %16 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx69, align 4
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %val, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi001_set_tuner.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi001_set_tuner, %if.then85)) #8
          to label %do.end91 [label %if.then85], !srcloc !106

if.then85:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi001_set_tuner.__UNIQUE_ID_ddebug299, ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %17) #8
  br label %do.end91

do.end91:                                         ; preds = %if.then85, %if.end68
  %add92 = add i32 %., %3
  %conv93 = zext i32 %add92 to i64
  %conv94 = zext i8 %7 to i64
  %mul = mul nuw nsw i64 %conv93, %conv94
  %19 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -5551535331153507086, i64 %mul, i32 0) #13, !srcloc !107
  %asmresult.i.i = extractvalue { i64, i32 } %19, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %19, 1
  %20 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -5551535331153507086, i64 %mul, i64 %asmresult.i.i, i32 %asmresult4.i.i) #13, !srcloc !108
  %asmresult10.i.i = extractvalue { i64, i32 } %20, 0
  %conv14.i = trunc i64 %mul to i32
  %div1581.i = lshr i64 %asmresult10.i.i, 26
  %conv159.i = trunc i64 %div1581.i to i32
  %mul160.neg.i = mul i32 %conv159.i, -96000000
  %sub161.i = add i32 %mul160.neg.i, %conv14.i
  %div = udiv i32 96000000, %conv
  %conv97 = zext i32 %sub161.i to i64
  %conv98 = zext i32 %div to i64
  %mul99 = mul nuw nsw i64 %conv97, %conv98
  %21 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -5551535331153507086, i64 %mul99, i32 0) #13, !srcloc !107
  %asmresult.i.i.i = extractvalue { i64, i32 } %21, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %21, 1
  %22 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -5551535331153507086, i64 %mul99, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #13, !srcloc !108
  %asmresult10.i.i.i = extractvalue { i64, i32 } %22, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 26
  %conv101 = trunc i64 %div1581.i.i to i32
  %call102 = tail call i32 @gcd(i32 noundef %div, i32 noundef %conv101) #14
  %div103 = udiv i32 %div, %call102
  %div104 = udiv i32 %conv101, %call102
  %sub = add nuw nsw i32 %div103, 4094
  %div106 = udiv i32 %sub, 4095
  %div108 = udiv i32 %sub, 8190
  %add109 = add nuw nsw i32 %div108, %div103
  %div110 = udiv i32 %add109, %div106
  %add115 = add i32 %div108, %div104
  %div116 = udiv i32 %add115, %div106
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi001_set_tuner.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi001_set_tuner, %if.then134)) #8
          to label %do.end138 [label %if.then134], !srcloc !106

if.then134:                                       ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #10
  %mul117 = mul i32 %conv159.i, 96000000
  %mul118 = mul i32 %div116, 96000000
  %div119 = udiv i32 %mul118, %div110
  %add120 = add i32 %div119, %mul117
  %div121 = udiv i32 %add120, %conv
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi001_set_tuner.__UNIQUE_ID_ddebug300, ptr noundef %1, ptr noundef nonnull @.str.15, i32 noundef %3, i32 noundef %div121, i64 noundef %mul, i32 noundef %conv159.i, i32 noundef %div110, i32 noundef %div116, i32 noundef %conv) #8
  br label %do.end138

do.end138:                                        ; preds = %if.then134, %do.end91
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.addr.i)
  %23 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 14, ptr %data.addr.i, align 4
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #8
  %26 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %27 = call ptr @memset(ptr %26, i32 0, i32 92)
  %28 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %data.addr.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %30 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %31 = call ptr @memset(ptr %30, i32 0, i32 40)
  %32 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %34 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %35 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %do.end138.msi001_wreg.exit_crit_edge

do.end138.msi001_wreg.exit_crit_edge:             ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #10
  br label %msi001_wreg.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %37 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %39 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %msi001_wreg.exit

msi001_wreg.exit:                                 ; preds = %if.end.i.i.i.i.i.i.i, %do.end138.msi001_wreg.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %25, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool140.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool140.not, label %if.end142, label %msi001_wreg.exit.do.body190_crit_edge

msi001_wreg.exit.do.body190_crit_edge:            ; preds = %msi001_wreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body190

if.end142:                                        ; preds = %msi001_wreg.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.addr.i328)
  %40 = ptrtoint ptr %data.addr.i328 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 3, ptr %data.addr.i328, align 4
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i327) #8
  %43 = getelementptr inbounds i8, ptr %t.i.i327, i32 4
  %44 = call ptr @memset(ptr %43, i32 0, i32 92)
  %45 = ptrtoint ptr %t.i.i327 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %data.addr.i328, ptr %t.i.i327, align 4
  %len1.i.i329 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i327, i32 0, i32 2
  %46 = ptrtoint ptr %len1.i.i329 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 3, ptr %len1.i.i329, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i326) #8
  %47 = getelementptr inbounds i8, ptr %msg.i.i.i326, i32 8
  %48 = call ptr @memset(ptr %47, i32 0, i32 40)
  %49 = ptrtoint ptr %msg.i.i.i326 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %msg.i.i.i326, ptr %msg.i.i.i326, align 4
  %prev.i.i.i.i.i.i.i330 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i326, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i.i.i.i.i.i330 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %msg.i.i.i326, ptr %prev.i.i.i.i.i.i.i330, align 4
  %resources.i.i.i.i.i.i331 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i326, i32 0, i32 10
  %51 = ptrtoint ptr %resources.i.i.i.i.i.i331 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %resources.i.i.i.i.i.i331, ptr %resources.i.i.i.i.i.i331, align 4
  %prev.i2.i.i.i.i.i.i332 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i326, i32 0, i32 10, i32 1
  %52 = ptrtoint ptr %prev.i2.i.i.i.i.i.i332 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %resources.i.i.i.i.i.i331, ptr %prev.i2.i.i.i.i.i.i332, align 4
  %transfer_list.i.i.i.i.i333 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i327, i32 0, i32 18
  %call.i.i.i.i.i.i.i334 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i333, ptr noundef nonnull %msg.i.i.i326, ptr noundef nonnull %msg.i.i.i326) #8
  br i1 %call.i.i.i.i.i.i.i334, label %if.end.i.i.i.i.i.i.i336, label %if.end142.msi001_wreg.exit338_crit_edge

if.end142.msi001_wreg.exit338_crit_edge:          ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  br label %msi001_wreg.exit338

if.end.i.i.i.i.i.i.i336:                          ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %prev.i.i.i.i.i.i.i330 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %transfer_list.i.i.i.i.i333, ptr %prev.i.i.i.i.i.i.i330, align 4
  %54 = ptrtoint ptr %transfer_list.i.i.i.i.i333 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %msg.i.i.i326, ptr %transfer_list.i.i.i.i.i333, align 4
  %prev3.i.i.i.i.i.i.i335 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i327, i32 0, i32 18, i32 1
  %55 = ptrtoint ptr %prev3.i.i.i.i.i.i.i335 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %msg.i.i.i326, ptr %prev3.i.i.i.i.i.i.i335, align 4
  %56 = ptrtoint ptr %msg.i.i.i326 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %transfer_list.i.i.i.i.i333, ptr %msg.i.i.i326, align 4
  br label %msi001_wreg.exit338

msi001_wreg.exit338:                              ; preds = %if.end.i.i.i.i.i.i.i336, %if.end142.msi001_wreg.exit338_crit_edge
  %call.i.i.i337 = call i32 @spi_sync(ptr noundef %42, ptr noundef nonnull %msg.i.i.i326) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i326) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i327) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.addr.i328)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i337)
  %tobool144.not = icmp eq i32 %call.i.i.i337, 0
  br i1 %tobool144.not, label %if.end146, label %msi001_wreg.exit338.do.body190_crit_edge

msi001_wreg.exit338.do.body190_crit_edge:         ; preds = %msi001_wreg.exit338
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body190

if.end146:                                        ; preds = %msi001_wreg.exit338
  %shl = shl nuw nsw i32 %phi.cast, 4
  %or150 = or i32 %phi.bo, %shl
  %or153 = or i32 %or150, 274432
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.addr.i341)
  %57 = ptrtoint ptr %data.addr.i341 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or153, ptr %data.addr.i341, align 4
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i340) #8
  %60 = getelementptr inbounds i8, ptr %t.i.i340, i32 4
  %61 = call ptr @memset(ptr %60, i32 0, i32 92)
  %62 = ptrtoint ptr %t.i.i340 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %data.addr.i341, ptr %t.i.i340, align 4
  %len1.i.i342 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i340, i32 0, i32 2
  %63 = ptrtoint ptr %len1.i.i342 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 3, ptr %len1.i.i342, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i339) #8
  %64 = getelementptr inbounds i8, ptr %msg.i.i.i339, i32 8
  %65 = call ptr @memset(ptr %64, i32 0, i32 40)
  %66 = ptrtoint ptr %msg.i.i.i339 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %msg.i.i.i339, ptr %msg.i.i.i339, align 4
  %prev.i.i.i.i.i.i.i343 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i339, i32 0, i32 1
  %67 = ptrtoint ptr %prev.i.i.i.i.i.i.i343 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %msg.i.i.i339, ptr %prev.i.i.i.i.i.i.i343, align 4
  %resources.i.i.i.i.i.i344 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i339, i32 0, i32 10
  %68 = ptrtoint ptr %resources.i.i.i.i.i.i344 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %resources.i.i.i.i.i.i344, ptr %resources.i.i.i.i.i.i344, align 4
  %prev.i2.i.i.i.i.i.i345 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i339, i32 0, i32 10, i32 1
  %69 = ptrtoint ptr %prev.i2.i.i.i.i.i.i345 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %resources.i.i.i.i.i.i344, ptr %prev.i2.i.i.i.i.i.i345, align 4
  %transfer_list.i.i.i.i.i346 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i340, i32 0, i32 18
  %call.i.i.i.i.i.i.i347 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i346, ptr noundef nonnull %msg.i.i.i339, ptr noundef nonnull %msg.i.i.i339) #8
  br i1 %call.i.i.i.i.i.i.i347, label %if.end.i.i.i.i.i.i.i349, label %if.end146.msi001_wreg.exit351_crit_edge

if.end146.msi001_wreg.exit351_crit_edge:          ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #10
  br label %msi001_wreg.exit351

if.end.i.i.i.i.i.i.i349:                          ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %prev.i.i.i.i.i.i.i343 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %transfer_list.i.i.i.i.i346, ptr %prev.i.i.i.i.i.i.i343, align 4
  %71 = ptrtoint ptr %transfer_list.i.i.i.i.i346 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %msg.i.i.i339, ptr %transfer_list.i.i.i.i.i346, align 4
  %prev3.i.i.i.i.i.i.i348 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i340, i32 0, i32 18, i32 1
  %72 = ptrtoint ptr %prev3.i.i.i.i.i.i.i348 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %msg.i.i.i339, ptr %prev3.i.i.i.i.i.i.i348, align 4
  %73 = ptrtoint ptr %msg.i.i.i339 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %transfer_list.i.i.i.i.i346, ptr %msg.i.i.i339, align 4
  br label %msi001_wreg.exit351

msi001_wreg.exit351:                              ; preds = %if.end.i.i.i.i.i.i.i349, %if.end146.msi001_wreg.exit351_crit_edge
  %call.i.i.i350 = call i32 @spi_sync(ptr noundef %59, ptr noundef nonnull %msg.i.i.i339) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i339) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i340) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.addr.i341)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i350)
  %tobool156.not = icmp eq i32 %call.i.i.i350, 0
  br i1 %tobool156.not, label %if.end158, label %msi001_wreg.exit351.do.body190_crit_edge

msi001_wreg.exit351.do.body190_crit_edge:         ; preds = %msi001_wreg.exit351
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body190

if.end158:                                        ; preds = %msi001_wreg.exit351
  %shl159 = shl nuw nsw i32 %div110, 4
  %or162 = or i32 %shl159, 2621445
  %call163 = call fastcc i32 @msi001_wreg(ptr noundef %dev, i32 noundef %or162)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.end166, label %if.end158.do.body190_crit_edge

if.end158.do.body190_crit_edge:                   ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body190

if.end166:                                        ; preds = %if.end158
  %shl167 = shl i32 %div116, 4
  %shl169 = shl i32 %conv159.i, 16
  %or168 = or i32 %shl169, %shl167
  %or170 = or i32 %or168, 2
  %call171 = call fastcc i32 @msi001_wreg(ptr noundef %dev, i32 noundef %or170)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %tobool172.not = icmp eq i32 %call171, 0
  br i1 %tobool172.not, label %if.end174, label %if.end166.do.body190_crit_edge

if.end166.do.body190_crit_edge:                   ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body190

if.end174:                                        ; preds = %if.end166
  %lna_gain = getelementptr inbounds %struct.msi001_dev, ptr %dev, i32 0, i32 5
  %74 = ptrtoint ptr %lna_gain to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %lna_gain, align 4
  %cur = getelementptr inbounds %struct.v4l2_ctrl, ptr %75, i32 0, i32 23
  %76 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cur, align 8
  %mixer_gain = getelementptr inbounds %struct.msi001_dev, ptr %dev, i32 0, i32 6
  %78 = ptrtoint ptr %mixer_gain to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mixer_gain, align 4
  %cur176 = getelementptr inbounds %struct.v4l2_ctrl, ptr %79, i32 0, i32 23
  %80 = ptrtoint ptr %cur176 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cur176, align 8
  %if_gain = getelementptr inbounds %struct.msi001_dev, ptr %dev, i32 0, i32 7
  %82 = ptrtoint ptr %if_gain to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %if_gain, align 4
  %cur178 = getelementptr inbounds %struct.v4l2_ctrl, ptr %83, i32 0, i32 23
  %84 = ptrtoint ptr %cur178 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cur178, align 8
  %call180 = call fastcc i32 @msi001_set_gain(ptr noundef %dev, i32 noundef %77, i32 noundef %81, i32 noundef %85)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %if.end183, label %if.end174.do.body190_crit_edge

if.end174.do.body190_crit_edge:                   ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body190

if.end183:                                        ; preds = %if.end174
  %call186 = call fastcc i32 @msi001_wreg(ptr noundef %dev, i32 noundef 4194294)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %if.end183.cleanup_crit_edge, label %if.end183.do.body190_crit_edge

if.end183.do.body190_crit_edge:                   ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body190

if.end183.cleanup_crit_edge:                      ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body190:                                       ; preds = %if.end183.do.body190_crit_edge, %if.end174.do.body190_crit_edge, %if.end166.do.body190_crit_edge, %if.end158.do.body190_crit_edge, %msi001_wreg.exit351.do.body190_crit_edge, %msi001_wreg.exit338.do.body190_crit_edge, %msi001_wreg.exit.do.body190_crit_edge
  %ret.0 = phi i32 [ %call.i.i.i, %msi001_wreg.exit.do.body190_crit_edge ], [ %call.i.i.i337, %msi001_wreg.exit338.do.body190_crit_edge ], [ %call.i.i.i350, %msi001_wreg.exit351.do.body190_crit_edge ], [ %call163, %if.end158.do.body190_crit_edge ], [ %call171, %if.end166.do.body190_crit_edge ], [ %call180, %if.end174.do.body190_crit_edge ], [ %call186, %if.end183.do.body190_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi001_set_tuner.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi001_set_tuner, %if.then202)) #8
          to label %cleanup [label %if.then202], !srcloc !106

if.then202:                                       ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi001_set_tuner.__UNIQUE_ID_ddebug301, ptr noundef %1, ptr noundef nonnull @.str.16, i32 noundef %ret.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then202, %do.body190, %if.end183.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end183.cleanup_crit_edge ], [ %ret.0, %if.then202 ], [ %ret.0, %do.body190 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msi001_set_gain(ptr nocapture noundef readonly %dev, i32 noundef %lna_gain, i32 noundef %mixer_gain, i32 noundef %if_gain) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %data.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi001_set_gain.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi001_set_gain, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !106

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi001_set_gain.__UNIQUE_ID_ddebug292, ptr noundef %1, ptr noundef nonnull @.str.18, i32 noundef %lna_gain, i32 noundef %mixer_gain, i32 noundef %if_gain) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %.neg = mul i32 %if_gain, -16
  %shl = add i32 %.neg, 944
  %.neg50 = mul i32 %mixer_gain, -4096
  %shl7 = add i32 %.neg50, 4096
  %.neg51 = mul i32 %lna_gain, -8192
  %shl10 = add i32 %.neg51, 8192
  %or = or i32 %shl10, %shl7
  %or8 = or i32 %or, %shl
  %or12 = or i32 %or8, 65537
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.addr.i)
  %2 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or12, ptr %data.addr.i, align 4
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #8
  %5 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 92)
  %7 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data.addr.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %9 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %do.end.msi001_wreg.exit_crit_edge

do.end.msi001_wreg.exit_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %msi001_wreg.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %msi001_wreg.exit

msi001_wreg.exit:                                 ; preds = %if.end.i.i.i.i.i.i.i, %do.end.msi001_wreg.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %4, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool15.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool15.not, label %msi001_wreg.exit.cleanup_crit_edge, label %do.body18

msi001_wreg.exit.cleanup_crit_edge:               ; preds = %msi001_wreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body18:                                        ; preds = %msi001_wreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi001_set_gain.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi001_set_gain, %if.then30)) #8
          to label %cleanup [label %if.then30], !srcloc !106

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi001_set_gain.__UNIQUE_ID_ddebug293, ptr noundef %1, ptr noundef nonnull @.str.16, i32 noundef %call.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %do.body18, %msi001_wreg.exit.cleanup_crit_edge
  ret i32 %call.i.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msi001_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -200
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi001_s_ctrl.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi001_s_ctrl, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !106

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %name = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 9
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %minimum = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 11
  %10 = ptrtoint ptr %minimum to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %minimum, align 8
  %maximum = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 12
  %12 = ptrtoint ptr %maximum to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %maximum, align 8
  %14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 18
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %14, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi001_s_ctrl.__UNIQUE_ID_ddebug311, ptr noundef %3, ptr noundef nonnull @.str.28, i32 noundef %5, ptr noundef %7, i32 noundef %9, i64 noundef %11, i64 noundef %13, i64 noundef %16) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %id6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %17 = ptrtoint ptr %id6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id6, align 8
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %18, label %do.body34 [
    i32 10619147, label %do.end.sw.bb_crit_edge
    i32 10619148, label %do.end.sw.bb_crit_edge79
    i32 10619178, label %sw.bb8
    i32 10619188, label %sw.bb14
    i32 10619198, label %sw.bb24
  ]

do.end.sw.bb_crit_edge79:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end.sw.bb_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %do.end.sw.bb_crit_edge, %do.end.sw.bb_crit_edge79
  %call7 = tail call fastcc i32 @msi001_set_tuner(ptr noundef %add.ptr)
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %lna_gain = getelementptr i8, ptr %1, i32 192
  %20 = ptrtoint ptr %lna_gain to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lna_gain, align 4
  %val9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %21, i32 0, i32 22
  %22 = ptrtoint ptr %val9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val9, align 4
  %mixer_gain = getelementptr i8, ptr %1, i32 196
  %24 = ptrtoint ptr %mixer_gain to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mixer_gain, align 4
  %cur = getelementptr inbounds %struct.v4l2_ctrl, ptr %25, i32 0, i32 23
  %26 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cur, align 8
  %if_gain = getelementptr i8, ptr %1, i32 200
  %28 = ptrtoint ptr %if_gain to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %if_gain, align 4
  %cur11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %29, i32 0, i32 23
  %30 = ptrtoint ptr %cur11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cur11, align 8
  %call13 = tail call fastcc i32 @msi001_set_gain(ptr noundef %add.ptr, i32 noundef %23, i32 noundef %27, i32 noundef %31)
  br label %sw.epilog

sw.bb14:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %lna_gain15 = getelementptr i8, ptr %1, i32 192
  %32 = ptrtoint ptr %lna_gain15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lna_gain15, align 4
  %cur16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %33, i32 0, i32 23
  %34 = ptrtoint ptr %cur16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cur16, align 8
  %mixer_gain18 = getelementptr i8, ptr %1, i32 196
  %36 = ptrtoint ptr %mixer_gain18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mixer_gain18, align 4
  %val19 = getelementptr inbounds %struct.v4l2_ctrl, ptr %37, i32 0, i32 22
  %38 = ptrtoint ptr %val19 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val19, align 4
  %if_gain20 = getelementptr i8, ptr %1, i32 200
  %40 = ptrtoint ptr %if_gain20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %if_gain20, align 4
  %cur21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %41, i32 0, i32 23
  %42 = ptrtoint ptr %cur21 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cur21, align 8
  %call23 = tail call fastcc i32 @msi001_set_gain(ptr noundef %add.ptr, i32 noundef %35, i32 noundef %39, i32 noundef %43)
  br label %sw.epilog

sw.bb24:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %lna_gain25 = getelementptr i8, ptr %1, i32 192
  %44 = ptrtoint ptr %lna_gain25 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lna_gain25, align 4
  %cur26 = getelementptr inbounds %struct.v4l2_ctrl, ptr %45, i32 0, i32 23
  %46 = ptrtoint ptr %cur26 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cur26, align 8
  %mixer_gain28 = getelementptr i8, ptr %1, i32 196
  %48 = ptrtoint ptr %mixer_gain28 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mixer_gain28, align 4
  %cur29 = getelementptr inbounds %struct.v4l2_ctrl, ptr %49, i32 0, i32 23
  %50 = ptrtoint ptr %cur29 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cur29, align 8
  %if_gain31 = getelementptr i8, ptr %1, i32 200
  %52 = ptrtoint ptr %if_gain31 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %if_gain31, align 4
  %val32 = getelementptr inbounds %struct.v4l2_ctrl, ptr %53, i32 0, i32 22
  %54 = ptrtoint ptr %val32 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val32, align 4
  %call33 = tail call fastcc i32 @msi001_set_gain(ptr noundef %add.ptr, i32 noundef %47, i32 noundef %51, i32 noundef %55)
  br label %sw.epilog

do.body34:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi001_s_ctrl.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi001_s_ctrl, %if.then46)) #8
          to label %sw.epilog [label %if.then46], !srcloc !106

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %id6 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %id6, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi001_s_ctrl.__UNIQUE_ID_ddebug312, ptr noundef %3, ptr noundef nonnull @.str.29, i32 noundef %57) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then46, %do.body34, %sw.bb24, %sw.bb14, %sw.bb8, %sw.bb
  %ret.0 = phi i32 [ %call33, %sw.bb24 ], [ %call23, %sw.bb14 ], [ %call13, %sw.bb8 ], [ %call7, %sw.bb ], [ -22, %if.then46 ], [ -22, %do.body34 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !23, !24, !26, !27, !28, !29, !30, !32, !33, !35, !37, !39, !41, !42, !43, !45, !47, !49, !51, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !66, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !84, !85, !87, !89, !90, !91, !93, !94, !96}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__initcall__kmod_msi001__315_507_msi001_driver_init6, !1, !"__initcall__kmod_msi001__315_507_msi001_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/msi001.c", i32 507, i32 1}
!2 = !{ptr @__exitcall_msi001_driver_exit, !1, !"__exitcall_msi001_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author316, !4, !"__UNIQUE_ID_author316", i1 false, i1 false}
!4 = !{!"../drivers/media/tuners/msi001.c", i32 509, i32 1}
!5 = !{ptr @__UNIQUE_ID_description317, !6, !"__UNIQUE_ID_description317", i1 false, i1 false}
!6 = !{!"../drivers/media/tuners/msi001.c", i32 510, i32 1}
!7 = !{ptr @__UNIQUE_ID_file318, !8, !"__UNIQUE_ID_file318", i1 false, i1 false}
!8 = !{!"../drivers/media/tuners/msi001.c", i32 511, i32 1}
!9 = !{ptr @__UNIQUE_ID_license319, !8, !"__UNIQUE_ID_license319", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/tuners/msi001.c", i32 500, i32 11}
!12 = !{ptr @msi001_driver, !13, !"msi001_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/tuners/msi001.c", i32 498, i32 26}
!14 = !{ptr @msi001_id_table, !15, !"msi001_id_table", i1 false, i1 false}
!15 = !{!"../drivers/media/tuners/msi001.c", i32 492, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/tuners/msi001.c", i32 427, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @msi001_probe.__UNIQUE_ID_ddebug313, !17, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!21 = !{ptr @msi001_probe._key, !22, !"_key", i1 false, i1 false}
!22 = !{!"../drivers/media/tuners/msi001.c", i32 440, i32 2}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/tuners/msi001.c", i32 447, i32 3}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @msi001_probe._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @msi001_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @msi001_probe._entry.8, !31, !"_entry", i1 false, i1 false}
!31 = !{!"../drivers/media/tuners/msi001.c", i32 461, i32 3}
!32 = !{ptr @msi001_probe._entry_ptr.9, !31, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @bands, !34, !"bands", i1 false, i1 false}
!34 = !{!"../drivers/media/tuners/msi001.c", i32 14, i32 41}
!35 = !{ptr @msi001_ops, !36, !"msi001_ops", i1 false, i1 false}
!36 = !{!"../drivers/media/tuners/msi001.c", i32 375, i32 37}
!37 = !{ptr @msi001_tuner_ops, !38, !"msi001_tuner_ops", i1 false, i1 false}
!38 = !{!"../drivers/media/tuners/msi001.c", i32 366, i32 43}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/tuners/msi001.c", i32 334, i32 2}
!41 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @msi001_s_frequency.__UNIQUE_ID_ddebug305, !40, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!43 = !{ptr @msi001_set_tuner.band_lut, !44, !"band_lut", i1 false, i1 false}
!44 = !{!"../drivers/media/tuners/msi001.c", i32 96, i32 4}
!45 = distinct !{null, !46, !"if_freq_lut", i1 false, i1 false}
!46 = !{!"../drivers/media/tuners/msi001.c", i32 106, i32 4}
!47 = !{ptr @msi001_set_tuner.bandwidth_lut, !48, !"bandwidth_lut", i1 false, i1 false}
!48 = !{!"../drivers/media/tuners/msi001.c", i32 115, i32 4}
!49 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/tuners/msi001.c", i32 143, i32 2}
!51 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @msi001_set_tuner.__UNIQUE_ID_ddebug294, !50, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!53 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/tuners/msi001.c", i32 191, i32 2}
!55 = !{ptr @msi001_set_tuner.__UNIQUE_ID_ddebug299, !54, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!56 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/tuners/msi001.c", i32 230, i32 2}
!58 = !{ptr @msi001_set_tuner.__UNIQUE_ID_ddebug300, !57, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!59 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/tuners/msi001.c", i32 281, i32 2}
!61 = !{ptr @msi001_set_tuner.__UNIQUE_ID_ddebug301, !60, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!62 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/tuners/msi001.c", i32 63, i32 2}
!64 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @msi001_set_gain.__UNIQUE_ID_ddebug292, !63, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!66 = !{ptr @msi001_set_gain.__UNIQUE_ID_ddebug293, !67, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!67 = !{!"../drivers/media/tuners/msi001.c", i32 79, i32 2}
!68 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/tuners/msi001.c", i32 322, i32 2}
!70 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @msi001_g_frequency.__UNIQUE_ID_ddebug304, !69, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!72 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/tuners/msi001.c", i32 353, i32 2}
!74 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @msi001_enum_freq_bands.__UNIQUE_ID_ddebug310, !73, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!76 = !{ptr @.str.23, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/tuners/msi001.c", i32 297, i32 2}
!78 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @msi001_g_tuner.__UNIQUE_ID_ddebug302, !77, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!80 = !{ptr @.str.25, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/tuners/msi001.c", i32 299, i32 19}
!82 = !{ptr @.str.26, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/tuners/msi001.c", i32 313, i32 2}
!84 = !{ptr @msi001_s_tuner.__UNIQUE_ID_ddebug303, !83, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!85 = !{ptr @msi001_ctrl_ops, !86, !"msi001_ctrl_ops", i1 false, i1 false}
!86 = !{!"../drivers/media/tuners/msi001.c", i32 418, i32 35}
!87 = !{ptr @.str.27, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/tuners/msi001.c", i32 386, i32 2}
!89 = !{ptr @.str.28, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @msi001_s_ctrl.__UNIQUE_ID_ddebug311, !88, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!91 = !{ptr @.str.29, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/tuners/msi001.c", i32 411, i32 3}
!93 = !{ptr @msi001_s_ctrl.__UNIQUE_ID_ddebug312, !92, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!94 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/tuners/msi001.c", i32 480, i32 2}
!96 = !{ptr @msi001_remove.__UNIQUE_ID_ddebug314, !95, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{i64 2148964043, i64 2148964048, i64 2148964061, i64 2148964105, i64 2148964139, i64 2148964160}
!107 = !{i64 711546, i64 711573, i64 711595, i64 711623}
!108 = !{i64 711954, i64 711981, i64 712014, i64 712035, i64 712062, i64 712088}
