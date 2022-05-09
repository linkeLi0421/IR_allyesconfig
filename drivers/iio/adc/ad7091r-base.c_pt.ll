; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/ad7091r-base.c_pt.bc'
source_filename = "../drivers/iio/adc/ad7091r-base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ad7091r_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_ad7091r_probe\09\09\09\09"
module asm "\09.long\09__crc_ad7091r_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ad7091r_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22ad7091r_probe\22\09\09\09\09\09"
module asm "__kstrtabns_ad7091r_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ad7091r_regmap_config\22, \22a\22\09"
module asm "\09.weak\09__crc_ad7091r_regmap_config\09\09\09\09"
module asm "\09.long\09__crc_ad7091r_regmap_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ad7091r_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22ad7091r_regmap_config\22\09\09\09\09\09"
module asm "__kstrtabns_ad7091r_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.ad7091r_state = type { ptr, ptr, ptr, ptr, i32, %struct.mutex }
%struct.ad7091r_chip_info = type { i32, ptr, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }

@ad7091r_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ad7091r_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@__kstrtab_ad7091r_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_ad7091r_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_ad7091r_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ad7091r_probe to i32), ptr @__kstrtab_ad7091r_probe, ptr @__kstrtabns_ad7091r_probe }, section "___ksymtab_gpl+ad7091r_probe", align 4
@ad7091r_regmap_config = dso_local constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr @ad7091r_writeable_reg, ptr null, ptr @ad7091r_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_ad7091r_regmap_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_ad7091r_regmap_config = external dso_local constant [0 x i8], align 1
@__ksymtab_ad7091r_regmap_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ad7091r_regmap_config to i32), ptr @__kstrtab_ad7091r_regmap_config, ptr @__kstrtabns_ad7091r_regmap_config }, section "___ksymtab_gpl+ad7091r_regmap_config", align 4
@__UNIQUE_ID_author288 = internal constant [59 x i8] c"ad7091r_base.author=Beniamin Bia <beniamin.bia@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description289 = internal constant [74 x i8] c"ad7091r_base.description=Analog Devices AD7091Rx multi-channel converters\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [47 x i8] c"ad7091r_base.file=drivers/iio/adc/ad7091r-base\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [28 x i8] c"ad7091r_base.license=GPL v2\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"ad7091r_info\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 171, i32 30 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 242, i32 46 }
@___asan_gen_.7 = private unnamed_addr constant [22 x i8] c"ad7091r_regmap_config\00", align 1
@___asan_gen_.8 = private constant [34 x i8] c"../drivers/iio/adc/ad7091r-base.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 287, i32 28 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author288, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__ksymtab_ad7091r_probe, ptr @__ksymtab_ad7091r_regmap_config, ptr @ad7091r_info, ptr @.str, ptr @ad7091r_regmap_config], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7091r_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7091r_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ad7091r_probe(ptr noundef %dev, ptr noundef %name, ptr noundef %chip_info, ptr noundef %map, i32 noundef %irq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 112) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %1, align 4
  %chip_info3 = getelementptr inbounds %struct.ad7091r_state, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %chip_info3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %chip_info, ptr %chip_info3, align 4
  %map4 = getelementptr inbounds %struct.ad7091r_state, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %map4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %map, ptr %map4, align 4
  %name5 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %5 = ptrtoint ptr %name5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %name, ptr %name5, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ad7091r_info, ptr %info, align 8
  %7 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %call, align 8
  %8 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chip_info, align 4
  %num_channels6 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %10 = ptrtoint ptr %num_channels6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %num_channels6, align 4
  %channels = getelementptr inbounds %struct.ad7091r_chip_info, ptr %chip_info, i32 0, i32 1
  %11 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %channels, align 4
  %channels7 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %13 = ptrtoint ptr %channels7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %channels7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %tobool8.not = icmp eq i32 %irq, 0
  br i1 %tobool8.not, label %if.end.if.end14_crit_edge, label %if.then9

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then9:                                         ; preds = %if.end
  %call10 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %irq, ptr noundef null, ptr noundef nonnull @ad7091r_event_handler, i32 noundef 8194, ptr noundef %name, ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.if.end14_crit_edge, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.end14:                                         ; preds = %if.then9.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %call15 = tail call ptr @devm_regulator_get_optional(ptr noundef %dev, ptr noundef nonnull @.str) #4
  %vref = getelementptr inbounds %struct.ad7091r_state, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %vref to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call15, ptr %vref, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end14
  %cmp = icmp eq ptr %call15, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.then18.cleanup_crit_edge, label %if.end22

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end22:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %vref to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %vref, align 4
  br label %if.end33

