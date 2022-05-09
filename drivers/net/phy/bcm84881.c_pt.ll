; ModuleID = '/llk/IR_all_yes/drivers/net/phy/bcm84881.c_pt.bc'
source_filename = "../drivers/net/phy/bcm84881.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@__initcall__kmod_bcm84881__281_240_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@bcm84881_drivers = internal global { [1 x %struct.phy_driver], [52 x i8] } { [1 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 -1375579824, ptr @.str, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @bcm84881_config_init, ptr @bcm84881_probe, ptr @bcm84881_get_features, ptr null, ptr null, ptr @bcm84881_config_aneg, ptr @bcm84881_aneg_done, ptr @bcm84881_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }], [52 x i8] zeroinitializer }, align 32
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author282 = internal constant [29 x i8] c"bcm84881.author=Russell King\00", section ".modinfo", align 1
@__UNIQUE_ID_description283 = internal constant [50 x i8] c"bcm84881.description=Broadcom BCM84881 PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file284 = internal constant [39 x i8] c"bcm84881.file=drivers/net/phy/bcm84881\00", section ".modinfo", align 1
@__UNIQUE_ID_license285 = internal constant [21 x i8] c"bcm84881.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Broadcom BCM84881\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/net/phy/bcm84881.c\00", [37 x i8] zeroinitializer }, align 32
@bcm84881_wait_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 29, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s failed: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bcm84881_wait_init\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm84881_wait_init._entry_ptr = internal global ptr @bcm84881_wait_init._entry, section ".printk_index", align 4
@switch.table.bcm84881_read_status = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 4, i32 26, i32 22], [16 x i8] zeroinitializer }, align 32
@switch.table.bcm84881_read_status.6 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 100, i32 1000, i32 10000, i32 2500, i32 5000], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 22, i64 26]
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"bcm84881_drivers\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 226, i32 26 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 230, i32 12 }
@___asan_gen_.16 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [30 x i8] c"../drivers/net/phy/bcm84881.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 27, i32 9 }
@___asan_gen_.31 = private unnamed_addr constant [34 x i8] c"switch.table.bcm84881_read_status\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [36 x i8] c"switch.table.bcm84881_read_status.6\00", align 1
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_author282, ptr @__UNIQUE_ID_description283, ptr @__UNIQUE_ID_file284, ptr @__UNIQUE_ID_license285, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_bcm84881__281_240_phy_module_init6, ptr @bcm84881_wait_init._entry, ptr @bcm84881_wait_init._entry_ptr, ptr @phy_module_exit, ptr @bcm84881_drivers, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @switch.table.bcm84881_read_status, ptr @switch.table.bcm84881_read_status.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm84881_drivers to i32), i32 236, i32 288, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm84881_wait_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bcm84881_read_status to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bcm84881_read_status.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_drivers_register(ptr noundef nonnull @bcm84881_drivers, i32 noundef 1, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @phy_drivers_unregister(ptr noundef nonnull @bcm84881_drivers, i32 noundef 1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm84881_config_init(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %interface, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.return_crit_edge [
    i32 4, label %entry.sw.epilog_crit_edge
    i32 22, label %entry.sw.epilog_crit_edge1
    i32 26, label %entry.sw.epilog_crit_edge2
  ]

entry.sw.epilog_crit_edge2:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge1:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge1, %entry.sw.epilog_crit_edge2
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm84881_probe(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %is_c45 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %0 = ptrtoint ptr %is_c45 to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %is_c45, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %c45_ids = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 3
  %1 = ptrtoint ptr %c45_ids to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %c45_ids, align 8
  %and = and i32 %2, 130
  call void @__sanitizer_cov_trace_const_cmp4(i32 130, i32 %and)
  %cmp.not = icmp eq i32 %and, 130
  %spec.select = select i1 %cmp.not, i32 0, i32 -19
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm84881_get_features(ptr noundef %phydev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genphy_c45_pma_read_abilities(ptr noundef %phydev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %supported = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 16
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %supported, align 4
  %and.i.i6 = and i32 %1, -4
  store i32 %and.i.i6, ptr %supported, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm84881_config_aneg(ptr noundef %phydev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get() #5
  %add.i.i = add i64 %call.i, 2000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 29) #5
  %call850.i = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 1, i32 noundef 0) #5
  %0 = and i32 %call850.i, -2147450880
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %0)
  %.not51.i = icmp eq i32 %0, 32768
  br i1 %.not51.i, label %entry.land.lhs.true.i_crit_edge, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then20.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call13.i = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then16.i, label %if.then20.i

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 1, i32 noundef 0) #5
  %.pre.i = and i32 %call17.i, -2147450880
  br label %for.end.i

if.then20.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 25001, i32 noundef 100000, i32 noundef 2) #5
  %call8.i = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 1, i32 noundef 0) #5
  %1 = and i32 %call8.i, -2147450880
  %.not.i = icmp eq i32 %1, 32768
  br i1 %.not.i, label %if.then20.i.land.lhs.true.i_crit_edge, label %if.then20.i.for.end.i_crit_edge

if.then20.i.for.end.i_crit_edge:                  ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

if.then20.i.land.lhs.true.i_crit_edge:            ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %if.then20.i.for.end.i_crit_edge, %if.then16.i, %entry.for.end.i_crit_edge
  %.pre-phi.i = phi i32 [ %0, %entry.for.end.i_crit_edge ], [ %.pre.i, %if.then16.i ], [ %1, %if.then20.i.for.end.i_crit_edge ]
  %val.0.i = phi i32 [ %call850.i, %entry.for.end.i_crit_edge ], [ %call17.i, %if.then16.i ], [ %call8.i, %if.then20.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0.i)
  %cmp24.i = icmp slt i32 %val.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %.pre-phi.i)
  %.not48.i = icmp eq i32 %.pre-phi.i, 32768
  %2 = select i1 %.not48.i, i32 -110, i32 0
  %__ret.0.i = select i1 %cmp24.i, i32 %val.0.i, i32 %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0.i)
  %tobool28.not.i = icmp eq i32 %__ret.0.i, 0
  br i1 %tobool28.not.i, label %if.end, label %bcm84881_wait_init.exit

