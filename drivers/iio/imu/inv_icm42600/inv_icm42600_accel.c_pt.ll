; ModuleID = '/llk/IR_all_yes/drivers/iio/imu/inv_icm42600/inv_icm42600_accel.c_pt.bc'
source_filename = "../drivers/iio/imu/inv_icm42600/inv_icm42600_accel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.78, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.78 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.inv_icm42600_state = type { %struct.mutex, i32, ptr, ptr, ptr, ptr, %struct.iio_mount_matrix, %struct.inv_icm42600_conf, %struct.inv_icm42600_suspended, ptr, ptr, [52 x i8], [2 x i8], [126 x i8], %struct.inv_icm42600_fifo, %struct.anon.87, [112 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iio_mount_matrix = type { [9 x ptr] }
%struct.inv_icm42600_conf = type { %struct.inv_icm42600_sensor_conf, %struct.inv_icm42600_sensor_conf, i8 }
%struct.inv_icm42600_sensor_conf = type { i32, i32, i32, i32 }
%struct.inv_icm42600_suspended = type { i32, i32, i8 }
%struct.inv_icm42600_fifo = type { i32, i32, i32, %struct.anon.85, i32, %struct.anon.86, [92 x i8], [2080 x i8], [96 x i8] }
%struct.anon.85 = type { i32, i32 }
%struct.anon.86 = type { i32, i32, i32 }
%struct.anon.87 = type { i64, i64 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.inv_icm42600_accel_buffer = type { %struct.inv_icm42600_fifo_sensor_data, i16, i64 }
%struct.inv_icm42600_fifo_sensor_data = type { i16, i16, i16 }
%struct.inv_icm42600_timestamp = type { %struct.inv_icm42600_timestamp_interval, i64, i32, i32, i32, %struct.inv_icm42600_timestamp_acc }
%struct.inv_icm42600_timestamp_interval = type { i64, i64 }
%struct.inv_icm42600_timestamp_acc = type { i32, i32, [32 x i32] }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-accel\00", [23 x i8] zeroinitializer }, align 32
@inv_icm42600_accel_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @inv_icm42600_accel_read_raw, ptr null, ptr @inv_icm42600_accel_read_avail, ptr @inv_icm42600_accel_write_raw, ptr null, ptr @inv_icm42600_accel_write_raw_get_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @inv_icm42600_accel_update_scan_mode, ptr @inv_icm42600_debugfs_reg, ptr null, ptr @inv_icm42600_accel_hwfifo_set_watermark, ptr @inv_icm42600_accel_hwfifo_flush }, [56 x i8] zeroinitializer }, align 32
@inv_icm42600_accel_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 0, i32 0, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4, i32 36, i32 0, i32 0, i32 4096, i32 4096, ptr null, i32 0, ptr @inv_icm42600_accel_ext_infos, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 0, i32 1, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4, i32 36, i32 0, i32 0, i32 4096, i32 4096, ptr null, i32 0, ptr @inv_icm42600_accel_ext_infos, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 0, i32 2, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4, i32 36, i32 0, i32 0, i32 4096, i32 4096, ptr null, i32 0, ptr @inv_icm42600_accel_ext_infos, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 3, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 4, %struct.anon.78 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@inv_icm42600_accel_scan_masks = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 15, i32 0], [24 x i8] zeroinitializer }, align 32
@inv_icm42600_buffer_ops = external dso_local constant %struct.iio_buffer_setup_ops, align 4
@inv_icm42600_accel_scale = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 4788403, i32 0, i32 2394202, i32 0, i32 1197101, i32 0, i32 598550], [32 x i8] zeroinitializer }, align 32
@inv_icm42600_accel_odr_conv = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4], [32 x i8] zeroinitializer }, align 32
@inv_icm42600_accel_odr = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 12, i32 500000, i32 25, i32 0, i32 50, i32 0, i32 100, i32 0, i32 200, i32 0, i32 1000, i32 0, i32 2000, i32 0, i32 4000, i32 0], [32 x i8] zeroinitializer }, align 32
@inv_icm42600_accel_calibbias = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 -10, i32 42010, i32 0, i32 4903, i32 10, i32 37106], [40 x i8] zeroinitializer }, align 32
@inv_icm42600_accel_ext_infos = internal constant { [2 x %struct.iio_chan_spec_ext_info], [56 x i8] } { [2 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.1, i32 3, ptr @iio_show_mount_matrix, ptr null, i32 ptrtoint (ptr @inv_icm42600_get_mount_matrix to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mount_matrix\00", [19 x i8] zeroinitializer }, align 32
@switch.table.inv_icm42600_accel_read_raw = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 16507, i32 16509, i32 16510], [20 x i8] zeroinitializer }, align 32
@switch.table.inv_icm42600_accel_write_raw = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 16507, i32 16509, i32 16510], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 9]
@__sancov_gen_cov_switch_values.2 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 5, i64 12]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 5, i64 12]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 5, i64 12]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 32, i64 598550, i64 1197101, i64 2394202, i64 4788403]
@__sancov_gen_cov_switch_values.7 = internal global [10 x i64] [i64 8, i64 32, i64 12, i64 25, i64 50, i64 100, i64 200, i64 1000, i64 2000, i64 4000]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 5, i64 12]
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 714, i32 41 }
@___asan_gen_.13 = private unnamed_addr constant [24 x i8] c"inv_icm42600_accel_info\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 695, i32 30 }
@___asan_gen_.16 = private unnamed_addr constant [28 x i8] c"inv_icm42600_accel_channels\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 62, i32 35 }
@___asan_gen_.19 = private unnamed_addr constant [30 x i8] c"inv_icm42600_accel_scan_masks\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 90, i32 28 }
@___asan_gen_.22 = private unnamed_addr constant [25 x i8] c"inv_icm42600_accel_scale\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 201, i32 18 }
@___asan_gen_.25 = private unnamed_addr constant [28 x i8] c"inv_icm42600_accel_odr_conv\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 278, i32 18 }
@___asan_gen_.28 = private unnamed_addr constant [23 x i8] c"inv_icm42600_accel_odr\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 259, i32 18 }
@___asan_gen_.31 = private unnamed_addr constant [29 x i8] c"inv_icm42600_accel_calibbias\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 356, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant [29 x i8] c"inv_icm42600_accel_ext_infos\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 57, i32 44 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [53 x i8] c"../drivers/iio/imu/inv_icm42600/inv_icm42600_accel.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 58, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [41 x i8] c"switch.table.inv_icm42600_accel_read_raw\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [42 x i8] c"switch.table.inv_icm42600_accel_write_raw\00", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @.str, ptr @inv_icm42600_accel_info, ptr @inv_icm42600_accel_channels, ptr @inv_icm42600_accel_scan_masks, ptr @inv_icm42600_accel_scale, ptr @inv_icm42600_accel_odr_conv, ptr @inv_icm42600_accel_odr, ptr @inv_icm42600_accel_calibbias, ptr @inv_icm42600_accel_ext_infos, ptr @.str.1, ptr @switch.table.inv_icm42600_accel_read_raw, ptr @switch.table.inv_icm42600_accel_write_raw], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_icm42600_accel_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_icm42600_accel_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_icm42600_accel_scan_masks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_icm42600_accel_scale to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_icm42600_accel_odr_conv to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_icm42600_accel_odr to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_icm42600_accel_calibbias to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_icm42600_accel_ext_infos to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.inv_icm42600_accel_read_raw to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.inv_icm42600_accel_write_raw to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @inv_icm42600_accel_init(ptr noundef %st) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %map = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 3
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %call = tail call ptr @regmap_get_device(ptr noundef %1) #6
  %name1 = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 2
  %2 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name1, align 32
  %call2 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %call, i32 noundef 3264, ptr noundef nonnull @.str, ptr noundef %3) #6
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @devm_iio_device_alloc(ptr noundef %call, i32 noundef 176) #6
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call4, i32 0, i32 19
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %odr = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 7, i32 1, i32 2
  %6 = ptrtoint ptr %odr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %odr, align 4
  %call10 = tail call i32 @inv_icm42600_odr_to_period(i32 noundef %7) #6
  tail call void @inv_icm42600_timestamp_init(ptr noundef %5, i32 noundef %call10) #6
  %driver_data.i.i = getelementptr inbounds %struct.iio_dev, ptr %call4, i32 0, i32 2, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %st, ptr %driver_data.i.i, align 4
  %name11 = getelementptr inbounds %struct.iio_dev, ptr %call4, i32 0, i32 15
  %9 = ptrtoint ptr %name11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call2, ptr %name11, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call4, i32 0, i32 17
  %10 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @inv_icm42600_accel_info, ptr %info, align 8
  %11 = ptrtoint ptr %call4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %call4, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call4, i32 0, i32 13
  %12 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @inv_icm42600_accel_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call4, i32 0, i32 14
  %13 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 5, ptr %num_channels, align 4
  %available_scan_masks = getelementptr inbounds %struct.iio_dev, ptr %call4, i32 0, i32 6
  %14 = ptrtoint ptr %available_scan_masks to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @inv_icm42600_accel_scan_masks, ptr %available_scan_masks, align 4
  %call12 = tail call i32 @devm_iio_kfifo_buffer_setup_ext(ptr noundef %call, ptr noundef nonnull %call4, i32 noundef 4, ptr noundef nonnull @inv_icm42600_buffer_ops, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %15 = inttoptr i32 %call12 to ptr
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 @__devm_iio_device_register(ptr noundef %call, ptr noundef nonnull %call4, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  %16 = inttoptr i32 %call17 to ptr
  %spec.select = select i1 %tobool18.not, ptr %call4, ptr %16
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %15, %if.then14 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ %spec.select, %if.end16 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inv_icm42600_timestamp_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inv_icm42600_odr_to_period(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_kfifo_buffer_setup_ext(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inv_icm42600_accel_parse_fifo(ptr noundef %indio_dev) local_unnamed_addr #0 align 64 {
entry:
  %accel = alloca ptr, align 4
  %gyro = alloca ptr, align 4
  %timestamp = alloca ptr, align 4
  %temp = alloca ptr, align 4
  %odr = alloca i32, align 4
  %buffer = alloca %struct.inv_icm42600_accel_buffer, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %accel) #6
  %4 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %accel, align 4, !annotation !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gyro) #6
  %5 = ptrtoint ptr %gyro to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %gyro, align 4, !annotation !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timestamp) #6
  %6 = ptrtoint ptr %timestamp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %timestamp, align 4, !annotation !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #6
  %7 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %temp, align 4, !annotation !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %odr) #6
  %8 = ptrtoint ptr %odr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %odr, align 4, !annotation !29
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buffer) #6
  %9 = getelementptr inbounds %struct.inv_icm42600_accel_buffer, ptr %buffer, i32 0, i32 1
  %count = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 14, i32 4
  %10 = call ptr @memset(ptr %buffer, i32 255, i32 16)
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp42.not = icmp eq i32 %12, 0
  br i1 %cmp42.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %period = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 14, i32 2
  %total = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 14, i32 5, i32 2
  %period.i = getelementptr inbounds %struct.inv_icm42600_timestamp, ptr %3, i32 0, i32 4
  %timestamp.i = getelementptr inbounds %struct.inv_icm42600_timestamp, ptr %3, i32 0, i32 1
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 9
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %no.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.inv_icm42600_state, ptr %1, i32 0, i32 14, i32 7, i32 %i.043
  %call3 = call i32 @inv_icm42600_fifo_decode_packet(ptr noundef %arrayidx, ptr noundef nonnull %accel, ptr noundef nonnull %gyro, ptr noundef nonnull %temp, ptr noundef nonnull %timestamp, ptr noundef nonnull %odr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 1
  br i1 %cmp4, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  %13 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %accel, align 4
  %cmp5 = icmp eq ptr %14, null
  br i1 %cmp5, label %if.end.for.inc_crit_edge, label %lor.lhs.false

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.end
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %14, align 1
  %y2.i = getelementptr inbounds %struct.inv_icm42600_fifo_sensor_data, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %y2.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %y2.i, align 1
  %z4.i = getelementptr inbounds %struct.inv_icm42600_fifo_sensor_data, ptr %14, i32 0, i32 2
  %19 = ptrtoint ptr %z4.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %z4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %16)
  %cmp.i = icmp ne i16 %16, -32768
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %18)
  %cmp8.i = icmp ne i16 %18, -32768
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp8.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %20)
  %cmp12.i = icmp ne i16 %20, -32768
  %or.cond18.i = select i1 %or.cond.i, i1 true, i1 %cmp12.i
  br i1 %or.cond18.i, label %if.end8, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end8:                                          ; preds = %lor.lhs.false
  %21 = ptrtoint ptr %odr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %odr, align 4
  %and = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end8.if.end12_crit_edge, label %if.then9

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then9:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %period, align 8
  %25 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %total, align 8
  call void @inv_icm42600_timestamp_apply_odr(ptr noundef %3, i32 noundef %24, i32 noundef %26, i32 noundef %no.044) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end8.if.end12_crit_edge
  %27 = call ptr @memset(ptr %buffer, i32 0, i32 16)
  %28 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %accel, align 4
  %30 = call ptr @memcpy(ptr %buffer, ptr %29, i32 6)
  %31 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %temp, align 4
  %tobool14.not = icmp eq ptr %32, null
  br i1 %tobool14.not, label %if.end12.cond.end_crit_edge, label %cond.true

