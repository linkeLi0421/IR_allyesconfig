; ModuleID = '/llk/IR_all_yes/drivers/phy/cadence/phy-cadence-salvo.c_pt.bc'
source_filename = "../drivers/phy/cadence/phy-cadence-salvo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cdns_salvo_data = type { i8, ptr, i8 }
%struct.cdns_reg_pairs = type { i16, i32 }
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
%struct.cdns_salvo_phy = type { ptr, ptr, ptr, ptr }

@__initcall__kmod_phy_cadence_salvo__289_319_cdns_salvo_phy_driver_init6 = internal global ptr @cdns_salvo_phy_driver_init, section ".initcall6.init", align 4
@cdns_salvo_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cdns_salvo_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cdns_salvo_phy_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cdns_salvo_phy_driver_exit = internal global ptr @cdns_salvo_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [57 x i8] c"phy_cadence_salvo.author=Peter Chen <peter.chen@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [61 x i8] c"phy_cadence_salvo.file=drivers/phy/cadence/phy-cadence-salvo\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [33 x i8] c"phy_cadence_salvo.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [55 x i8] c"phy_cadence_salvo.description=Cadence SALVO PHY Driver\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cdns-salvo-phy\00", [17 x i8] zeroinitializer }, align 32
@cdns_salvo_phy_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,salvo-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cdns_nxp_salvo_data }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"salvo_phy_clk\00", [18 x i8] zeroinitializer }, align 32
@cdns_salvo_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @cdns_salvo_phy_init, ptr null, ptr @cdns_salvo_phy_power_on, ptr @cdns_salvo_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cdns_nxp_salvo_data = internal constant { %struct.cdns_salvo_data, [20 x i8] } { %struct.cdns_salvo_data { i8 2, ptr @cdns_nxp_sequence_pair, i8 69 }, [20 x i8] zeroinitializer }, align 32
@cdns_nxp_sequence_pair = internal constant { [69 x %struct.cdns_reg_pairs], [152 x i8] } { [69 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i16 2096, i32 51200 }, %struct.cdns_reg_pairs { i16 16, i32 480 }, %struct.cdns_reg_pairs { i16 240, i32 132 }, %struct.cdns_reg_pairs { i16 24, i32 133 }, %struct.cdns_reg_pairs { i16 208, i32 148 }, %struct.cdns_reg_pairs { i16 19114, i32 149 }, %struct.cdns_reg_pairs { i16 52, i32 150 }, %struct.cdns_reg_pairs { i16 494, i32 152 }, %struct.cdns_reg_pairs { i16 32515, i32 153 }, %struct.cdns_reg_pairs { i16 32, i32 151 }, %struct.cdns_reg_pairs { i16 0, i32 450 }, %struct.cdns_reg_pairs { i16 0, i32 448 }, %struct.cdns_reg_pairs { i16 0, i32 449 }, %struct.cdns_reg_pairs { i16 7, i32 453 }, %struct.cdns_reg_pairs { i16 39, i32 454 }, %struct.cdns_reg_pairs { i16 8, i32 455 }, %struct.cdns_reg_pairs { i16 34, i32 452 }, %struct.cdns_reg_pairs { i16 10, i32 97 }, %struct.cdns_reg_pairs { i16 313, i32 16618 }, %struct.cdns_reg_pairs { i16 -16644, i32 16385 }, %struct.cdns_reg_pairs { i16 30617, i32 16640 }, %struct.cdns_reg_pairs { i16 30616, i32 16641 }, %struct.cdns_reg_pairs { i16 20635, i32 16642 }, %struct.cdns_reg_pairs { i16 3, i32 16885 }, %struct.cdns_reg_pairs { i16 20635, i32 16643 }, %struct.cdns_reg_pairs { i16 8336, i32 16646 }, %struct.cdns_reg_pairs { i16 8336, i32 16647 }, %struct.cdns_reg_pairs { i16 -22787, i32 32768 }, %struct.cdns_reg_pairs { i16 -22787, i32 32769 }, %struct.cdns_reg_pairs { i16 -23536, i32 32770 }, %struct.cdns_reg_pairs { i16 9232, i32 32771 }, %struct.cdns_reg_pairs { i16 9215, i32 32774 }, %struct.cdns_reg_pairs { i16 8208, i32 32775 }, %struct.cdns_reg_pairs { i16 32, i32 16472 }, %struct.cdns_reg_pairs { i16 255, i32 16871 }, %struct.cdns_reg_pairs { i16 2, i32 32995 }, %struct.cdns_reg_pairs { i16 19, i32 32912 }, %struct.cdns_reg_pairs { i16 0, i32 32856 }, %struct.cdns_reg_pairs { i16 4100, i32 33244 }, %struct.cdns_reg_pairs { i16 16449, i32 33247 }, %struct.cdns_reg_pairs { i16 1152, i32 33269 }, %struct.cdns_reg_pairs { i16 -32762, i32 33235 }, %struct.cdns_reg_pairs { i16 63, i32 33223 }, %struct.cdns_reg_pairs { i16 21567, i32 33218 }, %struct.cdns_reg_pairs { i16 21567, i32 33217 }, %struct.cdns_reg_pairs { i16 0, i32 33225 }, %struct.cdns_reg_pairs { i16 -32768, i32 33272 }, %struct.cdns_reg_pairs { i16 3, i32 33273 }, %struct.cdns_reg_pairs { i16 9224, i32 33245 }, %struct.cdns_reg_pairs { i16 1482, i32 33237 }, %struct.cdns_reg_pairs { i16 600, i32 33249 }, %struct.cdns_reg_pairs { i16 8191, i32 33215 }, %struct.cdns_reg_pairs { i16 710, i32 16386 }, %struct.cdns_reg_pairs { i16 2, i32 16388 }, %struct.cdns_reg_pairs { i16 710, i32 16387 }, %struct.cdns_reg_pairs { i16 16, i32 16389 }, %struct.cdns_reg_pairs { i16 16, i32 16390 }, %struct.cdns_reg_pairs { i16 16, i32 16391 }, %struct.cdns_reg_pairs { i16 16, i32 16392 }, %struct.cdns_reg_pairs { i16 16, i32 16393 }, %struct.cdns_reg_pairs { i16 2, i32 16394 }, %struct.cdns_reg_pairs { i16 2, i32 16395 }, %struct.cdns_reg_pairs { i16 2, i32 16396 }, %struct.cdns_reg_pairs { i16 2, i32 16397 }, %struct.cdns_reg_pairs { i16 2, i32 16398 }, %struct.cdns_reg_pairs { i16 2, i32 16399 }, %struct.cdns_reg_pairs { i16 2400, i32 16674 }, %struct.cdns_reg_pairs { i16 480, i32 16675 }, %struct.cdns_reg_pairs { i16 144, i32 16626 }], [152 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [22 x i8] c"cdns_salvo_phy_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 312, i32 31 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 315, i32 11 }
@___asan_gen_.8 = private unnamed_addr constant [24 x i8] c"cdns_salvo_phy_of_match\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 303, i32 34 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 279, i32 46 }
@___asan_gen_.14 = private unnamed_addr constant [19 x i8] c"cdns_salvo_phy_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 254, i32 29 }
@___asan_gen_.17 = private unnamed_addr constant [20 x i8] c"cdns_nxp_salvo_data\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 297, i32 37 }
@___asan_gen_.20 = private unnamed_addr constant [23 x i8] c"cdns_nxp_sequence_pair\00", align 1
@___asan_gen_.21 = private constant [43 x i8] c"../drivers/phy/cadence/phy-cadence-salvo.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 129, i32 36 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_cdns_salvo_phy_driver_exit, ptr @__initcall__kmod_phy_cadence_salvo__289_319_cdns_salvo_phy_driver_init6, ptr @cdns_salvo_phy_driver_exit, ptr @cdns_salvo_phy_driver, ptr @.str, ptr @cdns_salvo_phy_of_match, ptr @.str.1, ptr @cdns_salvo_phy_ops, ptr @cdns_nxp_salvo_data, ptr @cdns_nxp_sequence_pair], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_salvo_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_salvo_phy_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_salvo_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_nxp_salvo_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_nxp_sequence_pair to i32), i32 552, i32 704, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_salvo_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cdns_salvo_phy_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cdns_salvo_phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @cdns_salvo_phy_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_salvo_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @cdns_salvo_phy_of_match, ptr noundef %dev1) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %data2 = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data2, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 16, i32 noundef 3520) #4
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %data7 = getelementptr inbounds %struct.cdns_salvo_phy, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %data7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %data7, align 4
  %call8 = tail call ptr @devm_clk_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.1) #4
  %clk = getelementptr inbounds %struct.cdns_salvo_phy, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call8, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %call15 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #4
  %base = getelementptr inbounds %struct.cdns_salvo_phy, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call15, ptr %base, align 4
  %cmp.i54 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i54, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  %call22 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @cdns_salvo_phy_ops) #4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call22, ptr %call.i, align 4
  %cmp.i55 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i55, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call22, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call30 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #4
  %cmp.i.i = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  %10 = ptrtoint ptr %call30 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %10, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then25, %if.then18, %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then11 ], [ %6, %if.then18 ], [ %8, %if.then25 ], [ %spec.select.i, %if.end28 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_salvo_phy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %data1 = getelementptr inbounds %struct.cdns_salvo_phy, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  %clk = getelementptr inbounds %struct.cdns_salvo_phy, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.cond.preheader, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %if.end.i
  %init_sequence_length = getelementptr inbounds %struct.cdns_salvo_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %init_sequence_length to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %init_sequence_length, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp37.not = icmp eq i8 %7, 0
  br i1 %cmp37.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %init_sequence_val = getelementptr inbounds %struct.cdns_salvo_data, ptr %3, i32 0, i32 1
  %base.i = getelementptr inbounds %struct.cdns_salvo_phy, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %8 = ptrtoint ptr %init_sequence_val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_sequence_val, align 4
  %add.ptr = getelementptr %struct.cdns_reg_pairs, ptr %9, i32 %i.038
  %off = getelementptr %struct.cdns_reg_pairs, ptr %9, i32 %i.038, i32 1
  %10 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %off, align 4
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  %conv.i = zext i16 %13 to i32
  %14 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #4
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %17 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data1, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 4
  %conv1.i = zext i8 %20 to i32
  %mul.i = shl i32 %11, %conv1.i
  %add.ptr.i = getelementptr i8, ptr %16, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #4, !srcloc !34
  %inc = add nuw nsw i32 %i.038, 1
  %21 = ptrtoint ptr %init_sequence_length to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %init_sequence_length, align 4
  %conv = zext i8 %22 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %base.i23 = getelementptr inbounds %struct.cdns_salvo_phy, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %base.i23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i23, align 4
  %25 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data1, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 4
  %conv.i25 = zext i8 %28 to i32
  %mul.i26 = shl i32 16676, %conv.i25
  %add.ptr.i27 = getelementptr i8, ptr %24, i32 %mul.i26
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27) #4, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  %30 = ptrtoint ptr %base.i23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i23, align 4
  %32 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data1, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 4
  %conv1.i30 = zext i8 %35 to i32
  %mul.i31 = shl i32 16676, %conv1.i30
  %add.ptr.i32 = getelementptr i8, ptr %31, i32 %mul.i31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 16777216) #4, !srcloc !34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 2147480) #4
  %37 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %38) #4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %38, %for.end ], [ %5, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.i35.ph = phi i32 [ 0, %for.end ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0.i35 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.i35.ph, %cleanup.sink.split ]
  ret i32 %retval.0.i35
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_salvo_phy_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.cdns_salvo_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %3) #4
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_salvo_phy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.cdns_salvo_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #4
  tail call void @clk_unprepare(ptr noundef %3) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__initcall__kmod_phy_cadence_salvo__289_319_cdns_salvo_phy_driver_init6, !1, !"__initcall__kmod_phy_cadence_salvo__289_319_cdns_salvo_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/cadence/phy-cadence-salvo.c", i32 319, i32 1}
