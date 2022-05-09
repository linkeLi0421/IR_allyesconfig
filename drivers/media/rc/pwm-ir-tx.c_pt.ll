; ModuleID = '/llk/IR_all_yes/drivers/media/rc/pwm-ir-tx.c_pt.bc'
source_filename = "../drivers/media/rc/pwm-ir-tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pwm_ir = type { ptr, i32, i32 }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }

@__initcall__kmod_pwm_ir_tx__228_126_pwm_ir_driver_init6 = internal global ptr @pwm_ir_driver_init, section ".initcall6.init", align 4
@pwm_ir_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pwm_ir_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pwm_ir_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pwm_ir_driver_exit = internal global ptr @pwm_ir_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description229 = internal constant [41 x i8] c"pwm_ir_tx.description=PWM IR Transmitter\00", section ".modinfo", align 1
@__UNIQUE_ID_author230 = internal constant [44 x i8] c"pwm_ir_tx.author=Sean Young <sean@mess.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [42 x i8] c"pwm_ir_tx.file=drivers/media/rc/pwm-ir-tx\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [22 x i8] c"pwm_ir_tx.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm-ir-tx\00", [22 x i8] zeroinitializer }, align 32
@pwm_ir_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"pwm-ir-tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PWM IR Transmitter\00", [45 x i8] zeroinitializer }, align 32
@pwm_ir_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 114, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to register rc device\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pwm_ir_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/media/rc/pwm-ir-tx.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pwm_ir_probe._entry_ptr = internal global ptr @pwm_ir_probe._entry, section ".printk_index", align 4
@___asan_gen_.7 = private unnamed_addr constant [14 x i8] c"pwm_ir_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 119, i32 31 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 122, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant [16 x i8] c"pwm_ir_of_match\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 24, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 107, i32 23 }
@___asan_gen_.19 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [32 x i8] c"../drivers/media/rc/pwm-ir-tx.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 114, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_pwm_ir_driver_exit, ptr @__initcall__kmod_pwm_ir_tx__228_126_pwm_ir_driver_init6, ptr @pwm_ir_driver_exit, ptr @pwm_ir_probe._entry, ptr @pwm_ir_probe._entry_ptr, ptr @pwm_ir_driver, ptr @.str, ptr @pwm_ir_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_ir_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_ir_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_ir_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_ir_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pwm_ir_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pwm_ir_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @pwm_ir_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_ir_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3264) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_pwm_get(ptr noundef %dev, ptr noundef null) #7
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %call, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %carrier = getelementptr inbounds %struct.pwm_ir, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %carrier to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 38000, ptr %carrier, align 4
  %duty_cycle = getelementptr inbounds %struct.pwm_ir, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 50, ptr %duty_cycle, align 4
  %call10 = tail call ptr @devm_rc_allocate_device(ptr noundef %dev, i32 noundef 2) #7
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %priv = getelementptr inbounds %struct.rc_dev, ptr %call10, i32 0, i32 24
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %priv, align 4
  %driver_name = getelementptr inbounds %struct.rc_dev, ptr %call10, i32 0, i32 6
  %5 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str, ptr %driver_name, align 8
  %device_name = getelementptr inbounds %struct.rc_dev, ptr %call10, i32 0, i32 3
  %6 = ptrtoint ptr %device_name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.1, ptr %device_name, align 8
  %tx_ir = getelementptr inbounds %struct.rc_dev, ptr %call10, i32 0, i32 54
  %7 = ptrtoint ptr %tx_ir to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @pwm_ir_tx, ptr %tx_ir, align 8
  %s_tx_duty_cycle = getelementptr inbounds %struct.rc_dev, ptr %call10, i32 0, i32 52
  %8 = ptrtoint ptr %s_tx_duty_cycle to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @pwm_ir_set_duty_cycle, ptr %s_tx_duty_cycle, align 8
  %s_tx_carrier = getelementptr inbounds %struct.rc_dev, ptr %call10, i32 0, i32 51
  %9 = ptrtoint ptr %s_tx_carrier to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @pwm_ir_set_carrier, ptr %s_tx_carrier, align 4
  %call15 = tail call i32 @devm_rc_register_device(ptr noundef %dev, ptr noundef nonnull %call10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %do.end, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end13.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ], [ %call15, %do.end ], [ %call15, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pwm_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rc_allocate_device(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_ir_tx(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %txbuf, i32 noundef returned %count) #2 align 64 {
entry:
  %state = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #7
  %state1.i.i = getelementptr inbounds %struct.pwm_device, ptr %3, i32 0, i32 7
  %4 = call ptr @memcpy(ptr %state, ptr %state1.i.i, i32 24)
  %args.sroa.5.0.args1.i.sroa_idx.i = getelementptr inbounds %struct.pwm_device, ptr %3, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %args.sroa.5.0.args1.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %args.sroa.5.0.copyload9.i = load i32, ptr %args.sroa.5.0.args1.i.sroa_idx.i, align 8
  %polarity2.i = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %6 = ptrtoint ptr %polarity2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %args.sroa.5.0.copyload9.i, ptr %polarity2.i, align 8
  %duty_cycle.i = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %7 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %duty_cycle.i, align 8
  %usage_power.i = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 4
  %8 = ptrtoint ptr %usage_power.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %usage_power.i, align 1
  %carrier = getelementptr inbounds %struct.pwm_ir, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %carrier to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %carrier, align 4
  %div28 = lshr i32 %10, 1
  %add = add nuw i32 %div28, 1000000000
  %div2 = udiv i32 %add, %10
  %conv = zext i32 %div2 to i64
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv, ptr %state, align 8
  %duty_cycle = getelementptr inbounds %struct.pwm_ir, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %duty_cycle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %13)
  %cmp.i = icmp ugt i32 %13, 100
  br i1 %cmp.i, label %entry.pwm_set_relative_duty_cycle.exit_crit_edge, label %if.end188.i

entry.pwm_set_relative_duty_cycle.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pwm_set_relative_duty_cycle.exit

if.end188.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i32 %13 to i64
  %mul.i = mul nuw nsw i64 %conv.i, %conv
  %add.i = add nuw nsw i64 %mul.i, 50
  %14 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %add.i, i32 0) #11, !srcloc !35
  %asmresult.i.i = extractvalue { i64, i32 } %14, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %14, 1
  %15 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %add.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #11, !srcloc !36
  %asmresult10.i.i = extractvalue { i64, i32 } %15, 0
  %_tmp.0.i = lshr i64 %asmresult10.i.i, 6
  %16 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %_tmp.0.i, ptr %duty_cycle.i, align 8
  br label %pwm_set_relative_duty_cycle.exit

