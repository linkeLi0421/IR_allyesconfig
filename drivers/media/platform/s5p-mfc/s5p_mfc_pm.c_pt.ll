; ModuleID = '/llk/IR_all_yes/drivers/media/platform/s5p-mfc/s5p_mfc_pm.c_pt.bc'
source_filename = "../drivers/media/platform/s5p-mfc/s5p_mfc_pm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.s5p_mfc_dev = type { %struct.v4l2_device, ptr, ptr, ptr, [2 x ptr], ptr, i32, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.s5p_mfc_pm, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.mutex, i32, i32, i32, %struct.wait_queue_head, %struct.s5p_mfc_priv_buf, i32, i32, ptr, ptr, [2 x i32], i32, [4 x ptr], i32, i32, %struct.atomic_t, %struct.timer_list, ptr, %struct.work_struct, i32, %struct.s5p_mfc_priv_buf, i32, ptr, ptr, ptr, i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.s5p_mfc_pm = type { ptr, ptr, [4 x ptr], i32, i8, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.s5p_mfc_priv_buf = type { i32, ptr, i32, i32, i32 }
%struct.s5p_mfc_variant = type { i32, i32, i32, ptr, [2 x ptr], [4 x ptr], i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@pm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@p_dev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@s5p_mfc_init_pm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s:%d: Failed to get clock: %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s5p_mfc_init_pm\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/media/platform/s5p-mfc/s5p_mfc_pm.c\00", [52 x i8] zeroinitializer }, align 32
@s5p_mfc_init_pm._entry_ptr = internal global ptr @s5p_mfc_init_pm._entry, section ".printk_index", align 4
@clk_ref = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@mfc_debug_level = external dso_local local_unnamed_addr global i32, align 4
@s5p_mfc_clock_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017%s:%d: + %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s5p_mfc_clock_on\00", [47 x i8] zeroinitializer }, align 32
@s5p_mfc_clock_on._entry_ptr = internal global ptr @s5p_mfc_clock_on._entry, section ".printk_index", align 4
@s5p_mfc_clock_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017%s:%d: - %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s5p_mfc_clock_off\00", [46 x i8] zeroinitializer }, align 32
@s5p_mfc_clock_off._entry_ptr = internal global ptr @s5p_mfc_clock_off._entry, section ".printk_index", align 4
@s5p_mfc_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s:%d: clock prepare failed for clock: %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s5p_mfc_power_on\00", [47 x i8] zeroinitializer }, align 32
@s5p_mfc_power_on._entry_ptr = internal global ptr @s5p_mfc_power_on._entry, section ".printk_index", align 4
@___asan_gen_.9 = private unnamed_addr constant [3 x i8] c"pm\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 17, i32 27 }
@___asan_gen_.12 = private unnamed_addr constant [6 x i8] c"p_dev\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 18, i32 28 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 42, i32 4 }
@___asan_gen_.27 = private unnamed_addr constant [8 x i8] c"clk_ref\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 19, i32 17 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 64, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 72, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [47 x i8] c"../drivers/media/platform/s5p-mfc/s5p_mfc_pm.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 89, i32 4 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @s5p_mfc_clock_off._entry, ptr @s5p_mfc_clock_off._entry_ptr, ptr @s5p_mfc_clock_on._entry, ptr @s5p_mfc_clock_on._entry_ptr, ptr @s5p_mfc_init_pm._entry, ptr @s5p_mfc_init_pm._entry_ptr, ptr @s5p_mfc_power_on._entry, ptr @s5p_mfc_power_on._entry_ptr, ptr @pm, ptr @p_dev, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @clk_ref, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_init_pm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_ref to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_clock_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_clock_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_init_pm(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pm = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 9
  store ptr %pm, ptr @pm, align 4
  store ptr %dev, ptr @p_dev, align 4
  %variant = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant, align 4
  %num_clocks = getelementptr inbounds %struct.s5p_mfc_variant, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_clocks, align 4
  %num_clocks1 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 9, i32 3
  %4 = ptrtoint ptr %num_clocks1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %num_clocks1, align 4
  %clk_names = getelementptr inbounds %struct.s5p_mfc_variant, ptr %1, i32 0, i32 5
  %clk_names3 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 9, i32 1
  %5 = ptrtoint ptr %clk_names3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %clk_names, ptr %clk_names3, align 4
  %plat_dev = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %plat_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %plat_dev, align 4
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %device = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 9, i32 5
  %8 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev4, ptr %device, align 4
  %9 = ptrtoint ptr %pm to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %pm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp55 = icmp sgt i32 %3, 0
  br i1 %cmp55, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %10 = phi ptr [ %28, %for.inc.for.body_crit_edge ], [ %pm, %entry.for.body_crit_edge ]
  %i.056 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %device6 = getelementptr inbounds %struct.s5p_mfc_pm, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %device6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device6, align 4
  %clk_names7 = getelementptr inbounds %struct.s5p_mfc_pm, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %clk_names7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk_names7, align 4
  %arrayidx = getelementptr ptr, ptr %14, i32 %i.056
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %call = tail call ptr @devm_clk_get(ptr noundef %12, ptr noundef %16) #4
  %17 = load ptr, ptr @pm, align 4
  %arrayidx8 = getelementptr %struct.s5p_mfc_pm, ptr %17, i32 0, i32 2, i32 %i.056
  %18 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call, ptr %arrayidx8, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.056)
  %tobool.not = icmp ne i32 %i.056, 0
  %cmp15 = icmp eq ptr %call, inttoptr (i32 -2 to ptr)
  %or.cond = select i1 %tobool.not, i1 %cmp15, i1 false
  br i1 %or.cond, label %if.then16, label %do.end

if.then16:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx8, align 4
  br label %for.inc

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %clk_names20 = getelementptr inbounds %struct.s5p_mfc_pm, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %clk_names20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk_names20, align 4
  %arrayidx21 = getelementptr ptr, ptr %21, i32 %i.056
  %22 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx21, align 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 43, ptr noundef %23) #7
  %24 = load ptr, ptr @pm, align 4
  %arrayidx26 = getelementptr %struct.s5p_mfc_pm, ptr %24, i32 0, i32 2, i32 %i.056
  %25 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx26, align 4
  %27 = ptrtoint ptr %26 to i32
  br label %cleanup

