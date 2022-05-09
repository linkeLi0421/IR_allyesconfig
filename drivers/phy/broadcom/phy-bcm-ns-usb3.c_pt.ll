; ModuleID = '/llk/IR_all_yes/drivers/phy/broadcom/phy-bcm-ns-usb3.c_pt.bc'
source_filename = "../drivers/phy/broadcom/phy-bcm-ns-usb3.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mdio_driver = type { %struct.mdio_driver_common, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.bcm_ns_usb3 = type { ptr, i32, ptr, ptr, ptr }
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
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }

@__initcall__kmod_phy_bcm_ns_usb3__328_244_mdio_module_init6 = internal global ptr @mdio_module_init, section ".initcall6.init", align 4
@bcm_ns_usb3_mdio_driver = internal global { %struct.mdio_driver, [36 x i8] } { %struct.mdio_driver { %struct.mdio_driver_common { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm_ns_usb3_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 0 }, ptr @bcm_ns_usb3_mdio_probe, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mdio_module_exit = internal global ptr @mdio_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file329 = internal constant [58 x i8] c"phy_bcm_ns_usb3.file=drivers/phy/broadcom/phy-bcm-ns-usb3\00", section ".modinfo", align 1
@__UNIQUE_ID_license330 = internal constant [31 x i8] c"phy_bcm_ns_usb3.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bcm_ns_mdio_usb3\00", [47 x i8] zeroinitializer }, align 32
@bcm_ns_usb3_id_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,ns-ax-usb3-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,ns-bx-usb3-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usb3-dmp-syscon\00", [16 x i8] zeroinitializer }, align 32
@ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @bcm_ns_usb3_phy_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@bcm_ns_usb3_mdio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 223, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to create PHY\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bcm_ns_usb3_mdio_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/phy/broadcom/phy-bcm-ns-usb3.c\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm_ns_usb3_mdio_probe._entry_ptr = internal global ptr @bcm_ns_usb3_mdio_probe._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.7 = private unnamed_addr constant [24 x i8] c"bcm_ns_usb3_mdio_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 234, i32 27 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 237, i32 12 }
@___asan_gen_.13 = private unnamed_addr constant [21 x i8] c"bcm_ns_usb3_id_table\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 56, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 211, i32 45 }
@___asan_gen_.19 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 172, i32 29 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [42 x i8] c"../drivers/phy/broadcom/phy-bcm-ns-usb3.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 223, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_file329, ptr @__UNIQUE_ID_license330, ptr @__exitcall_mdio_module_exit, ptr @__initcall__kmod_phy_bcm_ns_usb3__328_244_mdio_module_init6, ptr @bcm_ns_usb3_mdio_probe._entry, ptr @bcm_ns_usb3_mdio_probe._entry_ptr, ptr @mdio_module_exit, ptr @bcm_ns_usb3_mdio_driver, ptr @.str, ptr @bcm_ns_usb3_id_table, ptr @.str.1, ptr @ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_ns_usb3_mdio_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_ns_usb3_id_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_ns_usb3_mdio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mdio_driver_register(ptr noundef nonnull @bcm_ns_usb3_mdio_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mdio_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mdio_driver_unregister(ptr noundef nonnull @bcm_ns_usb3_mdio_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdio_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdio_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_ns_usb3_mdio_probe(ptr noundef %mdiodev) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #5
  %0 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %mdiodev, i32 noundef 20, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mdiodev, ptr %call.i, align 4
  %mdiodev3 = getelementptr inbounds %struct.bcm_ns_usb3, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %mdiodev3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mdiodev, ptr %mdiodev3, align 4
  %call4 = tail call ptr @of_match_device(ptr noundef nonnull @bcm_ns_usb3_id_table, ptr noundef %mdiodev) #5
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call4, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = ptrtoint ptr %4 to i32
  %family = getelementptr inbounds %struct.bcm_ns_usb3, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %family to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %family, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %mdiodev, i32 0, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #5
  %9 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i58 = call i32 @__of_parse_phandle_with_args(ptr noundef %8, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %tobool.not.i = icmp eq i32 %call.i58, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end7.of_parse_phandle.exit_crit_edge

if.end7.of_parse_phandle.exit_crit_edge:          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_parse_phandle.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %args.i, align 4
  br label %of_parse_phandle.exit

of_parse_phandle.exit:                            ; preds = %if.end.i, %if.end7.of_parse_phandle.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ null, %if.end7.of_parse_phandle.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  %call9 = call i32 @of_address_to_resource(ptr noundef %retval.0.i, i32 noundef 0, ptr noundef nonnull %res) #5
  call void @of_node_put(ptr noundef %retval.0.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %of_parse_phandle.exit.cleanup_crit_edge

of_parse_phandle.exit.cleanup_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %of_parse_phandle.exit
  %call13 = call ptr @devm_ioremap_resource(ptr noundef %mdiodev, ptr noundef nonnull %res) #5
  %dmp = getelementptr inbounds %struct.bcm_ns_usb3, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %dmp to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call13, ptr %dmp, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %call20 = call ptr @devm_phy_create(ptr noundef %mdiodev, ptr noundef null, ptr noundef nonnull @ops) #5
  %phy = getelementptr inbounds %struct.bcm_ns_usb3, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call20, ptr %phy, align 4
  %cmp.i59 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i59, label %do.end, label %if.end26

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %mdiodev, ptr noundef nonnull @.str.2) #8
  %15 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call20, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call28 = call ptr @__devm_of_phy_provider_register(ptr noundef %mdiodev, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #5
  %cmp.i.i = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  %19 = ptrtoint ptr %call28 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end, %if.then16, %of_parse_phandle.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then16 ], [ %17, %do.end ], [ %spec.select.i, %if.end26 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call9, %of_parse_phandle.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_ns_usb3_phy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  %dmp = getelementptr inbounds %struct.bcm_ns_usb3, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dmp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dmp, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #5, !srcloc !34
  %family = getelementptr inbounds %struct.bcm_ns_usb3, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %family, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.end9 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %mdiodev1.i.i = getelementptr inbounds %struct.bcm_ns_usb3, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %mdiodev1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdiodev1.i.i, align 4
  %bus.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus.i.i.i, align 8
  %addr.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %8, i32 0, i32 6
  %11 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i.i = tail call i32 @mdiobus_write(ptr noundef %10, i32 noundef %12, i32 noundef 31, i16 noundef zeroext -32768) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %mdiodev1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mdiodev1.i.i, align 4
  %bus.i.i16.i = getelementptr inbounds %struct.mdio_device, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %bus.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i.i16.i, align 8
  %addr.i.i17.i = getelementptr inbounds %struct.mdio_device, ptr %14, i32 0, i32 6
  %17 = ptrtoint ptr %addr.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr.i.i17.i, align 8
  %call.i.i18.i = tail call i32 @mdiobus_write(ptr noundef %16, i32 noundef %18, i32 noundef 10, i16 noundef zeroext 25600) #5
  %19 = ptrtoint ptr %mdiodev1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mdiodev1.i.i, align 4
  %bus.i.i20.i = getelementptr inbounds %struct.mdio_device, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %bus.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus.i.i20.i, align 8
  %addr.i.i21.i = getelementptr inbounds %struct.mdio_device, ptr %20, i32 0, i32 6
  %23 = ptrtoint ptr %addr.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr.i.i21.i, align 8
  %call.i.i22.i = tail call i32 @mdiobus_write(ptr noundef %22, i32 noundef %24, i32 noundef 31, i16 noundef zeroext -32544) #5
  %25 = ptrtoint ptr %mdiodev1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mdiodev1.i.i, align 4
  %bus.i.i24.i = getelementptr inbounds %struct.mdio_device, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %bus.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus.i.i24.i, align 8
  %addr.i.i25.i = getelementptr inbounds %struct.mdio_device, ptr %26, i32 0, i32 6
  %29 = ptrtoint ptr %addr.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr.i.i25.i, align 8
  %call.i.i26.i = tail call i32 @mdiobus_write(ptr noundef %28, i32 noundef %30, i32 noundef 2, i16 noundef zeroext 156) #5
  %31 = ptrtoint ptr %mdiodev1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mdiodev1.i.i, align 4
  %bus.i.i28.i = getelementptr inbounds %struct.mdio_device, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %bus.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus.i.i28.i, align 8
  %addr.i.i29.i = getelementptr inbounds %struct.mdio_device, ptr %32, i32 0, i32 6
  %35 = ptrtoint ptr %addr.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %addr.i.i29.i, align 8
  %call.i.i30.i = tail call i32 @mdiobus_write(ptr noundef %34, i32 noundef %36, i32 noundef 31, i16 noundef zeroext -32704) #5
  %37 = ptrtoint ptr %mdiodev1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mdiodev1.i.i, align 4
  %bus.i.i32.i = getelementptr inbounds %struct.mdio_device, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %bus.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus.i.i32.i, align 8
  %addr.i.i33.i = getelementptr inbounds %struct.mdio_device, ptr %38, i32 0, i32 6
  %41 = ptrtoint ptr %addr.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %addr.i.i33.i, align 8
  %call.i.i34.i = tail call i32 @mdiobus_write(ptr noundef %40, i32 noundef %42, i32 noundef 2, i16 noundef zeroext 8659) #5
  %43 = ptrtoint ptr %mdiodev1.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mdiodev1.i.i, align 4
  %bus.i.i36.i = getelementptr inbounds %struct.mdio_device, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %bus.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bus.i.i36.i, align 8
  %addr.i.i37.i = getelementptr inbounds %struct.mdio_device, ptr %44, i32 0, i32 6
  %47 = ptrtoint ptr %addr.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %addr.i.i37.i, align 8
  %call.i.i38.i = tail call i32 @mdiobus_write(ptr noundef %46, i32 noundef %48, i32 noundef 1, i16 noundef zeroext 4099) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  tail call void @arm_heavy_mb() #5
  %49 = ptrtoint ptr %dmp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dmp, align 4
  %add.ptr.i = getelementptr i8, ptr %50, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !34
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %mdiodev1.i.i25 = getelementptr inbounds %struct.bcm_ns_usb3, ptr %1, i32 0, i32 3
  %51 = ptrtoint ptr %mdiodev1.i.i25 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mdiodev1.i.i25, align 4
  %bus.i.i.i26 = getelementptr inbounds %struct.mdio_device, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %bus.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bus.i.i.i26, align 8
  %addr.i.i.i27 = getelementptr inbounds %struct.mdio_device, ptr %52, i32 0, i32 6
  %55 = ptrtoint ptr %addr.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %addr.i.i.i27, align 8
  %call.i.i.i28 = tail call i32 @mdiobus_write(ptr noundef %54, i32 noundef %56, i32 noundef 31, i16 noundef zeroext -32768) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i28)
  %cmp.i29 = icmp slt i32 %call.i.i.i28, 0
  br i1 %cmp.i29, label %sw.bb2.sw.epilog_crit_edge, label %if.end.i44

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i44:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %mdiodev1.i.i25 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mdiodev1.i.i25, align 4
  %bus.i.i24.i30 = getelementptr inbounds %struct.mdio_device, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %bus.i.i24.i30 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bus.i.i24.i30, align 8
  %addr.i.i25.i31 = getelementptr inbounds %struct.mdio_device, ptr %58, i32 0, i32 6
  %61 = ptrtoint ptr %addr.i.i25.i31 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %addr.i.i25.i31, align 8
  %call.i.i26.i32 = tail call i32 @mdiobus_write(ptr noundef %60, i32 noundef %62, i32 noundef 1, i16 noundef zeroext 4096) #5
  %63 = ptrtoint ptr %mdiodev1.i.i25 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mdiodev1.i.i25, align 4
  %bus.i.i28.i33 = getelementptr inbounds %struct.mdio_device, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %bus.i.i28.i33 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bus.i.i28.i33, align 8
  %addr.i.i29.i34 = getelementptr inbounds %struct.mdio_device, ptr %64, i32 0, i32 6
  %67 = ptrtoint ptr %addr.i.i29.i34 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %addr.i.i29.i34, align 8
  %call.i.i30.i35 = tail call i32 @mdiobus_write(ptr noundef %66, i32 noundef %68, i32 noundef 10, i16 noundef zeroext 25600) #5
  %69 = ptrtoint ptr %mdiodev1.i.i25 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mdiodev1.i.i25, align 4
  %bus.i.i32.i36 = getelementptr inbounds %struct.mdio_device, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %bus.i.i32.i36 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bus.i.i32.i36, align 8
  %addr.i.i33.i37 = getelementptr inbounds %struct.mdio_device, ptr %70, i32 0, i32 6
  %73 = ptrtoint ptr %addr.i.i33.i37 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %addr.i.i33.i37, align 8
  %call.i.i34.i38 = tail call i32 @mdiobus_write(ptr noundef %72, i32 noundef %74, i32 noundef 11, i16 noundef zeroext -16384) #5
  %75 = ptrtoint ptr %mdiodev1.i.i25 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mdiodev1.i.i25, align 4
  %bus.i.i36.i39 = getelementptr inbounds %struct.mdio_device, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %bus.i.i36.i39 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bus.i.i36.i39, align 8
  %addr.i.i37.i40 = getelementptr inbounds %struct.mdio_device, ptr %76, i32 0, i32 6
  %79 = ptrtoint ptr %addr.i.i37.i40 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %addr.i.i37.i40, align 8
  %call.i.i38.i41 = tail call i32 @mdiobus_write(ptr noundef %78, i32 noundef %80, i32 noundef 11, i16 noundef zeroext -32768) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  tail call void @arm_heavy_mb() #5
  %81 = ptrtoint ptr %dmp to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dmp, align 4
  %add.ptr.i43 = getelementptr i8, ptr %82, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 0) #5, !srcloc !34
  %83 = ptrtoint ptr %mdiodev1.i.i25 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mdiodev1.i.i25, align 4
  %bus.i.i40.i = getelementptr inbounds %struct.mdio_device, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %bus.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bus.i.i40.i, align 8
  %addr.i.i41.i = getelementptr inbounds %struct.mdio_device, ptr %84, i32 0, i32 6
  %87 = ptrtoint ptr %addr.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %addr.i.i41.i, align 8
  %call.i.i42.i = tail call i32 @mdiobus_write(ptr noundef %86, i32 noundef %88, i32 noundef 1, i16 noundef zeroext -28672) #5
  %89 = ptrtoint ptr %mdiodev1.i.i25 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mdiodev1.i.i25, align 4
  %bus.i.i44.i = getelementptr inbounds %struct.mdio_device, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %bus.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %bus.i.i44.i, align 8
  %addr.i.i45.i = getelementptr inbounds %struct.mdio_device, ptr %90, i32 0, i32 6
  %93 = ptrtoint ptr %addr.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %addr.i.i45.i, align 8
  %call.i.i46.i = tail call i32 @mdiobus_write(ptr noundef %92, i32 noundef %94, i32 noundef 31, i16 noundef zeroext -32672) #5
  %95 = ptrtoint ptr %mdiodev1.i.i25 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mdiodev1.i.i25, align 4
  %bus.i.i48.i = getelementptr inbounds %struct.mdio_device, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %bus.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bus.i.i48.i, align 8
  %addr.i.i49.i = getelementptr inbounds %struct.mdio_device, ptr %96, i32 0, i32 6
  %99 = ptrtoint ptr %addr.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %addr.i.i49.i, align 8
  %call.i.i50.i = tail call i32 @mdiobus_write(ptr noundef %98, i32 noundef %100, i32 noundef 2, i16 noundef zeroext -3315) #5
  %101 = ptrtoint ptr %mdiodev1.i.i25 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mdiodev1.i.i25, align 4
  %bus.i.i52.i = getelementptr inbounds %struct.mdio_device, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %bus.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bus.i.i52.i, align 8
  %addr.i.i53.i = getelementptr inbounds %struct.mdio_device, ptr %102, i32 0, i32 6
  %105 = ptrtoint ptr %addr.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %addr.i.i53.i, align 8
  %call.i.i54.i = tail call i32 @mdiobus_write(ptr noundef %104, i32 noundef %106, i32 noundef 3, i16 noundef zeroext 25346) #5
  %107 = ptrtoint ptr %mdiodev1.i.i25 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mdiodev1.i.i25, align 4
  %bus.i.i56.i = getelementptr inbounds %struct.mdio_device, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %bus.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %bus.i.i56.i, align 8
  %addr.i.i57.i = getelementptr inbounds %struct.mdio_device, ptr %108, i32 0, i32 6
  %111 = ptrtoint ptr %addr.i.i57.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %addr.i.i57.i, align 8
  %call.i.i58.i = tail call i32 @mdiobus_write(ptr noundef %110, i32 noundef %112, i32 noundef 31, i16 noundef zeroext -32704) #5
  %113 = ptrtoint ptr %mdiodev1.i.i25 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %mdiodev1.i.i25, align 4
  %bus.i.i60.i = getelementptr inbounds %struct.mdio_device, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %bus.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %bus.i.i60.i, align 8
  %addr.i.i61.i = getelementptr inbounds %struct.mdio_device, ptr %114, i32 0, i32 6
  %117 = ptrtoint ptr %addr.i.i61.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %addr.i.i61.i, align 8
  %call.i.i62.i = tail call i32 @mdiobus_write(ptr noundef %116, i32 noundef %118, i32 noundef 1, i16 noundef zeroext 4099) #5
  br label %sw.epilog

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 165, i32 noundef 9, ptr noundef null) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end9, %if.end.i44, %sw.bb2.sw.epilog_crit_edge, %if.end.i, %sw.bb.sw.epilog_crit_edge
  %err.0 = phi i32 [ -524, %do.end9 ], [ 0, %if.end.i ], [ %call.i.i.i, %sw.bb.sw.epilog_crit_edge ], [ 0, %if.end.i44 ], [ %call.i.i.i28, %sw.bb2.sw.epilog_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__initcall__kmod_phy_bcm_ns_usb3__328_244_mdio_module_init6, !1, !"__initcall__kmod_phy_bcm_ns_usb3__328_244_mdio_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/broadcom/phy-bcm-ns-usb3.c", i32 244, i32 1}
