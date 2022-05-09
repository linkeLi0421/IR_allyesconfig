; ModuleID = '/llk/IR_all_yes/drivers/soc/ti/ti_sci_pm_domains.c_pt.bc'
source_filename = "../drivers/soc/ti/ti_sci_pm_domains.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.ti_sci_genpd_provider = type { ptr, ptr, %struct.list_head, %struct.genpd_onecell_data }
%struct.genpd_onecell_data = type { ptr, i32, ptr }
%struct.ti_sci_pm_domain = type { i32, i8, %struct.generic_pm_domain, %struct.list_head, ptr }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.43 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.43 = type { %struct.mutex }
%struct.ti_sci_handle = type { %struct.ti_sci_version_info, %struct.ti_sci_ops }
%struct.ti_sci_version_info = type { i8, i8, i16, [32 x i8] }
%struct.ti_sci_ops = type { %struct.ti_sci_core_ops, %struct.ti_sci_dev_ops, %struct.ti_sci_clk_ops, %struct.ti_sci_rm_core_ops, %struct.ti_sci_rm_irq_ops, %struct.ti_sci_rm_ringacc_ops, %struct.ti_sci_rm_psil_ops, %struct.ti_sci_rm_udmap_ops, %struct.ti_sci_proc_ops }
%struct.ti_sci_core_ops = type { ptr }
%struct.ti_sci_dev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ti_sci_clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ti_sci_rm_core_ops = type { ptr, ptr }
%struct.ti_sci_rm_irq_ops = type { ptr, ptr, ptr, ptr }
%struct.ti_sci_rm_ringacc_ops = type { ptr }
%struct.ti_sci_rm_psil_ops = type { ptr, ptr }
%struct.ti_sci_rm_udmap_ops = type { ptr, ptr, ptr }
%struct.ti_sci_proc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_ti_sci_pm_domains__183_203_ti_sci_pm_domains_driver_init6 = internal global ptr @ti_sci_pm_domains_driver_init, section ".initcall6.init", align 4
@ti_sci_pm_domains_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ti_sci_pm_domain_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ti_sci_pm_domain_matches, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ti_sci_pm_domains_driver_exit = internal global ptr @ti_sci_pm_domains_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file184 = internal constant [56 x i8] c"ti_sci_pm_domains.file=drivers/soc/ti/ti_sci_pm_domains\00", section ".modinfo", align 1
@__UNIQUE_ID_license185 = internal constant [33 x i8] c"ti_sci_pm_domains.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description186 = internal constant [84 x i8] c"ti_sci_pm_domains.description=TI System Control Interface (SCI) Power Domain driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author187 = internal constant [38 x i8] c"ti_sci_pm_domains.author=Dave Gerlach\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti_sci_pm_domains\00", [46 x i8] zeroinitializer }, align 32
@ti_sci_pm_domain_matches = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sci-pm-domain\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"power-domains\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"#power-domain-cells\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pd:%d\00", [26 x i8] zeroinitializer }, align 32
@ti_sci_pd_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: invalid domain index %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti_sci_pd_xlate\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/soc/ti/ti_sci_pm_domains.c\00", [61 x i8] zeroinitializer }, align 32
@ti_sci_pd_xlate._entry_ptr = internal global ptr @ti_sci_pd_xlate._entry, section ".printk_index", align 4
@___asan_gen_.7 = private unnamed_addr constant [25 x i8] c"ti_sci_pm_domains_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 196, i32 31 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 199, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant [25 x i8] c"ti_sci_pm_domain_matches\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 111, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 142, i32 39 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 150, i32 9 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 164, i32 13 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [38 x i8] c"../drivers/soc/ti/ti_sci_pm_domains.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 98, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_author187, ptr @__UNIQUE_ID_description186, ptr @__UNIQUE_ID_file184, ptr @__UNIQUE_ID_license185, ptr @__exitcall_ti_sci_pm_domains_driver_exit, ptr @__initcall__kmod_ti_sci_pm_domains__183_203_ti_sci_pm_domains_driver_init6, ptr @ti_sci_pd_xlate._entry, ptr @ti_sci_pd_xlate._entry_ptr, ptr @ti_sci_pm_domains_driver_exit, ptr @ti_sci_pm_domains_driver, ptr @.str, ptr @ti_sci_pm_domain_matches, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sci_pm_domains_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sci_pm_domain_matches to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sci_pd_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_sci_pm_domains_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ti_sci_pm_domains_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ti_sci_pm_domains_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ti_sci_pm_domains_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_sci_pm_domain_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #6
  %0 = call ptr @memset(ptr %args, i32 255, i32 72)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 28, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_ti_sci_get_handle(ptr noundef %dev1) #6
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %dev9 = getelementptr inbounds %struct.ti_sci_genpd_provider, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %dev9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %dev9, align 4
  %pd_list = getelementptr inbounds %struct.ti_sci_genpd_provider, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %pd_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %pd_list, ptr %pd_list, align 4
  %prev.i = getelementptr inbounds %struct.ti_sci_genpd_provider, ptr %call.i, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pd_list, ptr %prev.i, align 4
  %call10126 = call ptr @of_find_node_with_property(ptr noundef null, ptr noundef nonnull @.str.1) #6
  %tobool11.not127 = icmp eq ptr %call10126, null
  br i1 %tobool11.not127, label %if.end8.while.end50_crit_edge, label %while.cond14.preheader.lr.ph

