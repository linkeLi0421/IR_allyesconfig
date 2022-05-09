; ModuleID = '/llk/IR_all_yes/drivers/phy/mscc/phy-ocelot-serdes.c_pt.bc'
source_filename = "../drivers/phy/mscc/phy-ocelot-serdes.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.serdes_mux = type { i8, i8, i32, i32, i32, i32 }
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
%struct.serdes_ctrl = type { ptr, ptr, [9 x ptr] }
%struct.serdes_macro = type { i8, i32, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_phy_ocelot_serdes__326_537_mscc_ocelot_serdes_init6 = internal global ptr @mscc_ocelot_serdes_init, section ".initcall6.init", align 4
@mscc_ocelot_serdes = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @serdes_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @serdes_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mscc_ocelot_serdes_exit = internal global ptr @mscc_ocelot_serdes_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author327 = internal constant [69 x i8] c"phy_ocelot_serdes.author=Quentin Schulz <quentin.schulz@bootlin.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description328 = internal constant [65 x i8] c"phy_ocelot_serdes.description=SerDes driver for Microsemi Ocelot\00", section ".modinfo", align 1
@__UNIQUE_ID_file329 = internal constant [58 x i8] c"phy_ocelot_serdes.file=drivers/phy/mscc/phy-ocelot-serdes\00", section ".modinfo", align 1
@__UNIQUE_ID_license330 = internal constant [39 x i8] c"phy_ocelot_serdes.license=Dual MIT/GPL\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mscc,ocelot-serdes\00", [45 x i8] zeroinitializer }, align 32
@serdes_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mscc,vsc7514-serdes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@serdes_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr null, ptr null, ptr null, ptr null, ptr @serdes_set_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ocelot_serdes_muxes = internal constant { [19 x %struct.serdes_mux], [68 x i8] } { [19 x %struct.serdes_mux] [%struct.serdes_mux { i8 0, i8 0, i32 15, i32 4, i32 0, i32 0 }, %struct.serdes_mux { i8 1, i8 1, i32 15, i32 4, i32 8, i32 0 }, %struct.serdes_mux { i8 1, i8 5, i32 15, i32 4, i32 9, i32 8 }, %struct.serdes_mux { i8 2, i8 2, i32 15, i32 4, i32 4, i32 0 }, %struct.serdes_mux { i8 2, i8 4, i32 15, i32 4, i32 5, i32 4 }, %struct.serdes_mux { i8 3, i8 3, i32 15, i32 4, i32 16, i32 0 }, %struct.serdes_mux { i8 3, i8 6, i32 15, i32 4, i32 17, i32 16 }, %struct.serdes_mux { i8 4, i8 4, i32 15, i32 4, i32 37, i32 0 }, %struct.serdes_mux { i8 4, i8 9, i32 15, i32 4, i32 36, i32 36 }, %struct.serdes_mux { i8 5, i8 5, i32 15, i32 4, i32 73, i32 0 }, %struct.serdes_mux { i8 5, i8 10, i32 15, i32 4, i32 74, i32 72 }, %struct.serdes_mux { i8 6, i8 4, i32 15, i32 18, i32 1, i32 1 }, %struct.serdes_mux { i8 6, i8 5, i32 15, i32 18, i32 1, i32 1 }, %struct.serdes_mux { i8 6, i8 6, i32 15, i32 18, i32 1, i32 1 }, %struct.serdes_mux { i8 6, i8 7, i32 15, i32 4, i32 1, i32 0 }, %struct.serdes_mux { i8 6, i8 7, i32 15, i32 18, i32 1, i32 1 }, %struct.serdes_mux { i8 7, i8 8, i32 15, i32 4, i32 0, i32 0 }, %struct.serdes_mux { i8 8, i8 10, i32 15, i32 4, i32 66, i32 0 }, %struct.serdes_mux { i8 8, i8 10, i32 14, i32 0, i32 2, i32 2 }], [68 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/phy/mscc/phy-ocelot-serdes.c\00", [59 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [19 x i8] c"mscc_ocelot_serdes\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 529, i32 31 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 532, i32 11 }
@___asan_gen_.8 = private unnamed_addr constant [11 x i8] c"serdes_ids\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 523, i32 34 }
@___asan_gen_.11 = private unnamed_addr constant [11 x i8] c"serdes_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 438, i32 29 }
@___asan_gen_.14 = private unnamed_addr constant [20 x i8] c"ocelot_serdes_muxes\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 359, i32 32 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private constant [40 x i8] c"../drivers/phy/mscc/phy-ocelot-serdes.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 275, i32 9 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author327, ptr @__UNIQUE_ID_description328, ptr @__UNIQUE_ID_file329, ptr @__UNIQUE_ID_license330, ptr @__exitcall_mscc_ocelot_serdes_exit, ptr @__initcall__kmod_phy_ocelot_serdes__326_537_mscc_ocelot_serdes_init6, ptr @mscc_ocelot_serdes_exit, ptr @mscc_ocelot_serdes, ptr @.str, ptr @serdes_ids, ptr @serdes_ops, ptr @ocelot_serdes_muxes, ptr @.str.1], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mscc_ocelot_serdes to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serdes_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serdes_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_serdes_muxes to i32), i32 380, i32 448, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mscc_ocelot_serdes_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mscc_ocelot_serdes, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mscc_ocelot_serdes_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @mscc_ocelot_serdes) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serdes_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.serdes_ctrl, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call4 = tail call ptr @syscon_node_to_regmap(ptr noundef %4) #5
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call4 to i32
  br label %cleanup

