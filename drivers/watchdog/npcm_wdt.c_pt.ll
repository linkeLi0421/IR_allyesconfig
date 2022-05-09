; ModuleID = '/llk/IR_all_yes/drivers/watchdog/npcm_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/npcm_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.npcm_wdt = type { %struct.watchdog_device, ptr }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_npcm_wdt__187_246_npcm_wdt_driver_init6 = internal global ptr @npcm_wdt_driver_init, section ".initcall6.init", align 4
@npcm_wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @npcm_wdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @npcm_wdt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_npcm_wdt_driver_exit = internal global ptr @npcm_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author188 = internal constant [29 x i8] c"npcm_wdt.author=Joel Stanley\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [46 x i8] c"npcm_wdt.description=Watchdog driver for NPCM\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [40 x i8] c"npcm_wdt.file=drivers/watchdog/npcm_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [24 x i8] c"npcm_wdt.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"npcm-wdt\00", [23 x i8] zeroinitializer }, align 32
@npcm_wdt_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nuvoton,wpcm450-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nuvoton,npcm750-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@npcm_wdt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"npcm_wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@npcm_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @npcm_wdt_start, ptr @npcm_wdt_stop, ptr @npcm_wdt_ping, ptr null, ptr @npcm_wdt_set_timeout, ptr null, ptr null, ptr @npcm_wdt_restart, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"watchdog\00", [23 x i8] zeroinitializer }, align 32
@npcm_wdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 225, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NPCM watchdog driver enabled\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"npcm_wdt_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/watchdog/npcm_wdt.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@npcm_wdt_probe._entry_ptr = internal global ptr @npcm_wdt_probe._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.7 = private unnamed_addr constant [16 x i8] c"npcm_wdt_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 239, i32 31 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 242, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant [15 x i8] c"npcm_wdt_match\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 231, i32 34 }
@___asan_gen_.16 = private unnamed_addr constant [14 x i8] c"npcm_wdt_info\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 163, i32 35 }
@___asan_gen_.19 = private unnamed_addr constant [13 x i8] c"npcm_wdt_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 170, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 216, i32 58 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [31 x i8] c"../drivers/watchdog/npcm_wdt.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 225, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_npcm_wdt_driver_exit, ptr @__initcall__kmod_npcm_wdt__187_246_npcm_wdt_driver_init6, ptr @npcm_wdt_driver_exit, ptr @npcm_wdt_probe._entry, ptr @npcm_wdt_probe._entry_ptr, ptr @npcm_wdt_driver, ptr @.str, ptr @npcm_wdt_match, ptr @npcm_wdt_info, ptr @npcm_wdt_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_wdt_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_wdt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_wdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @npcm_wdt_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @npcm_wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @npcm_wdt_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 112, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %reg = getelementptr inbounds %struct.npcm_wdt, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %reg, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %info = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @npcm_wdt_info, ptr %info, align 4
  %ops = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @npcm_wdt_ops, ptr %ops, align 4
  %min_timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 9
  %4 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %min_timeout, align 4
  %max_timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 10
  %5 = ptrtoint ptr %max_timeout to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2750, ptr %max_timeout, align 4
  %parent = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev1, ptr %parent, align 4
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 7
  %7 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 86, ptr %timeout, align 4
  %call18 = tail call i32 @watchdog_init_timeout(ptr noundef nonnull %call.i, i32 noundef 0, ptr noundef %dev1) #5
  %8 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %timeout, align 4
  %call22 = tail call i32 @npcm_wdt_set_timeout(ptr noundef nonnull %call.i, i32 noundef %9)
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i = icmp slt i32 %12, 0
  br i1 %tobool.i, label %if.then25, label %if.end11.if.end29_crit_edge

if.end11.if.end29_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then25:                                        ; preds = %if.end11
  %13 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.i71 = icmp ult i32 %14, 2
  br i1 %cmp.i71, label %if.then25.npcm_wdt_start.exit_crit_edge, label %if.else.i

if.then25.npcm_wdt_start.exit_crit_edge:          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %npcm_wdt_start.exit

if.else.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp2.i = icmp eq i32 %14, 2
  br i1 %cmp2.i, label %if.else.i.npcm_wdt_start.exit_crit_edge, label %if.else4.i

