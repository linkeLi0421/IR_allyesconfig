; ModuleID = '/llk/IR_all_yes/drivers/net/mdio/mdio-gpio.c_pt.bc'
source_filename = "../drivers/net/mdio/mdio-gpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mdiobb_ops = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.mdio_gpio_info = type { %struct.mdiobb_ctrl, ptr, ptr, ptr }
%struct.mdiobb_ctrl = type { ptr, i32, i8, i8 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mdio_gpio_platform_data = type { i32, i32 }

@__initcall__kmod_mdio_gpio__285_220_mdio_gpio_driver_init6 = internal global ptr @mdio_gpio_driver_init, section ".initcall6.init", align 4
@mdio_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mdio_gpio_probe, ptr @mdio_gpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mdio_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mdio_gpio_driver_exit = internal global ptr @mdio_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias286 = internal constant [35 x i8] c"mdio_gpio.alias=platform:mdio-gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_author287 = internal constant [52 x i8] c"mdio_gpio.author=Laurent Pinchart, Paulius Zaleckas\00", section ".modinfo", align 1
@__UNIQUE_ID_file288 = internal constant [42 x i8] c"mdio_gpio.file=drivers/net/mdio/mdio-gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_license289 = internal constant [25 x i8] c"mdio_gpio.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [71 x i8] c"mdio_gpio.description=Generic driver for MDIO bus emulation using GPIO\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mdio-gpio\00", [22 x i8] zeroinitializer }, align 32
@mdio_gpio_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"virtual,mdio-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mdio-smi0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@mdio_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 179, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get alias id\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mdio_gpio_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/net/mdio/mdio-gpio.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mdio_gpio_probe._entry_ptr = internal global ptr @mdio_gpio_probe._entry, section ".printk_index", align 4
@mdio_gpio_ops = internal constant { %struct.mdiobb_ops, [44 x i8] } { %struct.mdiobb_ops { ptr null, ptr @mdc_set, ptr @mdio_dir, ptr @mdio_set, ptr @mdio_get }, [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GPIO Bitbanged MDIO\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpio-%x\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"microchip,mdio-smi0\00", [44 x i8] zeroinitializer }, align 32
@str = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [34 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"mdio_gpio_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 211, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 215, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [19 x i8] c"mdio_gpio_of_match\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 204, i32 34 }
@___asan_gen_.19 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 179, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant [14 x i8] c"mdio_gpio_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 101, i32 32 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 122, i32 18 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 126, i32 42 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [32 x i8] c"../drivers/net/mdio/mdio-gpio.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 136, i32 44 }
@___asan_gen_.49 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_alias286, ptr @__UNIQUE_ID_author287, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file288, ptr @__UNIQUE_ID_license289, ptr @__exitcall_mdio_gpio_driver_exit, ptr @__initcall__kmod_mdio_gpio__285_220_mdio_gpio_driver_init6, ptr @mdio_gpio_driver_exit, ptr @mdio_gpio_probe._entry, ptr @mdio_gpio_probe._entry_ptr, ptr @mdio_gpio_driver, ptr @.str, ptr @mdio_gpio_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mdio_gpio_ops, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @str], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdio_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdio_gpio_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdio_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdio_gpio_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mdio_gpio_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mdio_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @mdio_gpio_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i46 = tail call ptr @devm_gpiod_get_index(ptr noundef %dev, ptr noundef null, i32 noundef 0, i32 noundef 3) #5
  %mdc.i = getelementptr inbounds %struct.mdio_gpio_info, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %mdc.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i46, ptr %mdc.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.mdio_gpio_get_data.exit_crit_edge, label %if.end.i

if.end.mdio_gpio_get_data.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %mdio_gpio_get_data.exit

if.end.i:                                         ; preds = %if.end
  %call5.i = tail call ptr @devm_gpiod_get_index(ptr noundef %dev, ptr noundef null, i32 noundef 1, i32 noundef 1) #5
  %mdio.i = getelementptr inbounds %struct.mdio_gpio_info, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %mdio.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call5.i, ptr %mdio.i, align 4
  %cmp.i24.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i24.i, label %if.end.i.mdio_gpio_get_data.exit_crit_edge, label %if.end11.i

if.end.i.mdio_gpio_get_data.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mdio_gpio_get_data.exit

if.end11.i:                                       ; preds = %if.end.i
  %call12.i = tail call ptr @devm_gpiod_get_index_optional(ptr noundef %dev, ptr noundef null, i32 noundef 2, i32 noundef 3) #5
  %mdo.i = getelementptr inbounds %struct.mdio_gpio_info, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %mdo.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call12.i, ptr %mdo.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call12.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end11.i.mdio_gpio_get_data.exit_crit_edge, label %if.end11.i.if.end5_crit_edge

