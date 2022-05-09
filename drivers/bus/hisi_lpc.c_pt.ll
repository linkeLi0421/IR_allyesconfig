; ModuleID = '/llk/IR_all_yes/drivers/bus/hisi_lpc.c_pt.bc'
source_filename = "../drivers/bus/hisi_lpc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.logic_pio_host_ops = type { ptr, ptr, ptr, ptr }
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
%struct.hisi_lpc_dev = type { %struct.spinlock, ptr, ptr }
%struct.logic_pio_hwaddr = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.lpc_cycle_para = type { i32, i32 }

@__initcall__kmod_hisi_lpc__236_706_hisi_lpc_driver_init6 = internal global ptr @hisi_lpc_driver_init, section ".initcall6.init", align 4
@hisi_lpc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hisi_lpc_probe, ptr @hisi_lpc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hisi_lpc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hisi-lpc\00", [23 x i8] zeroinitializer }, align 32
@hisi_lpc_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hip06-lpc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hip07-lpc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@hisi_lpc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&lpcdev->cycle_lock\00", [44 x i8] zeroinitializer }, align 32
@hisi_lpc_ops = internal constant { %struct.logic_pio_host_ops, [16 x i8] } { %struct.logic_pio_host_ops { ptr @hisi_lpc_comm_in, ptr @hisi_lpc_comm_out, ptr @hisi_lpc_comm_ins, ptr @hisi_lpc_comm_outs }, [16 x i8] zeroinitializer }, align 32
@hisi_lpc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 651, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"register IO range failed (%d)!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hisi_lpc_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/bus/hisi_lpc.c\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hisi_lpc_probe._entry_ptr = internal global ptr @hisi_lpc_probe._entry, section ".printk_index", align 4
@hisi_lpc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 669, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"registered range [%pa - %pa]\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hisi_lpc_probe._entry_ptr.10 = internal global ptr @hisi_lpc_probe._entry.7, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.11 = private unnamed_addr constant [16 x i8] c"hisi_lpc_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 697, i32 31 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 699, i32 21 }
@___asan_gen_.17 = private unnamed_addr constant [18 x i8] c"hisi_lpc_of_match\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 691, i32 34 }
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 631, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"hisi_lpc_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 335, i32 40 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 651, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [26 x i8] c"../drivers/bus/hisi_lpc.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 668, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__initcall__kmod_hisi_lpc__236_706_hisi_lpc_driver_init6, ptr @hisi_lpc_probe._entry, ptr @hisi_lpc_probe._entry.7, ptr @hisi_lpc_probe._entry_ptr, ptr @hisi_lpc_probe._entry_ptr.10, ptr @hisi_lpc_driver, ptr @.str, ptr @hisi_lpc_of_match, ptr @hisi_lpc_probe.__key, ptr @.str.1, ptr @hisi_lpc_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_lpc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_lpc_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_lpc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_lpc_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_lpc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_lpc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_lpc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hisi_lpc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_lpc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %io_end = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %io_end) #6
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 52, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @hisi_lpc_probe.__key, i16 noundef signext 3) #6
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call4 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call3) #6
  %membase = getelementptr inbounds %struct.hisi_lpc_dev, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call4, ptr %membase, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %do.body
  %call.i78 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 36, i32 noundef 3520) #6
  %tobool12.not = icmp eq ptr %call.i78, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %fwnode = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 28
  %2 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwnode, align 4
  %fwnode15 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %call.i78, i32 0, i32 1
  %4 = ptrtoint ptr %fwnode15 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %fwnode15, align 4
  %flags = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %call.i78, i32 0, i32 5
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %flags, align 4
  %size = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %call.i78, i32 0, i32 4
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %size, align 4
  %hostdata = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %call.i78, i32 0, i32 6
  %7 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %hostdata, align 4
  %ops = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %call.i78, i32 0, i32 7
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @hisi_lpc_ops, ptr %ops, align 4
  %io_host = getelementptr inbounds %struct.hisi_lpc_dev, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %io_host to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i78, ptr %io_host, align 4
  %call16 = tail call i32 @logic_pio_register_range(ptr noundef nonnull %call.i78) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.else, label %do.end21

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %call16) #9
  br label %cleanup

