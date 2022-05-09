; ModuleID = '/llk/IR_all_yes/drivers/soc/fsl/rcpm.c_pt.bc'
source_filename = "../drivers/soc/fsl/rcpm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.rcpm = type { i32, ptr, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.wakeup_source = type { ptr, i32, %struct.list_head, %struct.spinlock, ptr, %struct.timer_list, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, ptr, i8 }

@__initcall__kmod_rcpm__288_199_rcpm_driver_init6 = internal global ptr @rcpm_driver_init, section ".initcall6.init", align 4
@rcpm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rcpm_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rcpm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcpm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rcpm_driver_exit = internal global ptr @rcpm_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rcpm\00", [27 x i8] zeroinitializer }, align 32
@rcpm_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,qoriq-rcpm-2.1+\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rcpm_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr @rcpm_pm_prepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"little-endian\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"#fsl,rcpm-wakeup-cells\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl,rcpm-wakeup\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl,ls1021a-rcpm\00", [47 x i8] zeroinitializer }, align 32
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl,ls1021a-scfg\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [12 x i8] c"rcpm_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 189, i32 31 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 191, i32 11 }
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"rcpm_of_match\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 175, i32 34 }
@___asan_gen_.15 = private unnamed_addr constant [12 x i8] c"rcpm_pm_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 142, i32 32 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 163, i32 16 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 166, i32 4 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 79, i32 5 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 135, i32 36 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [26 x i8] c"../drivers/soc/fsl/rcpm.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 34, i32 43 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__exitcall_rcpm_driver_exit, ptr @__initcall__kmod_rcpm__288_199_rcpm_driver_init6, ptr @rcpm_driver_exit, ptr @rcpm_driver, ptr @.str, ptr @rcpm_of_match, ptr @rcpm_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcpm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcpm_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcpm_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rcpm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rcpm_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rcpm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @rcpm_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcpm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %ippdexpcr_base = getelementptr inbounds %struct.rcpm, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %ippdexpcr_base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %ippdexpcr_base, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call.i31 = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.1) #5
  %little_endian = getelementptr inbounds %struct.rcpm, ptr %call.i, i32 0, i32 2
  %frombool = zext i1 %call.i31 to i8
  %2 = ptrtoint ptr %little_endian to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %little_endian, align 4
  %call.i32 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull %call.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool13.not = icmp eq i32 %call.i32, 0
  br i1 %tobool13.not, label %if.end15, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end8.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ 0, %if.end15 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i32, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcpm_pm_prepare(ptr noundef readonly %dev) #2 align 64 {
entry:
  %value = alloca [8 x i32], align 4
  %setting = alloca [7 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %value) #5
  %2 = call ptr @memset(ptr %value, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %setting) #5
  %3 = call ptr @memset(ptr %setting, i32 0, i32 28)
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup60_crit_edge, label %if.end

entry.cleanup60_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup60

if.end:                                           ; preds = %entry
  %ippdexpcr_base = getelementptr inbounds %struct.rcpm, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ippdexpcr_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ippdexpcr_base, align 4
  %call1 = tail call i32 @wakeup_sources_read_lock() #5
  %call2 = tail call ptr @wakeup_sources_walk_start() #5
  %tobool3.not108 = icmp eq ptr %call2, null
  br i1 %tobool3.not108, label %if.end.for.end30_crit_edge, label %for.body.lr.ph

if.end.for.end30_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end30

for.body.lr.ph:                                   ; preds = %if.end
  %fwnode = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 28
  %phandle = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc28.for.body_crit_edge, %for.body.lr.ph
  %ws.0109 = phi ptr [ %call2, %for.body.lr.ph ], [ %call29, %for.inc28.for.body_crit_edge ]
  %dev4 = getelementptr inbounds %struct.wakeup_source, ptr %ws.0109, i32 0, i32 17
  %8 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev4, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %for.body.for.inc28_crit_edge, label %lor.lhs.false

for.body.for.inc28_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc28

lor.lhs.false:                                    ; preds = %for.body
  %parent = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %tobool7.not = icmp eq ptr %11, null
  br i1 %tobool7.not, label %lor.lhs.false.for.inc28_crit_edge, label %if.end9

lor.lhs.false.for.inc28_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc28

if.end9:                                          ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %5, align 4
  %add = add i32 %13, 1
  %call12 = call i32 @device_property_read_u32_array(ptr noundef nonnull %11, ptr noundef nonnull @.str.3, ptr noundef nonnull %value, i32 noundef %add) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end9.for.inc28_crit_edge

