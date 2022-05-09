; ModuleID = '/llk/IR_all_yes/drivers/phy/hisilicon/phy-hisi-inno-usb2.c_pt.bc'
source_filename = "../drivers/phy/hisilicon/phy-hisi-inno-usb2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.hisi_inno_phy_priv = type { ptr, ptr, ptr, [2 x %struct.hisi_inno_phy_port] }
%struct.hisi_inno_phy_port = type { ptr, ptr }
%struct.phy = type { %struct.device, i32, ptr, %struct.mutex, i32, i32, %struct.phy_attrs, ptr }
%struct.phy_attrs = type { i32, i32, i32 }

@__initcall__kmod_phy_hisi_inno_usb2__289_186_hisi_inno_phy_driver_init6 = internal global ptr @hisi_inno_phy_driver_init, section ".initcall6.init", align 4
@hisi_inno_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hisi_inno_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hisi_inno_phy_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hisi_inno_phy_driver_exit = internal global ptr @hisi_inno_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description290 = internal constant [62 x i8] c"phy_hisi_inno_usb2.description=HiSilicon INNO USB2 PHY Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [65 x i8] c"phy_hisi_inno_usb2.file=drivers/phy/hisilicon/phy-hisi-inno-usb2\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [34 x i8] c"phy_hisi_inno_usb2.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hisi-inno-phy\00", [18 x i8] zeroinitializer }, align 32
@hisi_inno_phy_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,inno-usb2-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3798cv200-usb2-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@hisi_inno_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @hisi_inno_phy_init, ptr @hisi_inno_phy_exit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@hisi_inno_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 162, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Support %d ports in maximum\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hisi_inno_phy_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/phy/hisilicon/phy-hisi-inno-usb2.c\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hisi_inno_phy_probe._entry_ptr = internal global ptr @hisi_inno_phy_probe._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.6 = private unnamed_addr constant [21 x i8] c"hisi_inno_phy_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 179, i32 31 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 182, i32 11 }
@___asan_gen_.12 = private unnamed_addr constant [23 x i8] c"hisi_inno_phy_of_match\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 172, i32 34 }
@___asan_gen_.15 = private unnamed_addr constant [18 x i8] c"hisi_inno_phy_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 104, i32 29 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [46 x i8] c"../drivers/phy/hisilicon/phy-hisi-inno-usb2.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 162, i32 4 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_hisi_inno_phy_driver_exit, ptr @__initcall__kmod_phy_hisi_inno_usb2__289_186_hisi_inno_phy_driver_init6, ptr @hisi_inno_phy_driver_exit, ptr @hisi_inno_phy_probe._entry, ptr @hisi_inno_phy_probe._entry_ptr, ptr @hisi_inno_phy_driver, ptr @.str, ptr @hisi_inno_phy_of_match, ptr @hisi_inno_phy_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_inno_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_inno_phy_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_inno_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_inno_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_inno_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hisi_inno_phy_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hisi_inno_phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @hisi_inno_phy_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_inno_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 28, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup46_crit_edge, label %if.end

entry.cleanup46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup46

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %call2 to i32
  br label %cleanup46

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #4
  %ref_clk = getelementptr inbounds %struct.hisi_inno_phy_priv, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %ref_clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9, ptr %ref_clk, align 4
  %cmp.i90 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i90, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %call9 to i32
  br label %cleanup46

if.end15:                                         ; preds = %if.end8
  %call.i91 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #4
  %por_rst = getelementptr inbounds %struct.hisi_inno_phy_priv, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %por_rst to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i91, ptr %por_rst, align 4
  %cmp.i92 = icmp ugt ptr %call.i91, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i92, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %call.i91 to i32
  br label %cleanup46

if.end22:                                         ; preds = %if.end15
  %call23 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #4
  %cmp.not111 = icmp eq ptr %call23, null
  br i1 %cmp.not111, label %if.end22.for.end_crit_edge, label %for.body.preheader

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.preheader:                               ; preds = %if.end22
  %call.i93 = tail call ptr @__of_reset_control_get(ptr noundef nonnull %call23, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #4
  %cmp.i94 = icmp ugt ptr %call.i93, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i94, label %for.body.preheader.if.then26_crit_edge, label %if.end28

for.body.preheader.if.then26_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then26

if.then26:                                        ; preds = %for.body.2.if.then26_crit_edge, %for.body.1.if.then26_crit_edge, %for.body.preheader.if.then26_crit_edge
  %child.0112.lcssa = phi ptr [ %call23, %for.body.preheader.if.then26_crit_edge ], [ %call43, %for.body.1.if.then26_crit_edge ], [ %call43.1, %for.body.2.if.then26_crit_edge ]
  %call.i93.lcssa = phi ptr [ %call.i93, %for.body.preheader.if.then26_crit_edge ], [ %call.i93.1, %for.body.1.if.then26_crit_edge ], [ %call.i93.2, %for.body.2.if.then26_crit_edge ]
  tail call void @of_node_put(ptr noundef nonnull %child.0112.lcssa) #4
  %8 = ptrtoint ptr %call.i93.lcssa to i32
  br label %cleanup46

if.end28:                                         ; preds = %for.body.preheader
  %arrayidx = getelementptr %struct.hisi_inno_phy_priv, ptr %call.i, i32 0, i32 3, i32 0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i93, ptr %arrayidx, align 4
  %priv31 = getelementptr %struct.hisi_inno_phy_priv, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %10 = ptrtoint ptr %priv31 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %priv31, align 4
  %call32 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef nonnull %call23, ptr noundef nonnull @hisi_inno_phy_ops) #4
  %cmp.i95 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95, label %if.end28.if.then34_crit_edge, label %if.end36

