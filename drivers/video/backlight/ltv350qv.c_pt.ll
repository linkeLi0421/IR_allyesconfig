; ModuleID = '/llk/IR_all_yes/drivers/video/backlight/ltv350qv.c_pt.bc'
source_filename = "../drivers/video/backlight/ltv350qv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lcd_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ltv350qv = type { ptr, ptr, i32, ptr }
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
%struct.lcd_device = type { %struct.lcd_properties, %struct.mutex, ptr, %struct.mutex, %struct.notifier_block, %struct.device }
%struct.lcd_properties = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }

@__initcall__kmod_ltv350qv__303_303_ltv350qv_driver_init6 = internal global ptr @ltv350qv_driver_init, section ".initcall6.init", align 4
@ltv350qv_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @ltv350qv_probe, ptr @ltv350qv_remove, ptr @ltv350qv_shutdown, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ltv350qv_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ltv350qv_driver_exit = internal global ptr @ltv350qv_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author304 = internal constant [43 x i8] c"ltv350qv.author=Haavard Skinnemoen (Atmel)\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [49 x i8] c"ltv350qv.description=Samsung LTV350QV LCD Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [47 x i8] c"ltv350qv.file=drivers/video/backlight/ltv350qv\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [21 x i8] c"ltv350qv.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias308 = internal constant [28 x i8] c"ltv350qv.alias=spi:ltv350qv\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ltv350qv\00", [23 x i8] zeroinitializer }, align 32
@ltv350qv_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ltv350qv_suspend, ptr @ltv350qv_resume, ptr @ltv350qv_suspend, ptr @ltv350qv_resume, ptr @ltv350qv_suspend, ptr @ltv350qv_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ltv_ops = internal global { %struct.lcd_ops, [40 x i8] } { %struct.lcd_ops { ptr @ltv350qv_get_power, ptr @ltv350qv_set_power, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"ltv350qv_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 292, i32 26 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 294, i32 12 }
@___asan_gen_.7 = private unnamed_addr constant [16 x i8] c"ltv350qv_pm_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 282, i32 8 }
@___asan_gen_.10 = private unnamed_addr constant [8 x i8] c"ltv_ops\00", align 1
@___asan_gen_.11 = private constant [38 x i8] c"../drivers/video/backlight/ltv350qv.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 221, i32 23 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_alias308, ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_ltv350qv_driver_exit, ptr @__initcall__kmod_ltv350qv__303_303_ltv350qv_driver_init6, ptr @ltv350qv_driver_exit, ptr @ltv350qv_driver, ptr @.str, ptr @ltv350qv_pm_ops, ptr @ltv_ops], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltv350qv_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltv350qv_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltv_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ltv350qv_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ltv350qv_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ltv350qv_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ltv350qv_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltv350qv_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 16, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %spi, ptr %call.i, align 4
  %power = getelementptr inbounds %struct.ltv350qv, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4, ptr %power, align 4
  %call.i38 = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 8, i32 noundef 3520) #5
  %buffer = getelementptr inbounds %struct.ltv350qv, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i38, ptr %buffer, align 4
  %tobool5.not = icmp eq ptr %call.i38, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_lcd_device_register(ptr noundef %spi, ptr noundef nonnull @.str, ptr noundef %spi, ptr noundef nonnull %call.i, ptr noundef nonnull @ltv_ops) #5
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %ld15 = getelementptr inbounds %struct.ltv350qv, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %ld15 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call10, ptr %ld15, align 4
  %call16 = tail call fastcc i32 @ltv350qv_power(ptr noundef nonnull %call.i, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end14.cleanup_crit_edge, %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then12 ], [ 0, %if.end19 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call16, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltv350qv_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @ltv350qv_power(ptr noundef %1, i32 noundef 4)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ltv350qv_shutdown(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @ltv350qv_power(ptr noundef %1, i32 noundef 4)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_lcd_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ltv350qv_power(ptr noundef %lcd, i32 noundef %power) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %power)
  %cmp = icmp slt i32 %power, 2
  %power1 = getelementptr inbounds %struct.ltv350qv, ptr %lcd, i32 0, i32 2
  %0 = ptrtoint ptr %power1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp2 = icmp slt i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %land.lhs.true4.critedge

land.lhs.true:                                    ; preds = %entry
  br i1 %cmp2, label %land.lhs.true.if.then10_crit_edge, label %if.then

land.lhs.true.if.then10_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then:                                          ; preds = %land.lhs.true
  %call.i = tail call fastcc i32 @ltv350qv_write_reg(ptr noundef %lcd, i8 noundef zeroext 9, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.err.i_crit_edge

if.then.err.i_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %err.i

if.end.i:                                         ; preds = %if.then
  tail call void @usleep_range_state(i32 noundef 15000, i32 noundef 16000, i32 noundef 2) #5
  %call1.i = tail call fastcc i32 @ltv350qv_write_reg(ptr noundef %lcd, i8 noundef zeroext 9, i16 noundef zeroext 16384) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.err.i_crit_edge

if.end.i.err.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err.i

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call fastcc i32 @ltv350qv_write_reg(ptr noundef %lcd, i8 noundef zeroext 10, i16 noundef zeroext 8192) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.err_power1.i_crit_edge

if.end4.i.err_power1.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_power1.i

if.end8.i:                                        ; preds = %if.end4.i
  %call9.i = tail call fastcc i32 @ltv350qv_write_reg(ptr noundef %lcd, i8 noundef zeroext 9, i16 noundef zeroext 16469) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.err_power1.i_crit_edge

if.end8.i.err_power1.i_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_power1.i

if.end12.i:                                       ; preds = %if.end8.i
  tail call void @msleep(i32 noundef 55) #5
  %call13.i = tail call fastcc i32 @ltv350qv_write_reg(ptr noundef %lcd, i8 noundef zeroext 1, i16 noundef zeroext 16541) #5
  %call14.i = tail call fastcc i32 @ltv350qv_write_reg(ptr noundef %lcd, i8 noundef zeroext 2, i16 noundef zeroext 516) #5
  %or.i = or i32 %call14.i, %call13.i
  %call15.i = tail call fastcc i32 @ltv350qv_write_reg(ptr noundef %lcd, i8 noundef zeroext 3, i16 noundef zeroext 256) #5
  %or16.i = or i32 %or.i, %call15.i
  %call17.i = tail call fastcc i32 @ltv350qv_write_reg(ptr noundef %lcd, i8 noundef zeroext 4, i16 noundef zeroext 12288) #5
  %or18.i = or i32 %or16.i, %call17.i
  %call19.i = tail call fastcc i32 @ltv350qv_write_reg(ptr noundef %lcd, i8 noundef zeroext 5, i16 noundef zeroext 16387) #5
  %or20.i = or i32 %or18.i, %call19.i
  %call21.i = tail call fastcc i32 @ltv350qv_write_reg(ptr noundef %lcd, i8 noundef zeroext 6, i16 noundef zeroext 10) #5
  %or22.i = or i32 %or20.i, %call21.i
  %call23.i = tail call fastcc i32 @ltv350qv_write_reg(ptr noundef %lcd, i8 noundef zeroext 7, i16 noundef zeroext 33) #5
  %or24.i = or i32 %or22.i, %call23.i
  %call25.i = tail call fastcc i32 @ltv350qv_write_reg(ptr noundef %lcd, i8 noundef zeroext 8, i16 noundef zeroext 3072) #5
  %or26.i = or i32 %or24.i, %call25.i
  %call27.i = tail call fastcc i32 @ltv350qv_write_reg(ptr noundef %lcd, i8 noundef zeroext 16, i16 noundef zeroext 259) #5
  %or28.i = or i32 %or26.i, %call27.i
  %call29.i = tail call fastcc i32 @ltv350qv_write_reg(ptr noundef %lcd, i8 noundef zeroext 17, i16 noundef zeroext 769) #5
  %or30.i = or i32 %or28.i, %call29.i
  %call31.i = tail call fastcc i32 @ltv350qv_write_reg(ptr noundef %lcd, i8 noundef zeroext 18, i16 noundef zeroext 7951) #5
  %or32.i = or i32 %or30.i, %call31.i
  %call33.i = tail call fastcc i32 @ltv350qv_write_reg(ptr noundef %lcd, i8 noundef zeroext 19, i16 noundef zeroext 7951) #5
  %or34.i = or i32 %or32.i, %call33.i
  %call35.i = tail call fastcc i32 @ltv350qv_write_reg(ptr noundef %lcd, i8 noundef zeroext 20, i16 noundef zeroext 1799) #5
  %or36.i = or i32 %or34.i, %call35.i
  %call37.i = tail call fastcc i32 @ltv350qv_write_reg(ptr noundef %lcd, i8 noundef zeroext 21, i16 noundef zeroext 775) #5
  %or38.i = or i32 %or36.i, %call37.i
  %call39.i = tail call fastcc i32 @ltv350qv_write_reg(ptr noundef %lcd, i8 noundef zeroext 22, i16 noundef zeroext 1799) #5
  %or40.i = or i32 %or38.i, %call39.i
  %call41.i = tail call fastcc i32 @ltv350qv_write_reg(ptr noundef %lcd, i8 noundef zeroext 23, i16 noundef zeroext 0) #5
  %or42.i = or i32 %or40.i, %call41.i
  %call43.i = tail call fastcc i32 @ltv350qv_write_reg(ptr noundef %lcd, i8 noundef zeroext 24, i16 noundef zeroext 4) #5
  %or44.i = or i32 %or42.i, %call43.i
  %call45.i = tail call fastcc i32 @ltv350qv_write_reg(ptr noundef %lcd, i8 noundef zeroext 25, i16 noundef zeroext 0) #5
  %or46.i = or i32 %or44.i, %call45.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or46.i)
  %tobool47.not.i = icmp eq i32 %or46.i, 0
  br i1 %tobool47.not.i, label %if.end49.i, label %if.end12.i.err_power1.i_crit_edge

if.end12.i.err_power1.i_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_power1.i

if.end49.i:                                       ; preds = %if.end12.i
  tail call void @msleep(i32 noundef 20) #5
  %call50.i = tail call fastcc i32 @ltv350qv_write_reg(ptr noundef %lcd, i8 noundef zeroext 9, i16 noundef zeroext 19029) #5
  %call51.i = tail call fastcc i32 @ltv350qv_write_reg(ptr noundef %lcd, i8 noundef zeroext 5, i16 noundef zeroext 20483) #5
  %or52.i = or i32 %call51.i, %call50.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or52.i)
  %tobool53.not.i = icmp eq i32 %or52.i, 0
  br i1 %tobool53.not.i, label %if.end49.i.if.then10_crit_edge, label %err_disp_on.i

if.end49.i.if.then10_crit_edge:                   ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

err_disp_on.i:                                    ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  %call56.i = tail call fastcc i32 @ltv350qv_write_reg(ptr noundef %lcd, i8 noundef zeroext 9, i16 noundef zeroext 16469) #5
  %call57.i = tail call fastcc i32 @ltv350qv_write_reg(ptr noundef %lcd, i8 noundef zeroext 5, i16 noundef zeroext 16387) #5
  br label %err_power1.i

err_power1.i:                                     ; preds = %err_disp_on.i, %if.end12.i.err_power1.i_crit_edge, %if.end8.i.err_power1.i_crit_edge, %if.end4.i.err_power1.i_crit_edge
  %call58.i = tail call fastcc i32 @ltv350qv_write_reg(ptr noundef %lcd, i8 noundef zeroext 10, i16 noundef zeroext 0) #5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #5
  br label %err.i

err.i:                                            ; preds = %err_power1.i, %if.end.i.err.i_crit_edge, %if.then.err.i_crit_edge
  %call59.i = tail call fastcc i32 @ltv350qv_write_reg(ptr noundef %lcd, i8 noundef zeroext 9, i16 noundef zeroext 16384) #5
  br label %if.end12

land.lhs.true4.critedge:                          ; preds = %entry
  br i1 %cmp2, label %if.then7, label %land.lhs.true4.critedge.if.then10_crit_edge

land.lhs.true4.critedge.if.then10_crit_edge:      ; preds = %land.lhs.true4.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then7:                                         ; preds = %land.lhs.true4.critedge
  %call.i20 = tail call fastcc i32 @ltv350qv_write_reg(ptr noundef %lcd, i8 noundef zeroext 9, i16 noundef zeroext 16469) #5
  %call1.i21 = tail call fastcc i32 @ltv350qv_write_reg(ptr noundef %lcd, i8 noundef zeroext 5, i16 noundef zeroext 16387) #5
  %or.i22 = or i32 %call1.i21, %call.i20
  %call2.i = tail call fastcc i32 @ltv350qv_write_reg(ptr noundef %lcd, i8 noundef zeroext 10, i16 noundef zeroext 0) #5
  %or3.i = or i32 %or.i22, %call2.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #5
  %call4.i = tail call fastcc i32 @ltv350qv_write_reg(ptr noundef %lcd, i8 noundef zeroext 9, i16 noundef zeroext 16384) #5
  %or5.i = or i32 %or3.i, %call4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %tobool.not.i23 = icmp eq i32 %or5.i, 0
  br i1 %tobool.not.i23, label %if.then7.if.then10_crit_edge, label %if.then7.if.end12_crit_edge

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then7.if.then10_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then10:                                        ; preds = %if.then7.if.then10_crit_edge, %land.lhs.true4.critedge.if.then10_crit_edge, %if.end49.i.if.then10_crit_edge, %land.lhs.true.if.then10_crit_edge
  %power11 = getelementptr inbounds %struct.ltv350qv, ptr %lcd, i32 0, i32 2
  %2 = ptrtoint ptr %power11 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %power, ptr %power11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then7.if.end12_crit_edge, %err.i
  %ret.026 = phi i32 [ 0, %if.then10 ], [ -5, %if.then7.if.end12_crit_edge ], [ -5, %err.i ]
  ret i32 %ret.026
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ltv350qv_get_power(ptr nocapture noundef readonly %ld) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.lcd_device, ptr %ld, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %power = getelementptr inbounds %struct.ltv350qv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltv350qv_set_power(ptr nocapture noundef readonly %ld, i32 noundef %power) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.lcd_device, ptr %ld, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @ltv350qv_power(ptr noundef %1, i32 noundef %power)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ltv350qv_write_reg(ptr nocapture noundef readonly %lcd, i8 noundef zeroext %reg, i16 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.spi_message, align 4
  %index_xfer = alloca %struct.spi_transfer, align 4
  %value_xfer = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %index_xfer) #5
  %0 = getelementptr inbounds i8, ptr %index_xfer, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 92)
  %2 = getelementptr inbounds { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, [2 x i8], i32, i32, i32, i32, ptr, i8, [3 x i8], %struct.list_head, i16, [2 x i8] }, ptr %index_xfer, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %2, align 4
  %4 = getelementptr inbounds { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, [2 x i8], i32, i32, i32, i32, ptr, i8, [3 x i8], %struct.list_head, i16, [2 x i8] }, ptr %index_xfer, i32 0, i32 7
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 64, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %value_xfer) #5
  %6 = getelementptr inbounds i8, ptr %value_xfer, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 92)
  %8 = getelementptr inbounds { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, [2 x i8], i32, i32, i32, i32, ptr, i8, [3 x i8], %struct.list_head, i16, [2 x i8] }, ptr %value_xfer, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %8, align 4
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
  %buffer = getelementptr inbounds %struct.ltv350qv, ptr %lcd, i32 0, i32 1
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 116, ptr %17, align 1
  %19 = load ptr, ptr %buffer, align 4
  %arrayidx2 = getelementptr i8, ptr %19, i32 1
  %20 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx2, align 1
  %21 = and i8 %reg, 127
  %22 = load ptr, ptr %buffer, align 4
  %arrayidx5 = getelementptr i8, ptr %22, i32 2
  %23 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %21, ptr %arrayidx5, align 1
  %24 = load ptr, ptr %buffer, align 4
  %25 = ptrtoint ptr %index_xfer to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %index_xfer, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %index_xfer, i32 0, i32 18
  %26 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef %26, ptr noundef nonnull %msg) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %28 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %index_xfer, i32 0, i32 18, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %transfer_list.i, ptr %26, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %31 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buffer, align 4
  %arrayidx8 = getelementptr i8, ptr %32, i32 4
  %33 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 118, ptr %arrayidx8, align 1
  %34 = lshr i16 %val, 8
  %conv10 = trunc i16 %34 to i8
  %35 = load ptr, ptr %buffer, align 4
  %arrayidx12 = getelementptr i8, ptr %35, i32 5
  %36 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv10, ptr %arrayidx12, align 1
  %conv13 = trunc i16 %val to i8
  %37 = load ptr, ptr %buffer, align 4
  %arrayidx15 = getelementptr i8, ptr %37, i32 6
  %38 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv13, ptr %arrayidx15, align 1
  %39 = load ptr, ptr %buffer, align 4
  %add.ptr = getelementptr i8, ptr %39, i32 4
  %40 = ptrtoint ptr %value_xfer to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr, ptr %value_xfer, align 4
  %transfer_list.i27 = getelementptr inbounds %struct.spi_transfer, ptr %value_xfer, i32 0, i32 18
  %41 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i29 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i27, ptr noundef %42, ptr noundef nonnull %msg) #5
  br i1 %call.i.i.i29, label %if.end.i.i.i31, label %spi_message_add_tail.exit.spi_message_add_tail.exit32_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit32_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit32