if.else:                                          ; preds = %if.end14
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %call26 = tail call i32 @of_platform_populate(ptr noundef %11, ptr noundef null, ptr noundef null, ptr noundef %dev1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool28.not = icmp eq i32 %call26, 0
  br i1 %tobool28.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @logic_pio_unregister_range(ptr noundef nonnull %call.i78) #6
  br label %cleanup

if.end30:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i, align 4
  %13 = ptrtoint ptr %io_host to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io_host, align 4
  %io_start = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %io_start to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %io_start, align 4
  %size33 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %14, i32 0, i32 4
  %17 = ptrtoint ptr %size33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size33, align 4
  %add = add i32 %18, %16
  %19 = ptrtoint ptr %io_end to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add, ptr %io_end, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.8, ptr noundef %io_start, ptr noundef nonnull %io_end) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then29, %do.end21, %if.end10.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then7 ], [ %call16, %do.end21 ], [ %call26, %if.then29 ], [ 0, %if.end30 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %io_end) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_lpc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %io_host = getelementptr inbounds %struct.hisi_lpc_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %io_host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_host, align 4
  tail call void @of_platform_depopulate(ptr noundef %dev1) #6
  tail call void @logic_pio_unregister_range(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @logic_pio_register_range(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @logic_pio_unregister_range(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_lpc_comm_in(ptr noundef %hostdata, i32 noundef %pio, i32 noundef %dwidth) #2 align 64 {
entry:
  %iopara = alloca %struct.lpc_cycle_para, align 4
  %rd_data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iopara) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rd_data) #6
  %0 = ptrtoint ptr %rd_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rd_data, align 4
  %tobool.not = icmp eq ptr %hostdata, null
  %1 = add i32 %dwidth, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %1)
  %2 = icmp ult i32 %1, -4
  %3 = or i1 %tobool.not, %2
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = getelementptr inbounds %struct.lpc_cycle_para, ptr %iopara, i32 0, i32 1
  %io_host.i = getelementptr inbounds %struct.hisi_lpc_dev, ptr %hostdata, i32 0, i32 2
  %5 = ptrtoint ptr %io_host.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_host.i, align 4
  %io_start.i = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %io_start.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %io_start.i, align 4
  %sub.i = sub i32 %pio, %8
  %hw_start.i = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %hw_start.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hw_start.i, align 4
  %add.i = add i32 %sub.i, %10
  %11 = ptrtoint ptr %iopara to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %iopara, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %dwidth, ptr %4, align 4
  %call3 = call fastcc i32 @hisi_lpc_target_in(ptr noundef nonnull %hostdata, ptr noundef nonnull %iopara, i32 noundef %add.i, ptr noundef nonnull %rd_data, i32 noundef %dwidth)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %rd_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rd_data, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %14)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %if.end6 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rd_data) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iopara) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hisi_lpc_comm_out(ptr noundef %hostdata, i32 noundef %pio, i32 noundef %val, i32 noundef %dwidth) #2 align 64 {
entry:
  %iopara = alloca %struct.lpc_cycle_para, align 4
  %_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iopara) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_val) #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %1 = ptrtoint ptr %_val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %_val, align 4
  %tobool.not = icmp eq ptr %hostdata, null
  %2 = add i32 %dwidth, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %2)
  %3 = icmp ult i32 %2, -4
  %4 = or i1 %tobool.not, %3
  br i1 %4, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = getelementptr inbounds %struct.lpc_cycle_para, ptr %iopara, i32 0, i32 1
  %io_host.i = getelementptr inbounds %struct.hisi_lpc_dev, ptr %hostdata, i32 0, i32 2
  %6 = ptrtoint ptr %io_host.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_host.i, align 4
  %io_start.i = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %io_start.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io_start.i, align 4
  %sub.i = sub i32 %pio, %9
  %hw_start.i = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %hw_start.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw_start.i, align 4
  %add.i = add i32 %sub.i, %11
  %12 = ptrtoint ptr %iopara to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %iopara, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %dwidth, ptr %5, align 4
  %call3 = call fastcc i32 @hisi_lpc_target_out(ptr noundef nonnull %hostdata, ptr noundef nonnull %iopara, i32 noundef %add.i, ptr noundef nonnull %_val, i32 noundef %dwidth)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_val) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iopara) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_lpc_comm_ins(ptr noundef %hostdata, i32 noundef %pio, ptr noundef %buffer, i32 noundef %dwidth, i32 noundef %count) #2 align 64 {