for.body:                                         ; preds = %serdes_phy_create.exit.thread.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.045 = phi i32 [ %inc, %serdes_phy_create.exit.thread.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %conv = trunc i32 %i.045 to i8
  %arrayidx = getelementptr %struct.serdes_ctrl, ptr %call.i, i32 0, i32 2, i32 %i.045
  %7 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev2, align 4
  %call.i37 = tail call ptr @devm_phy_create(ptr noundef %8, ptr noundef null, ptr noundef nonnull @serdes_ops) #5
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i37, ptr %arrayidx, align 4
  %cmp.i.i = icmp ugt ptr %call.i37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %serdes_phy_create.exit, label %if.end.i

if.end.i:                                         ; preds = %for.body
  %10 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev2, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef 12, i32 noundef 3520) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %serdes_phy_create.exit.thread

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

serdes_phy_create.exit.thread:                    ; preds = %if.end.i
  %12 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %call.i.i, align 4
  %ctrl8.i = getelementptr inbounds %struct.serdes_macro, ptr %call.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %ctrl8.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %ctrl8.i, align 4
  %port.i = getelementptr inbounds %struct.serdes_macro, ptr %call.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %port.i, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i.i, ptr %driver_data.i.i.i, align 4
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.end, label %serdes_phy_create.exit.thread.for.body_crit_edge

serdes_phy_create.exit.thread.for.body_crit_edge: ; preds = %serdes_phy_create.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

serdes_phy_create.exit:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %call.i37 to i32
  br label %cleanup

for.end:                                          ; preds = %serdes_phy_create.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %19 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i, align 4
  %20 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev2, align 4
  %call17 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %21, ptr noundef null, ptr noundef null, ptr noundef nonnull @serdes_simple_xlate) #5
  %cmp.i.i38 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  %22 = ptrtoint ptr %call17 to i32
  %spec.select.i = select i1 %cmp.i.i38, i32 %22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.end, %serdes_phy_create.exit, %if.end.i.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then7 ], [ %spec.select.i, %for.end ], [ -12, %entry.cleanup_crit_edge ], [ %18, %serdes_phy_create.exit ], [ -12, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @serdes_simple_xlate(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %args) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 1
  %2 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup25_crit_edge

entry.cleanup25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup25

if.end:                                           ; preds = %entry
  %args2 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %4 = ptrtoint ptr %args2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args2, align 4
  %arrayidx4 = getelementptr %struct.of_phandle_args, ptr %args, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr %struct.serdes_ctrl, ptr %1, i32 0, i32 2, i32 0
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx6, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4
  %conv = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp9.not = icmp eq i32 %7, %conv
  br i1 %cmp9.not, label %if.end.if.end12_crit_edge, label %for.cond

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

for.cond:                                         ; preds = %if.end
  %arrayidx6.1 = getelementptr %struct.serdes_ctrl, ptr %1, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx6.1, align 4
  %driver_data.i.i.1 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i.1, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 4
  %conv.1 = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.1)
  %cmp9.not.1 = icmp eq i32 %7, %conv.1
  br i1 %cmp9.not.1, label %for.cond.if.end12_crit_edge, label %for.cond.1

for.cond.if.end12_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