if.end8.while.end50_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end50

while.cond14.preheader.lr.ph:                     ; preds = %if.end8
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 1
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %args23 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  br label %while.cond14.preheader

while.cond.loopexit:                              ; preds = %if.end49.while.cond.loopexit_crit_edge, %while.cond14.preheader.while.cond.loopexit_crit_edge
  %max_id.1.lcssa = phi i32 [ %max_id.0128, %while.cond14.preheader.while.cond.loopexit_crit_edge ], [ %max_id.3, %if.end49.while.cond.loopexit_crit_edge ]
  %call10 = call ptr @of_find_node_with_property(ptr noundef %call10129, ptr noundef nonnull @.str.1) #6
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %while.cond.loopexit.while.end50_crit_edge, label %while.cond.loopexit.while.cond14.preheader_crit_edge

while.cond.loopexit.while.cond14.preheader_crit_edge: ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond14.preheader

while.cond.loopexit.while.end50_crit_edge:        ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end50

while.cond14.preheader:                           ; preds = %while.cond.loopexit.while.cond14.preheader_crit_edge, %while.cond14.preheader.lr.ph
  %call10129 = phi ptr [ %call10126, %while.cond14.preheader.lr.ph ], [ %call10, %while.cond.loopexit.while.cond14.preheader_crit_edge ]
  %max_id.0128 = phi i32 [ 0, %while.cond14.preheader.lr.ph ], [ %max_id.1.lcssa, %while.cond.loopexit.while.cond14.preheader_crit_edge ]
  %call.i117122 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %call10129, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %args) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117122)
  %tobool17.not123 = icmp eq i32 %call.i117122, 0
  br i1 %tobool17.not123, label %while.cond14.preheader.if.end19_crit_edge, label %while.cond14.preheader.while.cond.loopexit_crit_edge

while.cond14.preheader.while.cond.loopexit_crit_edge: ; preds = %while.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.loopexit

while.cond14.preheader.if.end19_crit_edge:        ; preds = %while.cond14.preheader
  br label %if.end19

if.end19:                                         ; preds = %if.end49.if.end19_crit_edge, %while.cond14.preheader.if.end19_crit_edge
  %index.0125 = phi i32 [ %inc, %if.end49.if.end19_crit_edge ], [ 0, %while.cond14.preheader.if.end19_crit_edge ]
  %max_id.1124 = phi i32 [ %max_id.3, %if.end49.if.end19_crit_edge ], [ %max_id.0128, %while.cond14.preheader.if.end19_crit_edge ]
  %6 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %land.lhs.true, label %if.end19.if.end49_crit_edge

