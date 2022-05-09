; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/ad7887.c_pt.bc'
source_filename = "../drivers/iio/adc/ad7887.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.ad7887_chip_info = type { i16, ptr, i32, ptr, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ad7887_state = type { ptr, ptr, ptr, [4 x %struct.spi_transfer], [3 x %struct.spi_message], ptr, [4 x i8], [68 x i8], [16 x i8], [112 x i8] }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }

@__initcall__kmod_ad7887__290_345_ad7887_driver_init6 = internal global ptr @ad7887_driver_init, section ".initcall6.init", align 4
@ad7887_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ad7887_id, ptr @ad7887_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad7887_driver_exit = internal global ptr @ad7887_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [63 x i8] c"ad7887.author=Michael Hennerich <michael.hennerich@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [45 x i8] c"ad7887.description=Analog Devices AD7887 ADC\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [35 x i8] c"ad7887.file=drivers/iio/adc/ad7887\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [22 x i8] c"ad7887.license=GPL v2\00", section ".modinfo", align 1
@ad7887_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ad7887\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad7887\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@ad7887_chip_info_tbl = internal constant { [1 x %struct.ad7887_chip_info], [44 x i8] } { [1 x %struct.ad7887_chip_info] [%struct.ad7887_chip_info { i16 2500, ptr @ad7887_channels, i32 2, ptr @ad7887_dual_channels, i32 3 }], [44 x i8] zeroinitializer }, align 32
@ad7887_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ad7887_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad7887_ring_setup_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr @ad7887_ring_preenable, ptr null, ptr null, ptr @ad7887_ring_postdisable, ptr null }, [44 x i8] zeroinitializer }, align 32
@ad7887_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 1, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [48 x i8] zeroinitializer }, align 32
@ad7887_dual_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 2, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [88 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.3 = private unnamed_addr constant [14 x i8] c"ad7887_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 338, i32 26 }
@___asan_gen_.6 = private unnamed_addr constant [10 x i8] c"ad7887_id\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 332, i32 35 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 340, i32 11 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 250, i32 51 }
@___asan_gen_.15 = private unnamed_addr constant [21 x i8] c"ad7887_chip_info_tbl\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 212, i32 38 }
@___asan_gen_.18 = private unnamed_addr constant [12 x i8] c"ad7887_info\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 225, i32 30 }
@___asan_gen_.21 = private unnamed_addr constant [22 x i8] c"ad7887_ring_setup_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 131, i32 42 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"ad7887_channels\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 201, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant [21 x i8] c"ad7887_dual_channels\00", align 1
@___asan_gen_.28 = private constant [28 x i8] c"../drivers/iio/adc/ad7887.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 206, i32 35 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_ad7887_driver_exit, ptr @__initcall__kmod_ad7887__290_345_ad7887_driver_init6, ptr @ad7887_driver_exit, ptr @ad7887_driver, ptr @ad7887_id, ptr @.str, ptr @.str.1, ptr @ad7887_chip_info_tbl, ptr @ad7887_info, ptr @ad7887_ring_setup_ops, ptr @ad7887_channels, ptr @ad7887_dual_channels], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7887_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7887_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7887_chip_info_tbl to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7887_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7887_ring_setup_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7887_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7887_dual_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7887_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad7887_driver) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad7887_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad7887_driver, i32 0, i32 4)) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7887_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 768) #3
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %call4 = tail call ptr @devm_regulator_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.1) #3
  %reg = getelementptr inbounds %struct.ad7887_state, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %reg, align 8
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end16

if.then7:                                         ; preds = %if.end
  %5 = ptrtoint ptr %call4 to i32
  %cmp10.not = icmp eq ptr %call4, inttoptr (i32 -19 to ptr)
  br i1 %cmp10.not, label %if.end16.thread, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end16.thread:                                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %reg, align 8
  br label %if.end30

if.end16:                                         ; preds = %if.end
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end16.if.end30_crit_edge, label %if.then18

if.end16.if.end30_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30

if.then18:                                        ; preds = %if.end16
  %call20 = tail call i32 @regulator_enable(ptr noundef nonnull %call4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end23:                                         ; preds = %if.then18
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg, align 8
  %call.i = tail call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @ad7887_reg_disable, ptr noundef %8) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end23.if.end30_crit_edge, label %devm_add_action_or_reset.exit

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30

devm_add_action_or_reset.exit:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  %call.i.i = tail call i32 @regulator_disable(ptr noundef %8) #3
  br label %cleanup