for.cond.1:                                       ; preds = %for.cond
  %arrayidx6.2 = getelementptr %struct.serdes_ctrl, ptr %1, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx6.2, align 4
  %driver_data.i.i.2 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %driver_data.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i.2, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 4
  %conv.2 = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.2)
  %cmp9.not.2 = icmp eq i32 %7, %conv.2
  br i1 %cmp9.not.2, label %for.cond.1.if.end12_crit_edge, label %for.cond.2

for.cond.1.if.end12_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx6.3 = getelementptr %struct.serdes_ctrl, ptr %1, i32 0, i32 2, i32 3
  %26 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx6.3, align 4
  %driver_data.i.i.3 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %driver_data.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i.3, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 4
  %conv.3 = zext i8 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.3)
  %cmp9.not.3 = icmp eq i32 %7, %conv.3
  br i1 %cmp9.not.3, label %for.cond.2.if.end12_crit_edge, label %for.cond.3

for.cond.2.if.end12_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx6.4 = getelementptr %struct.serdes_ctrl, ptr %1, i32 0, i32 2, i32 4
  %32 = ptrtoint ptr %arrayidx6.4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx6.4, align 4
  %driver_data.i.i.4 = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %driver_data.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver_data.i.i.4, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 4
  %conv.4 = zext i8 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.4)
  %cmp9.not.4 = icmp eq i32 %7, %conv.4
  br i1 %cmp9.not.4, label %for.cond.3.if.end12_crit_edge, label %for.cond.4

for.cond.3.if.end12_crit_edge:                    ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx6.5 = getelementptr %struct.serdes_ctrl, ptr %1, i32 0, i32 2, i32 5
  %38 = ptrtoint ptr %arrayidx6.5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx6.5, align 4
  %driver_data.i.i.5 = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %driver_data.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver_data.i.i.5, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %41, align 4
  %conv.5 = zext i8 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.5)
  %cmp9.not.5 = icmp eq i32 %7, %conv.5
  br i1 %cmp9.not.5, label %for.cond.4.if.end12_crit_edge, label %for.cond.5

for.cond.4.if.end12_crit_edge:                    ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

for.cond.5:                                       ; preds = %for.cond.4
  %arrayidx6.6 = getelementptr %struct.serdes_ctrl, ptr %1, i32 0, i32 2, i32 6
  %44 = ptrtoint ptr %arrayidx6.6 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx6.6, align 4
  %driver_data.i.i.6 = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 8
  %46 = ptrtoint ptr %driver_data.i.i.6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %driver_data.i.i.6, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %47, align 4
  %conv.6 = zext i8 %49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.6)
  %cmp9.not.6 = icmp eq i32 %7, %conv.6
  br i1 %cmp9.not.6, label %for.cond.5.if.end12_crit_edge, label %for.cond.6

for.cond.5.if.end12_crit_edge:                    ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

for.cond.6:                                       ; preds = %for.cond.5
  %arrayidx6.7 = getelementptr %struct.serdes_ctrl, ptr %1, i32 0, i32 2, i32 7
  %50 = ptrtoint ptr %arrayidx6.7 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx6.7, align 4
  %driver_data.i.i.7 = getelementptr inbounds %struct.device, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %driver_data.i.i.7 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %driver_data.i.i.7, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %53, align 4
  %conv.7 = zext i8 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.7)
  %cmp9.not.7 = icmp eq i32 %7, %conv.7
  br i1 %cmp9.not.7, label %for.cond.6.if.end12_crit_edge, label %for.cond.7

for.cond.6.if.end12_crit_edge:                    ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

for.cond.7:                                       ; preds = %for.cond.6
  %arrayidx6.8 = getelementptr %struct.serdes_ctrl, ptr %1, i32 0, i32 2, i32 8
  %56 = ptrtoint ptr %arrayidx6.8 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx6.8, align 4
  %driver_data.i.i.8 = getelementptr inbounds %struct.device, ptr %57, i32 0, i32 8
  %58 = ptrtoint ptr %driver_data.i.i.8 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %driver_data.i.i.8, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %59, align 4
  %conv.8 = zext i8 %61 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.8)
  %cmp9.not.8 = icmp eq i32 %7, %conv.8
  br i1 %cmp9.not.8, label %for.cond.7.if.end12_crit_edge, label %for.cond.7.cleanup25_crit_edge

for.cond.7.cleanup25_crit_edge:                   ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup25