if.end19.if.end49_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

land.lhs.true:                                    ; preds = %if.end19
  %8 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %args, align 4
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %cmp21 = icmp eq ptr %9, %11
  br i1 %cmp21, label %if.then22, label %land.lhs.true.if.end49_crit_edge

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then22:                                        ; preds = %land.lhs.true
  %12 = ptrtoint ptr %args23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %args23, align 4
  %14 = call i32 @llvm.umax.i32(i32 %13, i32 %max_id.1124)
  %call.i118 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1376, i32 noundef 3520) #6
  %tobool30.not = icmp eq ptr %call.i118, null
  br i1 %tobool30.not, label %if.then22.cleanup_crit_edge, label %if.end32

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %if.then22
  %15 = ptrtoint ptr %args23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %args23, align 4
  %call35 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.3, i32 noundef %16) #6
  %name = getelementptr inbounds %struct.ti_sci_pm_domain, ptr %call.i118, i32 0, i32 2, i32 10
  %17 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call35, ptr %name, align 8
  %tobool39.not = icmp eq ptr %call35, null
  br i1 %tobool39.not, label %if.end32.cleanup_crit_edge, label %if.end41

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %if.end32
  %pd36 = getelementptr inbounds %struct.ti_sci_pm_domain, ptr %call.i118, i32 0, i32 2
  %power_off = getelementptr inbounds %struct.ti_sci_pm_domain, ptr %call.i118, i32 0, i32 2, i32 18
  %18 = ptrtoint ptr %power_off to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ti_sci_pd_power_off, ptr %power_off, align 8
  %power_on = getelementptr inbounds %struct.ti_sci_pm_domain, ptr %call.i118, i32 0, i32 2, i32 19
  %19 = ptrtoint ptr %power_on to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ti_sci_pd_power_on, ptr %power_on, align 4
  %20 = ptrtoint ptr %args23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %args23, align 4
  %22 = ptrtoint ptr %call.i118 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %call.i118, align 8
  %parent = getelementptr inbounds %struct.ti_sci_pm_domain, ptr %call.i118, i32 0, i32 4
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %parent, align 8
  %call47 = call i32 @pm_genpd_init(ptr noundef %pd36, ptr noundef null, i1 noundef zeroext true) #6
  %node = getelementptr inbounds %struct.ti_sci_pm_domain, ptr %call.i118, i32 0, i32 3
  %24 = ptrtoint ptr %pd_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pd_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %pd_list, ptr noundef %25) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end41.if.end49_crit_edge

if.end41.if.end49_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.end.i.i:                                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %node, ptr %prev1.i.i, align 4
  %27 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.ti_sci_pm_domain, ptr %call.i118, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %pd_list, ptr %prev3.i.i, align 4
  %29 = ptrtoint ptr %pd_list to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %node, ptr %pd_list, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.end.i.i, %if.end41.if.end49_crit_edge, %land.lhs.true.if.end49_crit_edge, %if.end19.if.end49_crit_edge
  %max_id.3 = phi i32 [ %max_id.1124, %land.lhs.true.if.end49_crit_edge ], [ %max_id.1124, %if.end19.if.end49_crit_edge ], [ %14, %if.end41.if.end49_crit_edge ], [ %14, %if.end.i.i ]
  %inc = add i32 %index.0125, 1
  %call.i117 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %call10129, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef -1, i32 noundef %inc, ptr noundef nonnull %args) #6
  %tobool17.not = icmp eq i32 %call.i117, 0
  br i1 %tobool17.not, label %if.end49.if.end19_crit_edge, label %if.end49.while.cond.loopexit_crit_edge

if.end49.while.cond.loopexit_crit_edge:           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.loopexit

if.end49.if.end19_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