if.end30:                                         ; preds = %if.end23.if.end30_crit_edge, %if.end16.if.end30_crit_edge, %if.end16.thread
  %call31 = tail call ptr @spi_get_device_id(ptr noundef %spi) #3
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call31, i32 0, i32 1
  %9 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [1 x %struct.ad7887_chip_info], ptr @ad7887_chip_info_tbl, i32 0, i32 %10
  %chip_info = getelementptr inbounds %struct.ad7887_state, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %chip_info to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx, ptr %chip_info, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %spi, ptr %3, align 128
  %call33 = tail call ptr @spi_get_device_id(ptr noundef %spi) #3
  %name34 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %13 = ptrtoint ptr %name34 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call33, ptr %name34, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %14 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ad7887_info, ptr %info, align 8
  %15 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %call, align 8
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg, align 8
  %tobool36.not = icmp eq ptr %17, null
  %spec.select = select i1 %tobool36.not, i8 35, i8 3
  %tobool40.not = icmp eq ptr %1, null
  br i1 %tobool40.not, label %if.end30.if.end47_crit_edge, label %land.lhs.true

if.end30.if.end47_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end47

land.lhs.true:                                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %1, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool41.not = icmp eq i8 %19, 0
  %20 = or i8 %spec.select, 16
  %spec.select228 = select i1 %tobool41.not, i8 %spec.select, i8 %20
  br label %if.end47

if.end47:                                         ; preds = %land.lhs.true, %if.end30.if.end47_crit_edge
  %mode.1 = phi i8 [ %spec.select, %if.end30.if.end47_crit_edge ], [ %spec.select228, %land.lhs.true ]
  %tx_cmd_buf = getelementptr inbounds %struct.ad7887_state, ptr %3, i32 0, i32 6
  %21 = ptrtoint ptr %tx_cmd_buf to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %mode.1, ptr %tx_cmd_buf, align 8
  %data = getelementptr inbounds %struct.ad7887_state, ptr %3, i32 0, i32 8
  %xfer = getelementptr inbounds %struct.ad7887_state, ptr %3, i32 0, i32 3
  %rx_buf = getelementptr inbounds %struct.ad7887_state, ptr %3, i32 0, i32 3, i32 0, i32 1
  %22 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %data, ptr %rx_buf, align 4
  %23 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %tx_cmd_buf, ptr %xfer, align 4
  %len = getelementptr inbounds %struct.ad7887_state, ptr %3, i32 0, i32 3, i32 0, i32 2
  %24 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %len, align 4
  %msg = getelementptr inbounds %struct.ad7887_state, ptr %3, i32 0, i32 4
  %25 = getelementptr inbounds %struct.ad7887_state, ptr %3, i32 0, i32 4, i32 0, i32 1
  %26 = call ptr @memset(ptr %25, i32 0, i32 40)
  %27 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.ad7887_state, ptr %3, i32 0, i32 4, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.ad7887_state, ptr %3, i32 0, i32 4, i32 0, i32 10
  %29 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.ad7887_state, ptr %3, i32 0, i32 4, i32 0, i32 10, i32 1
  %30 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.ad7887_state, ptr %3, i32 0, i32 3, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef %msg, ptr noundef %msg) #3
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end47.spi_message_add_tail.exit_crit_edge

if.end47.spi_message_add_tail.exit_crit_edge:     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #5
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #5
  %31 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %32 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ad7887_state, ptr %3, i32 0, i32 3, i32 0, i32 18, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %34 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end47.spi_message_add_tail.exit_crit_edge
  br i1 %tobool40.not, label %spi_message_add_tail.exit.if.else_crit_edge, label %land.lhs.true66

spi_message_add_tail.exit.if.else_crit_edge:      ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

land.lhs.true66:                                  ; preds = %spi_message_add_tail.exit
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %1, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool68.not = icmp eq i8 %36, 0
  br i1 %tobool68.not, label %land.lhs.true66.if.else_crit_edge, label %if.then70

land.lhs.true66.if.else_crit_edge:                ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