if.else.i.npcm_wdt_start.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %npcm_wdt_start.exit

if.else4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %14)
  %cmp6.i = icmp ult i32 %14, 6
  br i1 %cmp6.i, label %if.else4.i.npcm_wdt_start.exit_crit_edge, label %if.else8.i

if.else4.i.npcm_wdt_start.exit_crit_edge:         ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %npcm_wdt_start.exit

if.else8.i:                                       ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %14)
  %cmp10.i = icmp ult i32 %14, 11
  br i1 %cmp10.i, label %if.else8.i.npcm_wdt_start.exit_crit_edge, label %if.else12.i

if.else8.i.npcm_wdt_start.exit_crit_edge:         ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %npcm_wdt_start.exit

if.else12.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %14)
  %cmp14.i = icmp ult i32 %14, 22
  br i1 %cmp14.i, label %if.else12.i.npcm_wdt_start.exit_crit_edge, label %if.else16.i

if.else12.i.npcm_wdt_start.exit_crit_edge:        ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %npcm_wdt_start.exit

if.else16.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %14)
  %cmp18.i = icmp ult i32 %14, 44
  br i1 %cmp18.i, label %if.else16.i.npcm_wdt_start.exit_crit_edge, label %if.else20.i

if.else16.i.npcm_wdt_start.exit_crit_edge:        ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %npcm_wdt_start.exit

if.else20.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 87, i32 %14)
  %cmp22.i = icmp ult i32 %14, 87
  br i1 %cmp22.i, label %if.else20.i.npcm_wdt_start.exit_crit_edge, label %if.else24.i

if.else20.i.npcm_wdt_start.exit_crit_edge:        ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %npcm_wdt_start.exit

if.else24.i:                                      ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 173, i32 %14)
  %cmp26.i = icmp ult i32 %14, 173
  br i1 %cmp26.i, label %if.else24.i.npcm_wdt_start.exit_crit_edge, label %if.else28.i

if.else24.i.npcm_wdt_start.exit_crit_edge:        ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %npcm_wdt_start.exit

if.else28.i:                                      ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 688, i32 %14)
  %cmp30.i = icmp ult i32 %14, 688
  %..i = select i1 %cmp30.i, i32 3299, i32 3315
  br label %npcm_wdt_start.exit

npcm_wdt_start.exit:                              ; preds = %if.else28.i, %if.else24.i.npcm_wdt_start.exit_crit_edge, %if.else20.i.npcm_wdt_start.exit_crit_edge, %if.else16.i.npcm_wdt_start.exit_crit_edge, %if.else12.i.npcm_wdt_start.exit_crit_edge, %if.else8.i.npcm_wdt_start.exit_crit_edge, %if.else4.i.npcm_wdt_start.exit_crit_edge, %if.else.i.npcm_wdt_start.exit_crit_edge, %if.then25.npcm_wdt_start.exit_crit_edge
  %val.0.i = phi i32 [ 2243, %if.then25.npcm_wdt_start.exit_crit_edge ], [ 1251, %if.else.i.npcm_wdt_start.exit_crit_edge ], [ 2259, %if.else4.i.npcm_wdt_start.exit_crit_edge ], [ 1267, %if.else8.i.npcm_wdt_start.exit_crit_edge ], [ 2275, %if.else12.i.npcm_wdt_start.exit_crit_edge ], [ 3267, %if.else16.i.npcm_wdt_start.exit_crit_edge ], [ 2291, %if.else20.i.npcm_wdt_start.exit_crit_edge ], [ 3283, %if.else24.i.npcm_wdt_start.exit_crit_edge ], [ %..i, %if.else28.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %15 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #5
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #5, !srcloc !42
  %status = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 3, ptr noundef %status) #5
  br label %if.end29

if.end29:                                         ; preds = %npcm_wdt_start.exit, %if.end11.if.end29_crit_edge
  %call.i73 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call9, ptr noundef nonnull @npcm_wdt_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %tobool31.not = icmp eq i32 %call.i73, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %call35 = tail call i32 @devm_watchdog_register_device(ptr noundef %dev1, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %do.end, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end33.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ 0, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call.i73, %if.end29.cleanup_crit_edge ], [ %call35, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_wdt_set_timeout(ptr noundef %wdd, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %timeout)
  %cmp = icmp ult i32 %timeout, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %timeout1 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %0 = ptrtoint ptr %timeout1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %timeout1, align 4
  br label %if.end42

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %timeout)
  %cmp2 = icmp eq i32 %timeout, 2
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %timeout4 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %1 = ptrtoint ptr %timeout4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %timeout4, align 4
  br label %if.end42

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %timeout)
  %cmp6 = icmp ult i32 %timeout, 6
  br i1 %cmp6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #7
  %timeout8 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %2 = ptrtoint ptr %timeout8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %timeout8, align 4
  br label %if.end42