entry:
  %iopara = alloca %struct.lpc_cycle_para, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iopara) #6
  %tobool.not = icmp eq ptr %hostdata, null
  %tobool1.not = icmp eq ptr %buffer, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool3.not = icmp eq i32 %count, 0
  %or.cond31 = or i1 %or.cond, %tobool3.not
  %0 = add i32 %dwidth, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %0)
  %1 = icmp ult i32 %0, -4
  %2 = or i1 %1, %or.cond31
  br i1 %2, label %entry.cleanup16_crit_edge, label %if.end

entry.cleanup16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup16

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.lpc_cycle_para, ptr %iopara, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dwidth)
  %cmp7.inv = icmp ult i32 %dwidth, 2
  %spec.select = select i1 %cmp7.inv, i32 0, i32 2
  %4 = ptrtoint ptr %iopara to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select, ptr %iopara, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %dwidth, ptr %3, align 4
  %io_host.i = getelementptr inbounds %struct.hisi_lpc_dev, ptr %hostdata, i32 0, i32 2
  %6 = ptrtoint ptr %io_host.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_host.i, align 4
  %io_start.i = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %io_start.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io_start.i, align 4
  %sub.i = sub i32 %pio, %9
  %hw_start.i = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %hw_start.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw_start.i, align 4
  %add.i = add i32 %sub.i, %11
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end
  %count.addr.0 = phi i32 [ %count, %if.end ], [ %dec, %do.cond.do.body_crit_edge ]
  %buf.0 = phi ptr [ %buffer, %if.end ], [ %add.ptr, %do.cond.do.body_crit_edge ]
  %call11 = call fastcc i32 @hisi_lpc_target_in(ptr noundef nonnull %hostdata, ptr noundef nonnull %iopara, i32 noundef %add.i, ptr noundef %buf.0, i32 noundef %dwidth)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.cond, label %do.body.cleanup16_crit_edge

do.body.cleanup16_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup16

do.cond:                                          ; preds = %do.body
  %add.ptr = getelementptr i8, ptr %buf.0, i32 %dwidth
  %dec = add i32 %count.addr.0, -1
  %tobool15.not = icmp eq i32 %dec, 0
  br i1 %tobool15.not, label %do.cond.cleanup16_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.cond.cleanup16_crit_edge:                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup16