if.then70:                                        ; preds = %land.lhs.true66
  %37 = or i8 %mode.1, 8
  %arrayidx75 = getelementptr %struct.ad7887_state, ptr %3, i32 0, i32 6, i32 2
  %38 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %arrayidx75, align 2
  %arrayidx79 = getelementptr %struct.ad7887_state, ptr %3, i32 0, i32 3, i32 1
  %rx_buf80 = getelementptr %struct.ad7887_state, ptr %3, i32 0, i32 3, i32 1, i32 1
  %39 = ptrtoint ptr %rx_buf80 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %data, ptr %rx_buf80, align 4
  %40 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %arrayidx75, ptr %arrayidx79, align 4
  %len88 = getelementptr %struct.ad7887_state, ptr %3, i32 0, i32 3, i32 1, i32 2
  %41 = ptrtoint ptr %len88 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %len88, align 4
  %arrayidx90 = getelementptr %struct.ad7887_state, ptr %3, i32 0, i32 8, i32 2
  %arrayidx92 = getelementptr %struct.ad7887_state, ptr %3, i32 0, i32 3, i32 2
  %rx_buf93 = getelementptr %struct.ad7887_state, ptr %3, i32 0, i32 3, i32 2, i32 1
  %42 = ptrtoint ptr %rx_buf93 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %arrayidx90, ptr %rx_buf93, align 4
  %43 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %tx_cmd_buf, ptr %arrayidx92, align 4
  %len101 = getelementptr %struct.ad7887_state, ptr %3, i32 0, i32 3, i32 2, i32 2
  %44 = ptrtoint ptr %len101 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %len101, align 4
  %arrayidx103 = getelementptr %struct.ad7887_state, ptr %3, i32 0, i32 4, i32 1
  %45 = getelementptr %struct.ad7887_state, ptr %3, i32 0, i32 4, i32 1, i32 1
  %46 = call ptr @memset(ptr %45, i32 0, i32 40)
  %47 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %arrayidx103, ptr %arrayidx103, align 4
  %prev.i.i.i229 = getelementptr %struct.ad7887_state, ptr %3, i32 0, i32 4, i32 1, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i.i229 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %arrayidx103, ptr %prev.i.i.i229, align 4
  %resources.i.i230 = getelementptr %struct.ad7887_state, ptr %3, i32 0, i32 4, i32 1, i32 10
  %49 = ptrtoint ptr %resources.i.i230 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %resources.i.i230, ptr %resources.i.i230, align 4
  %prev.i2.i.i231 = getelementptr %struct.ad7887_state, ptr %3, i32 0, i32 4, i32 1, i32 10, i32 1
  %50 = ptrtoint ptr %prev.i2.i.i231 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %resources.i.i230, ptr %prev.i2.i.i231, align 4
  %transfer_list.i232 = getelementptr %struct.ad7887_state, ptr %3, i32 0, i32 3, i32 1, i32 18
  %call.i.i.i234 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i232, ptr noundef %arrayidx103, ptr noundef %arrayidx103) #3
  br i1 %call.i.i.i234, label %if.end.i.i.i236, label %if.then70.spi_message_add_tail.exit237_crit_edge

if.then70.spi_message_add_tail.exit237_crit_edge: ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #5
  br label %spi_message_add_tail.exit237

if.end.i.i.i236:                                  ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #5
  %51 = ptrtoint ptr %prev.i.i.i229 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %transfer_list.i232, ptr %prev.i.i.i229, align 4
  %52 = ptrtoint ptr %transfer_list.i232 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %arrayidx103, ptr %transfer_list.i232, align 4
  %prev3.i.i.i235 = getelementptr %struct.ad7887_state, ptr %3, i32 0, i32 3, i32 1, i32 18, i32 1
  %53 = ptrtoint ptr %prev3.i.i.i235 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %arrayidx103, ptr %prev3.i.i.i235, align 4
  %54 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %transfer_list.i232, ptr %arrayidx103, align 4
  br label %spi_message_add_tail.exit237

spi_message_add_tail.exit237:                     ; preds = %if.end.i.i.i236, %if.then70.spi_message_add_tail.exit237_crit_edge
  %transfer_list.i238 = getelementptr %struct.ad7887_state, ptr %3, i32 0, i32 3, i32 2, i32 18
  %55 = ptrtoint ptr %prev.i.i.i229 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev.i.i.i229, align 4
  %call.i.i.i240 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i238, ptr noundef %56, ptr noundef %arrayidx103) #3
  br i1 %call.i.i.i240, label %if.end.i.i.i242, label %spi_message_add_tail.exit237.spi_message_add_tail.exit243_crit_edge

spi_message_add_tail.exit237.spi_message_add_tail.exit243_crit_edge: ; preds = %spi_message_add_tail.exit237
  call void @__sanitizer_cov_trace_pc() #5
  br label %spi_message_add_tail.exit243