if.end12.cond.end_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 1
  %conv = sext i8 %34 to i16
  %mul = shl nsw i16 %conv, 6
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end12.cond.end_crit_edge
  %cond = phi i16 [ %mul, %cond.true ], [ 0, %if.end12.cond.end_crit_edge ]
  %35 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %cond, ptr %9, align 2
  %36 = ptrtoint ptr %period.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %period.i, align 8
  %conv.i = zext i32 %37 to i64
  %38 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %timestamp.i, align 8
  %add.i = add i64 %39, %conv.i
  store i64 %add.i, ptr %timestamp.i, align 8
  %40 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %scan_timestamp.i, align 8, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i = icmp eq i8 %41, 0
  br i1 %tobool.not.i, label %cond.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

cond.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %43, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %buffer, i32 %sub.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %add.i, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %cond.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = call i32 @iio_push_to_buffers(ptr noundef %indio_dev, ptr noundef nonnull %buffer) #6
  br label %for.inc

for.inc:                                          ; preds = %iio_push_to_buffers_with_timestamp.exit, %lor.lhs.false.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %add = add i32 %call3, %i.043
  %inc = add i32 %no.044, 1
  %45 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %count, align 4
  %cmp = icmp ult i32 %add, %46
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ %call3, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %odr) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timestamp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gyro) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %accel) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inv_icm42600_fifo_decode_packet(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inv_icm42600_timestamp_apply_odr(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inv_icm42600_accel_read_raw(ptr noundef %indio_dev, ptr noundef %chan, ptr noundef %val, ptr noundef %val2, i32 noundef %mask) #0 align 64 {
entry:
  %remainder.i.i = alloca i32, align 4
  %conf.i = alloca %struct.inv_icm42600_sensor_conf, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 3, label %sw.epilog
    i32 9, label %sw.bb
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @inv_icm42600_temp_read_raw(ptr noundef %indio_dev, ptr noundef %chan, ptr noundef %val, ptr noundef %val2, i32 noundef %mask) #6
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %5 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %mask, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %sw.bb2
    i32 2, label %sw.bb8
    i32 12, label %sw.bb10
    i32 5, label %sw.bb12
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb2:                                           ; preds = %sw.epilog
  %call3 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb2
  %map.i = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map.i, align 4
  %call.i = tail call ptr @regmap_get_device(ptr noundef %7) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %conf.i) #6
  %8 = getelementptr inbounds i8, ptr %conf.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 12)
  %10 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 3
  br i1 %cmp.not.i, label %if.end.i, label %if.end.inv_icm42600_accel_read_sensor.exit.thread_crit_edge

