; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-at91-slave.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-at91-slave.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.at91_twi_dev = type { ptr, ptr, %struct.completion, ptr, ptr, i32, ptr, i32, i32, i32, %struct.i2c_adapter, i32, ptr, i8, i8, i8, i32, %struct.at91_twi_dma, i8, %struct.i2c_bus_recovery_info, i32, ptr, i8, i8, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.at91_twi_dma = type { ptr, ptr, [2 x %struct.scatterlist], ptr, i32, i8, i8 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.i2c_bus_recovery_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }

@at91_twi_probe_slave._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 127, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Cannot get irq %d: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"at91_twi_probe_slave\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/i2c/busses/i2c-at91-slave.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@at91_twi_probe_slave._entry_ptr = internal global ptr @at91_twi_probe_slave._entry, section ".printk_index", align 4
@at91_twi_algorithm_slave = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr null, ptr null, ptr null, ptr null, ptr @at91_twi_func, ptr @at91_reg_slave, ptr @at91_unreg_slave }, [36 x i8] zeroinitializer }, align 32
@at91_reg_slave._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 84, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"entered slave mode (ADR=%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"at91_reg_slave\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@at91_reg_slave._entry_ptr = internal global ptr @at91_reg_slave._entry, section ".printk_index", align 4
@at91_unreg_slave._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 95, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"leaving slave mode\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"at91_unreg_slave\00", [47 x i8] zeroinitializer }, align 32
@at91_unreg_slave._entry_ptr = internal global ptr @at91_unreg_slave._entry, section ".printk_index", align 4
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 127, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [25 x i8] c"at91_twi_algorithm_slave\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 113, i32 35 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 84, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private constant [39 x i8] c"../drivers/i2c/busses/i2c-at91-slave.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 95, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @at91_reg_slave._entry, ptr @at91_reg_slave._entry_ptr, ptr @at91_twi_probe_slave._entry, ptr @at91_twi_probe_slave._entry_ptr, ptr @at91_unreg_slave._entry, ptr @at91_unreg_slave._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @at91_twi_algorithm_slave, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_twi_probe_slave._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_twi_algorithm_slave to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_reg_slave._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_unreg_slave._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @at91_twi_probe_slave(ptr noundef %pdev, i32 noundef %phy_addr, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %irq = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %entry.dev_name.exit_crit_edge ]
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %1, ptr noundef nonnull @atmel_twi_interrupt_slave, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str, i32 noundef %11, i32 noundef %call.i) #8
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %algo = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 10, i32 2
  %12 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @at91_twi_algorithm_slave, ptr %algo, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i32 %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_twi_interrupt_slave(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @at91_twi_read(ptr noundef %dev_id, i32 noundef 32) #5
  %call1 = tail call i32 @at91_twi_read(ptr noundef %dev_id, i32 noundef 44) #5
  %and = and i32 %call1, %call
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #5
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value, align 1, !annotation !30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %and, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end12_crit_edge, label %if.then4

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then4:                                         ; preds = %if.end
  %and5 = and i32 %call, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %slave9 = getelementptr inbounds %struct.at91_twi_dev, ptr %dev_id, i32 0, i32 21
  %1 = ptrtoint ptr %slave9 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %slave9, align 8
  %slave_cb.i58 = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %slave_cb.i58 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %slave_cb.i58, align 8
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = call i32 %4(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %value) #5
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %value, align 1
  %base = getelementptr inbounds %struct.at91_twi_dev, ptr %dev_id, i32 0, i32 1
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 52
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %6) #5, !srcloc !31
  br label %if.end11

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %call.i59 = call i32 %4(ptr noundef %2, i32 noundef 1, ptr noundef nonnull %value) #5
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then7
  %.sink = phi i32 [ 2050, %if.else ], [ 2052, %if.then7 ]
  call void @at91_twi_write(ptr noundef %dev_id, i32 noundef 36, i32 noundef %.sink) #5
  call void @at91_twi_write(ptr noundef %dev_id, i32 noundef 40, i32 noundef 16) #5
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end.if.end12_crit_edge
  %and13 = and i32 %and, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end20_crit_edge, label %if.then15

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %slave16 = getelementptr inbounds %struct.at91_twi_dev, ptr %dev_id, i32 0, i32 21
  %9 = ptrtoint ptr %slave16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %slave16, align 8
  %slave_cb.i60 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %slave_cb.i60 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %slave_cb.i60, align 8
  %call.i61 = call i32 %12(ptr noundef %10, i32 noundef 2, ptr noundef nonnull %value) #5
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %value, align 1
  %base18 = getelementptr inbounds %struct.at91_twi_dev, ptr %dev_id, i32 0, i32 1
  %15 = ptrtoint ptr %base18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base18, align 4
  %add.ptr19 = getelementptr i8, ptr %16, i32 52
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19, i8 %14) #5, !srcloc !31
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.end12.if.end20_crit_edge
  %and21 = and i32 %and, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end29_crit_edge, label %if.then23

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %base24 = getelementptr inbounds %struct.at91_twi_dev, ptr %dev_id, i32 0, i32 1
  %17 = ptrtoint ptr %base24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base24, align 4
  %add.ptr25 = getelementptr i8, ptr %18, i32 48
  %19 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr25) #5, !srcloc !32
  %20 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %value, align 1
  %slave27 = getelementptr inbounds %struct.at91_twi_dev, ptr %dev_id, i32 0, i32 21
  %21 = ptrtoint ptr %slave27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %slave27, align 8
  %slave_cb.i62 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %slave_cb.i62 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %slave_cb.i62, align 8
  %call.i63 = call i32 %24(ptr noundef %22, i32 noundef 3, ptr noundef nonnull %value) #5
  br label %if.end29