if.end.i.i.i242:                                  ; preds = %spi_message_add_tail.exit237
  call void @__sanitizer_cov_trace_pc() #5
  %57 = ptrtoint ptr %prev.i.i.i229 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %transfer_list.i238, ptr %prev.i.i.i229, align 4
  %58 = ptrtoint ptr %transfer_list.i238 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %arrayidx103, ptr %transfer_list.i238, align 4
  %prev3.i.i.i241 = getelementptr %struct.ad7887_state, ptr %3, i32 0, i32 3, i32 2, i32 18, i32 1
  %59 = ptrtoint ptr %prev3.i.i.i241 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev3.i.i.i241, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %transfer_list.i238, ptr %56, align 4
  br label %spi_message_add_tail.exit243

spi_message_add_tail.exit243:                     ; preds = %if.end.i.i.i242, %spi_message_add_tail.exit237.spi_message_add_tail.exit243_crit_edge
  %arrayidx115 = getelementptr %struct.ad7887_state, ptr %3, i32 0, i32 3, i32 3
  %rx_buf116 = getelementptr %struct.ad7887_state, ptr %3, i32 0, i32 3, i32 3, i32 1
  %61 = ptrtoint ptr %rx_buf116 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %arrayidx90, ptr %rx_buf116, align 4
  %62 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %arrayidx75, ptr %arrayidx115, align 4
  %len124 = getelementptr %struct.ad7887_state, ptr %3, i32 0, i32 3, i32 3, i32 2
  %63 = ptrtoint ptr %len124 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 2, ptr %len124, align 4
  %arrayidx126 = getelementptr %struct.ad7887_state, ptr %3, i32 0, i32 4, i32 2
  %64 = getelementptr %struct.ad7887_state, ptr %3, i32 0, i32 4, i32 2, i32 1
  %65 = call ptr @memset(ptr %64, i32 0, i32 40)
  %66 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %arrayidx126, ptr %arrayidx126, align 4
  %prev.i.i.i244 = getelementptr %struct.ad7887_state, ptr %3, i32 0, i32 4, i32 2, i32 0, i32 1
  %67 = ptrtoint ptr %prev.i.i.i244 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %arrayidx126, ptr %prev.i.i.i244, align 4
  %resources.i.i245 = getelementptr %struct.ad7887_state, ptr %3, i32 0, i32 4, i32 2, i32 10
  %68 = ptrtoint ptr %resources.i.i245 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %resources.i.i245, ptr %resources.i.i245, align 4
  %prev.i2.i.i246 = getelementptr %struct.ad7887_state, ptr %3, i32 0, i32 4, i32 2, i32 10, i32 1
  %69 = ptrtoint ptr %prev.i2.i.i246 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %resources.i.i245, ptr %prev.i2.i.i246, align 4
  %transfer_list.i247 = getelementptr %struct.ad7887_state, ptr %3, i32 0, i32 3, i32 3, i32 18
  %call.i.i.i249 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i247, ptr noundef %arrayidx126, ptr noundef %arrayidx126) #3
  br i1 %call.i.i.i249, label %if.end.i.i.i251, label %spi_message_add_tail.exit243.spi_message_add_tail.exit252_crit_edge

spi_message_add_tail.exit243.spi_message_add_tail.exit252_crit_edge: ; preds = %spi_message_add_tail.exit243
  call void @__sanitizer_cov_trace_pc() #5
  br label %spi_message_add_tail.exit252

if.end.i.i.i251:                                  ; preds = %spi_message_add_tail.exit243
  call void @__sanitizer_cov_trace_pc() #5
  %70 = ptrtoint ptr %prev.i.i.i244 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %transfer_list.i247, ptr %prev.i.i.i244, align 4
  %71 = ptrtoint ptr %transfer_list.i247 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %arrayidx126, ptr %transfer_list.i247, align 4
  %prev3.i.i.i250 = getelementptr %struct.ad7887_state, ptr %3, i32 0, i32 3, i32 3, i32 18, i32 1
  %72 = ptrtoint ptr %prev3.i.i.i250 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %arrayidx126, ptr %prev3.i.i.i250, align 4
  %73 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %transfer_list.i247, ptr %arrayidx126, align 4
  br label %spi_message_add_tail.exit252