if.end28.if.then34_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then34

if.then34:                                        ; preds = %if.end28.2.if.then34_crit_edge, %if.end28.1.if.then34_crit_edge, %if.end28.if.then34_crit_edge
  %call32.lcssa = phi ptr [ %call32, %if.end28.if.then34_crit_edge ], [ %call32.1, %if.end28.1.if.then34_crit_edge ], [ %call32.2, %if.end28.2.if.then34_crit_edge ]
  %child.0112.lcssa117 = phi ptr [ %call23, %if.end28.if.then34_crit_edge ], [ %call43, %if.end28.1.if.then34_crit_edge ], [ %call43.1, %if.end28.2.if.then34_crit_edge ]
  tail call void @of_node_put(ptr noundef nonnull %child.0112.lcssa117) #4
  %11 = ptrtoint ptr %call32.lcssa to i32
  br label %cleanup46

if.end36:                                         ; preds = %if.end28
  %attrs.i = getelementptr inbounds %struct.phy, ptr %call32, i32 0, i32 6
  %12 = ptrtoint ptr %attrs.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8, ptr %attrs.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call32, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx, ptr %driver_data.i.i, align 4
  %call43 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %call23) #4
  %cmp.not = icmp eq ptr %call43, null
  br i1 %cmp.not, label %if.end36.for.end_crit_edge, label %for.body.1

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

cleanup:                                          ; preds = %if.end28.2
  call void @__sanitizer_cov_trace_pc() #6
  %attrs.i.2 = getelementptr inbounds %struct.phy, ptr %call32.2, i32 0, i32 6
  %14 = ptrtoint ptr %attrs.i.2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8, ptr %attrs.i.2, align 4
  %driver_data.i.i.2 = getelementptr inbounds %struct.device, ptr %call32.2, i32 0, i32 8
  %15 = ptrtoint ptr %driver_data.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx.2, ptr %driver_data.i.i.2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef 3) #7
  tail call void @of_node_put(ptr noundef nonnull %call43.1) #4
  br label %for.end

for.body.1:                                       ; preds = %if.end36
  %call.i93.1 = tail call ptr @__of_reset_control_get(ptr noundef nonnull %call43, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #4
  %cmp.i94.1 = icmp ugt ptr %call.i93.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i94.1, label %for.body.1.if.then26_crit_edge, label %if.end28.1

for.body.1.if.then26_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then26

if.end28.1:                                       ; preds = %for.body.1
  %arrayidx.1 = getelementptr %struct.hisi_inno_phy_priv, ptr %call.i, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i93.1, ptr %arrayidx.1, align 4
  %priv31.1 = getelementptr %struct.hisi_inno_phy_priv, ptr %call.i, i32 0, i32 3, i32 1, i32 1
  %17 = ptrtoint ptr %priv31.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %priv31.1, align 4
  %call32.1 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef nonnull %call43, ptr noundef nonnull @hisi_inno_phy_ops) #4
  %cmp.i95.1 = icmp ugt ptr %call32.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95.1, label %if.end28.1.if.then34_crit_edge, label %if.end36.1

if.end28.1.if.then34_crit_edge:                   ; preds = %if.end28.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then34

if.end36.1:                                       ; preds = %if.end28.1
  %attrs.i.1 = getelementptr inbounds %struct.phy, ptr %call32.1, i32 0, i32 6
  %18 = ptrtoint ptr %attrs.i.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 8, ptr %attrs.i.1, align 4
  %driver_data.i.i.1 = getelementptr inbounds %struct.device, ptr %call32.1, i32 0, i32 8
  %19 = ptrtoint ptr %driver_data.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx.1, ptr %driver_data.i.i.1, align 4
  %call43.1 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %call43) #4
  %cmp.not.1 = icmp eq ptr %call43.1, null
  br i1 %cmp.not.1, label %if.end36.1.for.end_crit_edge, label %for.body.2

