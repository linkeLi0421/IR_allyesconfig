; ModuleID = '/llk/IR_all_yes/drivers/dma/dw/of.c_pt.bc'
source_filename = "../drivers/dma/dw/of.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.dw_dma_platform_data = type { i32, i32, i32, i32, i32, [4 x i32], [8 x i32], [8 x i32], i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dw_dma_slave = type { ptr, i8, i8, i8, i8, i8, i8 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.dw_dma = type { %struct.dma_device, [20 x i8], ptr, ptr, %struct.tasklet_struct, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dma-masters\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-channels\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"chan_allocation_order\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"chan_priority\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"block_size\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"data_width\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"data-width\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"multi-block\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snps,max-burst-len\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"snps,dma-protection-control\00", [36 x i8] zeroinitializer }, align 32
@dw_dma_of_controller_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 111, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"could not register of_dma_controller\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dw_dma_of_controller_register\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/dma/dw/of.c\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dw_dma_of_controller_register._entry_ptr = internal global ptr @dw_dma_of_controller_register._entry, section ".printk_index", align 4
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 57, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 62, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 74, i32 27 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 75, i32 27 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 77, i32 27 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 80, i32 38 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 86, i32 33 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 89, i32 33 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 92, i32 33 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 94, i32 27 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [23 x i8] c"../drivers/dma/dw/of.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 111, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @dw_dma_of_controller_register._entry, ptr @dw_dma_of_controller_register._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_dma_of_controller_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dw_dma_parse_dt(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  %arr = alloca [4 x i32], align 4
  %nr_masters = alloca i32, align 4
  %nr_channels = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %arr) #4
  %2 = call ptr @memset(ptr %arr, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_masters) #4
  %3 = ptrtoint ptr %nr_masters to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %nr_masters, align 4, !annotation !37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_channels) #4
  %4 = ptrtoint ptr %nr_channels to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %nr_channels, align 4, !annotation !37
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %nr_masters, i32 noundef 1, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %nr_masters to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_masters, align 4
  %7 = add i32 %6, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %7)
  %8 = icmp ult i32 %7, -4
  br i1 %8, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call.i.i77 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %nr_channels, i32 noundef 1, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i77)
  %tobool5.not = icmp sgt i32 %call.i.i77, -1
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %9 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %10)
  %cmp8 = icmp ugt i32 %10, 8
  br i1 %cmp8, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 108, i32 noundef 3520) #4
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %11 = ptrtoint ptr %nr_masters to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_masters, align 4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %call.i, align 4
  %14 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_channels, align 4
  %nr_channels17 = getelementptr inbounds %struct.dw_dma_platform_data, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %nr_channels17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %nr_channels17, align 4
  %chan_allocation_order = getelementptr inbounds %struct.dw_dma_platform_data, ptr %call.i, i32 0, i32 2
  %call.i.i78 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef %chan_allocation_order, i32 noundef 1, i32 noundef 0) #4
  %chan_priority = getelementptr inbounds %struct.dw_dma_platform_data, ptr %call.i, i32 0, i32 3
  %call.i.i79 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef %chan_priority, i32 noundef 1, i32 noundef 0) #4
  %block_size = getelementptr inbounds %struct.dw_dma_platform_data, ptr %call.i, i32 0, i32 4
  %call.i.i80 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef %block_size, i32 noundef 1, i32 noundef 0) #4
  %17 = ptrtoint ptr %nr_masters to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_masters, align 4
  %call.i81 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %arr, i32 noundef %18, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i81)
  %tobool22.not = icmp sgt i32 %call.i81, -1
  br i1 %tobool22.not, label %for.cond.preheader, label %if.end15.if.end26_crit_edge

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