!2 = !{ptr @__exitcall_mdio_module_exit, !1, !"__exitcall_mdio_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file329, !4, !"__UNIQUE_ID_file329", i1 false, i1 false}
!4 = !{!"../drivers/phy/broadcom/phy-bcm-ns-usb3.c", i32 246, i32 1}
!5 = !{ptr @__UNIQUE_ID_license330, !4, !"__UNIQUE_ID_license330", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/phy/broadcom/phy-bcm-ns-usb3.c", i32 237, i32 12}
!8 = !{ptr @bcm_ns_usb3_mdio_driver, !9, !"bcm_ns_usb3_mdio_driver", i1 false, i1 false}
!9 = !{!"../drivers/phy/broadcom/phy-bcm-ns-usb3.c", i32 234, i32 27}
!10 = !{ptr @bcm_ns_usb3_id_table, !11, !"bcm_ns_usb3_id_table", i1 false, i1 false}
!11 = !{!"../drivers/phy/broadcom/phy-bcm-ns-usb3.c", i32 56, i32 34}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/phy/broadcom/phy-bcm-ns-usb3.c", i32 211, i32 45}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/broadcom/phy-bcm-ns-usb3.c", i32 223, i32 3}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bcm_ns_usb3_mdio_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @bcm_ns_usb3_mdio_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @ops, !23, !"ops", i1 false, i1 false}
!23 = !{!"../drivers/phy/broadcom/phy-bcm-ns-usb3.c", i32 172, i32 29}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2156768409}
!34 = !{i64 4999302}
!35 = !{i64 2156768007}
!36 = !{i64 2156767534}