for.cond.7.if.end12_crit_edge:                    ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end12:                                         ; preds = %for.cond.7.if.end12_crit_edge, %for.cond.6.if.end12_crit_edge, %for.cond.5.if.end12_crit_edge, %for.cond.4.if.end12_crit_edge, %for.cond.3.if.end12_crit_edge, %for.cond.2.if.end12_crit_edge, %for.cond.1.if.end12_crit_edge, %for.cond.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %arrayidx6.lcssa = phi ptr [ %arrayidx6, %if.end.if.end12_crit_edge ], [ %arrayidx6.1, %for.cond.if.end12_crit_edge ], [ %arrayidx6.2, %for.cond.1.if.end12_crit_edge ], [ %arrayidx6.3, %for.cond.2.if.end12_crit_edge ], [ %arrayidx6.4, %for.cond.3.if.end12_crit_edge ], [ %arrayidx6.5, %for.cond.4.if.end12_crit_edge ], [ %arrayidx6.6, %for.cond.5.if.end12_crit_edge ], [ %arrayidx6.7, %for.cond.6.if.end12_crit_edge ], [ %arrayidx6.8, %for.cond.7.if.end12_crit_edge ]
  %.lcssa = phi ptr [ %11, %if.end.if.end12_crit_edge ], [ %17, %for.cond.if.end12_crit_edge ], [ %23, %for.cond.1.if.end12_crit_edge ], [ %29, %for.cond.2.if.end12_crit_edge ], [ %35, %for.cond.3.if.end12_crit_edge ], [ %41, %for.cond.4.if.end12_crit_edge ], [ %47, %for.cond.5.if.end12_crit_edge ], [ %53, %for.cond.6.if.end12_crit_edge ], [ %59, %for.cond.7.if.end12_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %cmp13.not = icmp eq i32 %7, 6
  br i1 %cmp13.not, label %if.end12.if.end20_crit_edge, label %land.lhs.true

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end12
  %port15 = getelementptr inbounds %struct.serdes_macro, ptr %.lcssa, i32 0, i32 1
  %62 = ptrtoint ptr %port15 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %port15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %63)
  %cmp16 = icmp sgt i32 %63, -1
  br i1 %cmp16, label %land.lhs.true.cleanup25_crit_edge, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

land.lhs.true.cleanup25_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup25

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %if.end12.if.end20_crit_edge
  %port21 = getelementptr inbounds %struct.serdes_macro, ptr %.lcssa, i32 0, i32 1
  %64 = ptrtoint ptr %port21 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %5, ptr %port21, align 4
  %65 = ptrtoint ptr %arrayidx6.lcssa to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx6.lcssa, align 4
  br label %cleanup25

cleanup25:                                        ; preds = %if.end20, %land.lhs.true.cleanup25_crit_edge, %for.cond.7.cleanup25_crit_edge, %entry.cleanup25_crit_edge
  %retval.2 = phi ptr [ inttoptr (i32 -22 to ptr), %entry.cleanup25_crit_edge ], [ inttoptr (i32 -16 to ptr), %land.lhs.true.cleanup25_crit_edge ], [ %66, %if.end20 ], [ inttoptr (i32 -19 to ptr), %for.cond.7.cleanup25_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serdes_set_mode(ptr nocapture noundef readonly %phy, i32 noundef %mode, i32 noundef %submode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %mode)
  %cmp.not = icmp eq i32 %mode, 15
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %submode)
  %cmp17.not = icmp eq i32 %submode, 18
  %port = getelementptr inbounds %struct.serdes_macro, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.077 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [19 x %struct.serdes_mux], ptr @ocelot_serdes_muxes, i32 0, i32 %i.077
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp4.not = icmp ne i8 %3, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %i.077)
  %cmp8.not.not = icmp eq i32 %i.077, 18
  %or.cond = select i1 %cmp4.not, i1 true, i1 %cmp8.not.not
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %lor.lhs.false10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

lor.lhs.false10:                                  ; preds = %for.body
  %submode12 = getelementptr [19 x %struct.serdes_mux], ptr @ocelot_serdes_muxes, i32 0, i32 %i.077, i32 3
  %6 = ptrtoint ptr %submode12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %submode12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %submode)
  %cmp13.not = icmp eq i32 %7, %submode
  br i1 %cmp13.not, label %if.end16, label %lor.lhs.false10.for.inc_crit_edge