pwm_set_relative_duty_cycle.exit:                 ; preds = %if.end188.i, %entry.pwm_set_relative_duty_cycle.exit_crit_edge
  %call3 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp31.not = icmp eq i32 %count, 0
  br i1 %cmp31.not, label %pwm_set_relative_duty_cycle.exit.for.end_crit_edge, label %for.body.lr.ph

pwm_set_relative_duty_cycle.exit.for.end_crit_edge: ; preds = %pwm_set_relative_duty_cycle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %pwm_set_relative_duty_cycle.exit
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.033 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %edge.032 = phi i64 [ %call3, %for.body.lr.ph ], [ %add.i30, %for.inc.for.body_crit_edge ]
  %17 = trunc i32 %i.033 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %enabled, align 4
  %call5 = call i32 @pwm_apply_state(ptr noundef %3, ptr noundef nonnull %state) #7
  %arrayidx = getelementptr i32, ptr %txbuf, i32 %i.033
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %conv6 = zext i32 %22 to i64
  %mul.i29 = mul nuw nsw i64 %conv6, 1000
  %add.i30 = add i64 %mul.i29, %edge.032
  %call8 = call i64 @ktime_get() #7
  %sub.i = sub i64 %add.i30, %call8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %23 = call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #7
  %24 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %23, i32 0) #11, !srcloc !35
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %24, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %24, 1
  %25 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %23, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #11, !srcloc !36
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %25, 0
  %tmp.0.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %tmp.0.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %tmp.0.i.i.i
  %conv10 = trunc i64 %cond213.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv10)
  %cmp11 = icmp sgt i32 %conv10, 0
  br i1 %cmp11, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %add13 = add nuw i32 %conv10, 10
  call void @usleep_range_state(i32 noundef %conv10, i32 noundef %add13, i32 noundef 2) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %pwm_set_relative_duty_cycle.exit.for.end_crit_edge
  %enabled14 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %26 = ptrtoint ptr %enabled14 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %enabled14, align 4
  %call15 = call i32 @pwm_apply_state(ptr noundef %3, ptr noundef nonnull %state) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #7
  ret i32 %count
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pwm_ir_set_duty_cycle(ptr nocapture noundef readonly %dev, i32 noundef %duty_cycle) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %duty_cycle1 = getelementptr inbounds %struct.pwm_ir, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %duty_cycle1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %duty_cycle, ptr %duty_cycle1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pwm_ir_set_carrier(ptr nocapture noundef readonly %dev, i32 noundef %carrier) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %carrier)
  %tobool.not = icmp eq i32 %carrier, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %carrier1 = getelementptr inbounds %struct.pwm_ir, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %carrier1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %carrier, ptr %carrier1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_rc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_apply_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__initcall__kmod_pwm_ir_tx__228_126_pwm_ir_driver_init6, !1, !"__initcall__kmod_pwm_ir_tx__228_126_pwm_ir_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/pwm-ir-tx.c", i32 126, i32 1}
!2 = !{ptr @__exitcall_pwm_ir_driver_exit, !1, !"__exitcall_pwm_ir_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description229, !4, !"__UNIQUE_ID_description229", i1 false, i1 false}
!4 = !{!"../drivers/media/rc/pwm-ir-tx.c", i32 128, i32 1}
!5 = !{ptr @__UNIQUE_ID_author230, !6, !"__UNIQUE_ID_author230", i1 false, i1 false}
!6 = !{!"../drivers/media/rc/pwm-ir-tx.c", i32 129, i32 1}
!7 = !{ptr @__UNIQUE_ID_file231, !8, !"__UNIQUE_ID_file231", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/pwm-ir-tx.c", i32 130, i32 1}
!9 = !{ptr @__UNIQUE_ID_license232, !8, !"__UNIQUE_ID_license232", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/rc/pwm-ir-tx.c", i32 122, i32 11}
!12 = !{ptr @pwm_ir_driver, !13, !"pwm_ir_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/rc/pwm-ir-tx.c", i32 119, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/rc/pwm-ir-tx.c", i32 107, i32 23}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/rc/pwm-ir-tx.c", i32 114, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @pwm_ir_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @pwm_ir_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @pwm_ir_of_match, !25, !"pwm_ir_of_match", i1 false, i1 false}
!25 = !{!"../drivers/media/rc/pwm-ir-tx.c", i32 24, i32 34}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 1115578, i64 1115605, i64 1115627, i64 1115655}
!36 = !{i64 1115986, i64 1116013, i64 1116046, i64 1116067, i64 1116094, i64 1116120}