if.end36.1.for.end_crit_edge:                     ; preds = %if.end36.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.2:                                       ; preds = %if.end36.1
  %call.i93.2 = tail call ptr @__of_reset_control_get(ptr noundef nonnull %call43.1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #4
  %cmp.i94.2 = icmp ugt ptr %call.i93.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i94.2, label %for.body.2.if.then26_crit_edge, label %if.end28.2

for.body.2.if.then26_crit_edge:                   ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then26

if.end28.2:                                       ; preds = %for.body.2
  %arrayidx.2 = getelementptr %struct.hisi_inno_phy_priv, ptr %call.i, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i93.2, ptr %arrayidx.2, align 4
  %priv31.2 = getelementptr %struct.hisi_inno_phy_priv, ptr %call.i, i32 0, i32 3, i32 2, i32 1
  %21 = ptrtoint ptr %priv31.2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %priv31.2, align 4
  %call32.2 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef nonnull %call43.1, ptr noundef nonnull @hisi_inno_phy_ops) #4
  %cmp.i95.2 = icmp ugt ptr %call32.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95.2, label %if.end28.2.if.then34_crit_edge, label %cleanup

if.end28.2.if.then34_crit_edge:                   ; preds = %if.end28.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then34

for.end:                                          ; preds = %if.end36.1.for.end_crit_edge, %cleanup, %if.end36.for.end_crit_edge, %if.end22.for.end_crit_edge
  %call44 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #4
  %cmp.i.i = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  %22 = ptrtoint ptr %call44 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %22, i32 0
  br label %cleanup46

cleanup46:                                        ; preds = %for.end, %if.then34, %if.then26, %if.then19, %if.then12, %if.then5, %entry.cleanup46_crit_edge
  %retval.2 = phi i32 [ %3, %if.then5 ], [ %5, %if.then12 ], [ %7, %if.then19 ], [ %spec.select.i, %for.end ], [ -12, %entry.cleanup46_crit_edge ], [ %11, %if.then34 ], [ %8, %if.then26 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_inno_phy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv1 = getelementptr inbounds %struct.hisi_inno_phy_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %ref_clk = getelementptr inbounds %struct.hisi_inno_phy_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ref_clk, align 4
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
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %5) #4
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 21474800) #4
  %por_rst = getelementptr inbounds %struct.hisi_inno_phy_priv, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %por_rst to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %por_rst, align 4
  %call3 = tail call i32 @reset_control_deassert(ptr noundef %8) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 64424400) #4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 67543040) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 67559424) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 67543040) #4, !srcloc !34
  tail call void @msleep(i32 noundef 2) #4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call4 = tail call i32 @reset_control_deassert(ptr noundef %13) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 429496) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_inno_phy_exit(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv1 = getelementptr inbounds %struct.hisi_inno_phy_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call2 = tail call i32 @reset_control_assert(ptr noundef %5) #4
  %por_rst = getelementptr inbounds %struct.hisi_inno_phy_priv, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %por_rst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %por_rst, align 4
  %call3 = tail call i32 @reset_control_assert(ptr noundef %7) #4
  %ref_clk = getelementptr inbounds %struct.hisi_inno_phy_priv, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ref_clk, align 4
  tail call void @clk_disable(ptr noundef %9) #4
  tail call void @clk_unprepare(ptr noundef %9) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__initcall__kmod_phy_hisi_inno_usb2__289_186_hisi_inno_phy_driver_init6, !1, !"__initcall__kmod_phy_hisi_inno_usb2__289_186_hisi_inno_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/hisilicon/phy-hisi-inno-usb2.c", i32 186, i32 1}
!2 = !{ptr @__exitcall_hisi_inno_phy_driver_exit, !1, !"__exitcall_hisi_inno_phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description290, !4, !"__UNIQUE_ID_description290", i1 false, i1 false}
!4 = !{!"../drivers/phy/hisilicon/phy-hisi-inno-usb2.c", i32 188, i32 1}
!5 = !{ptr @__UNIQUE_ID_file291, !6, !"__UNIQUE_ID_file291", i1 false, i1 false}
!6 = !{!"../drivers/phy/hisilicon/phy-hisi-inno-usb2.c", i32 189, i32 1}
!7 = !{ptr @__UNIQUE_ID_license292, !6, !"__UNIQUE_ID_license292", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/phy/hisilicon/phy-hisi-inno-usb2.c", i32 182, i32 11}
!10 = !{ptr @hisi_inno_phy_driver, !11, !"hisi_inno_phy_driver", i1 false, i1 false}
!11 = !{!"../drivers/phy/hisilicon/phy-hisi-inno-usb2.c", i32 179, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/phy/hisilicon/phy-hisi-inno-usb2.c", i32 162, i32 4}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @hisi_inno_phy_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @hisi_inno_phy_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @hisi_inno_phy_ops, !21, !"hisi_inno_phy_ops", i1 false, i1 false}
!21 = !{!"../drivers/phy/hisilicon/phy-hisi-inno-usb2.c", i32 104, i32 29}
!22 = !{ptr @hisi_inno_phy_of_match, !23, !"hisi_inno_phy_of_match", i1 false, i1 false}
!23 = !{!"../drivers/phy/hisilicon/phy-hisi-inno-usb2.c", i32 172, i32 34}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2155092648}
!34 = !{i64 3072167}
!35 = !{i64 2155093093}
!36 = !{i64 2155093538}