lor.lhs.false10.for.inc_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end16:                                         ; preds = %lor.lhs.false10
  br i1 %cmp17.not, label %if.end16.if.end25_crit_edge, label %land.lhs.true

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end16
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %port20 = getelementptr [19 x %struct.serdes_mux], ptr @ocelot_serdes_muxes, i32 0, i32 %i.077, i32 1
  %10 = ptrtoint ptr %port20 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %port20, align 1
  %conv21 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv21)
  %cmp22.not = icmp eq i32 %9, %conv21
  br i1 %cmp22.not, label %land.lhs.true.if.end25_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %if.end16.if.end25_crit_edge
  %ctrl = getelementptr inbounds %struct.serdes_macro, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %mask = getelementptr [19 x %struct.serdes_mux], ptr @ocelot_serdes_muxes, i32 0, i32 %i.077, i32 4
  %16 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mask, align 4
  %mux = getelementptr [19 x %struct.serdes_mux], ptr @ocelot_serdes_muxes, i32 0, i32 %i.077, i32 5
  %18 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mux, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 268, i32 noundef %17, i32 noundef %19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end30, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %21)
  %cmp33 = icmp ult i8 %21, 6
  br i1 %cmp33, label %if.then35, label %if.else

if.then35:                                        ; preds = %if.end30
  %22 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctrl, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %call.i.i = tail call fastcc i32 @__serdes_write_mcb_s1g(ptr noundef %25, i8 noundef zeroext %21, i32 noundef 1073741824) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then35.cleanup_crit_edge

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then35
  %call.i28.i = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 92, i32 noundef -2147218432, i32 noundef 262144, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i29.i = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 96, i32 noundef 65408, i32 noundef 51328, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i30.i = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 124, i32 noundef 257, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i31.i = tail call fastcc i32 @__serdes_write_mcb_s1g(ptr noundef %25, i8 noundef zeroext %21, i32 noundef -2147483648) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i)
  %tobool5.not.i = icmp eq i32 %call.i31.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i32.i = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 92, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i33.i = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 124, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i34.i = tail call fastcc i32 @__serdes_write_mcb_s1g(ptr noundef %25, i8 noundef zeroext %21, i32 noundef -2147483648) #5
  br label %cleanup

