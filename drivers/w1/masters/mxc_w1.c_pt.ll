; ModuleID = '/llk/IR_all_yes/drivers/w1/masters/mxc_w1.c_pt.bc'
source_filename = "../drivers/w1/masters/mxc_w1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.mxc_w1_device = type { ptr, ptr, %struct.w1_bus_master }
%struct.w1_bus_master = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_mxc_w1__170_179_mxc_w1_driver_init6 = internal global ptr @mxc_w1_driver_init, section ".initcall6.init", align 4
@mxc_w1_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mxc_w1_probe, ptr @mxc_w1_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mxc_w1_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mxc_w1_driver_exit = internal global ptr @mxc_w1_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file171 = internal constant [38 x i8] c"mxc_w1.file=drivers/w1/masters/mxc_w1\00", section ".modinfo", align 1
@__UNIQUE_ID_license172 = internal constant [19 x i8] c"mxc_w1.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author173 = internal constant [43 x i8] c"mxc_w1.author=Freescale Semiconductors Inc\00", section ".modinfo", align 1
@__UNIQUE_ID_description174 = internal constant [46 x i8] c"mxc_w1.description=Driver for One-Wire on MXC\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mxc_w1\00", [25 x i8] zeroinitializer }, align 32
@mxc_w1_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx21-owire\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mxc_w1_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 114, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Low clock frequency causes improper function\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mxc_w1_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/w1/masters/mxc_w1.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mxc_w1_probe._entry_ptr = internal global ptr @mxc_w1_probe._entry, section ".printk_index", align 4
@mxc_w1_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 120, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Incorrect time base frequency %lu Hz\0A\00", [58 x i8] zeroinitializer }, align 32
@mxc_w1_probe._entry_ptr.8 = internal global ptr @mxc_w1_probe._entry.6, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.9 = private unnamed_addr constant [14 x i8] c"mxc_w1_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 171, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 173, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [14 x i8] c"mxc_w1_dt_ids\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 165, i32 34 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 113, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private constant [31 x i8] c"../drivers/w1/masters/mxc_w1.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 119, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_description174, ptr @__UNIQUE_ID_file171, ptr @__UNIQUE_ID_license172, ptr @__exitcall_mxc_w1_driver_exit, ptr @__initcall__kmod_mxc_w1__170_179_mxc_w1_driver_init6, ptr @mxc_w1_driver_exit, ptr @mxc_w1_probe._entry, ptr @mxc_w1_probe._entry.6, ptr @mxc_w1_probe._entry_ptr, ptr @mxc_w1_probe._entry_ptr.8, ptr @mxc_w1_driver, ptr @.str, ptr @mxc_w1_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_w1_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_w1_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_w1_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_w1_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_w1_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mxc_w1_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mxc_w1_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @mxc_w1_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_w1_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 60, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #4
  %clk = getelementptr inbounds %struct.mxc_w1_device, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call.i94 = tail call i32 @clk_prepare(ptr noundef %call2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %tobool.not.i = icmp eq i32 %call.i94, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end8
  %call1.i = tail call i32 @clk_enable(ptr noundef %call2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end13, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %call2) #4
  br label %cleanup

if.end13:                                         ; preds = %if.end.i
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call15 = tail call i32 @clk_get_rate(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %call15)
  %cmp = icmp ult i32 %call15, 10000000
  br i1 %cmp, label %do.end, label %if.end13.if.end18_crit_edge

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1) #7
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.end13.if.end18_crit_edge
  %add = add i32 %call15, 500000
  %div19 = udiv i32 %add, 1000000
  %div20 = udiv i32 %call15, %div19
  %4 = add i32 %div20, -1020001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -40001, i32 %4)
  %5 = icmp ult i32 %4, -40001
  br i1 %5, label %do.end26, label %if.end18.if.end28_crit_edge

if.end18.if.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

do.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %div20) #7
  br label %if.end28

if.end28:                                         ; preds = %do.end26, %if.end18.if.end28_crit_edge
  %call29 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call29, ptr %call.i, align 4
  %cmp.i95 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95, label %if.then32, label %do.body36

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %call29 to i32
  br label %out_disable_clk

do.body36:                                        ; preds = %if.end28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 1) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %10 = trunc i32 %div19 to i8
  %conv = add i8 %10, -1
  %add.ptr49 = getelementptr i8, ptr %9, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr49, i8 %conv) #4, !srcloc !38
  %bus_master = getelementptr inbounds %struct.mxc_w1_device, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %bus_master to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %bus_master, align 4
  %reset_bus = getelementptr inbounds %struct.mxc_w1_device, ptr %call.i, i32 0, i32 2, i32 9
  %12 = ptrtoint ptr %reset_bus to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mxc_w1_ds2_reset_bus, ptr %reset_bus, align 4
  %touch_bit = getelementptr inbounds %struct.mxc_w1_device, ptr %call.i, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %touch_bit to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mxc_w1_ds2_touch_bit, ptr %touch_bit, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call53 = tail call i32 @w1_add_master_device(ptr noundef %bus_master) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %do.body36.cleanup_crit_edge, label %do.body36.out_disable_clk_crit_edge

do.body36.out_disable_clk_crit_edge:              ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_disable_clk

do.body36.cleanup_crit_edge:                      ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

out_disable_clk:                                  ; preds = %do.body36.out_disable_clk_crit_edge, %if.then32
  %err.0 = phi i32 [ %7, %if.then32 ], [ %call53, %do.body36.out_disable_clk_crit_edge ]
  %15 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %16) #4
  tail call void @clk_unprepare(ptr noundef %16) #4
  br label %cleanup