!2 = !{ptr @__exitcall_cdns_salvo_phy_driver_exit, !1, !"__exitcall_cdns_salvo_phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/phy/cadence/phy-cadence-salvo.c", i32 321, i32 1}
!5 = !{ptr @__UNIQUE_ID_file291, !6, !"__UNIQUE_ID_file291", i1 false, i1 false}
!6 = !{!"../drivers/phy/cadence/phy-cadence-salvo.c", i32 322, i32 1}
!7 = !{ptr @__UNIQUE_ID_license292, !6, !"__UNIQUE_ID_license292", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description293, !9, !"__UNIQUE_ID_description293", i1 false, i1 false}
!9 = !{!"../drivers/phy/cadence/phy-cadence-salvo.c", i32 323, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/cadence/phy-cadence-salvo.c", i32 315, i32 11}
!12 = !{ptr @cdns_salvo_phy_driver, !13, !"cdns_salvo_phy_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/cadence/phy-cadence-salvo.c", i32 312, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/cadence/phy-cadence-salvo.c", i32 279, i32 46}
!16 = !{ptr @cdns_salvo_phy_ops, !17, !"cdns_salvo_phy_ops", i1 false, i1 false}
!17 = !{!"../drivers/phy/cadence/phy-cadence-salvo.c", i32 254, i32 29}
!18 = !{ptr @cdns_salvo_phy_of_match, !19, !"cdns_salvo_phy_of_match", i1 false, i1 false}
!19 = !{!"../drivers/phy/cadence/phy-cadence-salvo.c", i32 303, i32 34}
!20 = !{ptr @cdns_nxp_salvo_data, !21, !"cdns_nxp_salvo_data", i1 false, i1 false}
!21 = !{!"../drivers/phy/cadence/phy-cadence-salvo.c", i32 297, i32 37}
!22 = !{ptr @cdns_nxp_sequence_pair, !23, !"cdns_nxp_sequence_pair", i1 false, i1 false}
!23 = !{!"../drivers/phy/cadence/phy-cadence-salvo.c", i32 129, i32 36}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2155101088}
!34 = !{i64 2037168}
!35 = !{i64 2037586}
!36 = !{i64 2155100825}
