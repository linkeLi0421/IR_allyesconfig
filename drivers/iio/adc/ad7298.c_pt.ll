; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/ad7298.c_pt.bc'
source_filename = "../drivers/iio/adc/ad7298.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ad7298_state = type { ptr, ptr, i32, [10 x %struct.spi_transfer], [3 x %struct.spi_transfer], %struct.spi_message, %struct.spi_message, [36 x i8], [12 x i16], [2 x i16], [100 x i8] }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }

@__initcall__kmod_ad7298__290_370_ad7298_driver_init6 = internal global ptr @ad7298_driver_init, section ".initcall6.init", align 4
@ad7298_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ad7298_id, ptr @ad7298_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr @ad7298_acpi_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad7298_driver_exit = internal global ptr @ad7298_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [63 x i8] c"ad7298.author=Michael Hennerich <michael.hennerich@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [45 x i8] c"ad7298.description=Analog Devices AD7298 ADC\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [35 x i8] c"ad7298.file=drivers/iio/adc/ad7298\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [22 x i8] c"ad7298.license=GPL v2\00", section ".modinfo", align 1
@ad7298_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ad7298\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad7298\00", [25 x i8] zeroinitializer }, align 32
@ad7298_acpi_ids = internal constant { [2 x %struct.acpi_device_id], [48 x i8] } { [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"INT3494\00\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@ad7298_channels = internal constant { [10 x %struct.iio_chan_spec], [208 x i8] } { [10 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 9, i32 -1, %struct.anon.84 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 0 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 4, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 5, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 6, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 7, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 8, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [208 x i8] zeroinitializer }, align 32
@ad7298_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ad7298_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ad7298_update_scan_mode, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@___asan_gen_.3 = private unnamed_addr constant [14 x i8] c"ad7298_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 362, i32 26 }
@___asan_gen_.6 = private unnamed_addr constant [10 x i8] c"ad7298_id\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 356, i32 35 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 364, i32 11 }
@___asan_gen_.12 = private unnamed_addr constant [16 x i8] c"ad7298_acpi_ids\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 350, i32 36 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 296, i32 51 }
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"ad7298_channels\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 73, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant [12 x i8] c"ad7298_info\00", align 1
@___asan_gen_.22 = private constant [28 x i8] c"../drivers/iio/adc/ad7298.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 272, i32 30 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_ad7298_driver_exit, ptr @__initcall__kmod_ad7298__290_370_ad7298_driver_init6, ptr @ad7298_driver_exit, ptr @ad7298_driver, ptr @ad7298_id, ptr @.str, ptr @ad7298_acpi_ids, ptr @.str.1, ptr @ad7298_channels, ptr @ad7298_info], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7298_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7298_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7298_acpi_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7298_channels to i32), i32 880, i32 1088, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7298_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7298_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad7298_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad7298_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad7298_driver, i32 0, i32 4)) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7298_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 1536) #4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call3 = tail call ptr @devm_regulator_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.1) #4
  %reg = getelementptr inbounds %struct.ad7298_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %reg, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else, label %if.end13

if.else:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call3 to i32
  %cmp9.not = icmp eq ptr %call3, inttoptr (i32 -19 to ptr)
  br i1 %cmp9.not, label %if.end13.thread, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13.thread:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %reg, align 4
  br label %if.end27

if.end13:                                         ; preds = %if.end
  %ext_ref = getelementptr inbounds %struct.ad7298_state, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %ext_ref to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %ext_ref, align 8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end13.if.end27_crit_edge, label %if.then15

if.end13.if.end27_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then15:                                        ; preds = %if.end13
  %call17 = tail call i32 @regulator_enable(ptr noundef nonnull %call3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end20:                                         ; preds = %if.then15
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 4
  %call.i = tail call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @ad7298_reg_disable, ptr noundef %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end20.if.end27_crit_edge, label %devm_add_action_or_reset.exit

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

devm_add_action_or_reset.exit:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i = tail call i32 @regulator_disable(ptr noundef %7) #4
  br label %cleanup

if.end27:                                         ; preds = %if.end20.if.end27_crit_edge, %if.end13.if.end27_crit_edge, %if.end13.thread
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %spi, ptr %1, align 128
  %call29 = tail call ptr @spi_get_device_id(ptr noundef %spi) #4
  %name30 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %9 = ptrtoint ptr %name30 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call29, ptr %name30, align 8
  %10 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %call, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %11 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ad7298_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %12 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 10, ptr %num_channels, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %13 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ad7298_info, ptr %info, align 8
  %tx_buf = getelementptr inbounds %struct.ad7298_state, ptr %1, i32 0, i32 9
  %scan_single_xfer = getelementptr inbounds %struct.ad7298_state, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %scan_single_xfer to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %tx_buf, ptr %scan_single_xfer, align 4
  %len = getelementptr inbounds %struct.ad7298_state, ptr %1, i32 0, i32 4, i32 0, i32 2
  %15 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %len, align 4
  %cs_change = getelementptr inbounds %struct.ad7298_state, ptr %1, i32 0, i32 4, i32 0, i32 7
  %16 = ptrtoint ptr %cs_change to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %cs_change, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %cs_change, align 4
  %arrayidx38 = getelementptr %struct.ad7298_state, ptr %1, i32 0, i32 9, i32 1
  %arrayidx40 = getelementptr %struct.ad7298_state, ptr %1, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx38, ptr %arrayidx40, align 4
  %len44 = getelementptr %struct.ad7298_state, ptr %1, i32 0, i32 4, i32 1, i32 2
  %18 = ptrtoint ptr %len44 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %len44, align 4
  %cs_change47 = getelementptr %struct.ad7298_state, ptr %1, i32 0, i32 4, i32 1, i32 7
  %19 = ptrtoint ptr %cs_change47 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load48 = load i8, ptr %cs_change47, align 4
  %bf.set50 = or i8 %bf.load48, 64
  store i8 %bf.set50, ptr %cs_change47, align 4
  %rx_buf = getelementptr inbounds %struct.ad7298_state, ptr %1, i32 0, i32 8
  %rx_buf54 = getelementptr %struct.ad7298_state, ptr %1, i32 0, i32 4, i32 2, i32 1
  %20 = ptrtoint ptr %rx_buf54 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %rx_buf, ptr %rx_buf54, align 4
  %len57 = getelementptr %struct.ad7298_state, ptr %1, i32 0, i32 4, i32 2, i32 2
  %21 = ptrtoint ptr %len57 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %len57, align 4
  %scan_single_msg = getelementptr inbounds %struct.ad7298_state, ptr %1, i32 0, i32 6
  %22 = getelementptr inbounds %struct.ad7298_state, ptr %1, i32 0, i32 6, i32 1
  %23 = call ptr @memset(ptr %22, i32 0, i32 40)
  %24 = ptrtoint ptr %scan_single_msg to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %scan_single_msg, ptr %scan_single_msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.ad7298_state, ptr %1, i32 0, i32 6, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %scan_single_msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.ad7298_state, ptr %1, i32 0, i32 6, i32 10
  %26 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.ad7298_state, ptr %1, i32 0, i32 6, i32 10, i32 1
  %27 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.ad7298_state, ptr %1, i32 0, i32 4, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef %scan_single_msg, ptr noundef %scan_single_msg) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end27.spi_message_add_tail.exit_crit_edge

if.end27.spi_message_add_tail.exit_crit_edge:     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %29 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %scan_single_msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ad7298_state, ptr %1, i32 0, i32 4, i32 0, i32 18, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %scan_single_msg, ptr %prev3.i.i.i, align 4
  %31 = ptrtoint ptr %scan_single_msg to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %transfer_list.i, ptr %scan_single_msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end27.spi_message_add_tail.exit_crit_edge
  %transfer_list.i123 = getelementptr %struct.ad7298_state, ptr %1, i32 0, i32 4, i32 1, i32 18
  %32 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i125 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i123, ptr noundef %33, ptr noundef %scan_single_msg) #4
  br i1 %call.i.i.i125, label %if.end.i.i.i127, label %spi_message_add_tail.exit.spi_message_add_tail.exit128_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit128_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit128

if.end.i.i.i127:                                  ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %transfer_list.i123, ptr %prev.i.i.i, align 4
  %35 = ptrtoint ptr %transfer_list.i123 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %scan_single_msg, ptr %transfer_list.i123, align 4
  %prev3.i.i.i126 = getelementptr %struct.ad7298_state, ptr %1, i32 0, i32 4, i32 1, i32 18, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i126 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i.i126, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %transfer_list.i123, ptr %33, align 4
  br label %spi_message_add_tail.exit128

spi_message_add_tail.exit128:                     ; preds = %if.end.i.i.i127, %spi_message_add_tail.exit.spi_message_add_tail.exit128_crit_edge
  %transfer_list.i129 = getelementptr %struct.ad7298_state, ptr %1, i32 0, i32 4, i32 2, i32 18
  %38 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i131 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i129, ptr noundef %39, ptr noundef %scan_single_msg) #4
  br i1 %call.i.i.i131, label %if.end.i.i.i133, label %spi_message_add_tail.exit128.spi_message_add_tail.exit134_crit_edge