if.else:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %21)
  %cmp42 = icmp ult i8 %21, 9
  br i1 %cmp42, label %if.then44, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then44:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctrl, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %sub = add nsw i8 %21, -6
  %call52 = tail call fastcc i32 @serdes_init_s6g(ptr noundef %29, i8 noundef zeroext %sub, i32 noundef %submode)
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %lor.lhs.false10.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.077, 1
  %exitcond.not = icmp eq i32 %inc, 19
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then44, %if.else.cleanup_crit_edge, %if.end7.i, %if.end.i.cleanup_crit_edge, %if.then35.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call52, %if.then44 ], [ -95, %entry.cleanup_crit_edge ], [ %call.i, %if.end25.cleanup_crit_edge ], [ -95, %if.else.cleanup_crit_edge ], [ %call.i.i, %if.then35.cleanup_crit_edge ], [ %call.i31.i, %if.end.i.cleanup_crit_edge ], [ %call.i34.i, %if.end7.i ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @serdes_init_s6g(ptr noundef %regmap, i8 noundef zeroext %serdes, i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %mode)
  %cmp = icmp eq i32 %mode, 18
  %. = select i1 %cmp, i32 7680, i32 3840
  %.99 = select i1 %cmp, i32 16394, i32 16390
  %call.i = tail call fastcc i32 @__serdes_write_mcb_s6g(ptr noundef %regmap, i8 noundef zeroext %serdes, i32 noundef 1073741824) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end2:                                          ; preds = %entry
  %call.i103 = tail call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef 228, i32 noundef 131072, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i104 = tail call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef 232, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i105 = tail call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef 192, i32 noundef 63, i32 noundef 55, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i106 = tail call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef 196, i32 noundef 255, i32 noundef 240, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i107 = tail call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef 200, i32 noundef 7, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i108 = tail call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef 204, i32 noundef 16777215, i32 noundef 127071, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i109 = tail call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef 168, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i110 = tail call fastcc i32 @__serdes_write_mcb_s6g(ptr noundef %regmap, i8 noundef zeroext %serdes, i32 noundef -2147483648) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %tobool11.not = icmp eq i32 %call.i110, 0
  br i1 %tobool11.not, label %if.end13, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end2
  %cond = select i1 %cmp, i32 0, i32 1073741824
  %call.i111 = tail call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef 216, i32 noundef -537133056, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or18 = select i1 %cmp, i32 24, i32 176
  %call.i112 = tail call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef 220, i32 noundef 511, i32 noundef %or18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i113 = tail call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef 188, i32 noundef 123662, i32 noundef %.99, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i114 = tail call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef 192, i32 noundef 229760, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i115 = tail call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef 196, i32 noundef 126976, i32 noundef 65536, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i116 = tail call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef 224, i32 noundef 49, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i117 = tail call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef 232, i32 noundef 65475, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or34 = select i1 %cmp, i32 147459, i32 147461
  %call.i118 = tail call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef 228, i32 noundef 159951, i32 noundef %or34, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i119 = tail call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef 168, i32 noundef 305, i32 noundef 33, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i120 = tail call fastcc i32 @__serdes_write_mcb_s6g(ptr noundef %regmap, i8 noundef zeroext %serdes, i32 noundef -2147483648) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %tobool38.not = icmp eq i32 %call.i120, 0
  br i1 %tobool38.not, label %if.end40, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end40:                                         ; preds = %if.end13
  %call.i121 = tail call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef 232, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i122 = tail call fastcc i32 @__serdes_write_mcb_s6g(ptr noundef %regmap, i8 noundef zeroext %serdes, i32 noundef -2147483648) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %tobool43.not = icmp eq i32 %call.i122, 0
  br i1 %tobool43.not, label %if.end45, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end45:                                         ; preds = %if.end40
  tail call void @msleep(i32 noundef 20) #5
  %call.i123 = tail call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef 192, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i124 = tail call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef 168, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i125 = tail call fastcc i32 @__serdes_write_mcb_s6g(ptr noundef %regmap, i8 noundef zeroext %serdes, i32 noundef -2147483648) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %tobool49.not = icmp eq i32 %call.i125, 0
  br i1 %tobool49.not, label %if.end51, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 60) #5
  %call.i126 = tail call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef 192, i32 noundef 229760, i32 noundef 229376, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i127 = tail call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef 196, i32 noundef 126976, i32 noundef 12288, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.end45.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end51 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i110, %if.end2.cleanup_crit_edge ], [ %call.i120, %if.end13.cleanup_crit_edge ], [ %call.i122, %if.end40.cleanup_crit_edge ], [ %call.i125, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__serdes_write_mcb_s1g(ptr noundef %regmap, i8 noundef zeroext %macro, i32 noundef %op) unnamed_addr #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #5
  %0 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regval, align 4, !annotation !31
  %conv = zext i8 %macro to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, 511
  %or = or i32 %and, %op
  %call = tail call i32 @regmap_write(ptr noundef %regmap, i32 noundef 136, i32 noundef %or) #5
  %call1 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call1, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 277) #5
  %call1057 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef 136, ptr noundef nonnull %regval) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1057)
  %tobool.not58 = icmp eq i32 %call1057, 0
  br i1 %tobool.not58, label %entry.lor.lhs.false_crit_edge, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then25.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %1 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %regval, align 4
  %and11 = and i32 %2, %op
  call void @__sanitizer_cov_trace_cmp4(i32 %and11, i32 %op)
  %cmp12.not = icmp eq i32 %and11, %op
  br i1 %cmp12.not, label %land.lhs.true, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call17 = call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call17, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call17, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then25

if.then25:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #5
  %call10 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef 136, ptr noundef nonnull %regval) #5
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.then25.lor.lhs.false_crit_edge, label %if.then25.lor.end_crit_edge

if.then25.lor.end_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