if.else:                                          ; preds = %if.end14
  %call25 = tail call i32 @regulator_enable(ptr noundef %call15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end28:                                         ; preds = %if.else
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @ad7091r_remove, ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end28.if.end33_crit_edge, label %devm_add_action_or_reset.exit

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

devm_add_action_or_reset.exit:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vref, align 4
  %call.i.i = tail call i32 @regulator_disable(ptr noundef %17) #4
  br label %cleanup

if.end33:                                         ; preds = %if.end28.if.end33_crit_edge, %if.end22
  %18 = ptrtoint ptr %map4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map4, align 4
  %call.i.i74 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 2, i32 noundef 1280, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i74)
  %tobool.not.i75 = icmp eq i32 %call.i.i74, 0
  br i1 %tobool.not.i75, label %if.end37, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %mode3.i = getelementptr inbounds %struct.ad7091r_state, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %mode3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %mode3.i, align 4
  %call38 = tail call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end33.cleanup_crit_edge, %devm_add_action_or_reset.exit, %if.else.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call38, %if.end37 ], [ -12, %entry.cleanup_crit_edge ], [ %call10, %if.then9.cleanup_crit_edge ], [ -517, %if.then18.cleanup_crit_edge ], [ %call25, %if.else.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ %call.i.i74, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7091r_event_handler(i32 noundef %irq, ptr nocapture noundef readonly %private) #0 align 64 {
entry:
  %read_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_val) #4
  %4 = ptrtoint ptr %read_val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %read_val, align 4, !annotation !26
  %call1 = tail call i64 @iio_get_time_ns(ptr noundef %3) #4
  %map = getelementptr inbounds %struct.ad7091r_state, ptr %private, i32 0, i32 1
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 4
  %call2 = call i32 @regmap_read(ptr noundef %6, i32 noundef 3, ptr noundef nonnull %read_val) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %chip_info = getelementptr inbounds %struct.ad7091r_state, ptr %private, i32 0, i32 3
  %7 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip_info, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp33.not = icmp eq i32 %10, 0
  br i1 %cmp33.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.034 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %11 = ptrtoint ptr %read_val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %read_val, align 4
  %mul = shl i32 %i.034, 1
  %shl = shl nuw i32 1, %mul
  %and = and i32 %12, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %for.body.if.end7_crit_edge, label %if.then4

for.body.if.end7_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %conv.mask = and i32 %i.034, 65535
  %conv5 = zext i32 %conv.mask to i64
  %or = or i64 %conv5, 281474976710656
  %call6 = call i32 @iio_push_event(ptr noundef %3, i64 noundef %or, i64 noundef %call1) #4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %for.body.if.end7_crit_edge
  %13 = ptrtoint ptr %read_val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %read_val, align 4
  %add = or i32 %mul, 1
  %shl9 = shl nuw i32 1, %add
  %and10 = and i32 %14, %shl9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end7.for.inc_crit_edge, label %if.then12

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %conv13.mask = and i32 %i.034, 65535
  %conv14 = zext i32 %conv13.mask to i64
  %or15 = or i64 %conv14, 562949953421312
  %call16 = call i32 @iio_push_event(ptr noundef %3, i64 noundef %or15, i64 noundef %call1) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %if.end7.for.inc_crit_edge
  %inc = add nuw i32 %i.034, 1
  %15 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip_info, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_val) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad7091r_remove(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vref = getelementptr inbounds %struct.ad7091r_state, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vref, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ad7091r_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reg)
  %switch.selectcmp.case1 = icmp ne i32 %reg, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %reg)
  %switch.selectcmp.case2 = icmp ne i32 %reg, 3
  %not.switch.selectcmp = and i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  ret i1 %not.switch.selectcmp
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ad7091r_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reg)
  %switch.selectcmp.case1 = icmp eq i32 %reg, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %reg)
  %switch.selectcmp.case2 = icmp eq i32 %reg, 3
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  ret i1 %switch.selectcmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7091r_read_raw(ptr nocapture noundef readonly %iio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %m) #0 align 64 {
entry:
  %dummy.i.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.ad7091r_state, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %2 = zext i32 %m to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %m, label %entry.unlock_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb4
  ]

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock

sw.bb:                                            ; preds = %entry
  %mode = getelementptr inbounds %struct.ad7091r_state, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not = icmp eq i32 %4, 1
  br i1 %cmp.not, label %if.end, label %sw.bb.unlock_crit_edge

sw.bb.unlock_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock

if.end:                                           ; preds = %sw.bb
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %5 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel, align 4
  %7 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #4
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val.i, align 4, !annotation !26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i) #4
  %10 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %dummy.i.i, align 4, !annotation !26
  %map.i.i = getelementptr inbounds %struct.ad7091r_state, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map.i.i, align 4
  %shl.i.i = shl nuw i32 1, %6
  %shl2.i.i = shl i32 %shl.i.i, 8
  %or.i.i = or i32 %shl2.i.i, %shl.i.i
  %call.i.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 1, i32 noundef %or.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %ad7091r_set_channel.exit.i, label %ad7091r_set_channel.exit.thread.i

ad7091r_set_channel.exit.thread.i:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #4
  br label %ad7091r_read_one.exit.thread