spi_message_add_tail.exit128.spi_message_add_tail.exit134_crit_edge: ; preds = %spi_message_add_tail.exit128
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit134

if.end.i.i.i133:                                  ; preds = %spi_message_add_tail.exit128
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %transfer_list.i129, ptr %prev.i.i.i, align 4
  %41 = ptrtoint ptr %transfer_list.i129 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %scan_single_msg, ptr %transfer_list.i129, align 4
  %prev3.i.i.i132 = getelementptr %struct.ad7298_state, ptr %1, i32 0, i32 4, i32 2, i32 18, i32 1
  %42 = ptrtoint ptr %prev3.i.i.i132 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev3.i.i.i132, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %transfer_list.i129, ptr %39, align 4
  br label %spi_message_add_tail.exit134

spi_message_add_tail.exit134:                     ; preds = %if.end.i.i.i133, %spi_message_add_tail.exit128.spi_message_add_tail.exit134_crit_edge
  %call68 = tail call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @ad7298_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %spi_message_add_tail.exit134.cleanup_crit_edge

spi_message_add_tail.exit134.cleanup_crit_edge:   ; preds = %spi_message_add_tail.exit134
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end71:                                         ; preds = %spi_message_add_tail.exit134
  call void @__sanitizer_cov_trace_pc() #6
  %call73 = tail call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %spi_message_add_tail.exit134.cleanup_crit_edge, %devm_add_action_or_reset.exit, %if.then15.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call73, %if.end71 ], [ -12, %entry.cleanup_crit_edge ], [ %3, %if.else.cleanup_crit_edge ], [ %call17, %if.then15.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ %call68, %spi_message_add_tail.exit134.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad7298_reg_disable(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_disable(ptr noundef %data) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7298_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %ring_msg = getelementptr inbounds %struct.ad7298_state, ptr %3, i32 0, i32 5
  %call2 = tail call i32 @spi_sync(ptr noundef %5, ptr noundef %ring_msg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end:                                           ; preds = %entry
  %rx_buf = getelementptr inbounds %struct.ad7298_state, ptr %3, i32 0, i32 8
  %call3 = tail call i64 @iio_get_time_ns(ptr noundef %1) #4
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %scan_timestamp.i, align 8, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %9, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %rx_buf, i32 %sub.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %call3, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %rx_buf) #4
  br label %done

done:                                             ; preds = %iio_push_to_buffers_with_timestamp.exit, %entry.done_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %12) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7298_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %m) #2 align 64 {
entry:
  %msg.i.i34.i = alloca %struct.spi_message, align 4
  %t.i35.i = alloca %struct.spi_transfer, align 4
  %msg.i.i22.i = alloca %struct.spi_message, align 4
  %t.i23.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %buf.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %m to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %m, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb16
    i32 3, label %sw.bb24
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %3 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %4)
  %cmp = icmp eq i32 %4, 9
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #4
  %ext_ref.i = getelementptr inbounds %struct.ad7298_state, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %ext_ref.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ext_ref.i, align 8
  %7 = trunc i32 %6 to i16
  %conv.i = or i16 %7, -32734
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %buf.i, align 2
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #4
  %11 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 0, i32 92)
  %13 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #4
  %15 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %16 = call ptr @memset(ptr %15, i32 0, i32 40)
  %17 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %19 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #4
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.then2.spi_write.exit.i_crit_edge