if.end.i.i.i31:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %transfer_list.i27, ptr %prev.i.i.i, align 4
  %44 = ptrtoint ptr %transfer_list.i27 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %msg, ptr %transfer_list.i27, align 4
  %prev3.i.i.i30 = getelementptr inbounds %struct.spi_transfer, ptr %value_xfer, i32 0, i32 18, i32 1
  %45 = ptrtoint ptr %prev3.i.i.i30 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev3.i.i.i30, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %transfer_list.i27, ptr %42, align 4
  br label %spi_message_add_tail.exit32

spi_message_add_tail.exit32:                      ; preds = %if.end.i.i.i31, %spi_message_add_tail.exit.spi_message_add_tail.exit32_crit_edge
  %47 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %lcd, align 4
  %call = call i32 @spi_sync(ptr noundef %48, ptr noundef nonnull %msg) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %value_xfer) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %index_xfer) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltv350qv_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ltv350qv_power(ptr noundef %1, i32 noundef 4)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltv350qv_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ltv350qv_power(ptr noundef %1, i32 noundef 0)
  ret i32 %call1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__initcall__kmod_ltv350qv__303_303_ltv350qv_driver_init6, !1, !"__initcall__kmod_ltv350qv__303_303_ltv350qv_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/backlight/ltv350qv.c", i32 303, i32 1}