cleanup:                                          ; preds = %out_disable_clk, %do.body36.cleanup_crit_edge, %if.then3.i, %if.end8.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %err.0, %out_disable_clk ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.body36.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i94, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_w1_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bus_master = getelementptr inbounds %struct.mxc_w1_device, ptr %1, i32 0, i32 2
  tail call void @w1_remove_master_device(ptr noundef %bus_master) #4
  %clk = getelementptr inbounds %struct.mxc_w1_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #4
  tail call void @clk_unprepare(ptr noundef %3) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @mxc_w1_ds2_reset_bus(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  tail call void @arm_heavy_mb() #4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 -128) #4, !srcloc !38
  %call = tail call i64 @ktime_get() #4
  %add.i = add i64 %call, 1500000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 219687204) #4
  br label %do.body2

do.body2:                                         ; preds = %do.cond11.do.body2_crit_edge, %entry
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #4, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %tobool.not = icmp sgt i8 %5, -1
  br i1 %tobool.not, label %cleanup15.split.loop.exit19, label %do.cond11

do.cond11:                                        ; preds = %do.body2
  %call12 = tail call i64 @ktime_get() #4
  %cmp.i.i = icmp slt i64 %call12, %add.i
  br i1 %cmp.i.i, label %do.cond11.do.body2_crit_edge, label %do.cond11.cleanup15_crit_edge

do.cond11.cleanup15_crit_edge:                    ; preds = %do.cond11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup15

do.cond11.do.body2_crit_edge:                     ; preds = %do.cond11
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body2

cleanup15.split.loop.exit19:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #6
  %and8.le = lshr i8 %5, 6
  %6 = xor i8 %and8.le, 1
  br label %cleanup15

cleanup15:                                        ; preds = %cleanup15.split.loop.exit19, %do.cond11.cleanup15_crit_edge
  %retval.2 = phi i8 [ %6, %cleanup15.split.loop.exit19 ], [ 1, %do.cond11.cleanup15_crit_edge ]
  ret i8 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @mxc_w1_ds2_touch_bit(ptr nocapture noundef readonly %data, i8 noundef zeroext %bit) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  tail call void @arm_heavy_mb() #4
  %conv = zext i8 %bit to i32
  %sub = sub nsw i32 5, %conv
  %shl = shl nuw nsw i32 1, %sub
  %conv1 = trunc i32 %shl to i8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 %conv1) #4, !srcloc !38
  %call = tail call i64 @ktime_get() #4
  %add.i = add i64 %call, 200000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 12884880) #4
  br label %do.body3

do.body3:                                         ; preds = %do.cond17.do.body3_crit_edge, %entry
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #4, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  %conv8 = zext i8 %5 to i32
  %and = and i32 %shl, %conv8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup21.split.loop.exit26, label %do.cond17

do.cond17:                                        ; preds = %do.body3
  %call18 = tail call i64 @ktime_get() #4
  %cmp.i.i = icmp slt i64 %call18, %add.i
  br i1 %cmp.i.i, label %do.cond17.do.body3_crit_edge, label %do.cond17.cleanup21_crit_edge

do.cond17.cleanup21_crit_edge:                    ; preds = %do.cond17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup21

do.cond17.do.body3_crit_edge:                     ; preds = %do.cond17
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body3

cleanup21.split.loop.exit26:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #6
  %and13.le = lshr i8 %5, 3
  %and13.lobit.le = and i8 %and13.le, 1
  br label %cleanup21

cleanup21:                                        ; preds = %cleanup21.split.loop.exit26, %do.cond17.cleanup21_crit_edge
  %retval.2 = phi i8 [ %and13.lobit.le, %cleanup21.split.loop.exit26 ], [ 0, %do.cond17.cleanup21_crit_edge ]
  ret i8 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_add_master_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_remove_master_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__initcall__kmod_mxc_w1__170_179_mxc_w1_driver_init6, !1, !"__initcall__kmod_mxc_w1__170_179_mxc_w1_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/w1/masters/mxc_w1.c", i32 179, i32 1}
!2 = !{ptr @__exitcall_mxc_w1_driver_exit, !1, !"__exitcall_mxc_w1_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file171, !4, !"__UNIQUE_ID_file171", i1 false, i1 false}
!4 = !{!"../drivers/w1/masters/mxc_w1.c", i32 181, i32 1}
!5 = !{ptr @__UNIQUE_ID_license172, !4, !"__UNIQUE_ID_license172", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author173, !7, !"__UNIQUE_ID_author173", i1 false, i1 false}
!7 = !{!"../drivers/w1/masters/mxc_w1.c", i32 182, i32 1}
!8 = !{ptr @__UNIQUE_ID_description174, !9, !"__UNIQUE_ID_description174", i1 false, i1 false}
!9 = !{!"../drivers/w1/masters/mxc_w1.c", i32 183, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/w1/masters/mxc_w1.c", i32 173, i32 11}
!12 = !{ptr @mxc_w1_driver, !13, !"mxc_w1_driver", i1 false, i1 false}
!13 = !{!"../drivers/w1/masters/mxc_w1.c", i32 171, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/w1/masters/mxc_w1.c", i32 113, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mxc_w1_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mxc_w1_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/w1/masters/mxc_w1.c", i32 119, i32 3}
!24 = !{ptr @mxc_w1_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @mxc_w1_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @mxc_w1_dt_ids, !27, !"mxc_w1_dt_ids", i1 false, i1 false}
!27 = !{!"../drivers/w1/masters/mxc_w1.c", i32 165, i32 34}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i64 2152433862}
!38 = !{i64 3071625}
!39 = !{i64 2152434156}
!40 = !{i64 2152434433}
!41 = !{i64 2152427025}
!42 = !{i64 3072020}
!43 = !{i64 2152427920}
!44 = !{i64 2152428438}
!45 = !{i64 2152429301}