if.then2.spi_write.exit.i_crit_edge:              ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_write.exit.i

if.end.i.i.i.i.i.i.i:                             ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_write.exit.i

spi_write.exit.i:                                 ; preds = %if.end.i.i.i.i.i.i.i, %if.then2.spi_write.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %10, ptr noundef nonnull %msg.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %spi_write.exit.i.ad7298_scan_temp.exit_crit_edge

spi_write.exit.i.ad7298_scan_temp.exit_crit_edge: ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ad7298_scan_temp.exit

if.end.i:                                         ; preds = %spi_write.exit.i
  %25 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %buf.i, align 2
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i23.i) #4
  %28 = getelementptr inbounds i8, ptr %t.i23.i, i32 4
  %29 = call ptr @memset(ptr %28, i32 0, i32 92)
  %30 = ptrtoint ptr %t.i23.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %buf.i, ptr %t.i23.i, align 4
  %len1.i24.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i23.i, i32 0, i32 2
  %31 = ptrtoint ptr %len1.i24.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %len1.i24.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i22.i) #4
  %32 = getelementptr inbounds i8, ptr %msg.i.i22.i, i32 8
  %33 = call ptr @memset(ptr %32, i32 0, i32 40)
  %34 = ptrtoint ptr %msg.i.i22.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %msg.i.i22.i, ptr %msg.i.i22.i, align 4
  %prev.i.i.i.i.i.i25.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i22.i, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i.i.i.i.i25.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %msg.i.i22.i, ptr %prev.i.i.i.i.i.i25.i, align 4
  %resources.i.i.i.i.i26.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i22.i, i32 0, i32 10
  %36 = ptrtoint ptr %resources.i.i.i.i.i26.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %resources.i.i.i.i.i26.i, ptr %resources.i.i.i.i.i26.i, align 4
  %prev.i2.i.i.i.i.i27.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i22.i, i32 0, i32 10, i32 1
  %37 = ptrtoint ptr %prev.i2.i.i.i.i.i27.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %resources.i.i.i.i.i26.i, ptr %prev.i2.i.i.i.i.i27.i, align 4
  %transfer_list.i.i.i.i28.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i23.i, i32 0, i32 18
  %call.i.i.i.i.i.i29.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i28.i, ptr noundef nonnull %msg.i.i22.i, ptr noundef nonnull %msg.i.i22.i) #4
  br i1 %call.i.i.i.i.i.i29.i, label %if.end.i.i.i.i.i.i31.i, label %if.end.i.spi_write.exit33.i_crit_edge

if.end.i.spi_write.exit33.i_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_write.exit33.i