if.else9:                                         ; preds = %if.else5
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %timeout)
  %cmp10 = icmp ult i32 %timeout, 11
  br i1 %cmp10, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #7
  %timeout12 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %3 = ptrtoint ptr %timeout12 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 10, ptr %timeout12, align 4
  br label %if.end42

if.else13:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %timeout)
  %cmp14 = icmp ult i32 %timeout, 22
  br i1 %cmp14, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #7
  %timeout16 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %4 = ptrtoint ptr %timeout16 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 21, ptr %timeout16, align 4
  br label %if.end42

if.else17:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %timeout)
  %cmp18 = icmp ult i32 %timeout, 44
  br i1 %cmp18, label %if.then19, label %if.else21

if.then19:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #7
  %timeout20 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %5 = ptrtoint ptr %timeout20 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 43, ptr %timeout20, align 4
  br label %if.end42

if.else21:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_const_cmp4(i32 87, i32 %timeout)
  %cmp22 = icmp ult i32 %timeout, 87
  br i1 %cmp22, label %if.then23, label %if.else25

if.then23:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #7
  %timeout24 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %6 = ptrtoint ptr %timeout24 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 86, ptr %timeout24, align 4
  br label %if.end42

if.else25:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_const_cmp4(i32 173, i32 %timeout)
  %cmp26 = icmp ult i32 %timeout, 173
  br i1 %cmp26, label %if.then27, label %if.else29

if.then27:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #7
  %timeout28 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %7 = ptrtoint ptr %timeout28 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 172, ptr %timeout28, align 4
  br label %if.end42

if.else29:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_const_cmp4(i32 688, i32 %timeout)
  %cmp30 = icmp ult i32 %timeout, 688
  %timeout32 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  br i1 %cmp30, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %timeout32 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 687, ptr %timeout32, align 4
  br label %if.end42

if.else33:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %timeout32 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2750, ptr %timeout32, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.else33, %if.then31, %if.then27, %if.then23, %if.then19, %if.then15, %if.then11, %if.then7, %if.then3, %if.then
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 18
  %10 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end42.if.end45_crit_edge, label %if.then43

if.end42.if.end45_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.then43:                                        ; preds = %if.end42
  %timeout.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %12 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.i = icmp ult i32 %13, 2
  br i1 %cmp.i, label %if.then43.npcm_wdt_start.exit_crit_edge, label %if.else.i

if.then43.npcm_wdt_start.exit_crit_edge:          ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  br label %npcm_wdt_start.exit

if.else.i:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp2.i = icmp eq i32 %13, 2
  br i1 %cmp2.i, label %if.else.i.npcm_wdt_start.exit_crit_edge, label %if.else4.i

if.else.i.npcm_wdt_start.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %npcm_wdt_start.exit

if.else4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %cmp6.i = icmp ult i32 %13, 6
  br i1 %cmp6.i, label %if.else4.i.npcm_wdt_start.exit_crit_edge, label %if.else8.i

if.else4.i.npcm_wdt_start.exit_crit_edge:         ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %npcm_wdt_start.exit

if.else8.i:                                       ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %13)
  %cmp10.i = icmp ult i32 %13, 11
  br i1 %cmp10.i, label %if.else8.i.npcm_wdt_start.exit_crit_edge, label %if.else12.i

if.else8.i.npcm_wdt_start.exit_crit_edge:         ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %npcm_wdt_start.exit

if.else12.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %13)
  %cmp14.i = icmp ult i32 %13, 22
  br i1 %cmp14.i, label %if.else12.i.npcm_wdt_start.exit_crit_edge, label %if.else16.i

if.else12.i.npcm_wdt_start.exit_crit_edge:        ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %npcm_wdt_start.exit

