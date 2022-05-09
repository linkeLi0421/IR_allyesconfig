; ModuleID = '/llk/IR_all_yes/drivers/power/reset/linkstation-poweroff.c_pt.bc'
source_filename = "../drivers/power/reset/linkstation-poweroff.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.notifier_block = type { ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.power_off_cfg = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }

@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@linkstation_reboot_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @linkstation_reboot_notifier, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__initcall__kmod_linkstation_poweroff__281_197_linkstation_poweroff_init6 = internal global ptr @linkstation_poweroff_init, section ".initcall6.init", align 4
@__exitcall_linkstation_poweroff_exit = internal global ptr @linkstation_poweroff_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author282 = internal constant [75 x i8] c"linkstation_poweroff.author=Daniel Gonz\C3\A1lez Cabanelas <dgcbueu@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description283 = internal constant [62 x i8] c"linkstation_poweroff.description=LinkStation power off driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file284 = internal constant [67 x i8] c"linkstation_poweroff.file=drivers/power/reset/linkstation-poweroff\00", section ".modinfo", align 1
@__UNIQUE_ID_license285 = internal constant [36 x i8] c"linkstation_poweroff.license=GPL v2\00", section ".modinfo", align 1
@cfg = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ls_poweroff_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"buffalo,ls421d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @linkstation_power_off_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"buffalo,ls421de\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @linkstation_power_off_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"netgear,readynas-duo-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @readynas_power_off_cfg }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@phydev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@linkstation_power_off_cfg = internal constant { %struct.power_off_cfg, [24 x i8] } { %struct.power_off_cfg { ptr @.str, ptr @linkstation_mvphy_reg_intn }, [24 x i8] zeroinitializer }, align 32
@readynas_power_off_cfg = internal constant { %struct.power_off_cfg, [24 x i8] } { %struct.power_off_cfg { ptr @.str.6, ptr @readynas_mvphy_set_reg }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdio\00", [27 x i8] zeroinitializer }, align 32
@linkstation_mvphy_reg_intn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 79, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Write register failed, %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"linkstation_mvphy_reg_intn\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/power/reset/linkstation-poweroff.c\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@linkstation_mvphy_reg_intn._entry_ptr = internal global ptr @linkstation_mvphy_reg_intn._entry, section ".printk_index", align 4
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mdio-bus\00", [23 x i8] zeroinitializer }, align 32
@readynas_mvphy_set_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.7, ptr @.str.3, i32 110, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"readynas_mvphy_set_reg\00", [41 x i8] zeroinitializer }, align 32
@readynas_mvphy_set_reg._entry_ptr = internal global ptr @readynas_mvphy_set_reg._entry, section ".printk_index", align 4
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Power off\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [22 x i8] c"linkstation_reboot_nb\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 132, i32 30 }
@___asan_gen_.12 = private unnamed_addr constant [4 x i8] c"cfg\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 41, i32 36 }
@___asan_gen_.15 = private unnamed_addr constant [21 x i8] c"ls_poweroff_of_match\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 144, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"phydev\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 40, i32 27 }
@___asan_gen_.21 = private unnamed_addr constant [26 x i8] c"linkstation_power_off_cfg\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 113, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant [23 x i8] c"readynas_power_off_cfg\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 118, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 114, i32 20 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 79, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 119, i32 20 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 110, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private constant [46 x i8] c"../drivers/power/reset/linkstation-poweroff.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 141, i32 17 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author282, ptr @__UNIQUE_ID_description283, ptr @__UNIQUE_ID_file284, ptr @__UNIQUE_ID_license285, ptr @__exitcall_linkstation_poweroff_exit, ptr @__initcall__kmod_linkstation_poweroff__281_197_linkstation_poweroff_init6, ptr @linkstation_mvphy_reg_intn._entry, ptr @linkstation_mvphy_reg_intn._entry_ptr, ptr @linkstation_poweroff_exit, ptr @readynas_mvphy_set_reg._entry, ptr @readynas_mvphy_set_reg._entry_ptr, ptr @linkstation_reboot_nb, ptr @cfg, ptr @ls_poweroff_of_match, ptr @phydev, ptr @linkstation_power_off_cfg, ptr @readynas_power_off_cfg, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linkstation_reboot_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_poweroff_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phydev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linkstation_power_off_cfg to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @readynas_power_off_cfg to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linkstation_mvphy_reg_intn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @readynas_mvphy_set_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @linkstation_poweroff_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr null, ptr @pm_power_off, align 4
  %call = tail call i32 @unregister_reboot_notifier(ptr noundef nonnull @linkstation_reboot_nb) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_reboot_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @linkstation_poweroff_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @ls_poweroff_of_match, ptr noundef null) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @of_node_put(ptr noundef nonnull %call.i) #4
  %call1 = tail call ptr @of_match_node(ptr noundef nonnull @ls_poweroff_of_match, ptr noundef nonnull %call.i) #4
  %data = getelementptr inbounds %struct.of_device_id, ptr %call1, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  store ptr %1, ptr @cfg, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call2 = tail call ptr @of_find_node_by_name(ptr noundef null, ptr noundef %3) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @of_mdio_find_bus(ptr noundef nonnull %call2) #4
  tail call void @of_node_put(ptr noundef nonnull %call2) #4
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = tail call ptr @phy_find_first(ptr noundef nonnull %call6) #4
  store ptr %call10, ptr @phydev, align 4
  %dev = getelementptr inbounds %struct.mii_bus, ptr %call6, i32 0, i32 11
  tail call void @put_device(ptr noundef %dev) #4
  %4 = load ptr, ptr @phydev, align 4
  %tobool11.not = icmp eq ptr %4, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %call14 = tail call i32 @register_reboot_notifier(ptr noundef nonnull @linkstation_reboot_nb) #4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr @linkstation_poweroff, ptr @pm_power_off, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -517, %if.end5.cleanup_crit_edge ], [ -517, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @linkstation_reboot_notifier(ptr nocapture noundef readnone %nb, i32 noundef %action, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %action)
  %cmp = icmp eq i32 %action, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = load ptr, ptr @cfg, align 4
  %phy_set_reg = getelementptr inbounds %struct.power_off_cfg, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %phy_set_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phy_set_reg, align 4
  tail call void %2(i1 noundef zeroext true) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_mdio_find_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_find_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @linkstation_poweroff() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @unregister_reboot_notifier(ptr noundef nonnull @linkstation_reboot_nb) #4
  %0 = load ptr, ptr @cfg, align 4
  %phy_set_reg = getelementptr inbounds %struct.power_off_cfg, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %phy_set_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phy_set_reg, align 4
  tail call void %2(i1 noundef zeroext false) #4
  tail call void @kernel_restart(ptr noundef nonnull @.str.8) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @linkstation_mvphy_reg_intn(i1 noundef zeroext %restart) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @phydev, align 4
  %call = tail call i32 @phy_select_page(ptr noundef %0, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.err_crit_edge, label %if.end2

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end2:                                          ; preds = %entry
  %1 = load ptr, ptr @phydev, align 4
  %call3 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 16, i16 noundef zeroext 3840, i16 noundef zeroext 2048) #4
  %2 = load ptr, ptr @phydev, align 4
  %conv4 = select i1 %restart, i16 -32640, i16 128
  %call5 = tail call i32 @__phy_modify(ptr noundef %2, i32 noundef 18, i16 noundef zeroext -32768, i16 noundef zeroext %conv4) #4
  br i1 %restart, label %if.end2.err_crit_edge, label %if.then7