if.end.i.i.i.i.i.i31.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %prev.i.i.i.i.i.i25.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %transfer_list.i.i.i.i28.i, ptr %prev.i.i.i.i.i.i25.i, align 4
  %39 = ptrtoint ptr %transfer_list.i.i.i.i28.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %msg.i.i22.i, ptr %transfer_list.i.i.i.i28.i, align 4
  %prev3.i.i.i.i.i.i30.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i23.i, i32 0, i32 18, i32 1
  %40 = ptrtoint ptr %prev3.i.i.i.i.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %msg.i.i22.i, ptr %prev3.i.i.i.i.i.i30.i, align 4
  %41 = ptrtoint ptr %msg.i.i22.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %transfer_list.i.i.i.i28.i, ptr %msg.i.i22.i, align 4
  br label %spi_write.exit33.i

spi_write.exit33.i:                               ; preds = %if.end.i.i.i.i.i.i31.i, %if.end.i.spi_write.exit33.i_crit_edge
  %call.i.i32.i = call i32 @spi_sync(ptr noundef %27, ptr noundef nonnull %msg.i.i22.i) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i22.i) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i23.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i32.i)
  %tobool3.not.i = icmp eq i32 %call.i.i32.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %spi_write.exit33.i.ad7298_scan_temp.exit_crit_edge

spi_write.exit33.i.ad7298_scan_temp.exit_crit_edge: ; preds = %spi_write.exit33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ad7298_scan_temp.exit

if.end5.i:                                        ; preds = %spi_write.exit33.i
  call void @usleep_range_state(i32 noundef 101, i32 noundef 1000, i32 noundef 2) #4
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i35.i) #4
  %44 = call ptr @memset(ptr %t.i35.i, i32 0, i32 96)
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i35.i, i32 0, i32 1
  %45 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %buf.i, ptr %rx_buf.i.i, align 4
  %len1.i36.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i35.i, i32 0, i32 2
  %46 = ptrtoint ptr %len1.i36.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %len1.i36.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i34.i) #4
  %47 = getelementptr inbounds i8, ptr %msg.i.i34.i, i32 8
  %48 = call ptr @memset(ptr %47, i32 0, i32 40)
  %49 = ptrtoint ptr %msg.i.i34.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %msg.i.i34.i, ptr %msg.i.i34.i, align 4
  %prev.i.i.i.i.i.i37.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i34.i, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i.i.i.i.i37.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %msg.i.i34.i, ptr %prev.i.i.i.i.i.i37.i, align 4
  %resources.i.i.i.i.i38.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i34.i, i32 0, i32 10
  %51 = ptrtoint ptr %resources.i.i.i.i.i38.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %resources.i.i.i.i.i38.i, ptr %resources.i.i.i.i.i38.i, align 4
  %prev.i2.i.i.i.i.i39.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i34.i, i32 0, i32 10, i32 1
  %52 = ptrtoint ptr %prev.i2.i.i.i.i.i39.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %resources.i.i.i.i.i38.i, ptr %prev.i2.i.i.i.i.i39.i, align 4
  %transfer_list.i.i.i.i40.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i35.i, i32 0, i32 18
  %call.i.i.i.i.i.i41.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i40.i, ptr noundef nonnull %msg.i.i34.i, ptr noundef nonnull %msg.i.i34.i) #4
  br i1 %call.i.i.i.i.i.i41.i, label %if.end.i.i.i.i.i.i43.i, label %if.end5.i.spi_read.exit.i_crit_edge

if.end5.i.spi_read.exit.i_crit_edge:              ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_read.exit.i

if.end.i.i.i.i.i.i43.i:                           ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  %53 = ptrtoint ptr %prev.i.i.i.i.i.i37.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %transfer_list.i.i.i.i40.i, ptr %prev.i.i.i.i.i.i37.i, align 4
  %54 = ptrtoint ptr %transfer_list.i.i.i.i40.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %msg.i.i34.i, ptr %transfer_list.i.i.i.i40.i, align 4
  %prev3.i.i.i.i.i.i42.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i35.i, i32 0, i32 18, i32 1
  %55 = ptrtoint ptr %prev3.i.i.i.i.i.i42.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %msg.i.i34.i, ptr %prev3.i.i.i.i.i.i42.i, align 4
  %56 = ptrtoint ptr %msg.i.i34.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %transfer_list.i.i.i.i40.i, ptr %msg.i.i34.i, align 4
  br label %spi_read.exit.i

spi_read.exit.i:                                  ; preds = %if.end.i.i.i.i.i.i43.i, %if.end5.i.spi_read.exit.i_crit_edge
  %call.i.i44.i = call i32 @spi_sync(ptr noundef %43, ptr noundef nonnull %msg.i.i34.i) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i34.i) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i35.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i44.i)
  %tobool8.not.i = icmp eq i32 %call.i.i44.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %spi_read.exit.i.ad7298_scan_temp.exit_crit_edge

spi_read.exit.i.ad7298_scan_temp.exit_crit_edge:  ; preds = %spi_read.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ad7298_scan_temp.exit

if.end10.i:                                       ; preds = %spi_read.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %57 = ptrtoint ptr %buf.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %buf.i, align 2
  %conv11.i = zext i16 %58 to i32
  %shl.i.i = shl i32 %conv11.i, 20
  %shr.i.i = ashr exact i32 %shl.i.i, 20
  %59 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %shr.i.i, ptr %val, align 4
  br label %ad7298_scan_temp.exit