cleanup16:                                        ; preds = %do.cond.cleanup16_crit_edge, %do.body.cleanup16_crit_edge, %entry.cleanup16_crit_edge
  %retval.2 = phi i32 [ -22, %entry.cleanup16_crit_edge ], [ 0, %do.cond.cleanup16_crit_edge ], [ %call11, %do.body.cleanup16_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iopara) #6
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hisi_lpc_comm_outs(ptr noundef %hostdata, i32 noundef %pio, ptr noundef %buffer, i32 noundef %dwidth, i32 noundef %count) #2 align 64 {
entry:
  %iopara = alloca %struct.lpc_cycle_para, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iopara) #6
  %tobool.not = icmp eq ptr %hostdata, null
  %tobool1.not = icmp eq ptr %buffer, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool3.not = icmp eq i32 %count, 0
  %or.cond29 = or i1 %or.cond, %tobool3.not
  %0 = add i32 %dwidth, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %0)
  %1 = icmp ult i32 %0, -4
  %2 = or i1 %1, %or.cond29
  br i1 %2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.lpc_cycle_para, ptr %iopara, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dwidth)
  %cmp7.inv = icmp ult i32 %dwidth, 2
  %spec.select = select i1 %cmp7.inv, i32 0, i32 2
  %4 = ptrtoint ptr %iopara to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select, ptr %iopara, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %dwidth, ptr %3, align 4
  %io_host.i = getelementptr inbounds %struct.hisi_lpc_dev, ptr %hostdata, i32 0, i32 2
  %6 = ptrtoint ptr %io_host.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_host.i, align 4
  %io_start.i = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %io_start.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io_start.i, align 4
  %sub.i = sub i32 %pio, %9
  %hw_start.i = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %hw_start.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw_start.i, align 4
  %add.i = add i32 %sub.i, %11
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end
  %count.addr.0 = phi i32 [ %count, %if.end ], [ %dec, %do.body.do.body_crit_edge ]
  %buf.0 = phi ptr [ %buffer, %if.end ], [ %add.ptr, %do.body.do.body_crit_edge ]
  %call11 = call fastcc i32 @hisi_lpc_target_out(ptr noundef nonnull %hostdata, ptr noundef nonnull %iopara, i32 noundef %add.i, ptr noundef %buf.0, i32 noundef %dwidth)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp ne i32 %call11, 0
  %add.ptr = getelementptr i8, ptr %buf.0, i32 %dwidth
  %dec = add i32 %count.addr.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool15.not = icmp eq i32 %dec, 0
  %or.cond32 = select i1 %tobool12.not, i1 true, i1 %tobool15.not
  br i1 %or.cond32, label %do.body.cleanup_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iopara) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hisi_lpc_target_in(ptr noundef %lpcdev, ptr noundef readonly %para, i32 noundef %addr, ptr noundef %buf, i32 noundef %opcnt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf, null
  %tobool3.not = icmp eq ptr %para, null
  %or.cond = or i1 %tobool3.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false4:                                   ; preds = %entry
  %csize = getelementptr inbounds %struct.lpc_cycle_para, ptr %para, i32 0, i32 1
  %0 = ptrtoint ptr %csize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %csize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool5.not = icmp eq i32 %1, 0
  %tobool7.not = icmp eq ptr %lpcdev, null
  %or.cond53 = or i1 %tobool7.not, %tobool5.not
  br i1 %or.cond53, label %lor.lhs.false4.cleanup_crit_edge, label %if.end

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %2 = ptrtoint ptr %para to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %para, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  %4 = shl nuw nsw i32 %and, 26
  %5 = xor i32 %4, 134217728
  %spec.select54 = select i1 %tobool8.not, i32 1300, i32 100
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %lpcdev) #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %opcnt)
  %membase = getelementptr inbounds %struct.hisi_lpc_dev, ptr %lpcdev, i32 0, i32 1
  %7 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #6, !srcloc !35
  %9 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase, align 4
  %add.ptr16 = getelementptr i8, ptr %10, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %5) #6, !srcloc !35
  %11 = tail call i32 @llvm.bswap.i32(i32 %addr)
  %12 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase, align 4
  %add.ptr18 = getelementptr i8, ptr %13, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %11) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 16777216) #6, !srcloc !35
  %16 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.end
  %waitcnt.addr.0.i = phi i32 [ %spec.select54, %if.end ], [ %dec.i, %if.end.i.do.body.i_crit_edge ]
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !37
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  %and.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %do.body.i
  %and2.i = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.then.i.cleanup.sink.split_crit_edge, label %if.end29

