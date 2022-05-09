; ModuleID = '/llk/IR_all_yes/drivers/iio/common/st_sensors/st_sensors_spi.c_pt.bc'
source_filename = "../drivers/iio/common/st_sensors/st_sensors_spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+st_sensors_spi_configure\22, \22a\22\09"
module asm "\09.weak\09__crc_st_sensors_spi_configure\09\09\09\09"
module asm "\09.long\09__crc_st_sensors_spi_configure\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st_sensors_spi_configure:\09\09\09\09\09"
module asm "\09.asciz \09\22st_sensors_spi_configure\22\09\09\09\09\09"
module asm "__kstrtabns_st_sensors_spi_configure:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.st_sensors_platform_data = type { i8, i8, i8, i8, i8 }
%struct.st_sensor_data = type { ptr, %struct.iio_mount_matrix, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i8, i8, i32, i8, i8, i64, [32 x i8], [16 x i8], [112 x i8] }
%struct.iio_mount_matrix = type { [9 x ptr] }
%struct.st_sensor_settings = type { i8, i8, [8 x [17 x i8]], ptr, i32, %struct.st_sensor_odr, %struct.st_sensor_power, %struct.st_sensor_axis, %struct.st_sensor_fullscale, %struct.st_sensor_bdu, %struct.st_sensor_das, %struct.st_sensor_data_ready_irq, %struct.st_sensor_sim, i8, i32 }
%struct.st_sensor_odr = type { i8, i8, [10 x %struct.st_sensor_odr_avl] }
%struct.st_sensor_odr_avl = type { i32, i8 }
%struct.st_sensor_power = type { i8, i8, i8, i8 }
%struct.st_sensor_axis = type { i8, i8 }
%struct.st_sensor_fullscale = type { i8, i8, [10 x %struct.st_sensor_fullscale_avl] }
%struct.st_sensor_fullscale_avl = type { i32, i8, i32, i32 }
%struct.st_sensor_bdu = type { i8, i8 }
%struct.st_sensor_das = type { i8, i8 }
%struct.st_sensor_data_ready_irq = type { %struct.st_sensor_int_drdy, %struct.st_sensor_int_drdy, i8, i8, %struct.anon.85, %struct.anon.86 }
%struct.st_sensor_int_drdy = type { i8, i8, i8, i8 }
%struct.anon.85 = type { i8, i8 }
%struct.anon.86 = type { i8, i8 }
%struct.st_sensor_sim = type { i8, i8 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }

@st_sensors_spi_regmap_multiread_bit_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 192, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@st_sensors_spi_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@st_sensors_spi_configure._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"st_sensors_spi:101:(config)->lock\00", [62 x i8] zeroinitializer }, align 32
@st_sensors_spi_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 104, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register spi regmap (%ld)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"st_sensors_spi_configure\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/iio/common/st_sensors/st_sensors_spi.c\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st_sensors_spi_configure._entry_ptr = internal global ptr @st_sensors_spi_configure._entry, section ".printk_index", align 4
@__kstrtab_st_sensors_spi_configure = external dso_local constant [0 x i8], align 1
@__kstrtabns_st_sensors_spi_configure = external dso_local constant [0 x i8], align 1
@__ksymtab_st_sensors_spi_configure = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st_sensors_spi_configure to i32), ptr @__kstrtab_st_sensors_spi_configure, ptr @__kstrtabns_st_sensors_spi_configure }, section "___ksymtab+st_sensors_spi_configure", align 4
@__UNIQUE_ID_author290 = internal constant [57 x i8] c"st_sensors_spi.author=Denis Ciocca <denis.ciocca@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [68 x i8] c"st_sensors_spi.description=STMicroelectronics ST-sensors spi driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [65 x i8] c"st_sensors_spi.file=drivers/iio/common/st_sensors/st_sensors_spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [30 x i8] c"st_sensors_spi.license=GPL v2\00", section ".modinfo", align 1
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spi-3wire\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [43 x i8] c"st_sensors_spi_regmap_multiread_bit_config\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 26, i32 35 }
@___asan_gen_.10 = private unnamed_addr constant [29 x i8] c"st_sensors_spi_regmap_config\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 21, i32 35 }
@___asan_gen_.13 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 101, i32 18 }
@___asan_gen_.19 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 103, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [50 x i8] c"../drivers/iio/common/st_sensors/st_sensors_spi.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 43, i32 37 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__ksymtab_st_sensors_spi_configure, ptr @st_sensors_spi_configure._entry, ptr @st_sensors_spi_configure._entry_ptr, ptr @st_sensors_spi_regmap_multiread_bit_config, ptr @st_sensors_spi_regmap_config, ptr @st_sensors_spi_configure._key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_sensors_spi_regmap_multiread_bit_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_sensors_spi_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_sensors_spi_configure._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_sensors_spi_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st_sensors_spi_configure(ptr noundef %indio_dev, ptr noundef %spi) #0 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %buffer.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call.i.i = tail call zeroext i1 @device_property_present(ptr noundef %spi, ptr noundef nonnull @.str.6) #4
  br i1 %call.i.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.end.i:                                         ; preds = %entry
  %platform_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i.if.end4_crit_edge, label %land.lhs.true.i

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