ad7298_scan_temp.exit:                            ; preds = %if.end10.i, %spi_read.exit.i.ad7298_scan_temp.exit_crit_edge, %spi_write.exit33.i.ad7298_scan_temp.exit_crit_edge, %spi_write.exit.i.ad7298_scan_temp.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end10.i ], [ %call.i.i.i, %spi_write.exit.i.ad7298_scan_temp.exit_crit_edge ], [ %call.i.i32.i, %spi_write.exit33.i.ad7298_scan_temp.exit_crit_edge ], [ %call.i.i44.i, %spi_read.exit.i.ad7298_scan_temp.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #4
  br label %if.end6

if.else:                                          ; preds = %if.end
  %ext_ref.i48 = getelementptr inbounds %struct.ad7298_state, ptr %1, i32 0, i32 2
  %60 = ptrtoint ptr %ext_ref.i48 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ext_ref.i48, align 8
  %shr.i = lshr i32 8192, %4
  %or.i = or i32 %61, %shr.i
  %62 = trunc i32 %or.i to i16
  %conv.i49 = or i16 %62, -32768
  %tx_buf.i = getelementptr inbounds %struct.ad7298_state, ptr %1, i32 0, i32 9
  %63 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv.i49, ptr %tx_buf.i, align 8
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 128
  %scan_single_msg.i = getelementptr inbounds %struct.ad7298_state, ptr %1, i32 0, i32 6
  %call.i = tail call i32 @spi_sync(ptr noundef %65, ptr noundef %scan_single_msg.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i50 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i50, label %if.end6.thread, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.end6.thread:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %rx_buf.i = getelementptr inbounds %struct.ad7298_state, ptr %1, i32 0, i32 8
  %66 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %rx_buf.i, align 128
  %conv3.i = zext i16 %67 to i32
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #4
  br label %if.end9

if.end6:                                          ; preds = %if.else.if.end6_crit_edge, %ad7298_scan_temp.exit
  %ret.0 = phi i32 [ %retval.0.i, %ad7298_scan_temp.exit ], [ %call.i, %if.else.if.end6_crit_edge ]
  call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp7 = icmp slt i32 %ret.0, 0
  br i1 %cmp7, label %if.end6.cleanup_crit_edge, label %if.end6.if.end9_crit_edge

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end6.if.end9_crit_edge, %if.end6.thread
  %ret.076 = phi i32 [ %conv3.i, %if.end6.thread ], [ %ret.0, %if.end6.if.end9_crit_edge ]
  %68 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %69)
  %cmp11.not = icmp eq i32 %69, 9
  br i1 %cmp11.not, label %if.end9.cleanup_crit_edge, label %if.then12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %70 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %realbits, align 1
  %conv = zext i8 %71 to i32
  %sub13 = sub nsw i32 32, %conv
  %shr = lshr i32 -1, %sub13
  %and14 = and i32 %shr, %ret.076
  %72 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %and14, ptr %val, align 4
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  %73 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %chan, align 4
  %75 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %74, label %sw.bb16.cleanup_crit_edge [
    i32 0, label %sw.bb17
    i32 9, label %sw.bb22
  ]

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb17:                                          ; preds = %sw.bb16
  %reg.i = getelementptr inbounds %struct.ad7298_state, ptr %1, i32 0, i32 1
  %76 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %reg.i, align 4
  %tobool.not.i53 = icmp eq ptr %77, null
  br i1 %tobool.not.i53, label %sw.bb17.ad7298_get_ref_voltage.exit_crit_edge, label %if.then.i

sw.bb17.ad7298_get_ref_voltage.exit_crit_edge:    ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #6
  br label %ad7298_get_ref_voltage.exit

if.then.i:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #6
  %call.i54 = tail call i32 @regulator_get_voltage(ptr noundef nonnull %77) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %cmp.i = icmp slt i32 %call.i54, 0
  %div.i = sdiv i32 %call.i54, 1000
  %spec.select.i = select i1 %cmp.i, i32 %call.i54, i32 %div.i
  br label %ad7298_get_ref_voltage.exit

ad7298_get_ref_voltage.exit:                      ; preds = %if.then.i, %sw.bb17.ad7298_get_ref_voltage.exit_crit_edge
  %retval.0.i55 = phi i32 [ 2500, %sw.bb17.ad7298_get_ref_voltage.exit_crit_edge ], [ %spec.select.i, %if.then.i ]
  %78 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %retval.0.i55, ptr %val, align 4
  %realbits20 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %79 = ptrtoint ptr %realbits20 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %realbits20, align 1
  %conv21 = zext i8 %80 to i32
  %81 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %conv21, ptr %val2, align 4
  br label %cleanup

sw.bb22:                                          ; preds = %sw.bb16
  %reg.i56 = getelementptr inbounds %struct.ad7298_state, ptr %1, i32 0, i32 1
  %82 = ptrtoint ptr %reg.i56 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %reg.i56, align 4
  %tobool.not.i57 = icmp eq ptr %83, null
  br i1 %tobool.not.i57, label %sw.bb22.ad7298_get_ref_voltage.exit64_crit_edge, label %if.then.i62

sw.bb22.ad7298_get_ref_voltage.exit64_crit_edge:  ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #6
  br label %ad7298_get_ref_voltage.exit64

if.then.i62:                                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #6
  %call.i58 = tail call i32 @regulator_get_voltage(ptr noundef nonnull %83) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %cmp.i59 = icmp slt i32 %call.i58, 0
  %div.i60 = sdiv i32 %call.i58, 1000
  %spec.select.i61 = select i1 %cmp.i59, i32 %call.i58, i32 %div.i60
  br label %ad7298_get_ref_voltage.exit64

ad7298_get_ref_voltage.exit64:                    ; preds = %if.then.i62, %sw.bb22.ad7298_get_ref_voltage.exit64_crit_edge
  %retval.0.i63 = phi i32 [ 2500, %sw.bb22.ad7298_get_ref_voltage.exit64_crit_edge ], [ %spec.select.i61, %if.then.i62 ]
  %84 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %retval.0.i63, ptr %val, align 4
  %85 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 10, ptr %val2, align 4
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  %reg.i65 = getelementptr inbounds %struct.ad7298_state, ptr %1, i32 0, i32 1
  %86 = ptrtoint ptr %reg.i65 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %reg.i65, align 4
  %tobool.not.i66 = icmp eq ptr %87, null
  br i1 %tobool.not.i66, label %sw.bb24.ad7298_get_ref_voltage.exit73_crit_edge, label %if.then.i71

sw.bb24.ad7298_get_ref_voltage.exit73_crit_edge:  ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #6
  br label %ad7298_get_ref_voltage.exit73

if.then.i71:                                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #6
  %call.i67 = tail call i32 @regulator_get_voltage(ptr noundef nonnull %87) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %cmp.i68 = icmp slt i32 %call.i67, 0
  %div.i69 = sdiv i32 %call.i67, 1000
  %spec.select.i70 = select i1 %cmp.i68, i32 %call.i67, i32 %div.i69
  br label %ad7298_get_ref_voltage.exit73

ad7298_get_ref_voltage.exit73:                    ; preds = %if.then.i71, %sw.bb24.ad7298_get_ref_voltage.exit73_crit_edge
  %retval.0.i72 = phi i32 [ 2500, %sw.bb24.ad7298_get_ref_voltage.exit73_crit_edge ], [ %spec.select.i70, %if.then.i71 ]
  %div = sdiv i32 2732500, %retval.0.i72
  %sub26 = sub nsw i32 1093, %div
  %88 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %sub26, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %ad7298_get_ref_voltage.exit73, %ad7298_get_ref_voltage.exit64, %ad7298_get_ref_voltage.exit, %sw.bb16.cleanup_crit_edge, %if.then12, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %ad7298_get_ref_voltage.exit73 ], [ 10, %ad7298_get_ref_voltage.exit64 ], [ 11, %ad7298_get_ref_voltage.exit ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %ret.0, %if.end6.cleanup_crit_edge ], [ 1, %if.then12 ], [ 1, %if.end9.cleanup_crit_edge ], [ -22, %sw.bb16.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7298_update_scan_mode(ptr nocapture noundef readonly %indio_dev, ptr noundef %active_scan_mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 7
  %2 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %masklength, align 8
  %call4.i = tail call i32 @__bitmap_weight(ptr noundef %active_scan_mask, i32 noundef %3) #4
  %ext_ref = getelementptr inbounds %struct.ad7298_state, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ext_ref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ext_ref, align 8
  %6 = trunc i32 %5 to i16
  %conv = or i16 %6, -32768
  %7 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %active_scan_mask, align 4
  %9 = trunc i32 %8 to i16
  %10 = shl i16 %9, 13
  %11 = and i16 %10, 8192
  %command.1 = or i16 %11, %conv
  %12 = load volatile i32, ptr %active_scan_mask, align 4
  %13 = trunc i32 %12 to i16
  %14 = shl i16 %13, 11
  %15 = and i16 %14, 4096
  %command.1.1 = or i16 %15, %command.1
  %16 = load volatile i32, ptr %active_scan_mask, align 4
  %17 = trunc i32 %16 to i16
  %18 = shl i16 %17, 9
  %19 = and i16 %18, 2048
  %command.1.2 = or i16 %19, %command.1.1
  %20 = load volatile i32, ptr %active_scan_mask, align 4
  %21 = trunc i32 %20 to i16
  %22 = shl i16 %21, 7
  %23 = and i16 %22, 1024
  %command.1.3 = or i16 %23, %command.1.2
  %24 = load volatile i32, ptr %active_scan_mask, align 4
  %25 = trunc i32 %24 to i16
  %26 = shl i16 %25, 5
  %27 = and i16 %26, 512
  %command.1.4 = or i16 %27, %command.1.3
  %28 = load volatile i32, ptr %active_scan_mask, align 4
  %29 = trunc i32 %28 to i16
  %30 = shl i16 %29, 3
  %31 = and i16 %30, 256
  %command.1.5 = or i16 %31, %command.1.4
  %32 = load volatile i32, ptr %active_scan_mask, align 4
  %33 = trunc i32 %32 to i16
  %34 = shl i16 %33, 1
  %35 = and i16 %34, 128
  %command.1.6 = or i16 %35, %command.1.5
  %36 = load volatile i32, ptr %active_scan_mask, align 4
  %37 = trunc i32 %36 to i16
  %38 = lshr i16 %37, 1
  %39 = and i16 %38, 64
  %command.1.7 = or i16 %39, %command.1.6
  %tx_buf = getelementptr inbounds %struct.ad7298_state, ptr %1, i32 0, i32 9
  %40 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %command.1.7, ptr %tx_buf, align 8
  %ring_xfer = getelementptr inbounds %struct.ad7298_state, ptr %1, i32 0, i32 3
  %41 = ptrtoint ptr %ring_xfer to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %tx_buf, ptr %ring_xfer, align 4
  %len = getelementptr inbounds %struct.ad7298_state, ptr %1, i32 0, i32 3, i32 0, i32 2
  %42 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %len, align 4
  %cs_change = getelementptr inbounds %struct.ad7298_state, ptr %1, i32 0, i32 3, i32 0, i32 7
  %43 = ptrtoint ptr %cs_change to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load = load i8, ptr %cs_change, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %cs_change, align 4
  %arrayidx16 = getelementptr %struct.ad7298_state, ptr %1, i32 0, i32 9, i32 1
  %arrayidx18 = getelementptr %struct.ad7298_state, ptr %1, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %arrayidx16, ptr %arrayidx18, align 4
  %len22 = getelementptr %struct.ad7298_state, ptr %1, i32 0, i32 3, i32 1, i32 2
  %45 = ptrtoint ptr %len22 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %len22, align 4
  %cs_change25 = getelementptr %struct.ad7298_state, ptr %1, i32 0, i32 3, i32 1, i32 7
  %46 = ptrtoint ptr %cs_change25 to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load26 = load i8, ptr %cs_change25, align 4
  %bf.set28 = or i8 %bf.load26, 64
  store i8 %bf.set28, ptr %cs_change25, align 4
  %ring_msg = getelementptr inbounds %struct.ad7298_state, ptr %1, i32 0, i32 5
  %47 = getelementptr inbounds %struct.ad7298_state, ptr %1, i32 0, i32 5, i32 1
  %48 = call ptr @memset(ptr %47, i32 0, i32 40)
  %49 = ptrtoint ptr %ring_msg to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %ring_msg, ptr %ring_msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.ad7298_state, ptr %1, i32 0, i32 5, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %ring_msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.ad7298_state, ptr %1, i32 0, i32 5, i32 10
  %51 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.ad7298_state, ptr %1, i32 0, i32 5, i32 10, i32 1
  %52 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.ad7298_state, ptr %1, i32 0, i32 3, i32 0, i32 18
  %call.i.i.i105 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef %ring_msg, ptr noundef %ring_msg) #4
  br i1 %call.i.i.i105, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %53 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %54 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %ring_msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ad7298_state, ptr %1, i32 0, i32 3, i32 0, i32 18, i32 1
  %55 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %ring_msg, ptr %prev3.i.i.i, align 4
  %56 = ptrtoint ptr %ring_msg to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %transfer_list.i, ptr %ring_msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %transfer_list.i106 = getelementptr %struct.ad7298_state, ptr %1, i32 0, i32 3, i32 1, i32 18
  %57 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i108 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i106, ptr noundef %58, ptr noundef %ring_msg) #4
  br i1 %call.i.i.i108, label %if.end.i.i.i110, label %spi_message_add_tail.exit.spi_message_add_tail.exit111_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit111_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit111