spi_message_add_tail.exit252:                     ; preds = %if.end.i.i.i251, %spi_message_add_tail.exit243.spi_message_add_tail.exit252_crit_edge
  %74 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %chip_info, align 4
  %dual_channels = getelementptr inbounds %struct.ad7887_chip_info, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %dual_channels to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dual_channels, align 4
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %78 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %channels, align 8
  %79 = load ptr, ptr %chip_info, align 4
  %num_dual_channels = getelementptr inbounds %struct.ad7887_chip_info, ptr %79, i32 0, i32 4
  br label %if.end139

if.else:                                          ; preds = %land.lhs.true66.if.else_crit_edge, %spi_message_add_tail.exit.if.else_crit_edge
  %80 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %chip_info, align 4
  %channels134 = getelementptr inbounds %struct.ad7887_chip_info, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %channels134 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %channels134, align 4
  %channels135 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %84 = ptrtoint ptr %channels135 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %83, ptr %channels135, align 8
  %85 = load ptr, ptr %chip_info, align 4
  %num_channels137 = getelementptr inbounds %struct.ad7887_chip_info, ptr %85, i32 0, i32 2
  br label %if.end139

if.end139:                                        ; preds = %if.else, %spi_message_add_tail.exit252
  %num_channels137.sink = phi ptr [ %num_channels137, %if.else ], [ %num_dual_channels, %spi_message_add_tail.exit252 ]
  %86 = ptrtoint ptr %num_channels137.sink to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %num_channels137.sink, align 4
  %num_channels138 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %88 = ptrtoint ptr %num_channels138 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %num_channels138, align 4
  %call141 = tail call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @ad7887_trigger_handler, i32 noundef 0, ptr noundef nonnull @ad7887_ring_setup_ops, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.end144, label %if.end139.cleanup_crit_edge

if.end139.cleanup_crit_edge:                      ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end144:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #5
  %call146 = tail call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef null) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end144, %if.end139.cleanup_crit_edge, %devm_add_action_or_reset.exit, %if.then18.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call146, %if.end144 ], [ -12, %entry.cleanup_crit_edge ], [ %call20, %if.then18.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ %call141, %if.end139.cleanup_crit_edge ], [ %5, %if.then7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad7887_reg_disable(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_disable(ptr noundef %data) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7887_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %ring_msg = getelementptr inbounds %struct.ad7887_state, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %ring_msg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring_msg, align 4
  %call2 = tail call i32 @spi_sync(ptr noundef %5, ptr noundef %7) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %done

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.ad7887_state, ptr %3, i32 0, i32 8
  %call3 = tail call i64 @iio_get_time_ns(ptr noundef %1) #3
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %scan_timestamp.i, align 8, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %11, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %data, i32 %sub.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %call3, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %data) #3
  br label %done

done:                                             ; preds = %iio_push_to_buffers_with_timestamp.exit, %entry.done_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %14) #3
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7887_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %m to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %m, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb10
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %3 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %address, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 128
  %arrayidx.i = getelementptr %struct.ad7887_state, ptr %1, i32 0, i32 4, i32 %4
  %call.i = tail call i32 @spi_sync(ptr noundef %6, ptr noundef %arrayidx.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %ad7887_scan_direct.exit.thread, label %ad7887_scan_direct.exit

ad7887_scan_direct.exit.thread:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %mul.i = shl i32 %4, 1
  %arrayidx1.i = getelementptr %struct.ad7887_state, ptr %1, i32 0, i32 8, i32 %mul.i
  %7 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx1.i, align 1
  %conv.i = zext i8 %8 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %add.i = or i32 %mul.i, 1
  %arrayidx4.i = getelementptr %struct.ad7887_state, ptr %1, i32 0, i32 8, i32 %add.i
  %9 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %10 to i32
  %or.i = or i32 %shl.i, %conv5.i
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #3
  br label %if.end4

ad7887_scan_direct.exit:                          ; preds = %if.end
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %ad7887_scan_direct.exit.cleanup_crit_edge, label %ad7887_scan_direct.exit.if.end4_crit_edge

ad7887_scan_direct.exit.if.end4_crit_edge:        ; preds = %ad7887_scan_direct.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

ad7887_scan_direct.exit.cleanup_crit_edge:        ; preds = %ad7887_scan_direct.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %ad7887_scan_direct.exit.if.end4_crit_edge, %ad7887_scan_direct.exit.thread
  %retval.0.i45 = phi i32 [ %or.i, %ad7887_scan_direct.exit.thread ], [ %call.i, %ad7887_scan_direct.exit.if.end4_crit_edge ]
  %shift = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %11 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %shift, align 1
  %conv = zext i8 %12 to i32
  %shr = ashr i32 %retval.0.i45, %conv
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shr, ptr %val, align 4
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %realbits, align 1
  %conv6 = zext i8 %15 to i32
  %sub7 = sub nsw i32 32, %conv6
  %shr8 = lshr i32 -1, %sub7
  %and9 = and i32 %shr8, %shr
  store i32 %and9, ptr %val, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %reg = getelementptr inbounds %struct.ad7887_state, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg, align 8
  %tobool11.not = icmp eq ptr %17, null
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %sw.bb10
  %call14 = tail call i32 @regulator_get_voltage(ptr noundef nonnull %17) #3
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call14, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then12.cleanup_crit_edge, label %if.end18

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end18:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #5
  %div46 = udiv i32 %call14, 1000
  br label %if.end20

if.else:                                          ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #5
  %chip_info = getelementptr inbounds %struct.ad7887_state, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip_info, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %20, align 4
  %conv19 = zext i16 %22 to i32
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.end18
  %storemerge = phi i32 [ %conv19, %if.else ], [ %div46, %if.end18 ]
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %storemerge, ptr %val, align 4
  %realbits22 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %realbits22 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %realbits22, align 1
  %conv23 = zext i8 %25 to i32
  %26 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv23, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then12.cleanup_crit_edge, %if.end4, %ad7887_scan_direct.exit.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %if.end20 ], [ 1, %if.end4 ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %call.i, %ad7887_scan_direct.exit.cleanup_crit_edge ], [ %call14, %if.then12.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7887_ring_preenable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 8
  %2 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %active_scan_mask, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %msg = getelementptr inbounds %struct.ad7887_state, ptr %1, i32 0, i32 4
  %ring_msg = getelementptr inbounds %struct.ad7887_state, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %ring_msg to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %msg, ptr %ring_msg, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx3 = getelementptr %struct.ad7887_state, ptr %1, i32 0, i32 4, i32 2
  %ring_msg4 = getelementptr inbounds %struct.ad7887_state, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %ring_msg4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx3, ptr %ring_msg4, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 128
  %call6 = tail call i32 @spi_sync(ptr noundef %10, ptr noundef %arrayidx3) #3
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx9 = getelementptr %struct.ad7887_state, ptr %1, i32 0, i32 4, i32 1
  %ring_msg10 = getelementptr inbounds %struct.ad7887_state, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %ring_msg10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx9, ptr %ring_msg10, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7887_ring_postdisable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %msg = getelementptr inbounds %struct.ad7887_state, ptr %1, i32 0, i32 4
  %call1 = tail call i32 @spi_sync(ptr noundef %3, ptr noundef %msg) #3
  ret i32 %call1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__initcall__kmod_ad7887__290_345_ad7887_driver_init6, !1, !"__initcall__kmod_ad7887__290_345_ad7887_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/ad7887.c", i32 345, i32 1}