for.inc:                                          ; preds = %if.then16, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.056, 1
  %28 = load ptr, ptr @pm, align 4
  %num_clocks5 = getelementptr inbounds %struct.s5p_mfc_pm, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %num_clocks5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_clocks5, align 4
  %cmp = icmp slt i32 %inc, %30
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi ptr [ %pm, %entry.for.end_crit_edge ], [ %28, %for.inc.for.end_crit_edge ]
  %31 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %variant, align 4
  %use_clock_gating = getelementptr inbounds %struct.s5p_mfc_variant, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %use_clock_gating to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %use_clock_gating, align 4, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool30.not = icmp eq i8 %34, 0
  br i1 %tobool30.not, label %for.end.if.end35_crit_edge, label %if.then31

for.end.if.end35_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then31:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %clocks32 = getelementptr inbounds %struct.s5p_mfc_pm, ptr %.lcssa, i32 0, i32 2
  %35 = ptrtoint ptr %clocks32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clocks32, align 4
  %37 = ptrtoint ptr %.lcssa to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %.lcssa, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %for.end.if.end35_crit_edge
  %device36 = getelementptr inbounds %struct.s5p_mfc_pm, ptr %.lcssa, i32 0, i32 5
  %38 = ptrtoint ptr %device36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device36, align 4
  tail call void @pm_runtime_enable(ptr noundef %39) #4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @clk_ref, i32 noundef 4) #4
  store volatile i32 0, ptr @clk_ref, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %do.end
  %retval.0 = phi i32 [ %27, %do.end ], [ 0, %if.end35 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s5p_mfc_final_pm(ptr nocapture noundef readnone %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pm, align 4
  %device = getelementptr inbounds %struct.s5p_mfc_pm, ptr %0, i32 0, i32 5
  %1 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device, align 4
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_clock_on() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @clk_ref, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr nonnull @clk_ref, i32 1, i32 3, i32 1) #4
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @clk_ref, ptr nonnull @clk_ref, i32 1, ptr nonnull elementtype(i32) @clk_ref) #4, !srcloc !37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %1 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp sgt i32 %1, 2
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i5 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @clk_ref, i32 noundef 4) #4
  %2 = load volatile i32, ptr @clk_ref, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 64, i32 noundef %2) #7
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %3 = load ptr, ptr @pm, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call4 = tail call i32 @clk_enable(ptr noundef %5) #4
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s5p_mfc_clock_off() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @clk_ref, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr nonnull @clk_ref, i32 1, i32 3, i32 1) #4
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @clk_ref, ptr nonnull @clk_ref, i32 1, ptr nonnull elementtype(i32) @clk_ref) #4, !srcloc !38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %1 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp sgt i32 %1, 2
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i4 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @clk_ref, i32 noundef 4) #4
  %2 = load volatile i32, ptr @clk_ref, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 72, i32 noundef %2) #7
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %3 = load ptr, ptr @pm, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %5) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_power_on() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pm, align 4
  %device = getelementptr inbounds %struct.s5p_mfc_pm, ptr %0, i32 0, i32 5
  %1 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %3 = load ptr, ptr @pm, align 4
  %num_clocks36 = getelementptr inbounds %struct.s5p_mfc_pm, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %num_clocks36 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_clocks36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp137 = icmp sgt i32 %5, 0
  br i1 %cmp137, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #4
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #4, !srcloc !40
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !41
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %7 = phi ptr [ %15, %for.inc.for.body_crit_edge ], [ %3, %for.cond.preheader.for.body_crit_edge ]
  %i.038 = phi i32 [ %inc11, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.s5p_mfc_pm, ptr %7, i32 0, i32 2, i32 %i.038
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call.i27 = tail call i32 @clk_prepare(ptr noundef %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool.not.i = icmp eq i32 %call.i27, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.clk_prepare_enable.exit_crit_edge

for.body.clk_prepare_enable.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %for.body
  %call1.i = tail call i32 @clk_enable(ptr noundef %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.for.inc_crit_edge, label %if.then3.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %9) #4
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %for.body.clk_prepare_enable.exit_crit_edge
  %retval.0.i28 = phi i32 [ %call.i27, %for.body.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i28)
  %cmp3 = icmp slt i32 %retval.0.i28, 0
  br i1 %cmp3, label %do.end, label %clk_prepare_enable.exit.for.inc_crit_edge

clk_prepare_enable.exit.for.inc_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

do.end:                                           ; preds = %clk_prepare_enable.exit
  %10 = load ptr, ptr @pm, align 4
  %clk_names = getelementptr inbounds %struct.s5p_mfc_pm, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %clk_names to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk_names, align 4
  %arrayidx6 = getelementptr ptr, ptr %12, i32 %i.038
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx6, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 90, ptr noundef %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.038)
  %cmp1240.not = icmp eq i32 %i.038, 0
  br i1 %cmp1240.not, label %do.end.while.end_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

for.inc:                                          ; preds = %clk_prepare_enable.exit.for.inc_crit_edge, %if.end.i.for.inc_crit_edge
  %inc11 = add nuw nsw i32 %i.038, 1
  %15 = load ptr, ptr @pm, align 4
  %num_clocks = getelementptr inbounds %struct.s5p_mfc_pm, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_clocks, align 4
  %cmp1 = icmp slt i32 %inc11, %17
  br i1 %cmp1, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi ptr [ %3, %for.cond.preheader.for.end_crit_edge ], [ %15, %for.inc.for.end_crit_edge ]
  %18 = ptrtoint ptr %.lcssa to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %.lcssa, align 4
  tail call void @clk_disable(ptr noundef %19) #4
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end.while.body_crit_edge
  %dec41 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.038, %do.end.while.body_crit_edge ]
  %20 = load ptr, ptr @pm, align 4
  %arrayidx14 = getelementptr %struct.s5p_mfc_pm, ptr %20, i32 0, i32 2, i32 %dec41
  %21 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx14, align 4
  tail call void @clk_disable(ptr noundef %22) #4
  tail call void @clk_unprepare(ptr noundef %22) #4
  %dec = add nsw i32 %dec41, -1
  %cmp12 = icmp sgt i32 %dec41, 1
  br i1 %cmp12, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end.while.end_crit_edge
  %23 = load ptr, ptr @pm, align 4
  %device15 = getelementptr inbounds %struct.s5p_mfc_pm, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %device15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device15, align 4
  %call.i29 = tail call i32 @__pm_runtime_idle(ptr noundef %25, i32 noundef 5) #4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %for.end, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i28, %while.end ], [ 0, %for.end ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_power_off() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pm, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %call = tail call i32 @clk_enable(ptr noundef %2) #4
  %3 = load ptr, ptr @pm, align 4
  %num_clocks4 = getelementptr inbounds %struct.s5p_mfc_pm, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %num_clocks4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_clocks4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5 = icmp sgt i32 %5, 0
  br i1 %cmp5, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %6 = phi ptr [ %9, %for.body.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %i.06 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.s5p_mfc_pm, ptr %6, i32 0, i32 2, i32 %i.06
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %8) #4
  tail call void @clk_unprepare(ptr noundef %8) #4
  %inc = add nuw nsw i32 %i.06, 1
  %9 = load ptr, ptr @pm, align 4
  %num_clocks = getelementptr inbounds %struct.s5p_mfc_pm, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_clocks, align 4
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi ptr [ %3, %entry.for.end_crit_edge ], [ %9, %for.body.for.end_crit_edge ]
  %device = getelementptr inbounds %struct.s5p_mfc_pm, ptr %.lcssa, i32 0, i32 5
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %13, i32 noundef 4) #4
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !21, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_pm.c", i32 42, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @s5p_mfc_init_pm._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @s5p_mfc_init_pm._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_pm.c", i32 64, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @s5p_mfc_clock_on._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @s5p_mfc_clock_on._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_pm.c", i32 72, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @s5p_mfc_clock_off._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @s5p_mfc_clock_off._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_pm.c", i32 89, i32 4}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @s5p_mfc_power_on._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @s5p_mfc_power_on._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @pm, !22, !"pm", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_pm.c", i32 17, i32 27}
!23 = !{ptr @p_dev, !24, !"p_dev", i1 false, i1 false}
!24 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_pm.c", i32 18, i32 28}
!25 = !{ptr @clk_ref, !26, !"clk_ref", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_pm.c", i32 19, i32 17}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i8 0, i8 2}
!37 = !{i64 2148240454, i64 2148240480, i64 2148240509, i64 2148240543, i64 2148240574, i64 2148240597}
!38 = !{i64 2148242919, i64 2148242945, i64 2148242974, i64 2148243008, i64 2148243039, i64 2148243062}
!39 = !{i64 2148239873}
!40 = !{i64 724696, i64 724721, i64 724743, i64 724759, i64 724771, i64 724791, i64 724815, i64 724831, i64 724843}
!41 = !{i64 2148240061}
