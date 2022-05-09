; ModuleID = '/llk/IR_all_yes/drivers/net/mdio/mdio-moxart.c_pt.bc'
source_filename = "../drivers/net/mdio/mdio-moxart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }

@__initcall__kmod_mdio_moxart__285_183_moxart_mdio_driver_init6 = internal global ptr @moxart_mdio_driver_init, section ".initcall6.init", align 4
@moxart_mdio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @moxart_mdio_probe, ptr @moxart_mdio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @moxart_mdio_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_moxart_mdio_driver_exit = internal global ptr @moxart_mdio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description286 = internal constant [55 x i8] c"mdio_moxart.description=MOXA ART MDIO interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author287 = internal constant [57 x i8] c"mdio_moxart.author=Jonas Jensen <jonas.jensen@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file288 = internal constant [46 x i8] c"mdio_moxart.file=drivers/net/mdio/mdio-moxart\00", section ".modinfo", align 1
@__UNIQUE_ID_license289 = internal constant [27 x i8] c"mdio_moxart.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"moxart-mdio\00", [20 x i8] zeroinitializer }, align 32
@moxart_mdio_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"moxa,moxart-mdio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MOXA ART Ethernet MII\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s-%d-mii\00", [22 x i8] zeroinitializer }, align 32
@moxart_mdio_read.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mdio_moxart\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"moxart_mdio_read\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/mdio/mdio-moxart.c\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@moxart_mdio_read.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, i8 0, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s timed out\0A\00", [18 x i8] zeroinitializer }, align 32
@moxart_mdio_write.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.8, ptr @.str.5, ptr @.str.6, i8 0, i8 17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"moxart_mdio_write\00", [46 x i8] zeroinitializer }, align 32
@moxart_mdio_write.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.8, ptr @.str.5, ptr @.str.7, i8 0, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@___asan_gen_.9 = private unnamed_addr constant [19 x i8] c"moxart_mdio_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 174, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 178, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [19 x i8] c"moxart_mdio_dt_ids\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 168, i32 34 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 121, i32 14 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 125, i32 37 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 39, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 56, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private constant [34 x i8] c"../drivers/net/mdio/mdio-moxart.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 68, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_author287, ptr @__UNIQUE_ID_description286, ptr @__UNIQUE_ID_file288, ptr @__UNIQUE_ID_license289, ptr @__exitcall_moxart_mdio_driver_exit, ptr @__initcall__kmod_mdio_moxart__285_183_moxart_mdio_driver_init6, ptr @moxart_mdio_driver_exit, ptr @moxart_mdio_driver, ptr @.str, ptr @moxart_mdio_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxart_mdio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxart_mdio_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @moxart_mdio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @moxart_mdio_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @moxart_mdio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @moxart_mdio_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @moxart_mdio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @mdiobus_alloc_size(i32 noundef 4) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %name = getelementptr inbounds %struct.mii_bus, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.1, ptr %name, align 4
  %read = getelementptr inbounds %struct.mii_bus, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @moxart_mdio_read, ptr %read, align 4
  %write = getelementptr inbounds %struct.mii_bus, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @moxart_mdio_write, ptr %write, align 8
  %reset = getelementptr inbounds %struct.mii_bus, ptr %call, i32 0, i32 6
  %5 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @moxart_mdio_reset, ptr %reset, align 4
  %id = getelementptr inbounds %struct.mii_bus, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %id2 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %8 = ptrtoint ptr %id2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id2, align 4
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.2, ptr noundef %7, i32 noundef %9)
  %parent = getelementptr inbounds %struct.mii_bus, ptr %call, i32 0, i32 9
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %parent, align 4
  %arrayidx = getelementptr %struct.mii_bus, ptr %call, i32 0, i32 15, i32 0
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -2, ptr %arrayidx, align 4
  %arrayidx.1 = getelementptr %struct.mii_bus, ptr %call, i32 0, i32 15, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -2, ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr %struct.mii_bus, ptr %call, i32 0, i32 15, i32 2
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -2, ptr %arrayidx.2, align 4
  %arrayidx.3 = getelementptr %struct.mii_bus, ptr %call, i32 0, i32 15, i32 3
  %14 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -2, ptr %arrayidx.3, align 4
  %arrayidx.4 = getelementptr %struct.mii_bus, ptr %call, i32 0, i32 15, i32 4
  %15 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -2, ptr %arrayidx.4, align 4
  %arrayidx.5 = getelementptr %struct.mii_bus, ptr %call, i32 0, i32 15, i32 5
  %16 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -2, ptr %arrayidx.5, align 4
  %arrayidx.6 = getelementptr %struct.mii_bus, ptr %call, i32 0, i32 15, i32 6
  %17 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -2, ptr %arrayidx.6, align 4
  %arrayidx.7 = getelementptr %struct.mii_bus, ptr %call, i32 0, i32 15, i32 7
  %18 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -2, ptr %arrayidx.7, align 4
  %arrayidx.8 = getelementptr %struct.mii_bus, ptr %call, i32 0, i32 15, i32 8
  %19 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -2, ptr %arrayidx.8, align 4
  %arrayidx.9 = getelementptr %struct.mii_bus, ptr %call, i32 0, i32 15, i32 9
  %20 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -2, ptr %arrayidx.9, align 4
  %arrayidx.10 = getelementptr %struct.mii_bus, ptr %call, i32 0, i32 15, i32 10
  %21 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -2, ptr %arrayidx.10, align 4
  %arrayidx.11 = getelementptr %struct.mii_bus, ptr %call, i32 0, i32 15, i32 11
  %22 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -2, ptr %arrayidx.11, align 4
  %arrayidx.12 = getelementptr %struct.mii_bus, ptr %call, i32 0, i32 15, i32 12
  %23 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -2, ptr %arrayidx.12, align 4
  %arrayidx.13 = getelementptr %struct.mii_bus, ptr %call, i32 0, i32 15, i32 13
  %24 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -2, ptr %arrayidx.13, align 4
  %arrayidx.14 = getelementptr %struct.mii_bus, ptr %call, i32 0, i32 15, i32 14
  %25 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -2, ptr %arrayidx.14, align 4
  %arrayidx.15 = getelementptr %struct.mii_bus, ptr %call, i32 0, i32 15, i32 15
  %26 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -2, ptr %arrayidx.15, align 4
  %arrayidx.16 = getelementptr %struct.mii_bus, ptr %call, i32 0, i32 15, i32 16
  %27 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -2, ptr %arrayidx.16, align 4
  %arrayidx.17 = getelementptr %struct.mii_bus, ptr %call, i32 0, i32 15, i32 17
  %28 = ptrtoint ptr %arrayidx.17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -2, ptr %arrayidx.17, align 4
  %arrayidx.18 = getelementptr %struct.mii_bus, ptr %call, i32 0, i32 15, i32 18
  %29 = ptrtoint ptr %arrayidx.18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -2, ptr %arrayidx.18, align 4
  %arrayidx.19 = getelementptr %struct.mii_bus, ptr %call, i32 0, i32 15, i32 19
  %30 = ptrtoint ptr %arrayidx.19 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -2, ptr %arrayidx.19, align 4
  %arrayidx.20 = getelementptr %struct.mii_bus, ptr %call, i32 0, i32 15, i32 20
  %31 = ptrtoint ptr %arrayidx.20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -2, ptr %arrayidx.20, align 4
  %arrayidx.21 = getelementptr %struct.mii_bus, ptr %call, i32 0, i32 15, i32 21
  %32 = ptrtoint ptr %arrayidx.21 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -2, ptr %arrayidx.21, align 4
  %arrayidx.22 = getelementptr %struct.mii_bus, ptr %call, i32 0, i32 15, i32 22
  %33 = ptrtoint ptr %arrayidx.22 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -2, ptr %arrayidx.22, align 4
  %arrayidx.23 = getelementptr %struct.mii_bus, ptr %call, i32 0, i32 15, i32 23
  %34 = ptrtoint ptr %arrayidx.23 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -2, ptr %arrayidx.23, align 4
  %arrayidx.24 = getelementptr %struct.mii_bus, ptr %call, i32 0, i32 15, i32 24
  %35 = ptrtoint ptr %arrayidx.24 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -2, ptr %arrayidx.24, align 4
  %arrayidx.25 = getelementptr %struct.mii_bus, ptr %call, i32 0, i32 15, i32 25
  %36 = ptrtoint ptr %arrayidx.25 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -2, ptr %arrayidx.25, align 4
  %arrayidx.26 = getelementptr %struct.mii_bus, ptr %call, i32 0, i32 15, i32 26
  %37 = ptrtoint ptr %arrayidx.26 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -2, ptr %arrayidx.26, align 4
  %arrayidx.27 = getelementptr %struct.mii_bus, ptr %call, i32 0, i32 15, i32 27
  %38 = ptrtoint ptr %arrayidx.27 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -2, ptr %arrayidx.27, align 4
  %arrayidx.28 = getelementptr %struct.mii_bus, ptr %call, i32 0, i32 15, i32 28
  %39 = ptrtoint ptr %arrayidx.28 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -2, ptr %arrayidx.28, align 4
  %arrayidx.29 = getelementptr %struct.mii_bus, ptr %call, i32 0, i32 15, i32 29
  %40 = ptrtoint ptr %arrayidx.29 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -2, ptr %arrayidx.29, align 4
  %arrayidx.30 = getelementptr %struct.mii_bus, ptr %call, i32 0, i32 15, i32 30
  %41 = ptrtoint ptr %arrayidx.30 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -2, ptr %arrayidx.30, align 4
  %arrayidx.31 = getelementptr %struct.mii_bus, ptr %call, i32 0, i32 15, i32 31
  %42 = ptrtoint ptr %arrayidx.31 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -2, ptr %arrayidx.31, align 4
  %priv = getelementptr inbounds %struct.mii_bus, ptr %call, i32 0, i32 3
  %43 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %priv, align 8
  %call5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call5, ptr %44, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %call5 to i32
  br label %err_out_free_mdiobus

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @of_mdiobus_register(ptr noundef nonnull %call, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end11.err_out_free_mdiobus_crit_edge, label %if.end15

if.end11.err_out_free_mdiobus_crit_edge:          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_out_free_mdiobus

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %47 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call, ptr %driver_data.i.i, align 4
  br label %cleanup

err_out_free_mdiobus:                             ; preds = %if.end11.err_out_free_mdiobus_crit_edge, %if.then8
  %ret.0 = phi i32 [ %46, %if.then8 ], [ %call12, %if.end11.err_out_free_mdiobus_crit_edge ]
  tail call void @mdiobus_free(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %err_out_free_mdiobus, %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_out_free_mdiobus ], [ 0, %if.end15 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @moxart_mdio_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mdiobus_unregister(ptr noundef %1) #5
  tail call void @mdiobus_free(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @moxart_mdio_read(ptr noundef %bus, i32 noundef %mii_id, i32 noundef %regnum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @moxart_mdio_read.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@moxart_mdio_read, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !43

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @moxart_mdio_read.__UNIQUE_ID_ddebug281, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %shl = shl i32 %mii_id, 16
  %and = and i32 %shl, 2031616
  %shl3 = shl i32 %regnum, 21
  %and4 = and i32 %shl3, 65011712
  %or = or i32 %and, %and4
  %or5 = or i32 %or, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %2 = tail call i32 @llvm.bswap.i32(i32 %or5)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #5, !srcloc !45
  br label %do.body10

do.body10:                                        ; preds = %while.body.preheader.do.body10_crit_edge, %do.end
  %count.0 = phi i32 [ 5, %do.end ], [ %dec22, %while.body.preheader.do.body10_crit_edge ]
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !46
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  %and16 = and i32 %8, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then18, label %while.body.preheader

while.body.preheader:                             ; preds = %do.body10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #5
  %dec22 = add nsw i32 %count.0, -1
  %cmp.not = icmp eq i32 %dec22, 0
  br i1 %cmp.not, label %do.body25, label %while.body.preheader.do.body10_crit_edge

while.body.preheader.do.body10_crit_edge:         ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body10

if.then18:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  %and19 = and i32 %8, 65535
  br label %cleanup

do.body25:                                        ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @moxart_mdio_read.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@moxart_mdio_read, %if.then37)) #5
          to label %cleanup [label %if.then37], !srcloc !43

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #7
  %dev38 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @moxart_mdio_read.__UNIQUE_ID_ddebug282, ptr noundef %dev38, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %do.body25, %if.then18
  %retval.0 = phi i32 [ %and19, %if.then18 ], [ -110, %if.then37 ], [ -110, %do.body25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @moxart_mdio_write(ptr noundef %bus, i32 noundef %mii_id, i32 noundef %regnum, i16 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @moxart_mdio_write.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@moxart_mdio_write, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !43

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @moxart_mdio_write.__UNIQUE_ID_ddebug283, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %shl = shl i32 %mii_id, 16
  %and = and i32 %shl, 2031616
  %shl3 = shl i32 %regnum, 21
  %and4 = and i32 %shl3, 65011712
  %or = or i32 %and, %and4
  %or5 = or i32 %or, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  %conv12 = zext i16 %value to i32
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv12)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void @arm_heavy_mb() #5
  %5 = tail call i32 @llvm.bswap.i32(i32 %or5)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #5, !srcloc !45
  br label %do.body18

do.body18:                                        ; preds = %while.body.preheader.do.body18_crit_edge, %do.end
  %count.0 = phi i32 [ 5, %do.end ], [ %dec29, %while.body.preheader.do.body18_crit_edge ]
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  %11 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool25.not = icmp eq i32 %11, 0
  br i1 %tobool25.not, label %do.body18.cleanup_crit_edge, label %while.body.preheader

do.body18.cleanup_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.preheader:                             ; preds = %do.body18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #5
  %dec29 = add nsw i32 %count.0, -1
  %cmp.not = icmp eq i32 %dec29, 0
  br i1 %cmp.not, label %do.body33, label %while.body.preheader.do.body18_crit_edge

while.body.preheader.do.body18_crit_edge:         ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body18

do.body33:                                        ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @moxart_mdio_write.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@moxart_mdio_write, %if.then45)) #5
          to label %cleanup [label %if.then45], !srcloc !43

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #7
  %dev46 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @moxart_mdio_write.__UNIQUE_ID_ddebug284, ptr noundef %dev46, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %do.body33, %do.body18.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.then45 ], [ -110, %do.body33 ], [ 0, %do.body18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @moxart_mdio_reset(ptr noundef %bus) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %call = tail call i32 @moxart_mdio_read(ptr noundef %bus, i32 noundef %i.013, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %0 = trunc i32 %call to i16
  %conv = or i16 %0, -32768
  %call2 = tail call i32 @moxart_mdio_write(ptr noundef %bus, i32 noundef %i.013, i32 noundef 0, i16 noundef zeroext %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !26, !27, !29, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__initcall__kmod_mdio_moxart__285_183_moxart_mdio_driver_init6, !1, !"__initcall__kmod_mdio_moxart__285_183_moxart_mdio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/mdio/mdio-moxart.c", i32 183, i32 1}
!2 = !{ptr @__exitcall_moxart_mdio_driver_exit, !1, !"__exitcall_moxart_mdio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description286, !4, !"__UNIQUE_ID_description286", i1 false, i1 false}
!4 = !{!"../drivers/net/mdio/mdio-moxart.c", i32 185, i32 1}
!5 = !{ptr @__UNIQUE_ID_author287, !6, !"__UNIQUE_ID_author287", i1 false, i1 false}
!6 = !{!"../drivers/net/mdio/mdio-moxart.c", i32 186, i32 1}
!7 = !{ptr @__UNIQUE_ID_file288, !8, !"__UNIQUE_ID_file288", i1 false, i1 false}
!8 = !{!"../drivers/net/mdio/mdio-moxart.c", i32 187, i32 1}
!9 = !{ptr @__UNIQUE_ID_license289, !8, !"__UNIQUE_ID_license289", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/mdio/mdio-moxart.c", i32 178, i32 11}
!12 = !{ptr @moxart_mdio_driver, !13, !"moxart_mdio_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/mdio/mdio-moxart.c", i32 174, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/mdio/mdio-moxart.c", i32 121, i32 14}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/mdio/mdio-moxart.c", i32 125, i32 37}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/mdio/mdio-moxart.c", i32 39, i32 2}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @moxart_mdio_read.__UNIQUE_ID_ddebug281, !19, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/mdio/mdio-moxart.c", i32 56, i32 2}
!26 = !{ptr @moxart_mdio_read.__UNIQUE_ID_ddebug282, !25, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/mdio/mdio-moxart.c", i32 68, i32 2}
!29 = !{ptr @moxart_mdio_write.__UNIQUE_ID_ddebug283, !28, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!30 = !{ptr @moxart_mdio_write.__UNIQUE_ID_ddebug284, !31, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!31 = !{!"../drivers/net/mdio/mdio-moxart.c", i32 88, i32 2}
!32 = !{ptr @moxart_mdio_dt_ids, !33, !"moxart_mdio_dt_ids", i1 false, i1 false}
!33 = !{!"../drivers/net/mdio/mdio-moxart.c", i32 168, i32 34}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i64 2148758990, i64 2148758995, i64 2148759008, i64 2148759052, i64 2148759086, i64 2148759107}
!44 = !{i64 2155372976}
!45 = !{i64 4676186}
!46 = !{i64 4676604}
!47 = !{i64 2155373627}
!48 = !{i64 2155379667}
!49 = !{i64 2155380059}
!50 = !{i64 2155380710}