if.end.inv_icm42600_accel_read_sensor.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %inv_icm42600_accel_read_sensor.exit.thread

if.end.i:                                         ; preds = %if.end
  %channel2.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %12 = ptrtoint ptr %channel2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel2.i, align 4
  %switch.tableidx = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %14 = icmp ult i32 %switch.tableidx, 3
  br i1 %14, label %switch.lookup, label %if.end.i.inv_icm42600_accel_read_sensor.exit.thread_crit_edge

if.end.i.inv_icm42600_accel_read_sensor.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %inv_icm42600_accel_read_sensor.exit.thread

switch.lookup:                                    ; preds = %if.end.i
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %call.i, i32 noundef 4) #6
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #6
  %15 = ptrtoint ptr %conf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %conf.i, align 4
  %call4.i = call i32 @inv_icm42600_set_accel_conf(ptr noundef %1, ptr noundef nonnull %conf.i, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %switch.lookup.inv_icm42600_accel_read_sensor.exit_crit_edge

switch.lookup.inv_icm42600_accel_read_sensor.exit_crit_edge: ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %inv_icm42600_accel_read_sensor.exit

if.end6.i:                                        ; preds = %switch.lookup
  %switch.idx.mult = shl i32 %switch.tableidx, 1
  %switch.offset = add i32 %switch.idx.mult, 31
  %buffer.i = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map.i, align 4
  %call8.i = call i32 @regmap_bulk_read(ptr noundef %17, i32 noundef %switch.offset, ptr noundef %buffer.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end6.i.inv_icm42600_accel_read_sensor.exit_crit_edge

if.end6.i.inv_icm42600_accel_read_sensor.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %inv_icm42600_accel_read_sensor.exit

if.end11.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %buffer.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %19)
  %cmp13.i = icmp eq i16 %19, -32768
  %phi.cast = sext i16 %19 to i32
  %spec.select57 = select i1 %cmp13.i, i32 -22, i32 0
  br label %inv_icm42600_accel_read_sensor.exit

inv_icm42600_accel_read_sensor.exit.thread:       ; preds = %if.end.i.inv_icm42600_accel_read_sensor.exit.thread_crit_edge, %if.end.inv_icm42600_accel_read_sensor.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %conf.i) #6
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #6
  br label %cleanup

inv_icm42600_accel_read_sensor.exit:              ; preds = %if.end11.i, %if.end6.i.inv_icm42600_accel_read_sensor.exit_crit_edge, %switch.lookup.inv_icm42600_accel_read_sensor.exit_crit_edge
  %data.0 = phi i32 [ -1, %if.end6.i.inv_icm42600_accel_read_sensor.exit_crit_edge ], [ -1, %switch.lookup.inv_icm42600_accel_read_sensor.exit_crit_edge ], [ %phi.cast, %if.end11.i ]
  %ret.0.i = phi i32 [ %call8.i, %if.end6.i.inv_icm42600_accel_read_sensor.exit_crit_edge ], [ %call4.i, %switch.lookup.inv_icm42600_accel_read_sensor.exit_crit_edge ], [ %spec.select57, %if.end11.i ]
  call void @mutex_unlock(ptr noundef %1) #6
  %call.i35.i = call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 12, i32 22
  %20 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store volatile i64 %call.i35.i, ptr %last_busy.i.i, align 8
  %call.i36.i = call i32 @__pm_runtime_suspend(ptr noundef %call.i, i32 noundef 13) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %conf.i) #6
  call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool5.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool5.not, label %if.end7, label %inv_icm42600_accel_read_sensor.exit.cleanup_crit_edge

inv_icm42600_accel_read_sensor.exit.cleanup_crit_edge: ; preds = %inv_icm42600_accel_read_sensor.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %inv_icm42600_accel_read_sensor.exit
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %data.0, ptr %val, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %fs.i = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 7, i32 1, i32 1
  %22 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fs.i, align 4
  %mul.i = shl i32 %23, 1
  %arrayidx.i = getelementptr [8 x i32], ptr @inv_icm42600_accel_scale, i32 0, i32 %mul.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %val, align 4
  %add.i = or i32 %mul.i, 1
  %arrayidx2.i = getelementptr [8 x i32], ptr @inv_icm42600_accel_scale, i32 0, i32 %add.i
  %27 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx2.i, align 4
  %29 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %val2, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %sw.epilog
  %odr1.i = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 7, i32 1, i32 2
  %30 = ptrtoint ptr %odr1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %odr1.i, align 4
  %switch.tableidx59 = add i32 %31, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx59)
  %32 = icmp ult i32 %switch.tableidx59, 8
  br i1 %32, label %switch.lookup58, label %sw.bb10.cleanup_crit_edge

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup58:                                  ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  %switch.idx.mult60 = mul i32 %switch.tableidx59, -2
  %switch.offset61 = add i32 %switch.idx.mult60, 14
  %arrayidx6.i = getelementptr [16 x i32], ptr @inv_icm42600_accel_odr, i32 0, i32 %switch.offset61
  %33 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx6.i, align 4
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %val, align 4
  %add.i37 = or i32 %switch.offset61, 1
  %arrayidx8.i = getelementptr [16 x i32], ptr @inv_icm42600_accel_odr, i32 0, i32 %add.i37
  %36 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx8.i, align 4
  %38 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %val2, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %sw.epilog
  %map.i39 = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %map.i39 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %map.i39, align 4
  %call.i40 = tail call ptr @regmap_get_device(ptr noundef %40) #6
  %41 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %42)
  %cmp.not.i41 = icmp eq i32 %42, 3
  br i1 %cmp.not.i41, label %if.end.i43, label %sw.bb12.cleanup_crit_edge

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i43:                                       ; preds = %sw.bb12
  %channel2.i42 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %43 = ptrtoint ptr %channel2.i42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %channel2.i42, align 4
  %switch.tableidx63 = add i32 %44, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx63)
  %45 = icmp ult i32 %switch.tableidx63, 3
  br i1 %45, label %switch.lookup62, label %if.end.i43.cleanup_crit_edge