!2 = !{ptr @__exitcall_ad7887_driver_exit, !1, !"__exitcall_ad7887_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/ad7887.c", i32 347, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/ad7887.c", i32 348, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/ad7887.c", i32 349, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/ad7887.c", i32 340, i32 11}
!12 = !{ptr @ad7887_driver, !13, !"ad7887_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/ad7887.c", i32 338, i32 26}
!14 = !{ptr @ad7887_id, !15, !"ad7887_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/ad7887.c", i32 332, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/ad7887.c", i32 250, i32 51}
!18 = !{ptr @ad7887_chip_info_tbl, !19, !"ad7887_chip_info_tbl", i1 false, i1 false}
!19 = !{!"../drivers/iio/adc/ad7887.c", i32 212, i32 38}
!20 = !{ptr @ad7887_channels, !21, !"ad7887_channels", i1 false, i1 false}
!21 = !{!"../drivers/iio/adc/ad7887.c", i32 201, i32 35}
!22 = !{ptr @ad7887_dual_channels, !23, !"ad7887_dual_channels", i1 false, i1 false}
!23 = !{!"../drivers/iio/adc/ad7887.c", i32 206, i32 35}
!24 = !{ptr @ad7887_info, !25, !"ad7887_info", i1 false, i1 false}
!25 = !{!"../drivers/iio/adc/ad7887.c", i32 225, i32 30}
!26 = !{ptr @ad7887_ring_setup_ops, !27, !"ad7887_ring_setup_ops", i1 false, i1 false}
!27 = !{!"../drivers/iio/adc/ad7887.c", i32 131, i32 42}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i8 0, i8 2}