if.else16.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %13)
  %cmp18.i = icmp ult i32 %13, 44
  br i1 %cmp18.i, label %if.else16.i.npcm_wdt_start.exit_crit_edge, label %if.else20.i

if.else16.i.npcm_wdt_start.exit_crit_edge:        ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %npcm_wdt_start.exit

if.else20.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 87, i32 %13)
  %cmp22.i = icmp ult i32 %13, 87
  br i1 %cmp22.i, label %if.else20.i.npcm_wdt_start.exit_crit_edge, label %if.else24.i

if.else20.i.npcm_wdt_start.exit_crit_edge:        ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %npcm_wdt_start.exit

if.else24.i:                                      ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 173, i32 %13)
  %cmp26.i = icmp ult i32 %13, 173
  br i1 %cmp26.i, label %if.else24.i.npcm_wdt_start.exit_crit_edge, label %if.else28.i

if.else24.i.npcm_wdt_start.exit_crit_edge:        ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %npcm_wdt_start.exit

if.else28.i:                                      ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 688, i32 %13)
  %cmp30.i = icmp ult i32 %13, 688
  %..i = select i1 %cmp30.i, i32 3299, i32 3315
  br label %npcm_wdt_start.exit

npcm_wdt_start.exit:                              ; preds = %if.else28.i, %if.else24.i.npcm_wdt_start.exit_crit_edge, %if.else20.i.npcm_wdt_start.exit_crit_edge, %if.else16.i.npcm_wdt_start.exit_crit_edge, %if.else12.i.npcm_wdt_start.exit_crit_edge, %if.else8.i.npcm_wdt_start.exit_crit_edge, %if.else4.i.npcm_wdt_start.exit_crit_edge, %if.else.i.npcm_wdt_start.exit_crit_edge, %if.then43.npcm_wdt_start.exit_crit_edge
  %val.0.i = phi i32 [ 2243, %if.then43.npcm_wdt_start.exit_crit_edge ], [ 1251, %if.else.i.npcm_wdt_start.exit_crit_edge ], [ 2259, %if.else4.i.npcm_wdt_start.exit_crit_edge ], [ 1267, %if.else8.i.npcm_wdt_start.exit_crit_edge ], [ 2275, %if.else12.i.npcm_wdt_start.exit_crit_edge ], [ 3267, %if.else16.i.npcm_wdt_start.exit_crit_edge ], [ 2291, %if.else20.i.npcm_wdt_start.exit_crit_edge ], [ 3283, %if.else24.i.npcm_wdt_start.exit_crit_edge ], [ %..i, %if.else28.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %14 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #5
  %reg.i = getelementptr inbounds %struct.npcm_wdt, ptr %wdd, i32 0, i32 1
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #5, !srcloc !42
  br label %if.end45

if.end45:                                         ; preds = %npcm_wdt_start.exit, %if.end42.if.end45_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_wdt_start(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %entry.if.end40_crit_edge, label %if.else

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp2 = icmp eq i32 %1, 2
  br i1 %cmp2, label %if.else.if.end40_crit_edge, label %if.else4

if.else.if.end40_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp6 = icmp ult i32 %1, 6
  br i1 %cmp6, label %if.else4.if.end40_crit_edge, label %if.else8

if.else4.if.end40_crit_edge:                      ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.else8:                                         ; preds = %if.else4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %1)
  %cmp10 = icmp ult i32 %1, 11
  br i1 %cmp10, label %if.else8.if.end40_crit_edge, label %if.else12

if.else8.if.end40_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.else12:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %1)
  %cmp14 = icmp ult i32 %1, 22
  br i1 %cmp14, label %if.else12.if.end40_crit_edge, label %if.else16

if.else12.if.end40_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.else16:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %1)
  %cmp18 = icmp ult i32 %1, 44
  br i1 %cmp18, label %if.else16.if.end40_crit_edge, label %if.else20

if.else16.if.end40_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.else20:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_const_cmp4(i32 87, i32 %1)
  %cmp22 = icmp ult i32 %1, 87
  br i1 %cmp22, label %if.else20.if.end40_crit_edge, label %if.else24

if.else20.if.end40_crit_edge:                     ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.else24:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_const_cmp4(i32 173, i32 %1)
  %cmp26 = icmp ult i32 %1, 173
  br i1 %cmp26, label %if.else24.if.end40_crit_edge, label %if.else28