if.end.i.i.i110:                                  ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  %59 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %transfer_list.i106, ptr %prev.i.i.i, align 4
  %60 = ptrtoint ptr %transfer_list.i106 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %ring_msg, ptr %transfer_list.i106, align 4
  %prev3.i.i.i109 = getelementptr %struct.ad7298_state, ptr %1, i32 0, i32 3, i32 1, i32 18, i32 1
  %61 = ptrtoint ptr %prev3.i.i.i109 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev3.i.i.i109, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %transfer_list.i106, ptr %58, align 4
  br label %spi_message_add_tail.exit111

spi_message_add_tail.exit111:                     ; preds = %if.end.i.i.i110, %spi_message_add_tail.exit.spi_message_add_tail.exit111_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp36121 = icmp sgt i32 %call4.i, 0
  br i1 %cmp36121, label %spi_message_add_tail.exit111.for.body38_crit_edge, label %spi_message_add_tail.exit111.for.end60_crit_edge

spi_message_add_tail.exit111.for.end60_crit_edge: ; preds = %spi_message_add_tail.exit111
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end60

spi_message_add_tail.exit111.for.body38_crit_edge: ; preds = %spi_message_add_tail.exit111
  br label %for.body38

for.body38:                                       ; preds = %spi_message_add_tail.exit117.for.body38_crit_edge, %spi_message_add_tail.exit111.for.body38_crit_edge
  %i.1122 = phi i32 [ %inc59, %spi_message_add_tail.exit117.for.body38_crit_edge ], [ 0, %spi_message_add_tail.exit111.for.body38_crit_edge ]
  %arrayidx39 = getelementptr %struct.ad7298_state, ptr %1, i32 0, i32 8, i32 %i.1122
  %add = add nuw i32 %i.1122, 2
  %rx_buf42 = getelementptr %struct.ad7298_state, ptr %1, i32 0, i32 3, i32 %add, i32 1
  %63 = ptrtoint ptr %rx_buf42 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %arrayidx39, ptr %rx_buf42, align 4
  %len46 = getelementptr %struct.ad7298_state, ptr %1, i32 0, i32 3, i32 %add, i32 2
  %64 = ptrtoint ptr %len46 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 2, ptr %len46, align 4
  %cs_change50 = getelementptr %struct.ad7298_state, ptr %1, i32 0, i32 3, i32 %add, i32 7
  %65 = ptrtoint ptr %cs_change50 to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load51 = load i8, ptr %cs_change50, align 4
  %bf.set53 = or i8 %bf.load51, 64
  store i8 %bf.set53, ptr %cs_change50, align 4
  %transfer_list.i112 = getelementptr %struct.ad7298_state, ptr %1, i32 0, i32 3, i32 %add, i32 18
  %66 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i114 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i112, ptr noundef %67, ptr noundef %ring_msg) #4
  br i1 %call.i.i.i114, label %if.end.i.i.i116, label %for.body38.spi_message_add_tail.exit117_crit_edge