if.end11.i.if.end5_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.end11.i.mdio_gpio_get_data.exit_crit_edge:     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mdio_gpio_get_data.exit

mdio_gpio_get_data.exit:                          ; preds = %if.end11.i.mdio_gpio_get_data.exit_crit_edge, %if.end.i.mdio_gpio_get_data.exit_crit_edge, %if.end.mdio_gpio_get_data.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call12.i, %if.end11.i.mdio_gpio_get_data.exit_crit_edge ], [ %call.i46, %if.end.mdio_gpio_get_data.exit_crit_edge ], [ %call5.i, %if.end.i.mdio_gpio_get_data.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %tobool3.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool3.not, label %mdio_gpio_get_data.exit.if.end5_crit_edge, label %mdio_gpio_get_data.exit.cleanup_crit_edge

mdio_gpio_get_data.exit.cleanup_crit_edge:        ; preds = %mdio_gpio_get_data.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

mdio_gpio_get_data.exit.if.end5_crit_edge:        ; preds = %mdio_gpio_get_data.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.end5:                                          ; preds = %mdio_gpio_get_data.exit.if.end5_crit_edge, %if.end11.i.if.end5_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %tobool7.not = icmp eq ptr %4, null
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end5
  %call11 = tail call i32 @of_alias_get_id(ptr noundef nonnull %4, ptr noundef nonnull @.str) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %do.end, label %if.then8.if.end15_crit_edge

if.then8.if.end15_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %if.end15

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else, %do.end, %if.then8.if.end15_crit_edge
  %bus_id.0 = phi i32 [ 0, %do.end ], [ %call11, %if.then8.if.end15_crit_edge ], [ %6, %if.else ]
  %platform_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %7 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platform_data.i.i, align 8
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mdio_gpio_ops, ptr %call.i, align 4
  %call2.i = tail call ptr @alloc_mdio_bitbang(ptr noundef nonnull %call.i) #5
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.end15.cleanup_crit_edge, label %if.end.i47

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i47:                                       ; preds = %if.end15
  %name.i = getelementptr inbounds %struct.mii_bus, ptr %call2.i, i32 0, i32 1
  %10 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.6, ptr %name.i, align 4
  %parent.i = getelementptr inbounds %struct.mii_bus, ptr %call2.i, i32 0, i32 9
  %11 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %parent.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bus_id.0)
  %cmp.not.i = icmp eq i32 %bus_id.0, -1
  %id5.i = getelementptr inbounds %struct.mii_bus, ptr %call2.i, i32 0, i32 2
  br i1 %cmp.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id5.i, i32 noundef 61, ptr noundef nonnull @.str.7, i32 noundef %bus_id.0) #5
  br label %if.end8.i

if.else.i:                                        ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #7
  %12 = call ptr @memcpy(ptr %id5.i, ptr @str, i32 61)
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %if.then3.i
  %tobool9.not.i = icmp eq ptr %8, null
  br i1 %tobool9.not.i, label %if.end8.i.if.end13.i_crit_edge, label %if.then10.i

if.end8.i.if.end13.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %8, align 4
  %phy_mask11.i = getelementptr inbounds %struct.mii_bus, ptr %call2.i, i32 0, i32 13
  %15 = ptrtoint ptr %phy_mask11.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %phy_mask11.i, align 8
  %phy_ignore_ta_mask.i = getelementptr inbounds %struct.mdio_gpio_platform_data, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %phy_ignore_ta_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phy_ignore_ta_mask.i, align 4
  %phy_ignore_ta_mask12.i = getelementptr inbounds %struct.mii_bus, ptr %call2.i, i32 0, i32 14
  %18 = ptrtoint ptr %phy_ignore_ta_mask12.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %phy_ignore_ta_mask12.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then10.i, %if.end8.i.if.end13.i_crit_edge
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %tobool14.not.i = icmp eq ptr %20, null
  br i1 %tobool14.not.i, label %if.end13.i.if.end20_crit_edge, label %land.lhs.true.i

if.end13.i.if.end20_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