bcm84881_wait_init.exit:                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %__ret.0.i) #8
  br label %cleanup

if.end:                                           ; preds = %for.end.i
  %mdix_ctrl = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 39
  %3 = ptrtoint ptr %mdix_ctrl to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 3, ptr %mdix_ctrl, align 1
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %4 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %autoneg, align 8
  %5 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp = icmp eq i16 %5, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = tail call i32 @genphy_c45_an_config_aneg(ptr noundef %phydev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %advertising = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 17
  %6 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %advertising, align 4
  %8 = shl i32 %7, 4
  %9 = and i32 %8, 256
  %10 = load volatile i32, ptr %advertising, align 4
  %11 = shl i32 %10, 4
  %12 = and i32 %11, 512
  %13 = or i32 %12, %9
  %conv = trunc i32 %13 to i16
  %call11 = tail call i32 @phy_modify_mmd_changed(ptr noundef %phydev, i32 noundef 7, i32 noundef 65513, i16 noundef zeroext 768, i16 noundef zeroext %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end6.cleanup_crit_edge, label %if.end15

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp7.not = icmp ne i32 %call3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp16.not = icmp ne i32 %call11, 0
  %spec.select = select i1 %cmp16.not, i1 true, i1 %cmp7.not
  %call21 = tail call i32 @genphy_c45_check_and_restart_aneg(ptr noundef %phydev, i1 noundef zeroext %spec.select) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end6.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %bcm84881_wait_init.exit
  %retval.0 = phi i32 [ %call21, %if.end15 ], [ %__ret.0.i, %bcm84881_wait_init.exit ], [ -22, %if.end.cleanup_crit_edge ], [ %call3, %if.end2.cleanup_crit_edge ], [ %call11, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm84881_aneg_done(ptr noundef %phydev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 7, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 7, i32 noundef 65505) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %call, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and5 = lshr i32 %call1, 5
  %and5.lobit = and i32 %and5, 1
  %0 = select i1 %tobool.not, i32 0, i32 %and5.lobit
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm84881_read_status(ptr noundef %phydev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 7, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %link = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %link, align 8
  %bf.clear = and i16 %bf.load, -5
  store i16 %bf.clear, ptr %link, align 8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 7, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %call7 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 7, i32 noundef 65505) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %and11 = and i32 %call3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %1 = trunc i32 %call7 to i16
  %2 = lshr i16 %1, 4
  %3 = and i16 %2, 2
  %4 = select i1 %tobool12.not, i16 0, i16 %3
  %autoneg_complete = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %5 = ptrtoint ptr %autoneg_complete to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load16 = load i16, ptr %autoneg_complete, align 8
  %bf.clear17 = and i16 %bf.load16, -7
  %bf.set18 = or i16 %bf.clear17, %4
  %and19 = and i32 %call3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %6 = and i16 %1, 4
  %7 = and i16 %bf.load16, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp37.not = icmp ne i16 %7, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool43.not = icmp eq i16 %4, 0
  %or.cond = and i1 %tobool43.not, %cmp37.not
  %8 = select i1 %or.cond, i1 true, i1 %tobool20.not
  %bf.set33 = select i1 %8, i16 0, i16 %6
  %spec.store.select = or i16 %bf.set18, %bf.set33
  %9 = ptrtoint ptr %autoneg_complete to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %spec.store.select, ptr %autoneg_complete, align 8
  %lp_advertising = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 18
  %10 = call ptr @memset(ptr %lp_advertising, i32 0, i32 12)
  %speed = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %11 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %speed, align 8
  %duplex = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 9
  %12 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 255, ptr %duplex, align 4
  %pause = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 11
  %13 = ptrtoint ptr %pause to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %pause, align 4
  %asym_pause = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 12
  %14 = ptrtoint ptr %asym_pause to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %asym_pause, align 8
  %mdix = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 38
  %15 = ptrtoint ptr %mdix to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %mdix, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.set33)
  %tobool55.not = icmp eq i16 %bf.set33, 0
  br i1 %tobool55.not, label %if.end10.cleanup_crit_edge, label %if.end57

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end57:                                         ; preds = %if.end10
  br i1 %tobool43.not, label %if.end57.if.end83_crit_edge, label %if.then64

if.end57.if.end83_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83

if.then64:                                        ; preds = %if.end57
  %call65 = tail call i32 @genphy_c45_read_lpa(ptr noundef %phydev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %if.then64.cleanup_crit_edge, label %if.end68

if.then64.cleanup_crit_edge:                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end68:                                         ; preds = %if.then64
  %call69 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 7, i32 noundef 65514) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.end68.cleanup_crit_edge, label %if.end72

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end72:                                         ; preds = %if.end68
  %16 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lp_advertising, align 4
  %and.i.i.i.i = and i32 %17, -49
  %and.i = lshr i32 %call69, 6
  %storemerge.i.i = and i32 %and.i, 48
  %storemerge.i9.i = or i32 %storemerge.i.i, %and.i.i.i.i
  store i32 %storemerge.i9.i, ptr %lp_advertising, align 4
  %18 = ptrtoint ptr %autoneg_complete to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load76 = load i16, ptr %autoneg_complete, align 8
  %19 = and i16 %bf.load76, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp80.not = icmp eq i16 %19, 0
  br i1 %cmp80.not, label %if.end72.if.end83_crit_edge, label %if.then81

if.end72.if.end83_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83

if.then81:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @phy_resolve_aneg_linkmode(ptr noundef %phydev) #5
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %if.end72.if.end83_crit_edge, %if.end57.if.end83_crit_edge
  %20 = ptrtoint ptr %autoneg_complete to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load85 = load i16, ptr %autoneg_complete, align 8
  %21 = and i16 %bf.load85, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp89 = icmp eq i16 %21, 0
  br i1 %cmp89, label %if.then90, label %if.end95

if.then90:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  %bf.clear93 = and i16 %bf.load85, -5
  %22 = ptrtoint ptr %autoneg_complete to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %bf.clear93, ptr %autoneg_complete, align 8
  br label %cleanup

if.end95:                                         ; preds = %if.end83
  %call96 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 16401) #5
  %and97 = lshr i32 %call96, 1
  %23 = and i32 %and97, 15
  %switch.tableidx = add nsw i32 %23, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %24 = icmp ult i32 %switch.tableidx, 4
  br i1 %24, label %switch.lookup, label %if.end95.if.end110_crit_edge

if.end95.if.end110_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110

switch.lookup:                                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.bcm84881_read_status, i32 0, i32 %switch.tableidx
  %25 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load = load i32, ptr %switch.gep, align 4
  %interface103 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %26 = ptrtoint ptr %interface103 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %switch.load, ptr %interface103, align 4
  br label %if.end110

if.end110:                                        ; preds = %switch.lookup, %if.end95.if.end110_crit_edge
  %and111 = and i32 %and97, 7
  %switch.tableidx178 = add nsw i32 %and111, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx178)
  %27 = icmp ult i32 %switch.tableidx178, 5
  br i1 %27, label %switch.lookup177, label %if.end110.sw.epilog_crit_edge

