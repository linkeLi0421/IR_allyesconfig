; ModuleID = '/llk/IR_all_yes/drivers/usb/phy/phy-am335x-control.c_pt.bc'
source_filename = "../drivers/usb/phy/phy-am335x-control.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+am335x_get_phy_control\22, \22a\22\09"
module asm "\09.weak\09__crc_am335x_get_phy_control\09\09\09\09"
module asm "\09.long\09__crc_am335x_get_phy_control\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_am335x_get_phy_control:\09\09\09\09\09"
module asm "\09.asciz \09\22am335x_get_phy_control\22\09\09\09\09\09"
module asm "__kstrtabns_am335x_get_phy_control:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.phy_control = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.am335x_control_usb = type { ptr, ptr, ptr, %struct.spinlock, %struct.phy_control }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti,ctrl_mod\00", [20 x i8] zeroinitializer }, align 32
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@__kstrtab_am335x_get_phy_control = external dso_local constant [0 x i8], align 1
@__kstrtabns_am335x_get_phy_control = external dso_local constant [0 x i8], align 1
@__ksymtab_am335x_get_phy_control = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @am335x_get_phy_control to i32), ptr @__kstrtab_am335x_get_phy_control, ptr @__kstrtabns_am335x_get_phy_control }, section "___ksymtab_gpl+am335x_get_phy_control", align 4
@__initcall__kmod_phy_am335x_control__293_191_am335x_control_driver_init6 = internal global ptr @am335x_control_driver_init, section ".initcall6.init", align 4
@am335x_control_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @am335x_control_usb_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_control_usb_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_am335x_control_driver_exit = internal global ptr @am335x_control_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file294 = internal constant [59 x i8] c"phy_am335x_control.file=drivers/usb/phy/phy-am335x-control\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [34 x i8] c"phy_am335x_control.license=GPL v2\00", section ".modinfo", align 1
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"am335x-control-usb\00", [45 x i8] zeroinitializer }, align 32
@omap_control_usb_id_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am335x-usb-ctrl-module\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ctrl_am335x }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"phy_ctrl\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wakeup\00", [25 x i8] zeroinitializer }, align 32
@am335x_control_usb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ctrl_usb->lock\00", [16 x i8] zeroinitializer }, align 32
@ctrl_am335x = internal constant { %struct.phy_control, [24 x i8] } { %struct.phy_control { ptr @am335x_phy_power, ptr @am335x_phy_wkup }, [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/usb/phy/phy-am335x-control.c\00", [59 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 133, i32 40 }
@___asan_gen_.10 = private unnamed_addr constant [22 x i8] c"am335x_control_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 183, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 186, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [26 x i8] c"omap_control_usb_id_table\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 114, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 168, i32 66 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 172, i32 63 }
@___asan_gen_.25 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 176, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [12 x i8] c"ctrl_am335x\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 109, i32 33 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [40 x i8] c"../drivers/usb/phy/phy-am335x-control.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 80, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_am335x_control_driver_exit, ptr @__initcall__kmod_phy_am335x_control__293_191_am335x_control_driver_init6, ptr @__ksymtab_am335x_get_phy_control, ptr @am335x_control_driver_exit, ptr @.str, ptr @am335x_control_driver, ptr @.str.1, ptr @omap_control_usb_id_table, ptr @.str.2, ptr @.str.3, ptr @am335x_control_usb_probe.__key, ptr @.str.4, ptr @ctrl_am335x, ptr @.str.5], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am335x_control_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_control_usb_id_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am335x_control_usb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_am335x to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @am335x_get_phy_control(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #6
  %2 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  br label %cleanup

of_parse_phandle.exit:                            ; preds = %entry
  %3 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %of_parse_phandle.exit.cleanup_crit_edge, label %if.end

of_parse_phandle.exit.cleanup_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %of_parse_phandle.exit
  %call1 = call ptr @bus_find_device(ptr noundef nonnull @platform_bus_type, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull @match) #6
  call void @of_node_put(ptr noundef nonnull %4) #6
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %call1, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i, align 4
  call void @put_device(ptr noundef nonnull %call1) #6
  %tobool6.not = icmp eq ptr %6, null
  %phy_ctrl = getelementptr inbounds %struct.am335x_control_usb, ptr %6, i32 0, i32 4
  %spec.select = select i1 %tobool6.not, ptr null, ptr %phy_ctrl
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %of_parse_phandle.exit.cleanup_crit_edge, %of_parse_phandle.exit.thread
  %retval.0 = phi ptr [ null, %of_parse_phandle.exit.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %spec.select, %if.end4 ], [ null, %of_parse_phandle.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bus_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @match(ptr nocapture noundef readonly %dev, ptr noundef readnone %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %cmp = icmp eq ptr %1, %data
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %cmp1 = icmp eq ptr %3, getelementptr inbounds (%struct.platform_driver, ptr @am335x_control_driver, i32 0, i32 5)
  %phi.cast = zext i1 %cmp1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @am335x_control_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @am335x_control_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @am335x_control_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @am335x_control_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am335x_control_usb_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_node(ptr noundef nonnull @omap_control_usb_id_table, ptr noundef %1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 64, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %call.i, align 4
  %call8 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.2) #6
  %phy_reg = getelementptr inbounds %struct.am335x_control_usb, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %phy_reg to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8, ptr %phy_reg, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  %call15 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.3) #6
  %wkup = getelementptr inbounds %struct.am335x_control_usb, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %wkup to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call15, ptr %wkup, align 4
  %cmp.i43 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i43, label %if.then18, label %do.body

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call15 to i32
  br label %cleanup

do.body:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %lock = getelementptr inbounds %struct.am335x_control_usb, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @am335x_control_usb_probe.__key, i16 noundef signext 3) #6
  %phy_ctrl23 = getelementptr inbounds %struct.am335x_control_usb, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %3, align 4
  %11 = ptrtoint ptr %phy_ctrl23 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %phy_ctrl23, align 4
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then18, %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then11 ], [ %8, %if.then18 ], [ 0, %do.body ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @am335x_phy_power(ptr nocapture noundef readonly %phy_ctrl, i32 noundef %id, i32 noundef %dr_mode, i1 noundef zeroext %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %id, label %do.end [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 80, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %reg.0 = phi i32 [ 8, %sw.bb1 ], [ %id, %entry.sw.epilog_crit_edge ]
  %phy_reg = getelementptr i8, ptr %phy_ctrl, i32 -52
  %1 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phy_reg, align 4
  %add.ptr17 = getelementptr i8, ptr %2, i32 %reg.0
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #6, !srcloc !36
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  br i1 %on, label %if.then21, label %if.else26

if.then21:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dr_mode)
  %cmp = icmp eq i32 %dr_mode, 1
  %and = and i32 %4, -1572868
  br i1 %cmp, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %and, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  %6 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_reg, align 4
  %add.ptr33.c50 = getelementptr i8, ptr %7, i32 %reg.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.c50, i32 %5) #6, !srcloc !39
  br label %if.then35

if.else:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %or24 = or i32 %and, 1572864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %or24)
  %9 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phy_reg, align 4
  %add.ptr33.c48 = getelementptr i8, ptr %10, i32 %reg.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.c48, i32 %8) #6, !srcloc !39
  br label %if.then35