for.body38.spi_message_add_tail.exit117_crit_edge: ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit117

if.end.i.i.i116:                                  ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #6
  %68 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %transfer_list.i112, ptr %prev.i.i.i, align 4
  %69 = ptrtoint ptr %transfer_list.i112 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %ring_msg, ptr %transfer_list.i112, align 4
  %prev3.i.i.i115 = getelementptr %struct.ad7298_state, ptr %1, i32 0, i32 3, i32 %add, i32 18, i32 1
  %70 = ptrtoint ptr %prev3.i.i.i115 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev3.i.i.i115, align 4
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %transfer_list.i112, ptr %67, align 4
  br label %spi_message_add_tail.exit117

spi_message_add_tail.exit117:                     ; preds = %if.end.i.i.i116, %for.body38.spi_message_add_tail.exit117_crit_edge
  %inc59 = add nuw nsw i32 %i.1122, 1
  %exitcond.not = icmp eq i32 %inc59, %call4.i
  br i1 %exitcond.not, label %for.end60.loopexit, label %spi_message_add_tail.exit117.for.body38_crit_edge

spi_message_add_tail.exit117.for.body38_crit_edge: ; preds = %spi_message_add_tail.exit117
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body38

for.end60.loopexit:                               ; preds = %spi_message_add_tail.exit117
  call void @__sanitizer_cov_trace_pc() #6
  %phi.bo = add i32 %call4.i, 1
  br label %for.end60