land.lhs.true.i:                                  ; preds = %if.end.i
  %spi_3wire.i = getelementptr inbounds %struct.st_sensors_platform_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %spi_3wire.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %spi_3wire.i, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not.i = icmp eq i8 %5, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end4_crit_edge, label %land.lhs.true.i.if.then_crit_edge

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

land.lhs.true.i.if.end4_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then:                                          ; preds = %land.lhs.true.i.if.then_crit_edge, %entry.if.then_crit_edge
  %sensor_settings = getelementptr inbounds %struct.st_sensor_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %sensor_settings to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sensor_settings, align 8
  %sim.i = getelementptr inbounds %struct.st_sensor_settings, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %sim.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sim.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i35 = icmp eq i8 %9, 0
  br i1 %tobool.not.i35, label %if.then.if.end4_crit_edge, label %if.then.i

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then.i:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i) #4
  %10 = getelementptr inbounds [2 x i8], ptr %buffer.i, i32 0, i32 1
  %11 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %9, ptr %buffer.i, align 1
  %value.i = getelementptr inbounds %struct.st_sensor_settings, ptr %7, i32 0, i32 12, i32 1
  %12 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %value.i, align 1
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #4
  %15 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 92)
  %17 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buffer.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #4
  %19 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %20 = call ptr @memset(ptr %19, i32 0, i32 40)
  %21 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %23 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %24 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #4
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.then.i.st_sensors_configure_spi_3_wire.exit_crit_edge

if.then.i.st_sensors_configure_spi_3_wire.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_sensors_configure_spi_3_wire.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %st_sensors_configure_spi_3_wire.exit

st_sensors_configure_spi_3_wire.exit:             ; preds = %if.end.i.i.i.i.i.i.i, %if.then.i.st_sensors_configure_spi_3_wire.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp, label %st_sensors_configure_spi_3_wire.exit.cleanup_crit_edge, label %st_sensors_configure_spi_3_wire.exit.if.end4_crit_edge

st_sensors_configure_spi_3_wire.exit.if.end4_crit_edge: ; preds = %st_sensors_configure_spi_3_wire.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