if.end9.for.inc28_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc28

if.end15:                                         ; preds = %if.end9
  %14 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fwnode, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  %cmp.i.i = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end15.if.end20_crit_edge, label %is_of_node.exit

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

is_of_node.exit:                                  ; preds = %if.end15
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %17, @of_fwnode_ops
  br i1 %cmp.i, label %if.then17, label %is_of_node.exit.if.end20_crit_edge

is_of_node.exit.if.end20_crit_edge:               ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then17:                                        ; preds = %is_of_node.exit
  %18 = ptrtoint ptr %phandle to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %phandle, align 4
  %20 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp.not = icmp eq i32 %19, %21
  br i1 %cmp.not, label %if.then17.if.end20_crit_edge, label %if.then17.for.inc28_crit_edge

if.then17.for.inc28_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc28

if.then17.if.end20_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.end20:                                         ; preds = %if.then17.if.end20_crit_edge, %is_of_node.exit.if.end20_crit_edge, %if.end15.if.end20_crit_edge
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp23106.not = icmp eq i32 %23, 0
  br i1 %cmp23106.not, label %if.end20.for.inc28_crit_edge, label %if.end20.for.body24_crit_edge

if.end20.for.body24_crit_edge:                    ; preds = %if.end20
  br label %for.body24

if.end20.for.inc28_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc28

for.body24:                                       ; preds = %for.body24.for.body24_crit_edge, %if.end20.for.body24_crit_edge
  %i.0107 = phi i32 [ %add25, %for.body24.for.body24_crit_edge ], [ 0, %if.end20.for.body24_crit_edge ]
  %add25 = add nuw i32 %i.0107, 1
  %arrayidx26 = getelementptr [8 x i32], ptr %value, i32 0, i32 %add25
  %24 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx26, align 4
  %arrayidx27 = getelementptr [7 x i32], ptr %setting, i32 0, i32 %i.0107
  %26 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx27, align 4
  %or = or i32 %27, %25
  store i32 %or, ptr %arrayidx27, align 4
  %exitcond.not = icmp eq i32 %add25, %23
  br i1 %exitcond.not, label %for.body24.for.inc28_crit_edge, label %for.body24.for.body24_crit_edge

for.body24.for.body24_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body24

for.body24.for.inc28_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc28

for.inc28:                                        ; preds = %for.body24.for.inc28_crit_edge, %if.end20.for.inc28_crit_edge, %if.then17.for.inc28_crit_edge, %if.end9.for.inc28_crit_edge, %lor.lhs.false.for.inc28_crit_edge, %for.body.for.inc28_crit_edge
  %call29 = call ptr @wakeup_sources_walk_next(ptr noundef nonnull %ws.0109) #5
  %tobool3.not = icmp eq ptr %call29, null
  br i1 %tobool3.not, label %for.inc28.for.end30_crit_edge, label %for.inc28.for.body_crit_edge

for.inc28.for.body_crit_edge:                     ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc28.for.end30_crit_edge:                    ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end30

for.end30:                                        ; preds = %for.inc28.for.end30_crit_edge, %if.end.for.end30_crit_edge
  call void @wakeup_sources_read_unlock(i32 noundef %call1) #5
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp33110.not = icmp eq i32 %29, 0
  br i1 %cmp33110.not, label %for.end30.cleanup60_crit_edge, label %for.body34.lr.ph

for.end30.cleanup60_crit_edge:                    ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup60

for.body34.lr.ph:                                 ; preds = %for.end30
  %little_endian = getelementptr inbounds %struct.rcpm, ptr %5, i32 0, i32 2
  %tobool.not.i = icmp eq ptr %dev, null
  br label %for.body34

for.body34:                                       ; preds = %cleanup.for.body34_crit_edge, %for.body34.lr.ph
  %i.1111 = phi i32 [ 0, %for.body34.lr.ph ], [ %inc58, %cleanup.for.body34_crit_edge ]
  %arrayidx35 = getelementptr [7 x i32], ptr %setting, i32 0, i32 %i.1111
  %30 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx35, align 4
  %mul = shl i32 %i.1111, 2
  %add.ptr = getelementptr i8, ptr %7, i32 %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool36.not = icmp eq i32 %31, 0
  br i1 %tobool36.not, label %for.body34.cleanup_crit_edge, label %if.end38