if.end2.err_crit_edge:                            ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.then7:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  %3 = load ptr, ptr @phydev, align 4
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 22, i16 noundef zeroext 0) #4
  %8 = load ptr, ptr @phydev, align 4
  %bus.i22 = getelementptr inbounds %struct.mdio_device, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %bus.i22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus.i22, align 8
  %addr.i23 = getelementptr inbounds %struct.mdio_device, ptr %8, i32 0, i32 6
  %11 = ptrtoint ptr %addr.i23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.i23, align 8
  %call.i24 = tail call i32 @__mdiobus_read(ptr noundef %10, i32 noundef %12, i32 noundef 19) #4
  %13 = load ptr, ptr @phydev, align 4
  %bus.i25 = getelementptr inbounds %struct.mdio_device, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %bus.i25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i25, align 8
  %addr.i26 = getelementptr inbounds %struct.mdio_device, ptr %13, i32 0, i32 6
  %16 = ptrtoint ptr %addr.i26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.i26, align 8
  %call.i27 = tail call i32 @__mdiobus_write(ptr noundef %15, i32 noundef %17, i32 noundef 22, i16 noundef zeroext 17) #4
  %18 = load ptr, ptr @phydev, align 4
  %call.i28 = tail call i32 @__phy_modify(ptr noundef %18, i32 noundef 16, i16 noundef zeroext 0, i16 noundef zeroext 4096) #4
  br label %err

err:                                              ; preds = %if.then7, %if.end2.err_crit_edge, %entry.err_crit_edge
  %19 = load ptr, ptr @phydev, align 4
  %call13 = tail call i32 @phy_restore_page(ptr noundef %19, i32 noundef %call, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %do.end, label %err.if.end17_crit_edge

err.if.end17_crit_edge:                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

do.end:                                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #6
  %20 = load ptr, ptr @phydev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.1, i32 noundef %call13) #7
  br label %if.end17