if.else24.if.end40_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.else28:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 688, i32 %1)
  %cmp30 = icmp ult i32 %1, 688
  %. = select i1 %cmp30, i32 3299, i32 3315
  br label %if.end40

if.end40:                                         ; preds = %if.else28, %if.else24.if.end40_crit_edge, %if.else20.if.end40_crit_edge, %if.else16.if.end40_crit_edge, %if.else12.if.end40_crit_edge, %if.else8.if.end40_crit_edge, %if.else4.if.end40_crit_edge, %if.else.if.end40_crit_edge, %entry.if.end40_crit_edge
  %val.0 = phi i32 [ 2243, %entry.if.end40_crit_edge ], [ 1251, %if.else.if.end40_crit_edge ], [ 2259, %if.else4.if.end40_crit_edge ], [ 1267, %if.else8.if.end40_crit_edge ], [ 2275, %if.else12.if.end40_crit_edge ], [ 3267, %if.else16.if.end40_crit_edge ], [ 2291, %if.else20.if.end40_crit_edge ], [ 3283, %if.else24.if.end40_crit_edge ], [ %., %if.else28 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %2 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %reg = getelementptr inbounds %struct.npcm_wdt, ptr %wdd, i32 0, i32 1
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #5, !srcloc !42
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_wdt_interrupt(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @watchdog_notify_pretimeout(ptr noundef %data) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_wdt_stop(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %reg = getelementptr inbounds %struct.npcm_wdt, ptr %wdd, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #5, !srcloc !42
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_wdt_ping(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.npcm_wdt, ptr %wdd, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  %3 = or i32 %2, 16777216
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #5, !srcloc !42
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_wdt_restart(ptr nocapture noundef readonly %wdd, i32 noundef %action, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %reg = getelementptr inbounds %struct.npcm_wdt, ptr %wdd, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 -2097152000) #5, !srcloc !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_notify_pretimeout(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__initcall__kmod_npcm_wdt__187_246_npcm_wdt_driver_init6, !1, !"__initcall__kmod_npcm_wdt__187_246_npcm_wdt_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/npcm_wdt.c", i32 246, i32 1}
!2 = !{ptr @__exitcall_npcm_wdt_driver_exit, !1, !"__exitcall_npcm_wdt_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author188, !4, !"__UNIQUE_ID_author188", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/npcm_wdt.c", i32 248, i32 1}
!5 = !{ptr @__UNIQUE_ID_description189, !6, !"__UNIQUE_ID_description189", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/npcm_wdt.c", i32 249, i32 1}
!7 = !{ptr @__UNIQUE_ID_file190, !8, !"__UNIQUE_ID_file190", i1 false, i1 false}
!8 = !{!"../drivers/watchdog/npcm_wdt.c", i32 250, i32 1}
!9 = !{ptr @__UNIQUE_ID_license191, !8, !"__UNIQUE_ID_license191", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/npcm_wdt.c", i32 242, i32 11}
!12 = !{ptr @npcm_wdt_driver, !13, !"npcm_wdt_driver", i1 false, i1 false}
!13 = !{!"../drivers/watchdog/npcm_wdt.c", i32 239, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/watchdog/npcm_wdt.c", i32 216, i32 58}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/watchdog/npcm_wdt.c", i32 225, i32 2}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @npcm_wdt_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @npcm_wdt_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @npcm_wdt_info, !25, !"npcm_wdt_info", i1 false, i1 false}
!25 = !{!"../drivers/watchdog/npcm_wdt.c", i32 163, i32 35}
!26 = !{ptr @npcm_wdt_ops, !27, !"npcm_wdt_ops", i1 false, i1 false}
!27 = !{!"../drivers/watchdog/npcm_wdt.c", i32 170, i32 34}
!28 = !{ptr @npcm_wdt_match, !29, !"npcm_wdt_match", i1 false, i1 false}
!29 = !{!"../drivers/watchdog/npcm_wdt.c", i32 231, i32 34}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 4209984}
!40 = !{i64 2153147825}
!41 = !{i64 2153145339}
!42 = !{i64 4209566}
!43 = !{i64 2153145708}
!44 = !{i64 2153144233}
!45 = !{i64 2153144550}
!46 = !{i64 2153146403}