if.else26:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %or27 = or i32 %4, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %or27)
  %12 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_reg, align 4
  %add.ptr33.c = getelementptr i8, ptr %13, i32 %reg.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.c, i32 %11) #6, !srcloc !39
  br label %cleanup

if.then35:                                        ; preds = %if.else, %if.then22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.else26, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @am335x_phy_wkup(ptr noundef %phy_ctrl, i32 noundef %id, i1 noundef zeroext %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %id, label %do.end [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 47, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %reg.0 = phi i32 [ 256, %sw.bb1 ], [ 1, %entry.sw.epilog_crit_edge ]
  %lock = getelementptr i8, ptr %phy_ctrl, i32 -44
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %wkup = getelementptr i8, ptr %phy_ctrl, i32 -48
  %1 = ptrtoint ptr %wkup to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wkup, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #6, !srcloc !36
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  %or = or i32 %4, %reg.0
  %neg = xor i32 %reg.0, -1
  %and = and i32 %4, %neg
  %val.0 = select i1 %on, i32 %or, i32 %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %6 = ptrtoint ptr %wkup to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wkup, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #6, !srcloc !39
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !20, !21, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/phy/phy-am335x-control.c", i32 133, i32 40}
!2 = !{ptr @__ksymtab_am335x_get_phy_control, !3, !"__ksymtab_am335x_get_phy_control", i1 false, i1 false}
!3 = !{!"../drivers/usb/phy/phy-am335x-control.c", i32 148, i32 1}
!4 = !{ptr @__initcall__kmod_phy_am335x_control__293_191_am335x_control_driver_init6, !5, !"__initcall__kmod_phy_am335x_control__293_191_am335x_control_driver_init6", i1 false, i1 false}
!5 = !{!"../drivers/usb/phy/phy-am335x-control.c", i32 191, i32 1}
!6 = !{ptr @__exitcall_am335x_control_driver_exit, !5, !"__exitcall_am335x_control_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_file294, !8, !"__UNIQUE_ID_file294", i1 false, i1 false}
!8 = !{!"../drivers/usb/phy/phy-am335x-control.c", i32 192, i32 1}
!9 = !{ptr @__UNIQUE_ID_license295, !8, !"__UNIQUE_ID_license295", i1 false, i1 false}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/phy/phy-am335x-control.c", i32 186, i32 11}
!12 = !{ptr @am335x_control_driver, !13, !"am335x_control_driver", i1 false, i1 false}
!13 = !{!"../drivers/usb/phy/phy-am335x-control.c", i32 183, i32 31}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/phy/phy-am335x-control.c", i32 168, i32 66}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/phy/phy-am335x-control.c", i32 172, i32 63}
!18 = !{ptr @am335x_control_usb_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/usb/phy/phy-am335x-control.c", i32 176, i32 2}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @omap_control_usb_id_table, !22, !"omap_control_usb_id_table", i1 false, i1 false}
!22 = !{!"../drivers/usb/phy/phy-am335x-control.c", i32 114, i32 34}
!23 = !{ptr @ctrl_am335x, !24, !"ctrl_am335x", i1 false, i1 false}
!24 = !{!"../drivers/usb/phy/phy-am335x-control.c", i32 109, i32 33}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/phy/phy-am335x-control.c", i32 80, i32 3}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i64 4901443}
!37 = !{i64 2155198254}
!38 = !{i64 2155198568}
!39 = !{i64 4901025}
!40 = !{i64 2155195548}
!41 = !{i64 2155195759}