for.cond.preheader:                               ; preds = %if.end15
  %19 = ptrtoint ptr %nr_masters to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr_masters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp2489.not = icmp eq i32 %20, 0
  br i1 %cmp2489.not, label %for.cond.preheader.if.end26_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end26_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %tmp.090 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr %arr, i32 0, i32 %tmp.090
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %and = and i32 %22, 7
  %shl = shl nuw nsw i32 1, %and
  %arrayidx25 = getelementptr %struct.dw_dma_platform_data, ptr %call.i, i32 0, i32 5, i32 %tmp.090
  %23 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shl, ptr %arrayidx25, align 4
  %inc = add nuw i32 %tmp.090, 1
  %exitcond.not = icmp eq i32 %inc, %20
  br i1 %exitcond.not, label %for.body.if.end26_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.if.end26_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.end26:                                         ; preds = %for.body.if.end26_crit_edge, %for.cond.preheader.if.end26_crit_edge, %if.end15.if.end26_crit_edge
  %data_width27 = getelementptr inbounds %struct.dw_dma_platform_data, ptr %call.i, i32 0, i32 5
  %24 = ptrtoint ptr %nr_masters to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr_masters, align 4
  %call.i82 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef %data_width27, i32 noundef %25, i32 noundef 0) #4
  %multi_block = getelementptr inbounds %struct.dw_dma_platform_data, ptr %call.i, i32 0, i32 6
  %26 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_channels, align 4
  %mul.i = shl i32 %27, 2
  %call.i83 = call ptr @__memset32(ptr noundef %multi_block, i32 noundef 1, i32 noundef %mul.i) #4
  %28 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nr_channels, align 4
  %call.i84 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef %multi_block, i32 noundef %29, i32 noundef 0) #4
  %max_burst = getelementptr inbounds %struct.dw_dma_platform_data, ptr %call.i, i32 0, i32 7
  %30 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr_channels, align 4
  %mul.i85 = shl i32 %31, 2
  %call.i86 = call ptr @__memset32(ptr noundef %max_burst, i32 noundef 256, i32 noundef %mul.i85) #4
  %32 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr_channels, align 4
  %call.i87 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef %max_burst, i32 noundef %33, i32 noundef 0) #4
  %protctl = getelementptr inbounds %struct.dw_dma_platform_data, ptr %call.i, i32 0, i32 8
  %call.i.i88 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef %protctl, i32 noundef 1, i32 noundef 0) #4
  %34 = ptrtoint ptr %protctl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %protctl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %35)
  %cmp42 = icmp ugt i32 %35, 7
  %.call12 = select i1 %cmp42, ptr null, ptr %call.i
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end3.cleanup_crit_edge ], [ null, %if.end7.cleanup_crit_edge ], [ null, %if.end10.cleanup_crit_edge ], [ %.call12, %if.end26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_channels) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_masters) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %arr) #4
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dw_dma_of_controller_register(ptr noundef %dw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.dma_device, ptr %dw, i32 0, i32 15
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @of_dma_controller_register(ptr noundef nonnull %3, ptr noundef nonnull @dw_dma_of_xlate, ptr noundef %dw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.10) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dw_dma_of_xlate(ptr nocapture noundef readonly %dma_spec, ptr nocapture noundef readonly %ofdma) #0 align 64 {
entry:
  %slave = alloca %struct.dw_dma_slave, align 4
  %cap = alloca %struct.dma_cap_mask_t, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %of_dma_data = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 5
  %0 = ptrtoint ptr %of_dma_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_dma_data, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %slave) #4
  %2 = getelementptr inbounds i8, ptr %slave, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %slave to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %slave, align 4
  %channels = getelementptr inbounds %struct.dw_dma_slave, ptr %slave, i32 0, i32 5
  %7 = getelementptr inbounds %struct.dw_dma_slave, ptr %slave, i32 0, i32 5
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cap) #4
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 1
  %9 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %args_count, align 4
  %11 = add i32 %10, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %11)
  %12 = icmp ult i32 %11, -2
  br i1 %12, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %src_id = getelementptr inbounds %struct.dw_dma_slave, ptr %slave, i32 0, i32 1
  %p_master = getelementptr inbounds %struct.dw_dma_slave, ptr %slave, i32 0, i32 4
  %m_master = getelementptr inbounds %struct.dw_dma_slave, ptr %slave, i32 0, i32 3
  %dst_id = getelementptr inbounds %struct.dw_dma_slave, ptr %slave, i32 0, i32 2
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %13 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %args, align 4
  %conv = trunc i32 %14 to i8
  %15 = ptrtoint ptr %src_id to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %src_id, align 4
  %16 = ptrtoint ptr %dst_id to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %dst_id, align 1
  %arrayidx9 = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx9, align 4
  %conv10 = trunc i32 %18 to i8
  %19 = ptrtoint ptr %m_master to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv10, ptr %m_master, align 2
  %arrayidx13 = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx13, align 4
  %conv14 = trunc i32 %21 to i8
  %22 = ptrtoint ptr %p_master to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv14, ptr %p_master, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp17 = icmp ugt i32 %10, 3
  br i1 %cmp17, label %if.then19, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx21 = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 3
  %23 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx21, align 4
  %conv22 = trunc i32 %24 to i8
  %25 = ptrtoint ptr %channels to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv22, ptr %channels, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.end.if.end24_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %conv)
  %cmp27 = icmp ugt i8 %conv, 15
  br i1 %cmp27, label %if.end24.do.end_crit_edge, label %lor.lhs.false34