if.then.i.cleanup.sink.split_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #6
  %dec.i = add nsw i32 %waitcnt.addr.0.i, -1
  %tobool4.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool4.not.i, label %if.end.i.cleanup.sink.split_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end29:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase, align 4
  %add.ptr31 = getelementptr i8, ptr %22, i32 40
  tail call void @__raw_readsb(ptr noundef %add.ptr31, ptr noundef nonnull %buf, i32 noundef %opcnt) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end29, %if.end.i.cleanup.sink.split_crit_edge, %if.then.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end29 ], [ -5, %if.then.i.cleanup.sink.split_crit_edge ], [ -62, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lpcdev, i32 noundef %call12) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hisi_lpc_target_out(ptr noundef %lpcdev, ptr noundef readonly %para, i32 noundef %addr, ptr noundef %buf, i32 noundef %opcnt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf, null
  %tobool3.not = icmp eq ptr %para, null
  %or.cond = or i1 %tobool3.not, %tobool.not
  %tobool5.not = icmp eq ptr %lpcdev, null
  %or.cond43 = or i1 %tobool5.not, %or.cond
  br i1 %or.cond43, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %para to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %para, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool6.not, i32 1300, i32 100
  %spec.select44 = select i1 %tobool6.not, i32 150994944, i32 16777216
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %lpcdev) #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %opcnt)
  %membase = getelementptr inbounds %struct.hisi_lpc_dev, ptr %lpcdev, i32 0, i32 1
  %3 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !35
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  %add.ptr14 = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %spec.select44) #6, !srcloc !35
  %7 = tail call i32 @llvm.bswap.i32(i32 %addr)
  %8 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase, align 4
  %add.ptr16 = getelementptr i8, ptr %9, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %7) #6, !srcloc !35
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase, align 4
  %add.ptr18 = getelementptr i8, ptr %11, i32 36
  tail call void @__raw_writesb(ptr noundef %add.ptr18, ptr noundef nonnull %buf, i32 noundef %opcnt) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 16777216) #6, !srcloc !35
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.end
  %waitcnt.addr.0.i = phi i32 [ %spec.select, %if.end ], [ %dec.i, %if.end.i.do.body.i_crit_edge ]
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !37
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %and2.i = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %cond.i = select i1 %tobool3.not.i, i32 -5, i32 0
  br label %wait_lpc_idle.exit

if.end.i:                                         ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #6
  %dec.i = add nsw i32 %waitcnt.addr.0.i, -1
  %tobool4.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool4.not.i, label %if.end.i.wait_lpc_idle.exit_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.end.i.wait_lpc_idle.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_lpc_idle.exit

wait_lpc_idle.exit:                               ; preds = %if.end.i.wait_lpc_idle.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %cond.i, %if.then.i ], [ -62, %if.end.i.wait_lpc_idle.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lpcdev, i32 noundef %call10) #6
  br label %cleanup

cleanup:                                          ; preds = %wait_lpc_idle.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %wait_lpc_idle.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__initcall__kmod_hisi_lpc__236_706_hisi_lpc_driver_init6, !1, !"__initcall__kmod_hisi_lpc__236_706_hisi_lpc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/bus/hisi_lpc.c", i32 706, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/bus/hisi_lpc.c", i32 699, i32 21}
!4 = !{ptr @hisi_lpc_driver, !5, !"hisi_lpc_driver", i1 false, i1 false}
!5 = !{!"../drivers/bus/hisi_lpc.c", i32 697, i32 31}
!6 = !{ptr @hisi_lpc_probe.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/bus/hisi_lpc.c", i32 631, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/bus/hisi_lpc.c", i32 651, i32 3}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @hisi_lpc_probe._entry, !10, !"_entry", i1 false, i1 false}
!16 = !{ptr @hisi_lpc_probe._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/bus/hisi_lpc.c", i32 668, i32 2}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @hisi_lpc_probe._entry.7, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @hisi_lpc_probe._entry_ptr.10, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @hisi_lpc_ops, !23, !"hisi_lpc_ops", i1 false, i1 false}
!23 = !{!"../drivers/bus/hisi_lpc.c", i32 335, i32 40}
!24 = !{ptr @hisi_lpc_of_match, !25, !"hisi_lpc_of_match", i1 false, i1 false}
!25 = !{!"../drivers/bus/hisi_lpc.c", i32 691, i32 34}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 5812737}
!36 = !{i64 2155367235}
!37 = !{i64 5813155}
!38 = !{i64 2155365670}
!39 = !{i64 2155369064}