if.end110.sw.epilog_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

switch.lookup177:                                 ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep179 = getelementptr inbounds [5 x i32], ptr @switch.table.bcm84881_read_status.6, i32 0, i32 %switch.tableidx178
  %28 = ptrtoint ptr %switch.gep179 to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load180 = load i32, ptr %switch.gep179, align 4
  %29 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %switch.load180, ptr %speed, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup177, %if.end110.sw.epilog_crit_edge
  %call121 = tail call i32 @genphy_c45_read_mdix(ptr noundef %phydev) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then90, %if.end68.cleanup_crit_edge, %if.then64.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then1 ], [ 0, %if.then90 ], [ %call121, %sw.epilog ], [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end2.cleanup_crit_edge ], [ %call3, %if.end6.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ %call65, %if.then64.cleanup_crit_edge ], [ %call69, %if.end68.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c45_pma_read_abilities(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c45_an_config_aneg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_mmd_changed(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c45_check_and_restart_aneg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_read_mmd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c45_read_lpa(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_resolve_aneg_linkmode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c45_read_mdix(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__initcall__kmod_bcm84881__281_240_phy_module_init6, !1, !"__initcall__kmod_bcm84881__281_240_phy_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/bcm84881.c", i32 240, i32 1}
!2 = !{ptr @__exitcall_phy_module_exit, !1, !"__exitcall_phy_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author282, !4, !"__UNIQUE_ID_author282", i1 false, i1 false}
!4 = !{!"../drivers/net/phy/bcm84881.c", i32 247, i32 1}
!5 = !{ptr @__UNIQUE_ID_description283, !6, !"__UNIQUE_ID_description283", i1 false, i1 false}
!6 = !{!"../drivers/net/phy/bcm84881.c", i32 248, i32 1}
!7 = !{ptr @__UNIQUE_ID_file284, !8, !"__UNIQUE_ID_file284", i1 false, i1 false}
!8 = !{!"../drivers/net/phy/bcm84881.c", i32 250, i32 1}
!9 = !{ptr @__UNIQUE_ID_license285, !8, !"__UNIQUE_ID_license285", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/phy/bcm84881.c", i32 230, i32 12}
!12 = !{ptr @bcm84881_drivers, !13, !"bcm84881_drivers", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/bcm84881.c", i32 226, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/phy/bcm84881.c", i32 27, i32 9}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bcm84881_wait_init._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @bcm84881_wait_init._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