!2 = !{ptr @__exitcall_ltv350qv_driver_exit, !1, !"__exitcall_ltv350qv_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author304, !4, !"__UNIQUE_ID_author304", i1 false, i1 false}
!4 = !{!"../drivers/video/backlight/ltv350qv.c", i32 305, i32 1}
!5 = !{ptr @__UNIQUE_ID_description305, !6, !"__UNIQUE_ID_description305", i1 false, i1 false}
!6 = !{!"../drivers/video/backlight/ltv350qv.c", i32 306, i32 1}
!7 = !{ptr @__UNIQUE_ID_file306, !8, !"__UNIQUE_ID_file306", i1 false, i1 false}
!8 = !{!"../drivers/video/backlight/ltv350qv.c", i32 307, i32 1}
!9 = !{ptr @__UNIQUE_ID_license307, !8, !"__UNIQUE_ID_license307", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias308, !11, !"__UNIQUE_ID_alias308", i1 false, i1 false}
!11 = !{!"../drivers/video/backlight/ltv350qv.c", i32 308, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/video/backlight/ltv350qv.c", i32 294, i32 12}
!14 = !{ptr @ltv350qv_driver, !15, !"ltv350qv_driver", i1 false, i1 false}
!15 = !{!"../drivers/video/backlight/ltv350qv.c", i32 292, i32 26}
!16 = !{ptr @ltv_ops, !17, !"ltv_ops", i1 false, i1 false}
!17 = !{!"../drivers/video/backlight/ltv350qv.c", i32 221, i32 23}
!18 = !{ptr @ltv350qv_pm_ops, !19, !"ltv350qv_pm_ops", i1 false, i1 false}
!19 = !{!"../drivers/video/backlight/ltv350qv.c", i32 282, i32 8}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