land.lhs.true.i:                                  ; preds = %if.end13.i
  %call16.i = tail call i32 @of_device_is_compatible(ptr noundef nonnull %20, ptr noundef nonnull @.str.9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %land.lhs.true.i.if.end20_crit_edge, label %if.then18.i

land.lhs.true.i.if.end20_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then18.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %op_c22_read.i = getelementptr inbounds %struct.mdiobb_ctrl, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %op_c22_read.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %op_c22_read.i, align 4
  %op_c22_write.i = getelementptr inbounds %struct.mdiobb_ctrl, ptr %call.i, i32 0, i32 3
  %22 = ptrtoint ptr %op_c22_write.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %op_c22_write.i, align 1
  %override_op_c22.i = getelementptr inbounds %struct.mdiobb_ctrl, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %override_op_c22.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %override_op_c22.i, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18.i, %land.lhs.true.i.if.end20_crit_edge, %if.end13.i.if.end20_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call2.i, ptr %driver_data.i.i, align 4
  %25 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node, align 8
  %call23 = tail call i32 @of_mdiobus_register(ptr noundef nonnull %call2.i, ptr noundef %26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end20.cleanup_crit_edge, label %if.then25

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @free_mdio_bitbang(ptr noundef %28) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end20.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %mdio_gpio_get_data.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %mdio_gpio_get_data.exit.cleanup_crit_edge ], [ %call23, %if.then25 ], [ 0, %if.end20.cleanup_crit_edge ], [ -19, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_gpio_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mdiobus_unregister(ptr noundef %1) #5
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @free_mdio_bitbang(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index_optional(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_mdio_bitbang(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdc_set(ptr nocapture noundef readonly %ctrl, i32 noundef %what) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mdc = getelementptr inbounds %struct.mdio_gpio_info, ptr %ctrl, i32 0, i32 1
  %0 = ptrtoint ptr %mdc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdc, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef %what) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdio_dir(ptr nocapture noundef readonly %ctrl, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mdo = getelementptr inbounds %struct.mdio_gpio_info, ptr %ctrl, i32 0, i32 3
  %0 = ptrtoint ptr %mdo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdo, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %1, i32 noundef 1) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %tobool2.not = icmp eq i32 %dir, 0
  %mdio4 = getelementptr inbounds %struct.mdio_gpio_info, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %mdio4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdio4, align 4
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @gpiod_direction_output(ptr noundef %3, i32 noundef 1) #5
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 @gpiod_direction_input(ptr noundef %3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdio_set(ptr nocapture noundef readonly %ctrl, i32 noundef %what) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mdo = getelementptr inbounds %struct.mdio_gpio_info, ptr %ctrl, i32 0, i32 3
  %0 = ptrtoint ptr %mdo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdo, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %1, i32 noundef %what) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mdio = getelementptr inbounds %struct.mdio_gpio_info, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef %what) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_get(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio = getelementptr inbounds %struct.mdio_gpio_info, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio, align 4
  %call = tail call i32 @gpiod_get_value_cansleep(ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_mdio_bitbang(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__initcall__kmod_mdio_gpio__285_220_mdio_gpio_driver_init6, !1, !"__initcall__kmod_mdio_gpio__285_220_mdio_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/mdio/mdio-gpio.c", i32 220, i32 1}
!2 = !{ptr @__exitcall_mdio_gpio_driver_exit, !1, !"__exitcall_mdio_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias286, !4, !"__UNIQUE_ID_alias286", i1 false, i1 false}
!4 = !{!"../drivers/net/mdio/mdio-gpio.c", i32 222, i32 1}
!5 = !{ptr @__UNIQUE_ID_author287, !6, !"__UNIQUE_ID_author287", i1 false, i1 false}
!6 = !{!"../drivers/net/mdio/mdio-gpio.c", i32 223, i32 1}
!7 = !{ptr @__UNIQUE_ID_file288, !8, !"__UNIQUE_ID_file288", i1 false, i1 false}
!8 = !{!"../drivers/net/mdio/mdio-gpio.c", i32 224, i32 1}
!9 = !{ptr @__UNIQUE_ID_license289, !8, !"__UNIQUE_ID_license289", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_description290, !11, !"__UNIQUE_ID_description290", i1 false, i1 false}
!11 = !{!"../drivers/net/mdio/mdio-gpio.c", i32 225, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/mdio/mdio-gpio.c", i32 215, i32 11}
!14 = !{ptr @mdio_gpio_driver, !15, !"mdio_gpio_driver", i1 false, i1 false}
!15 = !{!"../drivers/net/mdio/mdio-gpio.c", i32 211, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/mdio/mdio-gpio.c", i32 179, i32 4}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mdio_gpio_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mdio_gpio_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/mdio/mdio-gpio.c", i32 122, i32 18}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/mdio/mdio-gpio.c", i32 126, i32 42}
!28 = distinct !{null, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/mdio/mdio-gpio.c", i32 128, i32 24}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/mdio/mdio-gpio.c", i32 136, i32 44}
!32 = !{ptr @mdio_gpio_ops, !33, !"mdio_gpio_ops", i1 false, i1 false}
!33 = !{!"../drivers/net/mdio/mdio-gpio.c", i32 101, i32 32}
!34 = !{ptr @mdio_gpio_of_match, !35, !"mdio_gpio_of_match", i1 false, i1 false}
!35 = !{!"../drivers/net/mdio/mdio-gpio.c", i32 204, i32 34}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
