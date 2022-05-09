; ModuleID = '/llk/IR_all_yes/drivers/clk/sunxi/clk-sun9i-mmc.c_pt.bc'
source_filename = "../drivers/clk/sunxi/clk-sun9i-mmc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.sun9i_mmc_clk_data = type { %struct.spinlock, ptr, ptr, ptr, %struct.clk_onecell_data, %struct.reset_controller_dev }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }

@__initcall__kmod_clk_sun9i_mmc__183_203_sun9i_a80_mmc_config_clk_driver_init6 = internal global ptr @sun9i_a80_mmc_config_clk_driver_init, section ".initcall6.init", align 4
@sun9i_a80_mmc_config_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun9i_a80_mmc_config_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @sun9i_a80_mmc_config_clk_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sun9i-a80-mmc-config-clk\00", [39 x i8] zeroinitializer }, align 32
@sun9i_a80_mmc_config_clk_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-mmc-config-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sun9i_a80_mmc_config_clk_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@sun9i_a80_mmc_config_clk_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 127, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Could not get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sun9i_a80_mmc_config_clk_probe\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clk/sunxi/clk-sun9i-mmc.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun9i_a80_mmc_config_clk_probe._entry_ptr = internal global ptr @sun9i_a80_mmc_config_clk_probe._entry, section ".printk_index", align 4
@sun9i_a80_mmc_config_clk_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 133, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not get reset control\0A\00", [35 x i8] zeroinitializer }, align 32
@sun9i_a80_mmc_config_clk_probe._entry_ptr.9 = internal global ptr @sun9i_a80_mmc_config_clk_probe._entry.7, section ".printk_index", align 4
@sun9i_a80_mmc_config_clk_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 139, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Reset deassert err %d\0A\00", [41 x i8] zeroinitializer }, align 32
@sun9i_a80_mmc_config_clk_probe._entry_ptr.12 = internal global ptr @sun9i_a80_mmc_config_clk_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@sun9i_mmc_reset_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr @sun9i_mmc_reset_reset, ptr @sun9i_mmc_reset_assert, ptr @sun9i_mmc_reset_deassert, ptr null }, [16 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.14 = private unnamed_addr constant [32 x i8] c"sun9i_a80_mmc_config_clk_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 195, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 197, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [32 x i8] c"sun9i_a80_mmc_config_clk_dt_ids\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 190, i32 34 }
@___asan_gen_.23 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 109, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 127, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 133, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 139, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 145, i32 37 }
@___asan_gen_.62 = private unnamed_addr constant [20 x i8] c"sun9i_mmc_reset_ops\00", align 1
@___asan_gen_.63 = private constant [37 x i8] c"../drivers/clk/sunxi/clk-sun9i-mmc.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 89, i32 39 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__initcall__kmod_clk_sun9i_mmc__183_203_sun9i_a80_mmc_config_clk_driver_init6, ptr @sun9i_a80_mmc_config_clk_probe._entry, ptr @sun9i_a80_mmc_config_clk_probe._entry.10, ptr @sun9i_a80_mmc_config_clk_probe._entry.7, ptr @sun9i_a80_mmc_config_clk_probe._entry_ptr, ptr @sun9i_a80_mmc_config_clk_probe._entry_ptr.12, ptr @sun9i_a80_mmc_config_clk_probe._entry_ptr.9, ptr @sun9i_a80_mmc_config_clk_driver, ptr @.str, ptr @sun9i_a80_mmc_config_clk_dt_ids, ptr @sun9i_a80_mmc_config_clk_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @sun9i_mmc_reset_ops], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_mmc_config_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_mmc_config_clk_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_mmc_config_clk_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_mmc_config_clk_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_mmc_config_clk_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_mmc_config_clk_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_mmc_reset_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun9i_a80_mmc_config_clk_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun9i_a80_mmc_config_clk_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun9i_a80_mmc_config_clk_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %clk_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %clk_name, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 108, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @sun9i_a80_mmc_config_clk_probe.__key, i16 noundef signext 3) #6
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %end.i = getelementptr inbounds %struct.resource, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end.i, align 4
  %7 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call3, align 4
  %add.i = add i32 %6, 4
  %sub = sub i32 %add.i, %8
  %div165 = lshr i32 %sub, 2
  %call6 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call3) #6
  %membase = getelementptr inbounds %struct.sun9i_mmc_clk_data, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call6, ptr %membase, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end12:                                         ; preds = %do.body
  %clk_data13 = getelementptr inbounds %struct.sun9i_mmc_clk_data, ptr %call.i, i32 0, i32 4
  %clk_num = getelementptr inbounds %struct.sun9i_mmc_clk_data, ptr %call.i, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %clk_num to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div165, ptr %clk_num, align 4
  %12 = and i32 %sub, -4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %12, i32 noundef 3520) #6
  %13 = ptrtoint ptr %clk_data13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5.i.i, ptr %clk_data13, align 4
  %tobool17.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool17.not, label %if.end12.cleanup_crit_edge, label %if.end19

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %call21 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.sun9i_mmc_clk_data, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call21, ptr %clk, align 4
  %cmp.i166 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i166, label %do.end27, label %if.end31