for.end60:                                        ; preds = %for.end60.loopexit, %spi_message_add_tail.exit111.for.end60_crit_edge
  %i.1.lcssa = phi i32 [ 1, %spi_message_add_tail.exit111.for.end60_crit_edge ], [ %phi.bo, %for.end60.loopexit ]
  %cs_change64 = getelementptr %struct.ad7298_state, ptr %1, i32 0, i32 3, i32 %i.1.lcssa, i32 7
  %72 = ptrtoint ptr %cs_change64 to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load65 = load i8, ptr %cs_change64, align 4
  %bf.clear66 = and i8 %bf.load65, -65
  store i8 %bf.clear66, ptr %cs_change64, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__initcall__kmod_ad7298__290_370_ad7298_driver_init6, !1, !"__initcall__kmod_ad7298__290_370_ad7298_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/ad7298.c", i32 370, i32 1}
!2 = !{ptr @__exitcall_ad7298_driver_exit, !1, !"__exitcall_ad7298_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/ad7298.c", i32 372, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/ad7298.c", i32 373, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/ad7298.c", i32 374, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/ad7298.c", i32 364, i32 11}
!12 = !{ptr @ad7298_driver, !13, !"ad7298_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/ad7298.c", i32 362, i32 26}
!14 = !{ptr @ad7298_id, !15, !"ad7298_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/ad7298.c", i32 356, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/ad7298.c", i32 296, i32 51}
!18 = !{ptr @ad7298_channels, !19, !"ad7298_channels", i1 false, i1 false}
!19 = !{!"../drivers/iio/adc/ad7298.c", i32 73, i32 35}
!20 = !{ptr @ad7298_info, !21, !"ad7298_info", i1 false, i1 false}
!21 = !{!"../drivers/iio/adc/ad7298.c", i32 272, i32 30}
!22 = !{ptr @ad7298_acpi_ids, !23, !"ad7298_acpi_ids", i1 false, i1 false}
!23 = !{!"../drivers/iio/adc/ad7298.c", i32 350, i32 36}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i8 0, i8 2}