if.end24.do.end_crit_edge:                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false34:                                  ; preds = %if.end24
  %conv36 = and i32 %18, 255
  %pdata = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 18
  %26 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdata, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv36)
  %cmp37.not = icmp ugt i32 %29, %conv36
  %conv41 = and i32 %21, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv41)
  %cmp44.not = icmp ugt i32 %29, %conv41
  %or.cond91 = select i1 %cmp37.not, i1 %cmp44.not, i1 false
  br i1 %or.cond91, label %lor.rhs, label %lor.lhs.false34.do.end_crit_edge

lor.lhs.false34.do.end_crit_edge:                 ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.rhs:                                          ; preds = %lor.lhs.false34
  %30 = ptrtoint ptr %channels to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %channels, align 4
  %conv47 = zext i8 %31 to i32
  %nr_channels = getelementptr inbounds %struct.dw_dma_platform_data, ptr %27, i32 0, i32 1
  %32 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr_channels, align 4
  %conv47.highbits = lshr i32 %conv47, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv47.highbits)
  %cmp49.not = icmp eq i32 %conv47.highbits, 0
  br i1 %cmp49.not, label %if.end73, label %lor.rhs.do.end_crit_edge, !prof !38

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %lor.lhs.false34.do.end_crit_edge, %if.end24.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 39, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end73:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %cap, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %cap) #4
  %call = call ptr @__dma_request_channel(ptr noundef nonnull %cap, ptr noundef nonnull @dw_dma_filter, ptr noundef nonnull %slave, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ %call, %if.end73 ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cap) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %slave) #4
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dw_dma_of_controller_free(ptr nocapture noundef readonly %dw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.dma_device, ptr %dw, i32 0, i32 15
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @of_dma_controller_free(ptr noundef nonnull %3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memset32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dw_dma_filter(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/dma/dw/of.c", i32 57, i32 31}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/dma/dw/of.c", i32 62, i32 31}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/dma/dw/of.c", i32 74, i32 27}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/dma/dw/of.c", i32 75, i32 27}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/dma/dw/of.c", i32 77, i32 27}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/dma/dw/of.c", i32 80, i32 38}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/dma/dw/of.c", i32 86, i32 33}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/dma/dw/of.c", i32 89, i32 33}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/dma/dw/of.c", i32 92, i32 33}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/dma/dw/of.c", i32 94, i32 27}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/dma/dw/of.c", i32 111, i32 3}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @dw_dma_of_controller_register._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @dw_dma_of_controller_register._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"auto-init"}
!38 = !{!"branch_weights", i32 2000, i32 1}