if.end.i43.cleanup_crit_edge:                     ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup62:                                  ; preds = %if.end.i43
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.inv_icm42600_accel_read_raw, i32 0, i32 %switch.tableidx63
  %46 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %46)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call.i.i47 = tail call i32 @__pm_runtime_resume(ptr noundef %call.i40, i32 noundef 4) #6
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #6
  %47 = ptrtoint ptr %map.i39 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %map.i39, align 4
  %buffer.i48 = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 12
  %call5.i = tail call i32 @regmap_bulk_read(ptr noundef %48, i32 noundef %switch.load, ptr noundef %buffer.i48, i32 noundef 2) #6
  %49 = ptrtoint ptr %buffer.i48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %data.sroa.0.0.copyload.i = load i8, ptr %buffer.i48, align 128
  %data.sroa.7.0.arraydecay8.sroa_idx.i = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 12, i32 1
  %50 = ptrtoint ptr %data.sroa.7.0.arraydecay8.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %data.sroa.7.0.copyload.i = load i8, ptr %data.sroa.7.0.arraydecay8.sroa_idx.i, align 1
  tail call void @mutex_unlock(ptr noundef %1) #6
  %call.i77.i = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i.i49 = getelementptr inbounds %struct.device, ptr %call.i40, i32 0, i32 12, i32 22
  %51 = ptrtoint ptr %last_busy.i.i49 to i32
  call void @__asan_store8_noabort(i32 %51)
  store volatile i64 %call.i77.i, ptr %last_busy.i.i49, align 8
  %call.i78.i = tail call i32 @__pm_runtime_suspend(ptr noundef %call.i40, i32 noundef 13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i50 = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i50, label %if.end12.i, label %switch.lookup62.cleanup_crit_edge

switch.lookup62.cleanup_crit_edge:                ; preds = %switch.lookup62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12.i:                                       ; preds = %switch.lookup62
  %52 = ptrtoint ptr %channel2.i42 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %channel2.i42, align 4
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %53, label %if.end12.i.cleanup_crit_edge [
    i32 1, label %sw.bb14.i
    i32 2, label %if.end12.i.sw.epilog40.i_crit_edge
    i32 3, label %sw.bb29.i
  ]

if.end12.i.sw.epilog40.i_crit_edge:               ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog40.i

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb14.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %55 = and i8 %data.sroa.0.0.copyload.i, -16
  br label %sw.epilog40.i

sw.bb29.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %56 = and i8 %data.sroa.0.0.copyload.i, -16
  br label %sw.epilog40.i

sw.epilog40.i:                                    ; preds = %sw.bb29.i, %sw.bb14.i, %if.end12.i.sw.epilog40.i_crit_edge
  %.sink.i = phi i8 [ %56, %sw.bb29.i ], [ %55, %sw.bb14.i ], [ %data.sroa.7.0.copyload.i, %if.end12.i.sw.epilog40.i_crit_edge ]
  %data.sroa.7.0.copyload.sink.i = phi i8 [ %data.sroa.7.0.copyload.i, %sw.bb29.i ], [ %data.sroa.7.0.copyload.i, %sw.bb14.i ], [ %data.sroa.0.0.copyload.i, %if.end12.i.sw.epilog40.i_crit_edge ]
  %.sink81.i = phi i32 [ 24, %sw.bb29.i ], [ 24, %sw.bb14.i ], [ 28, %if.end12.i.sw.epilog40.i_crit_edge ]
  %and32.i = zext i8 %.sink.i to i32
  %conv35.i = zext i8 %data.sroa.7.0.copyload.sink.i to i32
  %57 = shl i32 %and32.i, %.sink81.i
  %58 = shl nuw nsw i32 %conv35.i, 20
  %shl.i75.i = or i32 %57, %58
  %offset.0.in.i = ashr exact i32 %shl.i75.i, 20
  %conv41.i = sext i32 %offset.0.in.i to i64
  %mul42.i = mul nsw i64 %conv41.i, 49033250
  %59 = and i32 %offset.0.in.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp43.i = icmp eq i32 %59, 0
  %val64.0.v.i = select i1 %cmp43.i, i64 5000, i64 -5000
  %val64.0.i = add nsw i64 %val64.0.v.i, %mul42.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #6
  %60 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !29
  %call.i79.i = call i64 @div_s64_rem(i64 noundef %val64.0.i, i32 noundef 10000, ptr noundef nonnull %remainder.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #6
  %conv48.i = trunc i64 %call.i79.i to i32
  %conv48.i.frozen = freeze i32 %conv48.i
  %div.i = sdiv i32 %conv48.i.frozen, 1000000
  %61 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %div.i, ptr %val, align 4
  %62 = mul i32 %div.i, 1000000
  %rem.i.decomposed = sub i32 %conv48.i.frozen, %62
  %63 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %rem.i.decomposed, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog40.i, %if.end12.i.cleanup_crit_edge, %switch.lookup62.cleanup_crit_edge, %if.end.i43.cleanup_crit_edge, %sw.bb12.cleanup_crit_edge, %switch.lookup58, %sw.bb10.cleanup_crit_edge, %sw.bb8, %if.end7, %inv_icm42600_accel_read_sensor.exit.cleanup_crit_edge, %inv_icm42600_accel_read_sensor.exit.thread, %sw.bb2.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %sw.bb ], [ 3, %sw.bb8 ], [ 1, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ %call3, %sw.bb2.cleanup_crit_edge ], [ %ret.0.i, %inv_icm42600_accel_read_sensor.exit.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %inv_icm42600_accel_read_sensor.exit.thread ], [ 2, %switch.lookup58 ], [ -22, %sw.bb10.cleanup_crit_edge ], [ 2, %sw.epilog40.i ], [ -22, %sw.bb12.cleanup_crit_edge ], [ -22, %if.end.i43.cleanup_crit_edge ], [ %call5.i, %switch.lookup62.cleanup_crit_edge ], [ -22, %if.end12.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @inv_icm42600_accel_read_avail(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %vals, ptr nocapture noundef writeonly %type, ptr nocapture noundef writeonly %length, i32 noundef %mask) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %mask, label %if.end.return_crit_edge [
    i32 2, label %sw.bb
    i32 12, label %sw.bb2
    i32 5, label %sw.bb3
  ]

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @inv_icm42600_accel_scale, ptr %vals, align 4
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %type, align 4
  %5 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8, ptr %length, align 4
  br label %return

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @inv_icm42600_accel_odr, ptr %vals, align 4
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %type, align 4
  %8 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16, ptr %length, align 4
  br label %return

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @inv_icm42600_accel_calibbias, ptr %vals, align 4
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %type, align 4
  br label %return

return:                                           ; preds = %sw.bb3, %sw.bb2, %sw.bb, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb3 ], [ 0, %sw.bb2 ], [ 0, %sw.bb ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inv_icm42600_accel_write_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #0 align 64 {
entry:
  %remainder.i.i = alloca i32, align 4
  %regval.i = alloca i32, align 4
  %conf.i30 = alloca %struct.inv_icm42600_sensor_conf, align 4
  %conf.i = alloca %struct.inv_icm42600_sensor_conf, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %mask, label %if.end.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 12, label %sw.bb5
    i32 5, label %sw.bb7
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %sw.bb
  %map.i = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map.i, align 4
  %call.i = tail call ptr @regmap_get_device(ptr noundef %6) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %conf.i) #6
  %7 = call ptr @memset(ptr %conf.i, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp1.i = icmp eq i32 %val, 0
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end3.inv_icm42600_accel_write_scale.exit_crit_edge

if.end3.inv_icm42600_accel_write_scale.exit_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %inv_icm42600_accel_write_scale.exit

land.lhs.true.i:                                  ; preds = %if.end3
  %8 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %val2, label %land.lhs.true.i.inv_icm42600_accel_write_scale.exit_crit_edge [
    i32 4788403, label %land.lhs.true.i.if.end7.i_crit_edge
    i32 2394202, label %if.end7.fold.split.i
    i32 1197101, label %if.end7.fold.split33.i
    i32 598550, label %if.end7.fold.split34.i
  ]

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

land.lhs.true.i.inv_icm42600_accel_write_scale.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %inv_icm42600_accel_write_scale.exit

if.end7.fold.split.i:                             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.end7.fold.split33.i:                           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.end7.fold.split34.i:                           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end7.fold.split34.i, %if.end7.fold.split33.i, %if.end7.fold.split.i, %land.lhs.true.i.if.end7.i_crit_edge
  %idx.030.lcssa.i = phi i32 [ 0, %land.lhs.true.i.if.end7.i_crit_edge ], [ 1, %if.end7.fold.split.i ], [ 2, %if.end7.fold.split33.i ], [ 3, %if.end7.fold.split34.i ]
  %fs.i = getelementptr inbounds %struct.inv_icm42600_sensor_conf, ptr %conf.i, i32 0, i32 1
  %9 = ptrtoint ptr %fs.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %idx.030.lcssa.i, ptr %fs.i, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %call.i, i32 noundef 4) #6
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #6
  %call9.i = call i32 @inv_icm42600_set_accel_conf(ptr noundef %1, ptr noundef nonnull %conf.i, ptr noundef null) #6
  call void @mutex_unlock(ptr noundef %1) #6
  %call.i26.i = call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 12, i32 22
  %10 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store volatile i64 %call.i26.i, ptr %last_busy.i.i, align 8
  %call.i27.i = call i32 @__pm_runtime_suspend(ptr noundef %call.i, i32 noundef 13) #6
  br label %inv_icm42600_accel_write_scale.exit

inv_icm42600_accel_write_scale.exit:              ; preds = %if.end7.i, %land.lhs.true.i.inv_icm42600_accel_write_scale.exit_crit_edge, %if.end3.inv_icm42600_accel_write_scale.exit_crit_edge
  %retval.0.i = phi i32 [ %call9.i, %if.end7.i ], [ -22, %if.end3.inv_icm42600_accel_write_scale.exit_crit_edge ], [ -22, %land.lhs.true.i.inv_icm42600_accel_write_scale.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %conf.i) #6
  call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #6
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %11 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv.i.i, align 8
  %map.i31 = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %map.i31 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map.i31, align 4
  %call2.i = tail call ptr @regmap_get_device(ptr noundef %14) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %conf.i30) #6
  %15 = call ptr @memset(ptr %conf.i30, i32 255, i32 16)
  %16 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %val, label %sw.bb5.inv_icm42600_accel_write_odr.exit_crit_edge [
    i32 12, label %land.lhs.true.i32
    i32 25, label %land.lhs.true.1.i
    i32 50, label %land.lhs.true.2.i
    i32 100, label %land.lhs.true.3.i
    i32 200, label %land.lhs.true.4.i
    i32 1000, label %land.lhs.true.5.i
    i32 2000, label %land.lhs.true.6.i
    i32 4000, label %land.lhs.true.7.i
  ]

