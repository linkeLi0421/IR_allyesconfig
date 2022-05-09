; ModuleID = '/llk/IR_all_yes/drivers/input/rmi4/rmi_f55.c_pt.bc'
source_filename = "../drivers/input/rmi4/rmi_f55.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rmi_function_handler = type { %struct.device_driver, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rmi_function = type { %struct.rmi_function_descriptor, ptr, %struct.device, %struct.list_head, i32, [6 x i32], i32, [0 x i32] }
%struct.rmi_function_descriptor = type { i16, i16, i16, i16, i8, i8, i8 }
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
%struct.f55_data = type { ptr, [3 x i8], i8, i8, i8, i8 }
%struct.rmi_device = type { %struct.device, i32, ptr, ptr }
%struct.rmi_transport_dev = type { ptr, ptr, ptr, ptr, %struct.rmi_device_platform_data, ptr }
%struct.rmi_device_platform_data = type { i32, i32, %struct.rmi_device_platform_data_spi, %struct.rmi_2d_sensor_platform_data, %struct.rmi_f01_power_management, %struct.rmi_gpio_data }
%struct.rmi_device_platform_data_spi = type { i32, i32, i32, i32, i32, i32, i32, i8, i16, ptr, ptr }
%struct.rmi_2d_sensor_platform_data = type { %struct.rmi_2d_axis_alignment, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32 }
%struct.rmi_2d_axis_alignment = type { i8, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8 }
%struct.rmi_f01_power_management = type { i32, i8, i8, i8 }
%struct.rmi_gpio_data = type { i8, i8, i8 }
%struct.rmi_transport_ops = type { ptr, ptr, ptr }
%struct.rmi_driver_data = type { %struct.list_head, ptr, ptr, ptr, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, i8, i8, i8, i8, %struct.mutex, %struct.rmi4_attn_data, %struct.anon.72 }
%struct.rmi4_attn_data = type { i32, i32, ptr }
%struct.anon.72 = type { %union.anon.73, [16 x %struct.rmi4_attn_data] }
%union.anon.73 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rmi4_f55\00", [23 x i8] zeroinitializer }, align 32
@rmi_f55_handler = dso_local global { %struct.rmi_function_handler, [52 x i8] } { %struct.rmi_function_handler { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i8 85, ptr @rmi_f55_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@rmi_f55_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 49, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Failed to query F55 properties\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rmi_f55_detect\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/input/rmi4/rmi_f55.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rmi_f55_detect._entry_ptr = internal global ptr @rmi_f55_detect._entry, section ".printk_index", align 4
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"F55 num_rx_electrodes: %d (raw %d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"F55 num_tx_electrodes: %d (raw %d)\0A\00", [60 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 124, i32 11 }
@___asan_gen_.11 = private unnamed_addr constant [16 x i8] c"rmi_f55_handler\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 122, i32 29 }
@___asan_gen_.14 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 48, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 100, i32 34 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [32 x i8] c"../drivers/input/rmi4/rmi_f55.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 102, i32 34 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @rmi_f55_detect._entry, ptr @rmi_f55_detect._entry_ptr, ptr @.str, ptr @rmi_f55_handler, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f55_handler to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f55_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_f55_probe(ptr noundef %fn) #0 align 64 {
entry:
  %buf.i = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %fn, ptr %call.i, align 4
  %driver_data.i = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i, align 4
  %rmi_dev1.i = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 1
  %2 = ptrtoint ptr %rmi_dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmi_dev1.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = ptrtoint ptr %fn to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %fn, align 8
  %qry.i = getelementptr inbounds %struct.f55_data, ptr %call.i, i32 0, i32 1
  %xport.i.i = getelementptr inbounds %struct.rmi_device, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %xport.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xport.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i.i, align 4
  %read_block.i.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %read_block.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_block.i.i, align 4
  %call.i.i = tail call i32 %13(ptr noundef %9, i16 noundef zeroext %7, ptr noundef %qry.i, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %14 = ptrtoint ptr %qry.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %qry.i, align 4
  %num_rx_electrodes.i = getelementptr inbounds %struct.f55_data, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %num_rx_electrodes.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %num_rx_electrodes.i, align 1
  %arrayidx9.i = getelementptr %struct.f55_data, ptr %call.i, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx9.i, align 1
  %num_tx_electrodes.i = getelementptr inbounds %struct.f55_data, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %num_tx_electrodes.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %num_tx_electrodes.i, align 1
  %cfg_num_rx_electrodes.i = getelementptr inbounds %struct.f55_data, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %cfg_num_rx_electrodes.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %15, ptr %cfg_num_rx_electrodes.i, align 4
  %cfg_num_tx_electrodes.i = getelementptr inbounds %struct.f55_data, ptr %call.i, i32 0, i32 5
  %21 = ptrtoint ptr %cfg_num_tx_electrodes.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %15, ptr %cfg_num_tx_electrodes.i, align 2
  %num_rx_electrodes13.i = getelementptr inbounds %struct.rmi_driver_data, ptr %5, i32 0, i32 16
  %22 = ptrtoint ptr %num_rx_electrodes13.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %15, ptr %num_rx_electrodes13.i, align 1
  %23 = load i8, ptr %cfg_num_rx_electrodes.i, align 4
  %num_tx_electrodes15.i = getelementptr inbounds %struct.rmi_driver_data, ptr %5, i32 0, i32 17
  %24 = ptrtoint ptr %num_tx_electrodes15.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %num_tx_electrodes15.i, align 2
  %arrayidx17.i = getelementptr %struct.f55_data, ptr %call.i, i32 0, i32 1, i32 2
  %25 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx17.i, align 2
  %27 = and i8 %26, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool18.not.i = icmp eq i8 %27, 0
  br i1 %tobool18.not.i, label %if.end.i.if.end77.i_crit_edge, label %if.then19.i

if.end.i.if.end77.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end77.i

if.then19.i:                                      ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf.i) #4
  %28 = call ptr @memset(ptr %buf.i, i32 255, i32 256)
  %29 = ptrtoint ptr %rmi_dev1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmi_dev1.i, align 4
  %control_base_addr.i = getelementptr inbounds %struct.rmi_function_descriptor, ptr %fn, i32 0, i32 2
  %31 = ptrtoint ptr %control_base_addr.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %control_base_addr.i, align 4
  %add.i = add i16 %32, 1
  %33 = ptrtoint ptr %num_rx_electrodes.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %num_rx_electrodes.i, align 1
  %conv25.i = zext i8 %34 to i32
  %xport.i140.i = getelementptr inbounds %struct.rmi_device, ptr %30, i32 0, i32 3
  %35 = ptrtoint ptr %xport.i140.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %xport.i140.i, align 8
  %ops.i141.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %ops.i141.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i141.i, align 4
  %read_block.i142.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %read_block.i142.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read_block.i142.i, align 4
  %call.i143.i = call i32 %40(ptr noundef %36, i16 noundef zeroext %add.i, ptr noundef nonnull %buf.i, i32 noundef %conv25.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i143.i)
  %tobool27.not.i = icmp eq i32 %call.i143.i, 0
  br i1 %tobool27.not.i, label %for.cond.preheader.i, label %if.then19.i.if.end43.i_crit_edge

if.then19.i.if.end43.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43.i

for.cond.preheader.i:                             ; preds = %if.then19.i
  %41 = ptrtoint ptr %num_rx_electrodes.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %num_rx_electrodes.i, align 1
  %conv30.i = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp148.not.i = icmp eq i8 %42, 0
  br i1 %cmp148.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %total.0150.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.0149.i = phi i32 [ %inc38.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx32.i = getelementptr [256 x i8], ptr %buf.i, i32 0, i32 %i.0149.i
  %43 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx32.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %44)
  %cmp34.not.i = icmp ne i8 %44, -1
  %inc.i = zext i1 %cmp34.not.i to i32
  %spec.select.i = add i32 %total.0150.i, %inc.i
  %inc38.i = add nuw nsw i32 %i.0149.i, 1
  %exitcond.not.i = icmp eq i32 %inc38.i, %conv30.i
  br i1 %exitcond.not.i, label %for.end.loopexit.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %phi.cast156.i = trunc i32 %spec.select.i to i8
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.i, %for.cond.preheader.i.for.end.i_crit_edge
  %total.0.lcssa.i = phi i8 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %phi.cast156.i, %for.end.loopexit.i ]
  %45 = ptrtoint ptr %cfg_num_rx_electrodes.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %total.0.lcssa.i, ptr %cfg_num_rx_electrodes.i, align 4
  %46 = ptrtoint ptr %num_rx_electrodes13.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %total.0.lcssa.i, ptr %num_rx_electrodes13.i, align 1
  br label %if.end43.i

if.end43.i:                                       ; preds = %for.end.i, %if.then19.i.if.end43.i_crit_edge
  %47 = ptrtoint ptr %rmi_dev1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rmi_dev1.i, align 4
  %49 = ptrtoint ptr %control_base_addr.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %control_base_addr.i, align 4
  %add48.i = add i16 %50, 2
  %51 = ptrtoint ptr %num_tx_electrodes.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %num_tx_electrodes.i, align 1
  %conv52.i = zext i8 %52 to i32
  %xport.i144.i = getelementptr inbounds %struct.rmi_device, ptr %48, i32 0, i32 3
  %53 = ptrtoint ptr %xport.i144.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %xport.i144.i, align 8
  %ops.i145.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %ops.i145.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops.i145.i, align 4
  %read_block.i146.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %read_block.i146.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %read_block.i146.i, align 4
  %call.i147.i = call i32 %58(ptr noundef %54, i16 noundef zeroext %add48.i, ptr noundef nonnull %buf.i, i32 noundef %conv52.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147.i)
  %tobool54.not.i = icmp eq i32 %call.i147.i, 0
  br i1 %tobool54.not.i, label %for.cond56.preheader.i, label %if.end43.i.if.end76.i_crit_edge

if.end43.i.if.end76.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end76.i

for.cond56.preheader.i:                           ; preds = %if.end43.i
  %59 = ptrtoint ptr %num_tx_electrodes.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %num_tx_electrodes.i, align 1
  %conv58.i = zext i8 %60 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp59151.not.i = icmp eq i8 %60, 0
  br i1 %cmp59151.not.i, label %for.cond56.preheader.i.for.end71.i_crit_edge, label %for.cond56.preheader.i.for.body61.i_crit_edge

for.cond56.preheader.i.for.body61.i_crit_edge:    ; preds = %for.cond56.preheader.i
  br label %for.body61.i

for.cond56.preheader.i.for.end71.i_crit_edge:     ; preds = %for.cond56.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end71.i

for.body61.i:                                     ; preds = %for.body61.i.for.body61.i_crit_edge, %for.cond56.preheader.i.for.body61.i_crit_edge
  %total.2153.i = phi i32 [ %spec.select138.i, %for.body61.i.for.body61.i_crit_edge ], [ 0, %for.cond56.preheader.i.for.body61.i_crit_edge ]
  %i.1152.i = phi i32 [ %inc70.i, %for.body61.i.for.body61.i_crit_edge ], [ 0, %for.cond56.preheader.i.for.body61.i_crit_edge ]
  %arrayidx62.i = getelementptr [256 x i8], ptr %buf.i, i32 0, i32 %i.1152.i
  %61 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx62.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %62)
  %cmp64.not.i = icmp ne i8 %62, -1
  %inc67.i = zext i1 %cmp64.not.i to i32
  %spec.select138.i = add i32 %total.2153.i, %inc67.i
  %inc70.i = add nuw nsw i32 %i.1152.i, 1
  %exitcond155.not.i = icmp eq i32 %inc70.i, %conv58.i
  br i1 %exitcond155.not.i, label %for.end71.loopexit.i, label %for.body61.i.for.body61.i_crit_edge

