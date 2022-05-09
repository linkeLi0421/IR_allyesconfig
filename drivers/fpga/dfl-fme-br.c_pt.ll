; ModuleID = '/llk/IR_all_yes/drivers/fpga/dfl-fme-br.c_pt.bc'
source_filename = "../drivers/fpga/dfl-fme-br.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fpga_bridge_ops = type { ptr, ptr, ptr, ptr }
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
%struct.fpga_bridge = type { ptr, %struct.device, %struct.mutex, ptr, ptr, %struct.list_head, ptr }
%struct.fme_br_priv = type { ptr, ptr, ptr }
%struct.dfl_fme_br_pdata = type { ptr, i32 }
%struct.dfl_fpga_cdev = type { ptr, ptr, ptr, %struct.mutex, %struct.list_head, i32 }
%struct.dfl_fpga_port_ops = type { ptr, ptr, %struct.list_head, ptr, ptr }

@__initcall__kmod_dfl_fme_br__252_104_fme_br_driver_init6 = internal global ptr @fme_br_driver_init, section ".initcall6.init", align 4
@fme_br_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fme_br_probe, ptr @fme_br_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_fme_br_driver_exit = internal global ptr @fme_br_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description253 = internal constant [66 x i8] c"dfl_fme_br.description=FPGA Bridge for DFL FPGA Management Engine\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [36 x i8] c"dfl_fme_br.author=Intel Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_file255 = internal constant [40 x i8] c"dfl_fme_br.file=drivers/fpga/dfl-fme-br\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [26 x i8] c"dfl_fme_br.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias257 = internal constant [41 x i8] c"dfl_fme_br.alias=platform:dfl-fme-bridge\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dfl-fme-bridge\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DFL FPGA FME Bridge\00", [44 x i8] zeroinitializer }, align 32
@fme_bridge_ops = internal constant { %struct.fpga_bridge_ops, [16 x i8] } { %struct.fpga_bridge_ops { ptr null, ptr @fme_bridge_enable_set, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [14 x i8] c"fme_br_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 96, i32 31 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 98, i32 14 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 71, i32 33 }
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"fme_bridge_ops\00", align 1
@___asan_gen_.12 = private constant [29 x i8] c"../drivers/fpga/dfl-fme-br.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 55, i32 37 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_alias257, ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_file255, ptr @__UNIQUE_ID_license256, ptr @__exitcall_fme_br_driver_exit, ptr @__initcall__kmod_dfl_fme_br__252_104_fme_br_driver_init6, ptr @fme_br_driver_exit, ptr @fme_br_driver, ptr @.str, ptr @.str.1, ptr @fme_bridge_ops], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_br_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_bridge_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fme_br_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @fme_br_driver, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fme_br_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @fme_br_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fme_br_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %call.i, align 4
  %call3 = tail call ptr @fpga_bridge_register(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull @fme_bridge_ops, ptr noundef nonnull %call.i) #3
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then5 ], [ 0, %if.end7 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fme_br_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv1 = getelementptr inbounds %struct.fpga_bridge, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  tail call void @fpga_bridge_unregister(ptr noundef %1) #3
  %port_pdev = getelementptr inbounds %struct.fme_br_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %port_pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_pdev, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void @put_device(ptr noundef %dev) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %port_ops = getelementptr inbounds %struct.fme_br_priv, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %port_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port_ops, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dfl_fpga_port_ops_put(ptr noundef nonnull %7) #3
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fpga_bridge_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fme_bridge_enable_set(ptr nocapture noundef readonly %bridge, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.fpga_bridge, ptr %bridge, i32 0, i32 6
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %port_pdev2 = getelementptr inbounds %struct.fme_br_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %port_pdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_pdev2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %port_id = getelementptr inbounds %struct.dfl_fme_br_pdata, ptr %5, i32 0, i32 1
  %lock.i = getelementptr inbounds %struct.dfl_fpga_cdev, ptr %7, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #3
  %call.i = tail call ptr @__dfl_fpga_cdev_find_port(ptr noundef %7, ptr noundef %port_id, ptr noundef nonnull @dfl_fpga_check_port_id) #3
  tail call void @mutex_unlock(ptr noundef %lock.i) #3
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %port_pdev2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %port_pdev2, align 4
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end, %entry.land.lhs.true_crit_edge
  %9 = phi ptr [ %call.i, %if.end ], [ %3, %entry.land.lhs.true_crit_edge ]
  %port_ops = getelementptr inbounds %struct.fme_br_priv, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %port_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port_ops, align 4
  %tobool10.not = icmp eq ptr %11, null
  br i1 %tobool10.not, label %if.then11, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.then11:                                        ; preds = %land.lhs.true
  %call13 = tail call ptr @dfl_fpga_port_ops_get(ptr noundef nonnull %9) #3
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.then11.cleanup_crit_edge, label %lor.lhs.false

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then11
  %enable_set = getelementptr inbounds %struct.dfl_fpga_port_ops, ptr %call13, i32 0, i32 4
  %12 = ptrtoint ptr %enable_set to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %enable_set, align 4
  %tobool15.not = icmp eq ptr %13, null
  br i1 %tobool15.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end17

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %port_ops to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call13, ptr %port_ops, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end17, %land.lhs.true.if.end19_crit_edge
  %15 = ptrtoint ptr %port_ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port_ops, align 4
  %enable_set21 = getelementptr inbounds %struct.dfl_fpga_port_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %enable_set21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %enable_set21, align 4
  %19 = ptrtoint ptr %port_pdev2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %port_pdev2, align 4
  %call24 = tail call i32 %18(ptr noundef %20, i1 noundef zeroext %enable) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %lor.lhs.false.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %if.end19 ], [ -19, %if.then.cleanup_crit_edge ], [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %if.then11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dfl_fpga_check_port_id(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dfl_fpga_port_ops_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dfl_fpga_cdev_find_port(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fpga_bridge_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dfl_fpga_port_ops_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__initcall__kmod_dfl_fme_br__252_104_fme_br_driver_init6, !1, !"__initcall__kmod_dfl_fme_br__252_104_fme_br_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/fpga/dfl-fme-br.c", i32 104, i32 1}
!2 = !{ptr @__exitcall_fme_br_driver_exit, !1, !"__exitcall_fme_br_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description253, !4, !"__UNIQUE_ID_description253", i1 false, i1 false}
!4 = !{!"../drivers/fpga/dfl-fme-br.c", i32 106, i32 1}
!5 = !{ptr @__UNIQUE_ID_author254, !6, !"__UNIQUE_ID_author254", i1 false, i1 false}
!6 = !{!"../drivers/fpga/dfl-fme-br.c", i32 107, i32 1}
!7 = !{ptr @__UNIQUE_ID_file255, !8, !"__UNIQUE_ID_file255", i1 false, i1 false}
!8 = !{!"../drivers/fpga/dfl-fme-br.c", i32 108, i32 1}
!9 = !{ptr @__UNIQUE_ID_license256, !8, !"__UNIQUE_ID_license256", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias257, !11, !"__UNIQUE_ID_alias257", i1 false, i1 false}
!11 = !{!"../drivers/fpga/dfl-fme-br.c", i32 109, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/fpga/dfl-fme-br.c", i32 98, i32 14}
!14 = !{ptr @fme_br_driver, !15, !"fme_br_driver", i1 false, i1 false}
!15 = !{!"../drivers/fpga/dfl-fme-br.c", i32 96, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/fpga/dfl-fme-br.c", i32 71, i32 33}
!18 = !{ptr @fme_bridge_ops, !19, !"fme_bridge_ops", i1 false, i1 false}
!19 = !{!"../drivers/fpga/dfl-fme-br.c", i32 55, i32 37}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