if.end17:                                         ; preds = %do.end, %err.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_select_page(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_restore_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @readynas_mvphy_set_reg(i1 noundef zeroext %restart) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @phydev, align 4
  %call = tail call i32 @phy_select_page(ptr noundef %0, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.err_crit_edge, label %if.end2

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end2:                                          ; preds = %entry
  %spec.store.select = select i1 %restart, i16 16, i16 0
  %1 = load ptr, ptr @phydev, align 4
  %call3 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 17, i16 noundef zeroext 16, i16 noundef zeroext %spec.store.select) #4
  br i1 %restart, label %if.end2.err_crit_edge, label %if.then5

if.end2.err_crit_edge:                            ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  %2 = load ptr, ptr @phydev, align 4
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %2, i32 0, i32 6
  %5 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @__mdiobus_write(ptr noundef %4, i32 noundef %6, i32 noundef 22, i16 noundef zeroext 17) #4
  %7 = load ptr, ptr @phydev, align 4
  %call.i17 = tail call i32 @__phy_modify(ptr noundef %7, i32 noundef 16, i16 noundef zeroext 0, i16 noundef zeroext 4096) #4
  br label %err

err:                                              ; preds = %if.then5, %if.end2.err_crit_edge, %entry.err_crit_edge
  %8 = load ptr, ptr @phydev, align 4
  %call9 = tail call i32 @phy_restore_page(ptr noundef %8, i32 noundef %call, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end, label %err.if.end12_crit_edge

err.if.end12_crit_edge:                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

do.end:                                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #6
  %9 = load ptr, ptr @phydev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.1, i32 noundef %call9) #7
  br label %if.end12

if.end12:                                         ; preds = %do.end, %err.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !35, !36, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_linkstation_poweroff__281_197_linkstation_poweroff_init6, !1, !"__initcall__kmod_linkstation_poweroff__281_197_linkstation_poweroff_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/reset/linkstation-poweroff.c", i32 197, i32 1}
!2 = !{ptr @__exitcall_linkstation_poweroff_exit, !3, !"__exitcall_linkstation_poweroff_exit", i1 false, i1 false}
!3 = !{!"../drivers/power/reset/linkstation-poweroff.c", i32 198, i32 1}
!4 = !{ptr @__UNIQUE_ID_author282, !5, !"__UNIQUE_ID_author282", i1 false, i1 false}
!5 = !{!"../drivers/power/reset/linkstation-poweroff.c", i32 200, i32 1}
!6 = !{ptr @__UNIQUE_ID_description283, !7, !"__UNIQUE_ID_description283", i1 false, i1 false}
!7 = !{!"../drivers/power/reset/linkstation-poweroff.c", i32 201, i32 1}
!8 = !{ptr @__UNIQUE_ID_file284, !9, !"__UNIQUE_ID_file284", i1 false, i1 false}
!9 = !{!"../drivers/power/reset/linkstation-poweroff.c", i32 202, i32 1}
!10 = !{ptr @__UNIQUE_ID_license285, !9, !"__UNIQUE_ID_license285", i1 false, i1 false}
!11 = !{ptr @linkstation_reboot_nb, !12, !"linkstation_reboot_nb", i1 false, i1 false}
!12 = !{!"../drivers/power/reset/linkstation-poweroff.c", i32 132, i32 30}
!13 = !{ptr @cfg, !14, !"cfg", i1 false, i1 false}
!14 = !{!"../drivers/power/reset/linkstation-poweroff.c", i32 41, i32 36}
!15 = !{ptr @ls_poweroff_of_match, !16, !"ls_poweroff_of_match", i1 false, i1 false}
!16 = !{!"../drivers/power/reset/linkstation-poweroff.c", i32 144, i32 34}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/power/reset/linkstation-poweroff.c", i32 114, i32 20}
!19 = !{ptr @linkstation_power_off_cfg, !20, !"linkstation_power_off_cfg", i1 false, i1 false}
!20 = !{!"../drivers/power/reset/linkstation-poweroff.c", i32 113, i32 35}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/power/reset/linkstation-poweroff.c", i32 79, i32 3}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @linkstation_mvphy_reg_intn._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @linkstation_mvphy_reg_intn._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/power/reset/linkstation-poweroff.c", i32 119, i32 20}
!31 = !{ptr @readynas_power_off_cfg, !32, !"readynas_power_off_cfg", i1 false, i1 false}
!32 = !{!"../drivers/power/reset/linkstation-poweroff.c", i32 118, i32 35}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/power/reset/linkstation-poweroff.c", i32 110, i32 3}
!35 = !{ptr @readynas_mvphy_set_reg._entry, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @readynas_mvphy_set_reg._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @phydev, !38, !"phydev", i1 false, i1 false}
!38 = !{!"../drivers/power/reset/linkstation-poweroff.c", i32 40, i32 27}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/power/reset/linkstation-poweroff.c", i32 141, i32 17}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