sw.bb5.inv_icm42600_accel_write_odr.exit_crit_edge: ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %inv_icm42600_accel_write_odr.exit

land.lhs.true.i32:                                ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %val2)
  %cmp5.i = icmp eq i32 %val2, 500000
  br i1 %cmp5.i, label %land.lhs.true.i32.if.end9.i_crit_edge, label %land.lhs.true.i32.inv_icm42600_accel_write_odr.exit_crit_edge

land.lhs.true.i32.inv_icm42600_accel_write_odr.exit_crit_edge: ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #8
  br label %inv_icm42600_accel_write_odr.exit

land.lhs.true.i32.if.end9.i_crit_edge:            ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

land.lhs.true.1.i:                                ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.1.i = icmp eq i32 %val2, 0
  br i1 %cmp5.1.i, label %land.lhs.true.1.i.if.end9.i_crit_edge, label %land.lhs.true.1.i.inv_icm42600_accel_write_odr.exit_crit_edge

land.lhs.true.1.i.inv_icm42600_accel_write_odr.exit_crit_edge: ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %inv_icm42600_accel_write_odr.exit

land.lhs.true.1.i.if.end9.i_crit_edge:            ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

land.lhs.true.2.i:                                ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.2.i = icmp eq i32 %val2, 0
  br i1 %cmp5.2.i, label %land.lhs.true.2.i.if.end9.i_crit_edge, label %land.lhs.true.2.i.inv_icm42600_accel_write_odr.exit_crit_edge

land.lhs.true.2.i.inv_icm42600_accel_write_odr.exit_crit_edge: ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %inv_icm42600_accel_write_odr.exit

land.lhs.true.2.i.if.end9.i_crit_edge:            ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

land.lhs.true.3.i:                                ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.3.i = icmp eq i32 %val2, 0
  br i1 %cmp5.3.i, label %land.lhs.true.3.i.if.end9.i_crit_edge, label %land.lhs.true.3.i.inv_icm42600_accel_write_odr.exit_crit_edge

land.lhs.true.3.i.inv_icm42600_accel_write_odr.exit_crit_edge: ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %inv_icm42600_accel_write_odr.exit

land.lhs.true.3.i.if.end9.i_crit_edge:            ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

land.lhs.true.4.i:                                ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.4.i = icmp eq i32 %val2, 0
  br i1 %cmp5.4.i, label %land.lhs.true.4.i.if.end9.i_crit_edge, label %land.lhs.true.4.i.inv_icm42600_accel_write_odr.exit_crit_edge

land.lhs.true.4.i.inv_icm42600_accel_write_odr.exit_crit_edge: ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %inv_icm42600_accel_write_odr.exit

land.lhs.true.4.i.if.end9.i_crit_edge:            ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

land.lhs.true.5.i:                                ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.5.i = icmp eq i32 %val2, 0
  br i1 %cmp5.5.i, label %land.lhs.true.5.i.if.end9.i_crit_edge, label %land.lhs.true.5.i.inv_icm42600_accel_write_odr.exit_crit_edge

land.lhs.true.5.i.inv_icm42600_accel_write_odr.exit_crit_edge: ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %inv_icm42600_accel_write_odr.exit

land.lhs.true.5.i.if.end9.i_crit_edge:            ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

land.lhs.true.6.i:                                ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.6.i = icmp eq i32 %val2, 0
  br i1 %cmp5.6.i, label %land.lhs.true.6.i.if.end9.i_crit_edge, label %land.lhs.true.6.i.inv_icm42600_accel_write_odr.exit_crit_edge

land.lhs.true.6.i.inv_icm42600_accel_write_odr.exit_crit_edge: ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %inv_icm42600_accel_write_odr.exit

land.lhs.true.6.i.if.end9.i_crit_edge:            ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

land.lhs.true.7.i:                                ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.7.i = icmp eq i32 %val2, 0
  br i1 %cmp5.7.i, label %land.lhs.true.7.i.if.end9.i_crit_edge, label %land.lhs.true.7.i.inv_icm42600_accel_write_odr.exit_crit_edge

land.lhs.true.7.i.inv_icm42600_accel_write_odr.exit_crit_edge: ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %inv_icm42600_accel_write_odr.exit