while.end50:                                      ; preds = %while.cond.loopexit.while.end50_crit_edge, %if.end8.while.end50_crit_edge
  %max_id.0.lcssa = phi i32 [ 0, %if.end8.while.end50_crit_edge ], [ %max_id.1.lcssa, %while.cond.loopexit.while.end50_crit_edge ]
  %add = add i32 %max_id.0.lcssa, 1
  %30 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #6
  %31 = extractvalue { i32, i1 } %30, 1
  br i1 %31, label %while.end50.devm_kcalloc.exit_crit_edge, label %if.end.i.i119, !prof !37

while.end50.devm_kcalloc.exit_crit_edge:          ; preds = %while.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %devm_kcalloc.exit

if.end.i.i119:                                    ; preds = %while.end50
  call void @__sanitizer_cov_trace_pc() #8
  %32 = extractvalue { i32, i1 } %30, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %32, i32 noundef 3520) #6
  br label %devm_kcalloc.exit

devm_kcalloc.exit:                                ; preds = %if.end.i.i119, %while.end50.devm_kcalloc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call5.i.i, %if.end.i.i119 ], [ null, %while.end50.devm_kcalloc.exit_crit_edge ]
  %data = getelementptr inbounds %struct.ti_sci_genpd_provider, ptr %call.i, i32 0, i32 3
  %33 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %retval.0.i.i, ptr %data, align 4
  %num_domains = getelementptr inbounds %struct.ti_sci_genpd_provider, ptr %call.i, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %num_domains to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add, ptr %num_domains, align 4
  %xlate = getelementptr inbounds %struct.ti_sci_genpd_provider, ptr %call.i, i32 0, i32 3, i32 2
  %35 = ptrtoint ptr %xlate to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @ti_sci_pd_xlate, ptr %xlate, align 4
  %36 = ptrtoint ptr %pd_list to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn131 = load ptr, ptr %pd_list, align 4
  %cmp58.not132 = icmp eq ptr %.pn131, %pd_list
  br i1 %cmp58.not132, label %devm_kcalloc.exit.for.end_crit_edge, label %devm_kcalloc.exit.for.body_crit_edge

devm_kcalloc.exit.for.body_crit_edge:             ; preds = %devm_kcalloc.exit
  br label %for.body