for.body61.i.for.body61.i_crit_edge:              ; preds = %for.body61.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body61.i

for.end71.loopexit.i:                             ; preds = %for.body61.i
  call void @__sanitizer_cov_trace_pc() #6
  %phi.cast.i = trunc i32 %spec.select138.i to i8
  br label %for.end71.i

for.end71.i:                                      ; preds = %for.end71.loopexit.i, %for.cond56.preheader.i.for.end71.i_crit_edge
  %total.2.lcssa.i = phi i8 [ 0, %for.cond56.preheader.i.for.end71.i_crit_edge ], [ %phi.cast.i, %for.end71.loopexit.i ]
  %63 = ptrtoint ptr %cfg_num_tx_electrodes.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %total.2.lcssa.i, ptr %cfg_num_tx_electrodes.i, align 2
  %64 = ptrtoint ptr %num_tx_electrodes15.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %total.2.lcssa.i, ptr %num_tx_electrodes15.i, align 2
  br label %if.end76.i

if.end76.i:                                       ; preds = %for.end71.i, %if.end43.i.if.end76.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf.i) #4
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.end76.i, %if.end.i.if.end77.i_crit_edge
  %65 = ptrtoint ptr %cfg_num_rx_electrodes.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %cfg_num_rx_electrodes.i, align 4
  %conv80.i = zext i8 %66 to i32
  %67 = ptrtoint ptr %num_rx_electrodes.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %num_rx_electrodes.i, align 1
  %conv82.i = zext i8 %68 to i32
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %conv80.i, i32 noundef %conv82.i) #4
  %69 = ptrtoint ptr %cfg_num_tx_electrodes.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %cfg_num_tx_electrodes.i, align 2
  %conv85.i = zext i8 %70 to i32
  %71 = ptrtoint ptr %num_tx_electrodes.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %num_tx_electrodes.i, align 1
  %conv87.i = zext i8 %72 to i32
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %conv85.i, i32 noundef %conv87.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end77.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call.i.i, %do.end.i ], [ 0, %if.end77.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmi_dbg(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/input/rmi4/rmi_f55.c", i32 124, i32 11}
!2 = !{ptr @rmi_f55_handler, !3, !"rmi_f55_handler", i1 false, i1 false}
!3 = !{!"../drivers/input/rmi4/rmi_f55.c", i32 122, i32 29}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/input/rmi4/rmi_f55.c", i32 48, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @rmi_f55_detect._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @rmi_f55_detect._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/rmi4/rmi_f55.c", i32 100, i32 34}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/rmi4/rmi_f55.c", i32 102, i32 34}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