land.lhs.true.7.i.if.end9.i_crit_edge:            ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.end9.i:                                        ; preds = %land.lhs.true.7.i.if.end9.i_crit_edge, %land.lhs.true.6.i.if.end9.i_crit_edge, %land.lhs.true.5.i.if.end9.i_crit_edge, %land.lhs.true.4.i.if.end9.i_crit_edge, %land.lhs.true.3.i.if.end9.i_crit_edge, %land.lhs.true.2.i.if.end9.i_crit_edge, %land.lhs.true.1.i.if.end9.i_crit_edge, %land.lhs.true.i32.if.end9.i_crit_edge
  %idx.051.lcssa.i = phi i32 [ 0, %land.lhs.true.i32.if.end9.i_crit_edge ], [ 1, %land.lhs.true.1.i.if.end9.i_crit_edge ], [ 2, %land.lhs.true.2.i.if.end9.i_crit_edge ], [ 3, %land.lhs.true.3.i.if.end9.i_crit_edge ], [ 4, %land.lhs.true.4.i.if.end9.i_crit_edge ], [ 5, %land.lhs.true.5.i.if.end9.i_crit_edge ], [ 6, %land.lhs.true.6.i.if.end9.i_crit_edge ], [ 7, %land.lhs.true.7.i.if.end9.i_crit_edge ]
  %arrayidx10.i = getelementptr [8 x i32], ptr @inv_icm42600_accel_odr_conv, i32 0, i32 %idx.051.lcssa.i
  %17 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx10.i, align 4
  %odr.i = getelementptr inbounds %struct.inv_icm42600_sensor_conf, ptr %conf.i30, i32 0, i32 2
  %19 = ptrtoint ptr %odr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %odr.i, align 4
  %call.i.i33 = tail call i32 @__pm_runtime_resume(ptr noundef %call2.i, i32 noundef 4) #6
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #6
  %call13.i = tail call i32 @inv_icm42600_odr_to_period(i32 noundef %18) #6
  %currentmode.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 1
  %20 = ptrtoint ptr %currentmode.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %currentmode.i.i, align 4
  %and.i.i = and i32 %21, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i = icmp ne i32 %and.i.i, 0
  %call15.i = tail call i32 @inv_icm42600_timestamp_update_odr(ptr noundef %12, i32 noundef %call13.i, i1 noundef zeroext %tobool.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool.not.i, label %if.end17.i, label %if.end9.i.out_unlock.i_crit_edge

if.end9.i.out_unlock.i_crit_edge:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock.i

if.end17.i:                                       ; preds = %if.end9.i
  %call18.i = call i32 @inv_icm42600_set_accel_conf(ptr noundef %1, ptr noundef nonnull %conf.i30, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end17.i.out_unlock.i_crit_edge

if.end17.i.out_unlock.i_crit_edge:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock.i

if.end21.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @inv_icm42600_buffer_update_fifo_period(ptr noundef %1) #6
  %call22.i = call i32 @inv_icm42600_buffer_update_watermark(ptr noundef %1) #6
  br label %out_unlock.i

out_unlock.i:                                     ; preds = %if.end21.i, %if.end17.i.out_unlock.i_crit_edge, %if.end9.i.out_unlock.i_crit_edge
  %ret.0.i = phi i32 [ %call15.i, %if.end9.i.out_unlock.i_crit_edge ], [ %call18.i, %if.end17.i.out_unlock.i_crit_edge ], [ 0, %if.end21.i ]
  call void @mutex_unlock(ptr noundef %1) #6
  %call.i47.i = call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i.i34 = getelementptr inbounds %struct.device, ptr %call2.i, i32 0, i32 12, i32 22
  %22 = ptrtoint ptr %last_busy.i.i34 to i32
  call void @__asan_store8_noabort(i32 %22)
  store volatile i64 %call.i47.i, ptr %last_busy.i.i34, align 8
  %call.i48.i = call i32 @__pm_runtime_suspend(ptr noundef %call2.i, i32 noundef 13) #6
  br label %inv_icm42600_accel_write_odr.exit

inv_icm42600_accel_write_odr.exit:                ; preds = %out_unlock.i, %land.lhs.true.7.i.inv_icm42600_accel_write_odr.exit_crit_edge, %land.lhs.true.6.i.inv_icm42600_accel_write_odr.exit_crit_edge, %land.lhs.true.5.i.inv_icm42600_accel_write_odr.exit_crit_edge, %land.lhs.true.4.i.inv_icm42600_accel_write_odr.exit_crit_edge, %land.lhs.true.3.i.inv_icm42600_accel_write_odr.exit_crit_edge, %land.lhs.true.2.i.inv_icm42600_accel_write_odr.exit_crit_edge, %land.lhs.true.1.i.inv_icm42600_accel_write_odr.exit_crit_edge, %land.lhs.true.i32.inv_icm42600_accel_write_odr.exit_crit_edge, %sw.bb5.inv_icm42600_accel_write_odr.exit_crit_edge
  %retval.0.i35 = phi i32 [ %ret.0.i, %out_unlock.i ], [ -22, %land.lhs.true.7.i.inv_icm42600_accel_write_odr.exit_crit_edge ], [ -22, %land.lhs.true.6.i.inv_icm42600_accel_write_odr.exit_crit_edge ], [ -22, %land.lhs.true.5.i.inv_icm42600_accel_write_odr.exit_crit_edge ], [ -22, %land.lhs.true.4.i.inv_icm42600_accel_write_odr.exit_crit_edge ], [ -22, %land.lhs.true.3.i.inv_icm42600_accel_write_odr.exit_crit_edge ], [ -22, %land.lhs.true.2.i.inv_icm42600_accel_write_odr.exit_crit_edge ], [ -22, %land.lhs.true.1.i.inv_icm42600_accel_write_odr.exit_crit_edge ], [ -22, %land.lhs.true.i32.inv_icm42600_accel_write_odr.exit_crit_edge ], [ -22, %sw.bb5.inv_icm42600_accel_write_odr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %conf.i30) #6
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  %call8 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %sw.bb7.cleanup_crit_edge

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %sw.bb7
  %map.i36 = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %map.i36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %map.i36, align 4
  %call.i37 = tail call ptr @regmap_get_device(ptr noundef %24) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #6
  %25 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %regval.i, align 4, !annotation !29
  %26 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp.not.i = icmp eq i32 %27, 3
  br i1 %cmp.not.i, label %if.end.i, label %if.end11.inv_icm42600_accel_write_offset.exit_crit_edge

if.end11.inv_icm42600_accel_write_offset.exit_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %inv_icm42600_accel_write_offset.exit

if.end.i:                                         ; preds = %if.end11
  %channel2.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %28 = ptrtoint ptr %channel2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %channel2.i, align 4
  %switch.tableidx = add i32 %29, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %30 = icmp ult i32 %switch.tableidx, 3
  br i1 %30, label %switch.lookup, label %if.end.i.inv_icm42600_accel_write_offset.exit_crit_edge

if.end.i.inv_icm42600_accel_write_offset.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %inv_icm42600_accel_write_offset.exit

switch.lookup:                                    ; preds = %if.end.i
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.inv_icm42600_accel_write_raw, i32 0, i32 %switch.tableidx
  %31 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %31)
  %switch.load = load i32, ptr %switch.gep, align 4
  %32 = load i32, ptr @inv_icm42600_accel_calibbias, align 4
  %mul.i = mul i32 %32, 1000000
  %33 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @inv_icm42600_accel_calibbias, i32 0, i32 1), align 4
  %add.i = add i32 %mul.i, %33
  %conv.i = sext i32 %val to i64
  %mul5.i = mul nsw i64 %conv.i, 1000000
  %conv6.i = sext i32 %val2 to i64
  %add7.i = add nsw i64 %mul5.i, %conv6.i
  %conv8.i = sext i32 %add.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add7.i, i64 %conv8.i)
  %cmp9.i = icmp slt i64 %add7.i, %conv8.i
  br i1 %cmp9.i, label %switch.lookup.inv_icm42600_accel_write_offset.exit_crit_edge, label %lor.lhs.false.i

switch.lookup.inv_icm42600_accel_write_offset.exit_crit_edge: ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %inv_icm42600_accel_write_offset.exit

lor.lhs.false.i:                                  ; preds = %switch.lookup
  %34 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @inv_icm42600_accel_calibbias, i32 0, i32 4), align 4
  %mul3.i = mul i32 %34, 1000000
  %35 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @inv_icm42600_accel_calibbias, i32 0, i32 5), align 4
  %add4.i = add i32 %mul3.i, %35
  %conv11.i = sext i32 %add4.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add7.i, i64 %conv11.i)
  %cmp12.i = icmp sgt i64 %add7.i, %conv11.i
  br i1 %cmp12.i, label %lor.lhs.false.i.inv_icm42600_accel_write_offset.exit_crit_edge, label %if.end15.i