ad7091r_set_channel.exit.i:                       ; preds = %if.end
  %13 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map.i.i, align 4
  %call4.i.i = call i32 @regmap_read(ptr noundef %14, i32 noundef 0, ptr noundef nonnull %dummy.i.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %ad7091r_set_channel.exit.i.ad7091r_read_one.exit.thread_crit_edge

ad7091r_set_channel.exit.i.ad7091r_read_one.exit.thread_crit_edge: ; preds = %ad7091r_set_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ad7091r_read_one.exit.thread

if.end.i:                                         ; preds = %ad7091r_set_channel.exit.i
  %15 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map.i.i, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %16, i32 noundef 0, ptr noundef nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.ad7091r_read_one.exit.thread_crit_edge

if.end.i.ad7091r_read_one.exit.thread_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ad7091r_read_one.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val.i, align 4
  %shr.i = lshr i32 %18, 13
  %and.i = and i32 %shr.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %6)
  %cmp.not.i = icmp eq i32 %and.i, %6
  br i1 %cmp.not.i, label %if.end3, label %if.end5.i.ad7091r_read_one.exit.thread_crit_edge

if.end5.i.ad7091r_read_one.exit.thread_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ad7091r_read_one.exit.thread

ad7091r_read_one.exit.thread:                     ; preds = %if.end5.i.ad7091r_read_one.exit.thread_crit_edge, %if.end.i.ad7091r_read_one.exit.thread_crit_edge, %ad7091r_set_channel.exit.i.ad7091r_read_one.exit.thread_crit_edge, %ad7091r_set_channel.exit.thread.i
  %retval.0.i.ph = phi i32 [ %call.i.i, %ad7091r_set_channel.exit.thread.i ], [ -5, %if.end5.i.ad7091r_read_one.exit.thread_crit_edge ], [ %call2.i, %if.end.i.ad7091r_read_one.exit.thread_crit_edge ], [ %call4.i.i, %ad7091r_set_channel.exit.i.ad7091r_read_one.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #4
  br label %unlock

if.end3:                                          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  %and8.i = and i32 %18, 4095
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #4
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and8.i, ptr %val, align 4
  br label %unlock

sw.bb4:                                           ; preds = %entry
  %vref = getelementptr inbounds %struct.ad7091r_state, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vref, align 4
  %tobool5.not = icmp eq ptr %21, null
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %sw.bb4
  %call8 = tail call i32 @regulator_get_voltage(ptr noundef nonnull %21) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then6.unlock_crit_edge, label %if.end11

if.then6.unlock_crit_edge:                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock

if.end11:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  %div29 = udiv i32 %call8, 1000
  br label %if.end12

if.else:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  %chip_info = getelementptr inbounds %struct.ad7091r_state, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chip_info, align 4
  %vref_mV = getelementptr inbounds %struct.ad7091r_chip_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %vref_mV to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vref_mV, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end11
  %storemerge = phi i32 [ %25, %if.else ], [ %div29, %if.end11 ]
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %storemerge, ptr %val, align 4
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %realbits, align 1
  %conv = zext i8 %28 to i32
  %29 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv, ptr %val2, align 4
  br label %unlock

unlock:                                           ; preds = %if.end12, %if.then6.unlock_crit_edge, %if.end3, %ad7091r_read_one.exit.thread, %sw.bb.unlock_crit_edge, %entry.unlock_crit_edge
  %ret.0 = phi i32 [ %call8, %if.then6.unlock_crit_edge ], [ 11, %if.end12 ], [ 1, %if.end3 ], [ -16, %sw.bb.unlock_crit_edge ], [ -22, %entry.unlock_crit_edge ], [ %retval.0.i.ph, %ad7091r_read_one.exit.thread ]
  call void @mutex_unlock(ptr noundef %lock) #4
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/ad7091r-base.c", i32 242, i32 46}
!2 = !{ptr @__ksymtab_ad7091r_probe, !3, !"__ksymtab_ad7091r_probe", i1 false, i1 false}
!3 = !{!"../drivers/iio/adc/ad7091r-base.c", i32 263, i32 1}
!4 = !{ptr @ad7091r_regmap_config, !5, !"ad7091r_regmap_config", i1 false, i1 false}
!5 = !{!"../drivers/iio/adc/ad7091r-base.c", i32 287, i32 28}
!6 = !{ptr @__ksymtab_ad7091r_regmap_config, !7, !"__ksymtab_ad7091r_regmap_config", i1 false, i1 false}
!7 = !{!"../drivers/iio/adc/ad7091r-base.c", i32 293, i32 1}
!8 = !{ptr @__UNIQUE_ID_author288, !9, !"__UNIQUE_ID_author288", i1 false, i1 false}
!9 = !{!"../drivers/iio/adc/ad7091r-base.c", i32 295, i32 1}
!10 = !{ptr @__UNIQUE_ID_description289, !11, !"__UNIQUE_ID_description289", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/ad7091r-base.c", i32 296, i32 1}
!12 = !{ptr @__UNIQUE_ID_file290, !13, !"__UNIQUE_ID_file290", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/ad7091r-base.c", i32 297, i32 1}
!14 = !{ptr @__UNIQUE_ID_license291, !13, !"__UNIQUE_ID_license291", i1 false, i1 false}
!15 = !{ptr @ad7091r_info, !16, !"ad7091r_info", i1 false, i1 false}
!16 = !{!"../drivers/iio/adc/ad7091r-base.c", i32 171, i32 30}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"auto-init"}