if.end29:                                         ; preds = %if.then23, %if.end20.if.end29_crit_edge
  %and30 = and i32 %and, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.cleanup_crit_edge, label %if.then32

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  call void @at91_twi_write(ptr noundef %dev_id, i32 noundef 40, i32 noundef 2054) #5
  call void @at91_twi_write(ptr noundef %dev_id, i32 noundef 36, i32 noundef 16) #5
  %slave33 = getelementptr inbounds %struct.at91_twi_dev, ptr %dev_id, i32 0, i32 21
  %25 = ptrtoint ptr %slave33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %slave33, align 8
  %slave_cb.i64 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %slave_cb.i64 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %slave_cb.i64, align 8
  %call.i65 = call i32 %28(ptr noundef %26, i32 noundef 4, ptr noundef nonnull %value) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end29.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then32 ], [ 1, %if.end29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #5
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @at91_init_twi_bus_slave(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @at91_twi_write(ptr noundef %dev, i32 noundef 0, i32 noundef 8) #5
  %slave_detected = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %slave_detected to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %slave_detected, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %smr = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 20
  %2 = ptrtoint ptr %smr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %smr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @at91_twi_write(ptr noundef %dev, i32 noundef 8, i32 noundef %3) #5
  tail call void @at91_twi_write(ptr noundef %dev, i32 noundef 0, i32 noundef 16) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @at91_twi_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @at91_twi_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @at91_twi_func(ptr nocapture noundef readnone %adapter) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 268369961
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_reg_slave(ptr noundef %slave) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %slave, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %slave1 = getelementptr inbounds %struct.at91_twi_dev, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %slave1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave1, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %slave to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %slave, align 8
  %8 = and i16 %7, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool2.not = icmp eq i16 %8, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #5
  %11 = ptrtoint ptr %slave1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %slave, ptr %slave1, align 8
  %addr = getelementptr inbounds %struct.i2c_client, ptr %slave, i32 0, i32 1
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr, align 2
  %14 = and i16 %13, 127
  %and9 = zext i16 %14 to i32
  %shl = shl nuw nsw i32 %and9, 16
  %smr = getelementptr inbounds %struct.at91_twi_dev, ptr %3, i32 0, i32 20
  %15 = ptrtoint ptr %smr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shl, ptr %smr, align 4
  tail call void @at91_init_twi_bus(ptr noundef %3) #5
  tail call void @at91_twi_write(ptr noundef %3, i32 noundef 36, i32 noundef 16) #5
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 8
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %addr, align 2
  %conv12 = zext i16 %19 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.5, i32 noundef %conv12) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -16, %entry.cleanup_crit_edge ], [ -97, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_unreg_slave(ptr nocapture noundef readonly %slave) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %slave, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %slave1 = getelementptr inbounds %struct.at91_twi_dev, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %slave1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave1, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !34

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 93, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.8) #8
  %8 = ptrtoint ptr %slave1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %slave1, align 8
  %smr = getelementptr inbounds %struct.at91_twi_dev, ptr %3, i32 0, i32 20
  %9 = ptrtoint ptr %smr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %smr, align 4
  tail call void @at91_init_twi_bus(ptr noundef %3) #5
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 5) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @at91_init_twi_bus(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-at91-slave.c", i32 127, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @at91_twi_probe_slave._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @at91_twi_probe_slave._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @at91_twi_algorithm_slave, !9, !"at91_twi_algorithm_slave", i1 false, i1 false}
!9 = !{!"../drivers/i2c/busses/i2c-at91-slave.c", i32 113, i32 35}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-at91-slave.c", i32 84, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @at91_reg_slave._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @at91_reg_slave._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-at91-slave.c", i32 95, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @at91_unreg_slave._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @at91_unreg_slave._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"auto-init"}
!31 = !{i64 6824528}
!32 = !{i64 6824923}
!33 = !{i8 0, i8 2}
!34 = !{!"branch_weights", i32 1, i32 2000}
