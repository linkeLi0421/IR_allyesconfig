; ModuleID = '/llk/IR_all_yes/drivers/nvmem/snvs_lpgpr.c_pt.bc'
source_filename = "../drivers/nvmem/snvs_lpgpr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.snvs_lpgpr_cfg = type { i32, i32, i32, i32 }
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
%struct.snvs_lpgpr_priv = type { ptr, ptr, %struct.nvmem_config, ptr }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }

@__initcall__kmod_nvmem_snvs_lpgpr__170_152_snvs_lpgpr_driver_init6 = internal global ptr @snvs_lpgpr_driver_init, section ".initcall6.init", align 4
@snvs_lpgpr_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @snvs_lpgpr_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @snvs_lpgpr_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_snvs_lpgpr_driver_exit = internal global ptr @snvs_lpgpr_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [65 x i8] c"nvmem_snvs_lpgpr.author=Oleksij Rempel <o.rempel@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [111 x i8] c"nvmem_snvs_lpgpr.description=Low Power General Purpose Register in i.MX6 and i.MX7 Secure Non-Volatile Storage\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [53 x i8] c"nvmem_snvs_lpgpr.file=drivers/nvmem/nvmem_snvs_lpgpr\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [32 x i8] c"nvmem_snvs_lpgpr.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"snvs_lpgpr\00", [21 x i8] zeroinitializer }, align 32
@snvs_lpgpr_dt_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-snvs-lpgpr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @snvs_lpgpr_cfg_imx6q }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6ul-snvs-lpgpr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @snvs_lpgpr_cfg_imx6q }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7d-snvs-lpgpr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @snvs_lpgpr_cfg_imx7d }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@snvs_lpgpr_cfg_imx6q = internal constant { %struct.snvs_lpgpr_cfg, [16 x i8] } { %struct.snvs_lpgpr_cfg { i32 104, i32 0, i32 52, i32 4 }, [16 x i8] zeroinitializer }, align 32
@snvs_lpgpr_cfg_imx7d = internal constant { %struct.snvs_lpgpr_cfg, [16 x i8] } { %struct.snvs_lpgpr_cfg { i32 144, i32 0, i32 52, i32 16 }, [16 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"snvs_lpgpr_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 145, i32 31 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 148, i32 11 }
@___asan_gen_.7 = private unnamed_addr constant [18 x i8] c"snvs_lpgpr_dt_ids\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 136, i32 34 }
@___asan_gen_.10 = private unnamed_addr constant [21 x i8] c"snvs_lpgpr_cfg_imx6q\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 38, i32 36 }
@___asan_gen_.13 = private unnamed_addr constant [21 x i8] c"snvs_lpgpr_cfg_imx7d\00", align 1
@___asan_gen_.14 = private constant [30 x i8] c"../drivers/nvmem/snvs_lpgpr.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 45, i32 36 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_snvs_lpgpr_driver_exit, ptr @__initcall__kmod_nvmem_snvs_lpgpr__170_152_snvs_lpgpr_driver_init6, ptr @snvs_lpgpr_driver_exit, ptr @snvs_lpgpr_driver, ptr @.str, ptr @snvs_lpgpr_dt_ids, ptr @snvs_lpgpr_cfg_imx6q, ptr @snvs_lpgpr_cfg_imx7d], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snvs_lpgpr_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snvs_lpgpr_dt_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snvs_lpgpr_cfg_imx6q to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snvs_lpgpr_cfg_imx7d to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @snvs_lpgpr_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @snvs_lpgpr_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @snvs_lpgpr_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @snvs_lpgpr_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snvs_lpgpr_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 100, i32 noundef 3520) #4
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #4
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = tail call ptr @of_get_parent(ptr noundef nonnull %1) #4
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = tail call ptr @syscon_node_to_regmap(ptr noundef nonnull %call9) #4
  %regmap = getelementptr inbounds %struct.snvs_lpgpr_priv, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call13, ptr %regmap, align 4
  tail call void @of_node_put(ptr noundef nonnull %call9) #4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %dcfg20 = getelementptr inbounds %struct.snvs_lpgpr_priv, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %dcfg20 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %dcfg20, align 4
  %cfg21 = getelementptr inbounds %struct.snvs_lpgpr_priv, ptr %call.i, i32 0, i32 2
  %priv22 = getelementptr inbounds %struct.snvs_lpgpr_priv, ptr %call.i, i32 0, i32 2, i32 21
  %5 = ptrtoint ptr %priv22 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %priv22, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end19.dev_name.exit_crit_edge

if.end19.dev_name.exit_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end19.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %if.end19.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.snvs_lpgpr_priv, ptr %call.i, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.0.i, ptr %name, align 4
  %11 = ptrtoint ptr %cfg21 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev1, ptr %cfg21, align 4
  %stride = getelementptr inbounds %struct.snvs_lpgpr_priv, ptr %call.i, i32 0, i32 2, i32 20
  %12 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %stride, align 4
  %word_size = getelementptr inbounds %struct.snvs_lpgpr_priv, ptr %call.i, i32 0, i32 2, i32 19
  %13 = ptrtoint ptr %word_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %word_size, align 4
  %size = getelementptr inbounds %struct.snvs_lpgpr_cfg, ptr %call5, i32 0, i32 3
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  %size25 = getelementptr inbounds %struct.snvs_lpgpr_priv, ptr %call.i, i32 0, i32 2, i32 18
  %16 = ptrtoint ptr %size25 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %size25, align 4
  %owner = getelementptr inbounds %struct.snvs_lpgpr_priv, ptr %call.i, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %owner, align 4
  %reg_read = getelementptr inbounds %struct.snvs_lpgpr_priv, ptr %call.i, i32 0, i32 2, i32 15
  %18 = ptrtoint ptr %reg_read to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @snvs_lpgpr_read, ptr %reg_read, align 4
  %reg_write = getelementptr inbounds %struct.snvs_lpgpr_priv, ptr %call.i, i32 0, i32 2, i32 16
  %19 = ptrtoint ptr %reg_write to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @snvs_lpgpr_write, ptr %reg_write, align 4
  %call26 = tail call ptr @devm_nvmem_register(ptr noundef %dev1, ptr noundef %cfg21) #4
  %cmp.i.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  %20 = ptrtoint ptr %call26 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %20, i32 0
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %if.then16, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then16 ], [ %spec.select.i, %dev_name.exit ], [ -2, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -19, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snvs_lpgpr_read(ptr nocapture noundef readonly %context, i32 noundef %offset, ptr noundef %val, i32 noundef %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dcfg1 = getelementptr inbounds %struct.snvs_lpgpr_priv, ptr %context, i32 0, i32 3
  %0 = ptrtoint ptr %dcfg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dcfg1, align 4
  %regmap = getelementptr inbounds %struct.snvs_lpgpr_priv, ptr %context, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %add = add i32 %5, %offset
  %div4 = lshr i32 %bytes, 2
  %call = tail call i32 @regmap_bulk_read(ptr noundef %3, i32 noundef %add, ptr noundef %val, i32 noundef %div4) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snvs_lpgpr_write(ptr nocapture noundef readonly %context, i32 noundef %offset, ptr noundef %val, i32 noundef %bytes) #2 align 64 {
entry:
  %lock_reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dcfg1 = getelementptr inbounds %struct.snvs_lpgpr_priv, ptr %context, i32 0, i32 3
  %0 = ptrtoint ptr %dcfg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dcfg1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lock_reg) #4
  %2 = ptrtoint ptr %lock_reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %lock_reg, align 4, !annotation !29
  %regmap = getelementptr inbounds %struct.snvs_lpgpr_priv, ptr %context, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %offset_hplr = getelementptr inbounds %struct.snvs_lpgpr_cfg, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %offset_hplr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset_hplr, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %lock_reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %lock_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lock_reg, align 4
  %and = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %offset_lplr = getelementptr inbounds %struct.snvs_lpgpr_cfg, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %offset_lplr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset_lplr, align 4
  %call5 = call i32 @regmap_read(ptr noundef %10, i32 noundef %12, ptr noundef nonnull %lock_reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %13 = ptrtoint ptr %lock_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lock_reg, align 4
  %and9 = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 4
  %add = add i32 %18, %offset
  %div27 = lshr i32 %bytes, 2
  %call15 = call i32 @regmap_bulk_write(ptr noundef %16, i32 noundef %add, ptr noundef %val, i32 noundef %div27) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end12 ], [ %call, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ %call5, %if.end3.cleanup_crit_edge ], [ -1, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lock_reg) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__initcall__kmod_nvmem_snvs_lpgpr__170_152_snvs_lpgpr_driver_init6, !1, !"__initcall__kmod_nvmem_snvs_lpgpr__170_152_snvs_lpgpr_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/nvmem/snvs_lpgpr.c", i32 152, i32 1}
!2 = !{ptr @__exitcall_snvs_lpgpr_driver_exit, !1, !"__exitcall_snvs_lpgpr_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/nvmem/snvs_lpgpr.c", i32 154, i32 1}
!5 = !{ptr @__UNIQUE_ID_description172, !6, !"__UNIQUE_ID_description172", i1 false, i1 false}
!6 = !{!"../drivers/nvmem/snvs_lpgpr.c", i32 155, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/nvmem/snvs_lpgpr.c", i32 156, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/nvmem/snvs_lpgpr.c", i32 148, i32 11}
!12 = !{ptr @snvs_lpgpr_driver, !13, !"snvs_lpgpr_driver", i1 false, i1 false}
!13 = !{!"../drivers/nvmem/snvs_lpgpr.c", i32 145, i32 31}
!14 = !{ptr @snvs_lpgpr_dt_ids, !15, !"snvs_lpgpr_dt_ids", i1 false, i1 false}
!15 = !{!"../drivers/nvmem/snvs_lpgpr.c", i32 136, i32 34}
!16 = !{ptr @snvs_lpgpr_cfg_imx6q, !17, !"snvs_lpgpr_cfg_imx6q", i1 false, i1 false}
!17 = !{!"../drivers/nvmem/snvs_lpgpr.c", i32 38, i32 36}
!18 = !{ptr @snvs_lpgpr_cfg_imx7d, !19, !"snvs_lpgpr_cfg_imx7d", i1 false, i1 false}
!19 = !{!"../drivers/nvmem/snvs_lpgpr.c", i32 45, i32 36}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"auto-init"}