if.then25.lor.lhs.false_crit_edge:                ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %call22 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef 136, ptr noundef nonnull %regval) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool27.not = icmp eq i32 %call22, 0
  br i1 %tobool27.not, label %for.end.lor.rhs_crit_edge, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %3 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %regval, align 4
  %and28 = and i32 %4, %op
  call void @__sanitizer_cov_trace_cmp4(i32 %and28, i32 %op)
  %cmp29.not = icmp eq i32 %and28, %op
  %phi.sel = select i1 %cmp29.not, i32 -110, i32 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end.lor.end_crit_edge, %if.then25.lor.end_crit_edge, %entry.lor.end_crit_edge
  %tobool27.not50 = phi i32 [ %call22, %for.end.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ], [ %call1057, %entry.lor.end_crit_edge ], [ %call10, %if.then25.lor.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #5
  ret i32 %tobool27.not50
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__serdes_write_mcb_s6g(ptr noundef %regmap, i8 noundef zeroext %macro, i32 noundef %op) unnamed_addr #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #5
  %0 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %regval, align 4
  %conv = zext i8 %macro to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, 33554431
  %or = or i32 %and, %op
  %call = tail call i32 @regmap_write(ptr noundef %regmap, i32 noundef 264, i32 noundef %or) #5
  %call1 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call1, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 45) #5
  %call1057 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef 264, ptr noundef nonnull %regval) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1057)
  %tobool.not58 = icmp eq i32 %call1057, 0
  br i1 %tobool.not58, label %entry.lor.lhs.false_crit_edge, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then25.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %1 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %regval, align 4
  %and11 = and i32 %2, %op
  call void @__sanitizer_cov_trace_cmp4(i32 %and11, i32 %op)
  %cmp12.not = icmp eq i32 %and11, %op
  br i1 %cmp12.not, label %land.lhs.true, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call17 = call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call17, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call17, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then25

if.then25:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #5
  %call10 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef 264, ptr noundef nonnull %regval) #5
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.then25.lor.lhs.false_crit_edge, label %if.then25.lor.end_crit_edge

if.then25.lor.end_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

if.then25.lor.lhs.false_crit_edge:                ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %call22 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef 264, ptr noundef nonnull %regval) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool27.not = icmp eq i32 %call22, 0
  br i1 %tobool27.not, label %for.end.lor.rhs_crit_edge, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %3 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %regval, align 4
  %and28 = and i32 %4, %op
  call void @__sanitizer_cov_trace_cmp4(i32 %and28, i32 %op)
  %cmp29.not = icmp eq i32 %and28, %op
  %phi.sel = select i1 %cmp29.not, i32 -110, i32 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end.lor.end_crit_edge, %if.then25.lor.end_crit_edge, %entry.lor.end_crit_edge
  %tobool27.not50 = phi i32 [ %call22, %for.end.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ], [ %call1057, %entry.lor.end_crit_edge ], [ %call10, %if.then25.lor.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #5
  ret i32 %tobool27.not50
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__initcall__kmod_phy_ocelot_serdes__326_537_mscc_ocelot_serdes_init6, !1, !"__initcall__kmod_phy_ocelot_serdes__326_537_mscc_ocelot_serdes_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/mscc/phy-ocelot-serdes.c", i32 537, i32 1}
!2 = !{ptr @__exitcall_mscc_ocelot_serdes_exit, !1, !"__exitcall_mscc_ocelot_serdes_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author327, !4, !"__UNIQUE_ID_author327", i1 false, i1 false}
!4 = !{!"../drivers/phy/mscc/phy-ocelot-serdes.c", i32 539, i32 1}
!5 = !{ptr @__UNIQUE_ID_description328, !6, !"__UNIQUE_ID_description328", i1 false, i1 false}
!6 = !{!"../drivers/phy/mscc/phy-ocelot-serdes.c", i32 540, i32 1}
!7 = !{ptr @__UNIQUE_ID_file329, !8, !"__UNIQUE_ID_file329", i1 false, i1 false}
!8 = !{!"../drivers/phy/mscc/phy-ocelot-serdes.c", i32 541, i32 1}
!9 = !{ptr @__UNIQUE_ID_license330, !8, !"__UNIQUE_ID_license330", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/mscc/phy-ocelot-serdes.c", i32 532, i32 11}
!12 = !{ptr @mscc_ocelot_serdes, !13, !"mscc_ocelot_serdes", i1 false, i1 false}
!13 = !{!"../drivers/phy/mscc/phy-ocelot-serdes.c", i32 529, i32 31}
!14 = !{ptr @serdes_ops, !15, !"serdes_ops", i1 false, i1 false}
!15 = !{!"../drivers/phy/mscc/phy-ocelot-serdes.c", i32 438, i32 29}
!16 = !{ptr @ocelot_serdes_muxes, !17, !"ocelot_serdes_muxes", i1 false, i1 false}
!17 = !{!"../drivers/phy/mscc/phy-ocelot-serdes.c", i32 359, i32 32}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/phy/mscc/phy-ocelot-serdes.c", i32 275, i32 9}
!20 = !{ptr @serdes_ids, !21, !"serdes_ids", i1 false, i1 false}
!21 = !{!"../drivers/phy/mscc/phy-ocelot-serdes.c", i32 523, i32 34}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"auto-init"}