st_sensors_configure_spi_3_wire.exit.cleanup_crit_edge: ; preds = %st_sensors_configure_spi_3_wire.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %st_sensors_configure_spi_3_wire.exit.if.end4_crit_edge, %if.then.if.end4_crit_edge, %land.lhs.true.i.if.end4_crit_edge, %if.end.i.if.end4_crit_edge
  %sensor_settings5 = getelementptr inbounds %struct.st_sensor_data, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %sensor_settings5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sensor_settings5, align 8
  %multi_read_bit = getelementptr inbounds %struct.st_sensor_settings, ptr %30, i32 0, i32 13
  %31 = ptrtoint ptr %multi_read_bit to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %multi_read_bit, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not = icmp eq i8 %32, 0
  %st_sensors_spi_regmap_config.st_sensors_spi_regmap_multiread_bit_config = select i1 %tobool.not, ptr @st_sensors_spi_regmap_config, ptr @st_sensors_spi_regmap_multiread_bit_config
  %call8 = call ptr @__devm_regmap_init_spi(ptr noundef %spi, ptr noundef nonnull %st_sensors_spi_regmap_config.st_sensors_spi_regmap_multiread_bit_config, ptr noundef nonnull @st_sensors_spi_configure._key, ptr noundef nonnull @.str) #4
  %regmap = getelementptr inbounds %struct.st_sensor_data, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call8, ptr %regmap, align 8
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %call8 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1, i32 noundef %34) #7
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 8
  %37 = ptrtoint ptr %36 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %38 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %indio_dev, ptr %driver_data.i.i, align 4
  %modalias = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 11
  %name = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 15
  %39 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %modalias, ptr %name, align 8
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %40 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq, align 4
  %irq17 = getelementptr inbounds %struct.st_sensor_data, ptr %1, i32 0, i32 12
  %42 = ptrtoint ptr %irq17 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %irq17, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end, %st_sensors_configure_spi_3_wire.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %37, %do.end ], [ 0, %if.end16 ], [ %call.i.i.i, %st_sensors_configure_spi_3_wire.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_spi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !11, !13, !15, !17, !19, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @st_sensors_spi_configure._key, !1, !"_key", i1 false, i1 false}
!1 = !{!"../drivers/iio/common/st_sensors/st_sensors_spi.c", i32 101, i32 18}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/iio/common/st_sensors/st_sensors_spi.c", i32 103, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @st_sensors_spi_configure._entry, !4, !"_entry", i1 false, i1 false}
!10 = !{ptr @st_sensors_spi_configure._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @__ksymtab_st_sensors_spi_configure, !12, !"__ksymtab_st_sensors_spi_configure", i1 false, i1 false}
!12 = !{!"../drivers/iio/common/st_sensors/st_sensors_spi.c", i32 116, i32 1}
!13 = !{ptr @__UNIQUE_ID_author290, !14, !"__UNIQUE_ID_author290", i1 false, i1 false}
!14 = !{!"../drivers/iio/common/st_sensors/st_sensors_spi.c", i32 118, i32 1}
!15 = !{ptr @__UNIQUE_ID_description291, !16, !"__UNIQUE_ID_description291", i1 false, i1 false}
!16 = !{!"../drivers/iio/common/st_sensors/st_sensors_spi.c", i32 119, i32 1}
!17 = !{ptr @__UNIQUE_ID_file292, !18, !"__UNIQUE_ID_file292", i1 false, i1 false}
!18 = !{!"../drivers/iio/common/st_sensors/st_sensors_spi.c", i32 120, i32 1}
!19 = !{ptr @__UNIQUE_ID_license293, !18, !"__UNIQUE_ID_license293", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iio/common/st_sensors/st_sensors_spi.c", i32 43, i32 37}
!22 = !{ptr @st_sensors_spi_regmap_multiread_bit_config, !23, !"st_sensors_spi_regmap_multiread_bit_config", i1 false, i1 false}
!23 = !{!"../drivers/iio/common/st_sensors/st_sensors_spi.c", i32 26, i32 35}
!24 = !{ptr @st_sensors_spi_regmap_config, !25, !"st_sensors_spi_regmap_config", i1 false, i1 false}
!25 = !{!"../drivers/iio/common/st_sensors/st_sensors_spi.c", i32 21, i32 35}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i8 0, i8 2}