for.body34.cleanup_crit_edge:                     ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end38:                                         ; preds = %for.body34
  %32 = ptrtoint ptr %little_endian to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %little_endian, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool39.not = icmp eq i8 %33, 0
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5
  br i1 %tobool39.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %35 = call i32 @llvm.bswap.i32(i32 %34) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %or42 = or i32 %35, %31
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  call void @arm_heavy_mb() #5
  %36 = call i32 @llvm.bswap.i32(i32 %or42) #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %36) #5, !srcloc !33
  br label %if.end46

if.else:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  %or45 = or i32 %34, %31
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or45) #5, !srcloc !33
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then40
  %tmp.0 = phi i32 [ %or42, %if.then40 ], [ %or45, %if.else ]
  br i1 %tobool.not.i, label %if.end46.cleanup_crit_edge, label %dev_of_node.exit

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

dev_of_node.exit:                                 ; preds = %if.end46
  %37 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %of_node, align 8
  %tobool48.not = icmp ne ptr %38, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.1111)
  %cmp49 = icmp eq i32 %i.1111, 1
  %or.cond = select i1 %tobool48.not, i1 %cmp49, i1 false
  br i1 %or.cond, label %if.then50, label %dev_of_node.exit.cleanup_crit_edge

dev_of_node.exit.cleanup_crit_edge:               ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then50:                                        ; preds = %dev_of_node.exit
  %call51 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then50.cleanup_crit_edge, label %if.then53

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then53:                                        ; preds = %if.then50
  %call.i = call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.5) #5
  %tobool.not.i100 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i100, label %if.then53.cleanup_crit_edge, label %if.end.i101

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i101:                                      ; preds = %if.then53
  %call1.i = call ptr @of_iomap(ptr noundef nonnull %call.i, i32 noundef 0) #5
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i101.cleanup_crit_edge, label %if.end4.i

if.end.i101.cleanup_crit_edge:                    ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 1308
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  call void @arm_heavy_mb() #5
  %or.i = or i32 %39, %tmp.0
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or.i) #5, !srcloc !33
  call void @iounmap(ptr noundef nonnull %call1.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4.i, %if.end.i101.cleanup_crit_edge, %if.then53.cleanup_crit_edge, %if.then50.cleanup_crit_edge, %dev_of_node.exit.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %for.body34.cleanup_crit_edge
  %inc58 = add nuw i32 %i.1111, 1
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %5, align 4
  %cmp33 = icmp ult i32 %inc58, %41
  br i1 %cmp33, label %cleanup.for.body34_crit_edge, label %cleanup.cleanup60_crit_edge

cleanup.cleanup60_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup60

cleanup.for.body34_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body34

cleanup60:                                        ; preds = %cleanup.cleanup60_crit_edge, %for.end30.cleanup60_crit_edge, %entry.cleanup60_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup60_crit_edge ], [ 0, %for.end30.cleanup60_crit_edge ], [ 0, %cleanup.cleanup60_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %setting) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %value) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wakeup_sources_read_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wakeup_sources_walk_start() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wakeup_sources_walk_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wakeup_sources_read_unlock(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @__initcall__kmod_rcpm__288_199_rcpm_driver_init6, !1, !"__initcall__kmod_rcpm__288_199_rcpm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/soc/fsl/rcpm.c", i32 199, i32 1}
!2 = !{ptr @__exitcall_rcpm_driver_exit, !1, !"__exitcall_rcpm_driver_exit", i1 false, i1 false}
!3 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/soc/fsl/rcpm.c", i32 191, i32 11}
!5 = !{ptr @rcpm_driver, !6, !"rcpm_driver", i1 false, i1 false}
!6 = !{!"../drivers/soc/fsl/rcpm.c", i32 189, i32 31}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/soc/fsl/rcpm.c", i32 163, i32 16}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/soc/fsl/rcpm.c", i32 166, i32 4}
!11 = !{ptr @rcpm_of_match, !12, !"rcpm_of_match", i1 false, i1 false}
!12 = !{!"../drivers/soc/fsl/rcpm.c", i32 175, i32 34}
!13 = !{ptr @rcpm_pm_ops, !14, !"rcpm_pm_ops", i1 false, i1 false}
!14 = !{!"../drivers/soc/fsl/rcpm.c", i32 142, i32 32}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/soc/fsl/rcpm.c", i32 79, i32 5}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/soc/fsl/rcpm.c", i32 135, i32 36}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/soc/fsl/rcpm.c", i32 34, i32 43}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i8 0, i8 2}
!31 = !{i64 2152438705}
!32 = !{i64 2152440060}
!33 = !{i64 4905428}
!34 = !{i64 2155449158}
!35 = !{i64 2155449389}
!36 = !{i64 4905846}
!37 = !{i64 2155448402}
!38 = !{i64 2155448656}