lor.lhs.false.i.inv_icm42600_accel_write_offset.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %inv_icm42600_accel_write_offset.exit

if.end15.i:                                       ; preds = %lor.lhs.false.i
  %mul16.i = mul i64 %add7.i, 10000
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %mul16.i)
  %cmp17138.i = icmp slt i64 %mul16.i, 0
  %val64.0.v.i = select i1 %cmp17138.i, i64 -24516625, i64 24516625
  %val64.0.i = add i64 %val64.0.v.i, %mul16.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #6
  %36 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !29
  %call.i.i38 = call i64 @div_s64_rem(i64 noundef %val64.0.i, i32 noundef 49033250, ptr noundef nonnull %remainder.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #6
  %conv23.i = trunc i64 %call.i.i38 to i16
  %37 = call i16 @llvm.smin.i16(i16 %conv23.i, i16 2047) #6
  %38 = call i16 @llvm.smax.i16(i16 %37, i16 -2048) #6
  %offset.0139.i = zext i16 %38 to i32
  %call.i135.i = call i32 @__pm_runtime_resume(ptr noundef %call.i37, i32 noundef 4) #6
  call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #6
  %39 = ptrtoint ptr %channel2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %channel2.i, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %40, label %if.end15.i.out_unlock.i42_crit_edge [
    i32 1, label %sw.bb37.i
    i32 2, label %sw.bb50.i
    i32 3, label %sw.bb69.i
  ]

if.end15.i.out_unlock.i42_crit_edge:              ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock.i42

sw.bb37.i:                                        ; preds = %if.end15.i
  %42 = ptrtoint ptr %map.i36 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %map.i36, align 4
  %call39.i = call i32 @regmap_read(ptr noundef %43, i32 noundef 16507, ptr noundef nonnull %regval.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool.not.i39 = icmp eq i32 %call39.i, 0
  br i1 %tobool.not.i39, label %if.end41.i, label %sw.bb37.i.out_unlock.i42_crit_edge

sw.bb37.i.out_unlock.i42_crit_edge:               ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock.i42

if.end41.i:                                       ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i = lshr i32 %offset.0139.i, 4
  %44 = and i32 %and.i, 240
  %45 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %regval.i, align 4
  %and43.i = and i32 %46, 15
  %or.i = or i32 %and43.i, %44
  %conv44.i = trunc i32 %or.i to i8
  %buffer.i = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 12
  %47 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv44.i, ptr %buffer.i, align 128
  %conv47.i = trunc i16 %38 to i8
  br label %sw.epilog89.i

sw.bb50.i:                                        ; preds = %if.end15.i
  %48 = ptrtoint ptr %map.i36 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %map.i36, align 4
  %call52.i = call i32 @regmap_read(ptr noundef %49, i32 noundef 16510, ptr noundef nonnull %regval.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %if.end55.i, label %sw.bb50.i.out_unlock.i42_crit_edge

sw.bb50.i.out_unlock.i42_crit_edge:               ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock.i42

if.end55.i:                                       ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv58.i = trunc i16 %38 to i8
  %buffer59.i = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 12
  %50 = ptrtoint ptr %buffer59.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv58.i, ptr %buffer59.i, align 128
  %and62.i = lshr i32 %offset.0139.i, 8
  %51 = and i32 %and62.i, 15
  %52 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %regval.i, align 4
  %and64.i = and i32 %53, 240
  %or65.i = or i32 %and64.i, %51
  %conv66.i = trunc i32 %or65.i to i8
  br label %sw.epilog89.i

sw.bb69.i:                                        ; preds = %if.end15.i
  %54 = ptrtoint ptr %map.i36 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %map.i36, align 4
  %call71.i = call i32 @regmap_read(ptr noundef %55, i32 noundef 16510, ptr noundef nonnull %regval.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %tobool72.not.i = icmp eq i32 %call71.i, 0
  br i1 %tobool72.not.i, label %if.end74.i, label %sw.bb69.i.out_unlock.i42_crit_edge

sw.bb69.i.out_unlock.i42_crit_edge:               ; preds = %sw.bb69.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock.i42

if.end74.i:                                       ; preds = %sw.bb69.i
  call void @__sanitizer_cov_trace_pc() #8
  %and76.i = lshr i32 %offset.0139.i, 4
  %56 = and i32 %and76.i, 240
  %57 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %regval.i, align 4
  %and78.i = and i32 %58, 15
  %or79.i = or i32 %and78.i, %56
  %conv80.i = trunc i32 %or79.i to i8
  %buffer81.i = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 12
  %59 = ptrtoint ptr %buffer81.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv80.i, ptr %buffer81.i, align 128
  %conv85.i = trunc i16 %38 to i8
  br label %sw.epilog89.i

sw.epilog89.i:                                    ; preds = %if.end74.i, %if.end55.i, %if.end41.i
  %conv85.sink.i = phi i8 [ %conv85.i, %if.end74.i ], [ %conv66.i, %if.end55.i ], [ %conv47.i, %if.end41.i ]
  %arrayidx87.i = getelementptr %struct.inv_icm42600_state, ptr %1, i32 0, i32 12, i32 1
  %60 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv85.sink.i, ptr %arrayidx87.i, align 1
  %61 = ptrtoint ptr %map.i36 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %map.i36, align 4
  %buffer91.i = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 12
  %call92.i = call i32 @regmap_bulk_write(ptr noundef %62, i32 noundef %switch.load, ptr noundef %buffer91.i, i32 noundef 2) #6
  br label %out_unlock.i42

out_unlock.i42:                                   ; preds = %sw.epilog89.i, %sw.bb69.i.out_unlock.i42_crit_edge, %sw.bb50.i.out_unlock.i42_crit_edge, %sw.bb37.i.out_unlock.i42_crit_edge, %if.end15.i.out_unlock.i42_crit_edge
  %ret.0.i40 = phi i32 [ %call71.i, %sw.bb69.i.out_unlock.i42_crit_edge ], [ %call92.i, %sw.epilog89.i ], [ %call52.i, %sw.bb50.i.out_unlock.i42_crit_edge ], [ %call39.i, %sw.bb37.i.out_unlock.i42_crit_edge ], [ -22, %if.end15.i.out_unlock.i42_crit_edge ]
  call void @mutex_unlock(ptr noundef %1) #6
  %call.i136.i = call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i.i41 = getelementptr inbounds %struct.device, ptr %call.i37, i32 0, i32 12, i32 22
  %63 = ptrtoint ptr %last_busy.i.i41 to i32
  call void @__asan_store8_noabort(i32 %63)
  store volatile i64 %call.i136.i, ptr %last_busy.i.i41, align 8
  %call.i137.i = call i32 @__pm_runtime_suspend(ptr noundef %call.i37, i32 noundef 13) #6
  br label %inv_icm42600_accel_write_offset.exit

inv_icm42600_accel_write_offset.exit:             ; preds = %out_unlock.i42, %lor.lhs.false.i.inv_icm42600_accel_write_offset.exit_crit_edge, %switch.lookup.inv_icm42600_accel_write_offset.exit_crit_edge, %if.end.i.inv_icm42600_accel_write_offset.exit_crit_edge, %if.end11.inv_icm42600_accel_write_offset.exit_crit_edge
  %retval.0.i43 = phi i32 [ %ret.0.i40, %out_unlock.i42 ], [ -22, %if.end11.inv_icm42600_accel_write_offset.exit_crit_edge ], [ -22, %if.end.i.inv_icm42600_accel_write_offset.exit_crit_edge ], [ -22, %lor.lhs.false.i.inv_icm42600_accel_write_offset.exit_crit_edge ], [ -22, %switch.lookup.inv_icm42600_accel_write_offset.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #6
  call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #6
  br label %cleanup

cleanup:                                          ; preds = %inv_icm42600_accel_write_offset.exit, %sw.bb7.cleanup_crit_edge, %inv_icm42600_accel_write_odr.exit, %inv_icm42600_accel_write_scale.exit, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i43, %inv_icm42600_accel_write_offset.exit ], [ %retval.0.i35, %inv_icm42600_accel_write_odr.exit ], [ %retval.0.i, %inv_icm42600_accel_write_scale.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %call8, %sw.bb7.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @inv_icm42600_accel_write_raw_get_fmt(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %mask) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %mask, label %sw.default [
    i32 2, label %if.end.return_crit_edge
    i32 12, label %sw.bb1
    i32 5, label %sw.bb2
  ]

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb1, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ 2, %sw.bb2 ], [ 2, %sw.bb1 ], [ -22, %entry.return_crit_edge ], [ 3, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inv_icm42600_accel_update_scan_mode(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %scan_mask) #0 align 64 {
entry:
  %conf = alloca %struct.inv_icm42600_sensor_conf, align 4
  %sleep_temp = alloca i32, align 4
  %sleep_accel = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %conf) #6
  %4 = call ptr @memset(ptr %conf, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sleep_temp) #6
  %5 = ptrtoint ptr %sleep_temp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %sleep_temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sleep_accel) #6
  %6 = ptrtoint ptr %sleep_accel to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %sleep_accel, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #6
  %7 = ptrtoint ptr %scan_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %scan_mask, align 4
  %and = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  %call2 = call i32 @inv_icm42600_set_temp_conf(ptr noundef %1, i1 noundef zeroext true, ptr noundef nonnull %sleep_temp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.out_unlock_crit_edge

if.then.out_unlock_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %fifo_en.0 = phi i32 [ 0, %entry.if.end5_crit_edge ], [ 4, %if.then.if.end5_crit_edge ]
  %9 = ptrtoint ptr %scan_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %scan_mask, align 4
  %and6 = and i32 %10, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.if.end14_crit_edge, label %if.then8

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then8:                                         ; preds = %if.end5
  %11 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %conf, align 4
  %call9 = call i32 @inv_icm42600_set_accel_conf(ptr noundef %1, ptr noundef nonnull %conf, ptr noundef nonnull %sleep_accel) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then8.out_unlock_crit_edge

if.then8.out_unlock_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.end12:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %or13 = or i32 %fifo_en.0, 2
  br label %if.end14

if.end14:                                         ; preds = %if.end12, %if.end5.if.end14_crit_edge
  %fifo_en.1 = phi i32 [ %or13, %if.end12 ], [ %fifo_en.0, %if.end5.if.end14_crit_edge ]
  call void @inv_icm42600_timestamp_apply_odr(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %en = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 14, i32 1
  %12 = ptrtoint ptr %en to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %en, align 4
  %or15 = or i32 %13, %fifo_en.1
  %call16 = call i32 @inv_icm42600_buffer_set_fifo_en(ptr noundef %1, i32 noundef %or15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.out_unlock_crit_edge

if.end14.out_unlock_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = call i32 @inv_icm42600_buffer_update_watermark(ptr noundef %1) #6
  br label %out_unlock

out_unlock:                                       ; preds = %if.end19, %if.end14.out_unlock_crit_edge, %if.then8.out_unlock_crit_edge, %if.then.out_unlock_crit_edge
  %ret.0 = phi i32 [ %call2, %if.then.out_unlock_crit_edge ], [ %call9, %if.then8.out_unlock_crit_edge ], [ %call16, %if.end14.out_unlock_crit_edge ], [ %call20, %if.end19 ]
  call void @mutex_unlock(ptr noundef %1) #6
  %14 = ptrtoint ptr %sleep_accel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sleep_accel, align 4
  %16 = ptrtoint ptr %sleep_temp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sleep_temp, align 4
  %18 = call i32 @llvm.umax.i32(i32 %15, i32 %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool24.not = icmp eq i32 %18, 0
  br i1 %tobool24.not, label %out_unlock.if.end26_crit_edge, label %if.then25

out_unlock.if.end26_crit_edge:                    ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then25:                                        ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef %18) #6
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %out_unlock.if.end26_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sleep_accel) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sleep_temp) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %conf) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inv_icm42600_debugfs_reg(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inv_icm42600_accel_hwfifo_set_watermark(ptr nocapture noundef readonly %indio_dev, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #6
  %accel = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 14, i32 3, i32 1
  %2 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %val, ptr %accel, align 4
  %call1 = tail call i32 @inv_icm42600_buffer_update_watermark(ptr noundef %1) #6
  tail call void @mutex_unlock(ptr noundef %1) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inv_icm42600_accel_hwfifo_flush(ptr nocapture noundef readonly %indio_dev, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #6
  %call1 = tail call i32 @inv_icm42600_buffer_hwfifo_flush(ptr noundef %1, i32 noundef %count) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %accel = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 14, i32 5, i32 1
  %2 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %accel, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.if.end3_crit_edge ], [ %3, %if.then2 ]
  tail call void @mutex_unlock(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end3 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inv_icm42600_temp_read_raw(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inv_icm42600_set_accel_conf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inv_icm42600_timestamp_update_odr(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inv_icm42600_buffer_update_fifo_period(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inv_icm42600_buffer_update_watermark(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inv_icm42600_set_temp_conf(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inv_icm42600_buffer_set_fifo_en(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inv_icm42600_buffer_hwfifo_flush(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_show_mount_matrix(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inv_icm42600_get_mount_matrix(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smin.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_accel.c", i32 714, i32 41}
!2 = !{ptr @inv_icm42600_accel_info, !3, !"inv_icm42600_accel_info", i1 false, i1 false}
!3 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_accel.c", i32 695, i32 30}
!4 = !{ptr @inv_icm42600_accel_scale, !5, !"inv_icm42600_accel_scale", i1 false, i1 false}
!5 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_accel.c", i32 201, i32 18}
!6 = !{ptr @inv_icm42600_accel_odr_conv, !7, !"inv_icm42600_accel_odr_conv", i1 false, i1 false}
!7 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_accel.c", i32 278, i32 18}
!8 = !{ptr @inv_icm42600_accel_odr, !9, !"inv_icm42600_accel_odr", i1 false, i1 false}
!9 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_accel.c", i32 259, i32 18}
!10 = !{ptr @inv_icm42600_accel_calibbias, !11, !"inv_icm42600_accel_calibbias", i1 false, i1 false}
!11 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_accel.c", i32 356, i32 12}
!12 = !{ptr @inv_icm42600_accel_channels, !13, !"inv_icm42600_accel_channels", i1 false, i1 false}
!13 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_accel.c", i32 62, i32 35}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_accel.c", i32 58, i32 2}
!16 = !{ptr @inv_icm42600_accel_ext_infos, !17, !"inv_icm42600_accel_ext_infos", i1 false, i1 false}
!17 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_accel.c", i32 57, i32 44}
!18 = !{ptr @inv_icm42600_accel_scan_masks, !19, !"inv_icm42600_accel_scan_masks", i1 false, i1 false}
!19 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_accel.c", i32 90, i32 28}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"auto-init"}
!30 = !{i8 0, i8 2}
