; ModuleID = '/llk/IR_all_yes/drivers/amba/tegra-ahb.c_pt.bc'
source_filename = "../drivers/amba/tegra-ahb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+tegra_ahb_enable_smmu\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra_ahb_enable_smmu\09\09\09\09"
module asm "\09.long\09__crc_tegra_ahb_enable_smmu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_ahb_enable_smmu:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_ahb_enable_smmu\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_ahb_enable_smmu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tegra_ahb = type { ptr, ptr, [0 x i32] }

@tegra_ahb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_ahb_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_ahb_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_ahb_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__kstrtab_tegra_ahb_enable_smmu = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_ahb_enable_smmu = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_ahb_enable_smmu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_ahb_enable_smmu to i32), ptr @__kstrtab_tegra_ahb_enable_smmu, ptr @__kstrtabns_tegra_ahb_enable_smmu }, section "___ksymtab+tegra_ahb_enable_smmu", align 4
@__initcall__kmod_tegra_ahb__170_284_tegra_ahb_driver_init6 = internal global ptr @tegra_ahb_driver_init, section ".initcall6.init", align 4
@__exitcall_tegra_ahb_driver_exit = internal global ptr @tegra_ahb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [49 x i8] c"tegra_ahb.author=Hiroshi DOYU <hdoyu@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [39 x i8] c"tegra_ahb.description=Tegra AHB driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [38 x i8] c"tegra_ahb.file=drivers/amba/tegra-ahb\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [25 x i8] c"tegra_ahb.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias175 = internal constant [35 x i8] c"tegra_ahb.alias=platform:tegra-ahb\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra-ahb\00", [22 x i8] zeroinitializer }, align 32
@tegra_ahb_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-ahb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-ahb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@tegra_ahb_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tegra_ahb_suspend, ptr @tegra_ahb_resume, ptr @tegra_ahb_suspend, ptr @tegra_ahb_resume, ptr @tegra_ahb_suspend, ptr @tegra_ahb_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_ahb_suspend, ptr @tegra_ahb_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_ahb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 256, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"incorrect AHB base address in DT data - enabling workaround\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tegra_ahb_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/amba/tegra-ahb.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_ahb_probe._entry_ptr = internal global ptr @tegra_ahb_probe._entry, section ".printk_index", align 4
@tegra_ahb_gizmo = internal constant { [29 x i32], [44 x i8] } { [29 x i32] [i32 4, i32 8, i32 16, i32 20, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 64, i32 72, i32 76, i32 100, i32 116, i32 120, i32 124, i32 128, i32 132, i32 136, i32 140, i32 220, i32 224, i32 228, i32 232, i32 240, i32 244, i32 252], [44 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"tegra_ahb_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 276, i32 31 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 279, i32 11 }
@___asan_gen_.12 = private unnamed_addr constant [19 x i8] c"tegra_ahb_of_match\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 270, i32 34 }
@___asan_gen_.15 = private unnamed_addr constant [13 x i8] c"tegra_ahb_pm\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 175, i32 8 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 256, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [16 x i8] c"tegra_ahb_gizmo\00", align 1
@___asan_gen_.37 = private constant [28 x i8] c"../drivers/amba/tegra-ahb.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 88, i32 18 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_alias175, ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_tegra_ahb_driver_exit, ptr @__initcall__kmod_tegra_ahb__170_284_tegra_ahb_driver_init6, ptr @__ksymtab_tegra_ahb_enable_smmu, ptr @tegra_ahb_driver_exit, ptr @tegra_ahb_probe._entry, ptr @tegra_ahb_probe._entry_ptr, ptr @tegra_ahb_driver, ptr @.str, ptr @tegra_ahb_of_match, ptr @tegra_ahb_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tegra_ahb_gizmo], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_ahb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_ahb_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_ahb_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_ahb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_ahb_gizmo to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_ahb_enable_smmu(ptr noundef %dn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @driver_find_device(ptr noundef getelementptr inbounds (%struct.platform_driver, ptr @tegra_ahb_driver, i32 0, i32 5), ptr noundef null, ptr noundef %dn, ptr noundef nonnull @device_match_of_node) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 224
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  %5 = or i32 %4, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %5) #5, !srcloc !44
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -517, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_ahb_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_ahb_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra_ahb_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_ahb_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @driver_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_of_node(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_ahb_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 124, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %0 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call1, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %land.lhs.true.if.end6_crit_edge, label %do.end

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call1, align 4
  %sub = add i32 %3, -4
  store i32 %sub, ptr %call1, align 4
  br label %if.end6

if.end6:                                          ; preds = %do.end, %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %call8 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call1) #5
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %dev16 = getelementptr inbounds %struct.tegra_ahb, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %dev16 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %dev16, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call8, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  %9 = or i32 %8, -2080373760
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 4
  %add.ptr.i58.i = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58.i, i32 %9) #5, !srcloc !44
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  %add.ptr.i59.i = getelementptr i8, ptr %13, i32 32
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59.i) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  %15 = or i32 %14, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %add.ptr.i60.i = getelementptr i8, ptr %17, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.i, i32 %15) #5, !srcloc !44
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %add.ptr.i61.i = getelementptr i8, ptr %19, i32 124
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61.i) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  %21 = or i32 %20, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  %add.ptr.i62.i = getelementptr i8, ptr %23, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62.i, i32 %21) #5, !srcloc !44
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  %add.ptr.i63.i = getelementptr i8, ptr %25, i32 128
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63.i) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  %27 = or i32 %26, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %add.ptr.i64.i = getelementptr i8, ptr %29, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.i, i32 %27) #5, !srcloc !44
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  %add.ptr.i65.i = getelementptr i8, ptr %31, i32 8
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65.i) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  %33 = or i32 %32, 1073743584
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 4
  %add.ptr.i66.i = getelementptr i8, ptr %35, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66.i, i32 %33) #5, !srcloc !44
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  %add.ptr.i67.i = getelementptr i8, ptr %37, i32 240
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67.i) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  %39 = and i32 %38, -1081598
  %40 = or i32 %39, 1081493
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call.i, align 4
  %add.ptr.i68.i = getelementptr i8, ptr %42, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68.i, i32 %40) #5, !srcloc !44
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 4
  %add.ptr.i69.i = getelementptr i8, ptr %44, i32 244
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69.i) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  %46 = and i32 %45, -1081598
  %47 = or i32 %46, 1081497
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i, align 4
  %add.ptr.i70.i = getelementptr i8, ptr %49, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70.i, i32 %47) #5, !srcloc !44
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i, align 4
  %add.ptr.i71.i = getelementptr i8, ptr %51, i32 228
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71.i) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  %53 = and i32 %52, -1081598
  %54 = or i32 %53, 1081541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i, align 4
  %add.ptr.i72.i = getelementptr i8, ptr %56, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72.i, i32 %54) #5, !srcloc !44
  %57 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call.i, align 4
  %add.ptr.i73.i = getelementptr i8, ptr %58, i32 232
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73.i) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  %60 = and i32 %59, -1081598
  %61 = or i32 %60, 1081545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %62 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call.i, align 4
  %add.ptr.i74.i = getelementptr i8, ptr %63, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74.i, i32 %61) #5, !srcloc !44
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then11 ], [ 0, %if.end14 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_ahb_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [29 x i32], ptr @tegra_ahb_gizmo, i32 0, i32 %i.07
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %3
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !41
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  %arrayidx2 = getelementptr %struct.tegra_ahb, ptr %1, i32 0, i32 2, i32 %i.07
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx2, align 4
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 29
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_ahb_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.06 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tegra_ahb, ptr %1, i32 0, i32 2, i32 %i.06
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr [29 x i32], ptr @tegra_ahb_gizmo, i32 0, i32 %i.06
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %3) #5
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #5, !srcloc !44
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, 29
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__ksymtab_tegra_ahb_enable_smmu, !1, !"__ksymtab_tegra_ahb_enable_smmu", i1 false, i1 false}
!1 = !{!"../drivers/amba/tegra-ahb.c", i32 152, i32 1}
!2 = !{ptr @__initcall__kmod_tegra_ahb__170_284_tegra_ahb_driver_init6, !3, !"__initcall__kmod_tegra_ahb__170_284_tegra_ahb_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/amba/tegra-ahb.c", i32 284, i32 1}
!4 = !{ptr @__exitcall_tegra_ahb_driver_exit, !3, !"__exitcall_tegra_ahb_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author171, !6, !"__UNIQUE_ID_author171", i1 false, i1 false}
!6 = !{!"../drivers/amba/tegra-ahb.c", i32 286, i32 1}
!7 = !{ptr @__UNIQUE_ID_description172, !8, !"__UNIQUE_ID_description172", i1 false, i1 false}
!8 = !{!"../drivers/amba/tegra-ahb.c", i32 287, i32 1}
!9 = !{ptr @__UNIQUE_ID_file173, !10, !"__UNIQUE_ID_file173", i1 false, i1 false}
!10 = !{!"../drivers/amba/tegra-ahb.c", i32 288, i32 1}
!11 = !{ptr @__UNIQUE_ID_license174, !10, !"__UNIQUE_ID_license174", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_alias175, !13, !"__UNIQUE_ID_alias175", i1 false, i1 false}
!13 = !{!"../drivers/amba/tegra-ahb.c", i32 289, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/amba/tegra-ahb.c", i32 279, i32 11}
!16 = !{ptr @tegra_ahb_driver, !17, !"tegra_ahb_driver", i1 false, i1 false}
!17 = !{!"../drivers/amba/tegra-ahb.c", i32 276, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/amba/tegra-ahb.c", i32 256, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @tegra_ahb_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @tegra_ahb_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @tegra_ahb_of_match, !27, !"tegra_ahb_of_match", i1 false, i1 false}
!27 = !{!"../drivers/amba/tegra-ahb.c", i32 270, i32 34}
!28 = !{ptr @tegra_ahb_pm, !29, !"tegra_ahb_pm", i1 false, i1 false}
!29 = !{!"../drivers/amba/tegra-ahb.c", i32 175, i32 8}
!30 = !{ptr @tegra_ahb_gizmo, !31, !"tegra_ahb_gizmo", i1 false, i1 false}
!31 = !{!"../drivers/amba/tegra-ahb.c", i32 88, i32 18}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{i64 4790377}
!42 = !{i64 2152455777}
!43 = !{i64 2152456163}
!44 = !{i64 4789959}