devm_kcalloc.exit.for.end_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %devm_kcalloc.exit.for.body_crit_edge
  %.pn133 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn131, %devm_kcalloc.exit.for.body_crit_edge ]
  %pd.0 = getelementptr i8, ptr %.pn133, i32 -1360
  %pd59 = getelementptr i8, ptr %.pn133, i32 -1352
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data, align 4
  %39 = ptrtoint ptr %pd.0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pd.0, align 8
  %arrayidx63 = getelementptr ptr, ptr %38, i32 %40
  %41 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %pd59, ptr %arrayidx63, align 4
  %42 = ptrtoint ptr %.pn133 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn = load ptr, ptr %.pn133, align 4
  %cmp58.not = icmp eq ptr %.pn, %pd_list
  br i1 %cmp58.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %devm_kcalloc.exit.for.end_crit_edge
  %of_node69 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %43 = ptrtoint ptr %of_node69 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %of_node69, align 8
  %call71 = call i32 @of_genpd_add_provider_onecell(ptr noundef %44, ptr noundef %data) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end32.cleanup_crit_edge, %if.then22.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then5 ], [ %call71, %for.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.then22.cleanup_crit_edge ], [ -12, %if.end32.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ti_sci_get_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_with_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_sci_pd_power_off(ptr nocapture noundef readonly %domain) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %domain, i32 -8
  %parent = getelementptr i8, ptr %domain, i32 1360
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %put_device = getelementptr inbounds %struct.ti_sci_handle, ptr %3, i32 0, i32 1, i32 1, i32 4
  %4 = ptrtoint ptr %put_device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %put_device, align 4
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 8
  %call = tail call i32 %5(ptr noundef %3, i32 noundef %7) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_sci_pd_power_on(ptr nocapture noundef readonly %domain) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %domain, i32 -8
  %parent = getelementptr i8, ptr %domain, i32 1360
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %exclusive = getelementptr i8, ptr %domain, i32 -4
  %4 = ptrtoint ptr %exclusive to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %exclusive, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %dev_ops3 = getelementptr inbounds %struct.ti_sci_handle, ptr %3, i32 0, i32 1, i32 1
  %get_device_exclusive = getelementptr inbounds %struct.ti_sci_handle, ptr %3, i32 0, i32 1, i32 1, i32 1
  %dev_ops3.sink = select i1 %tobool.not, ptr %dev_ops3, ptr %get_device_exclusive
  %6 = ptrtoint ptr %dev_ops3.sink to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_ops3.sink, align 4
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 8
  %call5 = tail call i32 %7(ptr noundef %3, i32 noundef %9) #6
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ti_sci_pd_xlate(ptr nocapture noundef readonly %genpdspec, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %genpdspec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %genpdspec, i32 0, i32 1
  %2 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args_count, align 4
  %.off = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_domains = getelementptr inbounds %struct.genpd_onecell_data, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_domains, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp3.not = icmp ult i32 %1, %5
  br i1 %cmp3.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %1) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %arrayidx8 = getelementptr ptr, ptr %7, i32 %1
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx8, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx13 = getelementptr %struct.of_phandle_args, ptr %genpdspec, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx13, align 4
  %conv = trunc i32 %11 to i8
  %exclusive = getelementptr i8, ptr %9, i32 -4
  %12 = ptrtoint ptr %exclusive to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %exclusive, align 4
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %arrayidx18 = getelementptr ptr, ptr %14, i32 %1
  %15 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx18, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end7.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %16, %if.end11 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end7.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_onecell(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__initcall__kmod_ti_sci_pm_domains__183_203_ti_sci_pm_domains_driver_init6, !1, !"__initcall__kmod_ti_sci_pm_domains__183_203_ti_sci_pm_domains_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/soc/ti/ti_sci_pm_domains.c", i32 203, i32 1}
!2 = !{ptr @__exitcall_ti_sci_pm_domains_driver_exit, !1, !"__exitcall_ti_sci_pm_domains_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file184, !4, !"__UNIQUE_ID_file184", i1 false, i1 false}
!4 = !{!"../drivers/soc/ti/ti_sci_pm_domains.c", i32 204, i32 1}
!5 = !{ptr @__UNIQUE_ID_license185, !4, !"__UNIQUE_ID_license185", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description186, !7, !"__UNIQUE_ID_description186", i1 false, i1 false}
!7 = !{!"../drivers/soc/ti/ti_sci_pm_domains.c", i32 205, i32 1}
!8 = !{ptr @__UNIQUE_ID_author187, !9, !"__UNIQUE_ID_author187", i1 false, i1 false}
!9 = !{!"../drivers/soc/ti/ti_sci_pm_domains.c", i32 206, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/ti/ti_sci_pm_domains.c", i32 199, i32 11}
!12 = !{ptr @ti_sci_pm_domains_driver, !13, !"ti_sci_pm_domains_driver", i1 false, i1 false}
!13 = !{!"../drivers/soc/ti/ti_sci_pm_domains.c", i32 196, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/soc/ti/ti_sci_pm_domains.c", i32 142, i32 39}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/soc/ti/ti_sci_pm_domains.c", i32 150, i32 9}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/soc/ti/ti_sci_pm_domains.c", i32 164, i32 13}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/soc/ti/ti_sci_pm_domains.c", i32 98, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ti_sci_pd_xlate._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @ti_sci_pd_xlate._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @ti_sci_pm_domain_matches, !27, !"ti_sci_pm_domain_matches", i1 false, i1 false}
!27 = !{!"../drivers/soc/ti/ti_sci_pm_domains.c", i32 111, i32 34}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"branch_weights", i32 1, i32 2000}