do.end27:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  %15 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end19
  %call.i167 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %reset = getelementptr inbounds %struct.sun9i_mmc_clk_data, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i167, ptr %reset, align 4
  %cmp.i168 = icmp ugt ptr %call.i167, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i168, label %do.end39, label %if.end43

do.end39:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  %19 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reset, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %cleanup

if.end43:                                         ; preds = %if.end31
  %call45 = tail call i32 @reset_control_deassert(ptr noundef %call.i167) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end52, label %do.end50

do.end50:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call45) #9
  br label %cleanup

if.end52:                                         ; preds = %if.end43
  %22 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk, align 4
  %call54 = tail call ptr @__clk_get_name(ptr noundef %23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp173.not = icmp ult i32 %sub, 4
  br i1 %cmp173.not, label %if.end52.for.end_crit_edge, label %for.body.preheader

if.end52.for.end_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %if.end52
  %umax = call i32 @llvm.umax.i32(i32 %div165, i32 1)
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0174, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.0174 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call.i169 = call i32 @of_property_read_string_helper(ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef nonnull %clk_name, i32 noundef 1, i32 noundef %i.0174) #6
  %24 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk_name, align 4
  %26 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase, align 4
  %mul = shl i32 %i.0174, 2
  %add.ptr = getelementptr i8, ptr %27, i32 %mul
  %call59 = call ptr @clk_register_gate(ptr noundef %dev, ptr noundef %25, ptr noundef %call54, i32 noundef 0, ptr noundef %add.ptr, i8 noundef zeroext 16, i8 noundef zeroext 0, ptr noundef nonnull %call.i) #6
  %28 = ptrtoint ptr %clk_data13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk_data13, align 4
  %arrayidx = getelementptr ptr, ptr %29, i32 %i.0174
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call59, ptr %arrayidx, align 4
  %31 = load ptr, ptr %clk_data13, align 4
  %arrayidx62 = getelementptr ptr, ptr %31, i32 %i.0174
  %32 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx62, align 4
  %cmp.i170 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i170, label %if.then64, label %for.cond

if.then64:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %33 to i32
  br label %err_clk_register

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end52.for.end_crit_edge
  %call69 = call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %clk_data13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %for.end.err_clk_provider_crit_edge

for.end.err_clk_provider_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_clk_provider

if.end72:                                         ; preds = %for.end
  %rcdev = getelementptr inbounds %struct.sun9i_mmc_clk_data, ptr %call.i, i32 0, i32 5
  %owner = getelementptr inbounds %struct.sun9i_mmc_clk_data, ptr %call.i, i32 0, i32 5, i32 1
  %35 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %owner, align 4
  %nr_resets = getelementptr inbounds %struct.sun9i_mmc_clk_data, ptr %call.i, i32 0, i32 5, i32 8
  %36 = ptrtoint ptr %nr_resets to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %div165, ptr %nr_resets, align 4
  %37 = ptrtoint ptr %rcdev to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @sun9i_mmc_reset_ops, ptr %rcdev, align 4
  %38 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %of_node, align 8
  %of_node78 = getelementptr inbounds %struct.sun9i_mmc_clk_data, ptr %call.i, i32 0, i32 5, i32 5
  %40 = ptrtoint ptr %of_node78 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %of_node78, align 4
  %call80 = call i32 @reset_controller_register(ptr noundef %rcdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %err_rc_reg

if.end83:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %41 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_rc_reg:                                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  call void @of_clk_del_provider(ptr noundef %1) #6
  br label %err_clk_provider

err_clk_provider:                                 ; preds = %err_rc_reg, %for.end.err_clk_provider_crit_edge
  %ret.0 = phi i32 [ %call69, %for.end.err_clk_provider_crit_edge ], [ %call80, %err_rc_reg ]
  br i1 %cmp173.not, label %err_clk_provider.err_clk_register_crit_edge, label %for.body86.preheader

err_clk_provider.err_clk_register_crit_edge:      ; preds = %err_clk_provider
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_clk_register

for.body86.preheader:                             ; preds = %err_clk_provider
  %umax178 = call i32 @llvm.umax.i32(i32 %div165, i32 1)
  br label %for.body86

for.body86:                                       ; preds = %for.body86.for.body86_crit_edge, %for.body86.preheader
  %i.1176 = phi i32 [ %inc90, %for.body86.for.body86_crit_edge ], [ 0, %for.body86.preheader ]
  %42 = ptrtoint ptr %clk_data13 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clk_data13, align 4
  %arrayidx88 = getelementptr ptr, ptr %43, i32 %i.1176
  %44 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx88, align 4
  call void @clk_unregister(ptr noundef %45) #6
  %inc90 = add nuw nsw i32 %i.1176, 1
  %exitcond179.not = icmp eq i32 %inc90, %umax178
  br i1 %exitcond179.not, label %for.body86.err_clk_register_crit_edge, label %for.body86.for.body86_crit_edge

for.body86.for.body86_crit_edge:                  ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body86

for.body86.err_clk_register_crit_edge:            ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_clk_register

err_clk_register:                                 ; preds = %for.body86.err_clk_register_crit_edge, %err_clk_provider.err_clk_register_crit_edge, %if.then64
  %ret.1 = phi i32 [ %34, %if.then64 ], [ %ret.0, %err_clk_provider.err_clk_register_crit_edge ], [ %ret.0, %for.body86.err_clk_register_crit_edge ]
  %46 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reset, align 4
  %call93 = call i32 @reset_control_assert(ptr noundef %47) #6
  br label %cleanup

cleanup:                                          ; preds = %err_clk_register, %if.end83, %do.end50, %do.end39, %do.end27, %if.end12.cleanup_crit_edge, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then9 ], [ %17, %do.end27 ], [ %21, %do.end39 ], [ %call45, %do.end50 ], [ %ret.1, %err_clk_register ], [ 0, %if.end83 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #6
  ret i32 %retval.0
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
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_controller_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun9i_mmc_reset_reset(ptr noundef %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sun9i_mmc_reset_assert(ptr noundef %rcdev, i32 noundef %id)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #6
  %call1 = tail call i32 @sun9i_mmc_reset_deassert(ptr noundef %rcdev, i32 noundef %id)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun9i_mmc_reset_assert(ptr noundef %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr i8, ptr %rcdev, i32 -20
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %clk = getelementptr i8, ptr %rcdev, i32 -16
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %mul = shl i32 %id, 2
  %add.ptr1 = getelementptr i8, ptr %1, i32 %mul
  %add.ptr = getelementptr i8, ptr %rcdev, i32 -64
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #6
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  tail call void @arm_heavy_mb() #6
  %5 = and i32 %4, -1025
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %5) #6, !srcloc !43
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call5) #6
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun9i_mmc_reset_deassert(ptr noundef %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr i8, ptr %rcdev, i32 -20
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %clk = getelementptr i8, ptr %rcdev, i32 -16
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %mul = shl i32 %id, 2
  %add.ptr1 = getelementptr i8, ptr %1, i32 %mul
  %add.ptr = getelementptr i8, ptr %rcdev, i32 -64
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #6
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %5 = or i32 %4, 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %5) #6, !srcloc !43
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call5) #6
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__initcall__kmod_clk_sun9i_mmc__183_203_sun9i_a80_mmc_config_clk_driver_init6, !1, !"__initcall__kmod_clk_sun9i_mmc__183_203_sun9i_a80_mmc_config_clk_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/sunxi/clk-sun9i-mmc.c", i32 203, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/sunxi/clk-sun9i-mmc.c", i32 197, i32 11}
!4 = !{ptr @sun9i_a80_mmc_config_clk_driver, !5, !"sun9i_a80_mmc_config_clk_driver", i1 false, i1 false}
!5 = !{!"../drivers/clk/sunxi/clk-sun9i-mmc.c", i32 195, i32 31}
!6 = !{ptr @sun9i_a80_mmc_config_clk_probe.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/clk/sunxi/clk-sun9i-mmc.c", i32 109, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/clk/sunxi/clk-sun9i-mmc.c", i32 127, i32 3}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @sun9i_a80_mmc_config_clk_probe._entry, !10, !"_entry", i1 false, i1 false}
!16 = !{ptr @sun9i_a80_mmc_config_clk_probe._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/sunxi/clk-sun9i-mmc.c", i32 133, i32 3}
!19 = !{ptr @sun9i_a80_mmc_config_clk_probe._entry.7, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @sun9i_a80_mmc_config_clk_probe._entry_ptr.9, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/sunxi/clk-sun9i-mmc.c", i32 139, i32 3}
!23 = !{ptr @sun9i_a80_mmc_config_clk_probe._entry.10, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @sun9i_a80_mmc_config_clk_probe._entry_ptr.12, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/sunxi/clk-sun9i-mmc.c", i32 145, i32 37}
!27 = !{ptr @sun9i_mmc_reset_ops, !28, !"sun9i_mmc_reset_ops", i1 false, i1 false}
!28 = !{!"../drivers/clk/sunxi/clk-sun9i-mmc.c", i32 89, i32 39}
!29 = !{ptr @sun9i_a80_mmc_config_clk_dt_ids, !30, !"sun9i_a80_mmc_config_clk_dt_ids", i1 false, i1 false}
!30 = !{!"../drivers/clk/sunxi/clk-sun9i-mmc.c", i32 190, i32 34}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i64 4584758}
!41 = !{i64 2153036411}
!42 = !{i64 2153036723}
!43 = !{i64 4584340}
!44 = !{i64 2153039017}
!45 = !{i64 2153039327}
