; ModuleID = '/llk/IR_all_yes/drivers/iommu/arm/arm-smmu/arm-smmu-impl.c_pt.bc'
source_filename = "../drivers/iommu/arm/arm-smmu/arm-smmu-impl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_smmu_impl = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_smmu_device = type { ptr, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, [4 x i32], ptr, %struct.atomic_t, i32, i16, i16, ptr, ptr, %struct.mutex, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.spinlock, %struct.iommu_device }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.iommu_device = type { %struct.list_head, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.cavium_smmu = type { %struct.arm_smmu_device, i32 }
%struct.arm_smmu_domain = type { ptr, ptr, i32, ptr, %struct.arm_smmu_cfg, i32, %struct.mutex, %struct.spinlock, %struct.iommu_domain }
%struct.arm_smmu_cfg = type { i8, i8, %union.anon.70, i32, i32, i8 }
%union.anon.70 = type { i16 }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }

@arm_mmu500_impl = internal constant { %struct.arm_smmu_impl, [36 x i8] } { %struct.arm_smmu_impl { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @arm_mmu500_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"calxeda,smmu-secure-config-access\00", [62 x i8] zeroinitializer }, align 32
@calxeda_impl = internal constant { %struct.arm_smmu_impl, [36 x i8] } { %struct.arm_smmu_impl { ptr @arm_smmu_read_ns, ptr @arm_smmu_write_ns, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvidia,tegra194-smmu\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvidia,tegra186-smmu\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"marvell,ap806-smmu-500\00", [41 x i8] zeroinitializer }, align 32
@mrvl_mmu500_impl = internal constant { %struct.arm_smmu_impl, [36 x i8] } { %struct.arm_smmu_impl { ptr null, ptr null, ptr @mrvl_mmu500_readq, ptr @mrvl_mmu500_writeq, ptr @mrvl_mmu500_cfg_probe, ptr @arm_mmu500_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cavium_impl = internal constant { %struct.arm_smmu_impl, [36 x i8] } { %struct.arm_smmu_impl { ptr null, ptr null, ptr null, ptr null, ptr @cavium_cfg_probe, ptr null, ptr @cavium_init_context, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cavium_cfg_probe.context_count = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@cavium_cfg_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 66, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\09enabling workaround for Cavium erratum 27704\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cavium_cfg_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/iommu/arm/arm-smmu/arm-smmu-impl.c\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cavium_cfg_probe._entry_ptr = internal global ptr @cavium_cfg_probe._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 16, i64 72, i64 80, i64 84, i64 88]
@__sancov_gen_cov_switch_values.10 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 16, i64 72, i64 80, i64 84, i64 88]
@___asan_gen_.11 = private unnamed_addr constant [16 x i8] c"arm_mmu500_impl\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 144, i32 35 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 211, i32 32 }
@___asan_gen_.17 = private unnamed_addr constant [13 x i8] c"calxeda_impl\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 45, i32 35 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 214, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 215, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 221, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"mrvl_mmu500_impl\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 183, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant [12 x i8] c"cavium_impl\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 85, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant [14 x i8] c"context_count\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 58, i32 18 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [46 x i8] c"../drivers/iommu/arm/arm-smmu/arm-smmu-impl.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 66, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @cavium_cfg_probe._entry, ptr @cavium_cfg_probe._entry_ptr, ptr @arm_mmu500_impl, ptr @.str, ptr @calxeda_impl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mrvl_mmu500_impl, ptr @cavium_impl, ptr @cavium_cfg_probe.context_count, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_mmu500_impl to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calxeda_impl to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrvl_mmu500_impl to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cavium_impl to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cavium_cfg_probe.context_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cavium_cfg_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arm_mmu500_reset(ptr noundef %smmu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %impl.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 7
  %0 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %impl.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i, !prof !35

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %3(ptr noundef %smmu, i32 noundef 0, i32 noundef 60) #7
  br label %arm_smmu_readl.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %base.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 60
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !36
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  br label %arm_smmu_readl.exit

arm_smmu_readl.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %7, %if.end.i ]
  %8 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %impl.i, align 4
  %tobool.not.i36 = icmp eq ptr %9, null
  br i1 %tobool.not.i36, label %arm_smmu_readl.exit.if.end.i44_crit_edge, label %land.lhs.true.i38

arm_smmu_readl.exit.if.end.i44_crit_edge:         ; preds = %arm_smmu_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i44

land.lhs.true.i38:                                ; preds = %arm_smmu_readl.exit
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool2.not.i37 = icmp eq ptr %11, null
  br i1 %tobool2.not.i37, label %land.lhs.true.i38.if.end.i44_crit_edge, label %if.then.i40, !prof !35

land.lhs.true.i38.if.end.i44_crit_edge:           ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i44

if.then.i40:                                      ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #9
  %call.i39 = tail call i32 %11(ptr noundef %smmu, i32 noundef 0, i32 noundef 16) #7
  br label %arm_smmu_readl.exit46

if.end.i44:                                       ; preds = %land.lhs.true.i38.if.end.i44_crit_edge, %arm_smmu_readl.exit.if.end.i44_crit_edge
  %base.i.i41 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %12 = ptrtoint ptr %base.i.i41 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i41, align 4
  %add.ptr.i43 = getelementptr i8, ptr %13, i32 16
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43) #7, !srcloc !36
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  br label %arm_smmu_readl.exit46

arm_smmu_readl.exit46:                            ; preds = %if.end.i44, %if.then.i40
  %retval.0.i45 = phi i32 [ %call.i39, %if.then.i40 ], [ %15, %if.end.i44 ]
  %16 = and i32 %retval.0.i, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not = icmp eq i32 %16, 0
  %and14 = and i32 %retval.0.i45, -67110145
  %spec.select = select i1 %cmp.not, i32 %retval.0.i45, i32 %and14
  %or = or i32 %spec.select, 1280
  %17 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %impl.i, align 4
  %tobool.not.i48 = icmp eq ptr %18, null
  br i1 %tobool.not.i48, label %arm_smmu_readl.exit46.if.else.i_crit_edge, label %land.lhs.true.i50

arm_smmu_readl.exit46.if.else.i_crit_edge:        ; preds = %arm_smmu_readl.exit46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i50:                                ; preds = %arm_smmu_readl.exit46
  %write_reg.i = getelementptr inbounds %struct.arm_smmu_impl, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_reg.i, align 4
  %tobool2.not.i49 = icmp eq ptr %20, null
  br i1 %tobool2.not.i49, label %land.lhs.true.i50.if.else.i_crit_edge, label %if.then.i51, !prof !35

land.lhs.true.i50.if.else.i_crit_edge:            ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i51:                                      ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %20(ptr noundef %smmu, i32 noundef 0, i32 noundef 16, i32 noundef %or) #7
  br label %arm_smmu_writel.exit

if.else.i:                                        ; preds = %land.lhs.true.i50.if.else.i_crit_edge, %arm_smmu_readl.exit46.if.else.i_crit_edge
  %21 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %base.i.i52 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %22 = ptrtoint ptr %base.i.i52 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i52, align 4
  %add.ptr.i54 = getelementptr i8, ptr %23, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 %21) #7, !srcloc !37
  br label %arm_smmu_writel.exit

arm_smmu_writel.exit:                             ; preds = %if.else.i, %if.then.i51
  %num_context_banks = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 8
  %24 = ptrtoint ptr %num_context_banks to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_context_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp1582.not = icmp eq i32 %25, 0
  br i1 %cmp1582.not, label %arm_smmu_writel.exit.for.end_crit_edge, label %for.body.lr.ph

arm_smmu_writel.exit.for.end_crit_edge:           ; preds = %arm_smmu_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %arm_smmu_writel.exit
  %numpage = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 2
  %base.i.i62 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %pgshift.i.i63 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %arm_smmu_writel.exit81.for.body_crit_edge, %for.body.lr.ph
  %i.083 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %arm_smmu_writel.exit81.for.body_crit_edge ]
  %26 = ptrtoint ptr %numpage to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %numpage, align 4
  %add = add i32 %27, %i.083
  %28 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %impl.i, align 4
  %tobool.not.i57 = icmp eq ptr %29, null
  br i1 %tobool.not.i57, label %for.body.if.end.i65_crit_edge, label %land.lhs.true.i59

for.body.if.end.i65_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i65

land.lhs.true.i59:                                ; preds = %for.body
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %tobool2.not.i58 = icmp eq ptr %31, null
  br i1 %tobool2.not.i58, label %land.lhs.true.i59.if.end.i65_crit_edge, label %if.then.i61, !prof !35

land.lhs.true.i59.if.end.i65_crit_edge:           ; preds = %land.lhs.true.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i65

if.then.i61:                                      ; preds = %land.lhs.true.i59
  call void @__sanitizer_cov_trace_pc() #9
  %call.i60 = tail call i32 %31(ptr noundef %smmu, i32 noundef %add, i32 noundef 4) #7
  br label %arm_smmu_readl.exit67

if.end.i65:                                       ; preds = %land.lhs.true.i59.if.end.i65_crit_edge, %for.body.if.end.i65_crit_edge
  %32 = ptrtoint ptr %base.i.i62 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i62, align 4
  %34 = ptrtoint ptr %pgshift.i.i63 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pgshift.i.i63, align 4
  %shl.i.i = shl i32 %add, %35
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 4
  %add.ptr.i64 = getelementptr i8, ptr %add.ptr.i.i, i32 %shl.i.i
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64) #7, !srcloc !36
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  br label %arm_smmu_readl.exit67

arm_smmu_readl.exit67:                            ; preds = %if.end.i65, %if.then.i61
  %retval.0.i66 = phi i32 [ %call.i60, %if.then.i61 ], [ %37, %if.end.i65 ]
  %and17 = and i32 %retval.0.i66, -3
  %38 = ptrtoint ptr %numpage to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %numpage, align 4
  %add19 = add i32 %39, %i.083
  %40 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %impl.i, align 4
  %tobool.not.i69 = icmp eq ptr %41, null
  br i1 %tobool.not.i69, label %arm_smmu_readl.exit67.if.else.i79_crit_edge, label %land.lhs.true.i72

arm_smmu_readl.exit67.if.else.i79_crit_edge:      ; preds = %arm_smmu_readl.exit67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i79

land.lhs.true.i72:                                ; preds = %arm_smmu_readl.exit67
  %write_reg.i70 = getelementptr inbounds %struct.arm_smmu_impl, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %write_reg.i70 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write_reg.i70, align 4
  %tobool2.not.i71 = icmp eq ptr %43, null
  br i1 %tobool2.not.i71, label %land.lhs.true.i72.if.else.i79_crit_edge, label %if.then.i73, !prof !35

land.lhs.true.i72.if.else.i79_crit_edge:          ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i79

if.then.i73:                                      ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %43(ptr noundef %smmu, i32 noundef %add19, i32 noundef 4, i32 noundef %and17) #7
  br label %arm_smmu_writel.exit81

if.else.i79:                                      ; preds = %land.lhs.true.i72.if.else.i79_crit_edge, %arm_smmu_readl.exit67.if.else.i79_crit_edge
  %44 = tail call i32 @llvm.bswap.i32(i32 %and17) #7
  %45 = ptrtoint ptr %base.i.i62 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i.i62, align 4
  %47 = ptrtoint ptr %pgshift.i.i63 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pgshift.i.i63, align 4
  %shl.i.i76 = shl i32 %add19, %48
  %add.ptr.i.i77 = getelementptr i8, ptr %46, i32 4
  %add.ptr.i78 = getelementptr i8, ptr %add.ptr.i.i77, i32 %shl.i.i76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78, i32 %44) #7, !srcloc !37
  br label %arm_smmu_writel.exit81

arm_smmu_writel.exit81:                           ; preds = %if.else.i79, %if.then.i73
  %inc = add nuw i32 %i.083, 1
  %49 = ptrtoint ptr %num_context_banks to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_context_banks, align 4
  %cmp15 = icmp ult i32 %inc, %50
  br i1 %cmp15, label %arm_smmu_writel.exit81.for.body_crit_edge, label %arm_smmu_writel.exit81.for.end_crit_edge

arm_smmu_writel.exit81.for.end_crit_edge:         ; preds = %arm_smmu_writel.exit81
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

arm_smmu_writel.exit81.for.body_crit_edge:        ; preds = %arm_smmu_writel.exit81
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %arm_smmu_writel.exit81.for.end_crit_edge, %arm_smmu_writel.exit.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @arm_smmu_impl_init(ptr noundef %smmu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smmu, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %model = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 6
  %4 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %model, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %impl = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 7
  %7 = ptrtoint ptr %impl to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @arm_mmu500_impl, ptr %impl, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %call.i = tail call ptr @devm_krealloc(ptr noundef %1, ptr noundef %smmu, i32 noundef 276, i32 noundef 3264) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %sw.bb1.cleanup_crit_edge, label %if.end.i

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %impl.i = getelementptr inbounds %struct.arm_smmu_device, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %impl.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @cavium_impl, ptr %impl.i, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %call.i27 = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i27, null
  br i1 %tobool.i.not, label %sw.epilog.if.end_crit_edge, label %if.then

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %impl3 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 7
  %9 = ptrtoint ptr %impl3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @calxeda_impl, ptr %impl3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %call4 = tail call i32 @of_device_is_compatible(ptr noundef %3, ptr noundef nonnull @.str.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.if.then7_crit_edge

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  %call5 = tail call i32 @of_device_is_compatible(ptr noundef %3, ptr noundef nonnull @.str.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end9, label %lor.lhs.false.if.then7_crit_edge

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %call8 = tail call ptr @nvidia_smmu_impl_init(ptr noundef %smmu) #7
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %call10 = tail call ptr @qcom_smmu_impl_init(ptr noundef %smmu) #7
  %call11 = tail call i32 @of_device_is_compatible(ptr noundef %3, ptr noundef nonnull @.str.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %if.then13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %impl14 = getelementptr inbounds %struct.arm_smmu_device, ptr %call10, i32 0, i32 7
  %10 = ptrtoint ptr %impl14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mrvl_mmu500_impl, ptr %impl14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end9.cleanup_crit_edge, %if.then7, %if.end.i, %sw.bb1.cleanup_crit_edge
  %retval.0 = phi ptr [ %call8, %if.then7 ], [ %call10, %if.then13 ], [ %call10, %if.end9.cleanup_crit_edge ], [ %call.i, %if.end.i ], [ inttoptr (i32 -12 to ptr), %sw.bb1.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvidia_smmu_impl_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_smmu_impl_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_krealloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cavium_cfg_probe(ptr nocapture noundef %smmu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_context_banks = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 8
  %0 = ptrtoint ptr %num_context_banks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_context_banks, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @cavium_cfg_probe.context_count, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void @llvm.prefetch.p0(ptr nonnull @cavium_cfg_probe.context_count, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @cavium_cfg_probe.context_count, ptr nonnull @cavium_cfg_probe.context_count, i32 %1, ptr nonnull elementtype(i32) @cavium_cfg_probe.context_count) #7, !srcloc !39
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !40
  %id_base = getelementptr inbounds %struct.cavium_smmu, ptr %smmu, i32 0, i32 1
  %3 = ptrtoint ptr %id_base to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %asmresult.i.i.i, ptr %id_base, align 4
  %4 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smmu, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %5, ptr noundef nonnull @.str.4) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cavium_init_context(ptr nocapture noundef %smmu_domain, ptr nocapture noundef readnone %pgtbl_cfg, ptr nocapture noundef readnone %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smmu_domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smmu_domain, align 4
  %id_base = getelementptr inbounds %struct.cavium_smmu, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %id_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id_base, align 4
  %4 = getelementptr inbounds %struct.arm_smmu_domain, ptr %smmu_domain, i32 0, i32 4, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %4, align 2
  %7 = trunc i32 %3 to i16
  %conv1 = add i16 %6, %7
  store i16 %conv1, ptr %4, align 2
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_smmu_read_ns(ptr nocapture noundef readonly %smmu, i32 noundef %page, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page)
  %cmp = icmp eq i32 %page, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %0 = zext i32 %offset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %offset, label %if.then.if.end_crit_edge [
    i32 0, label %if.then.sw.bb.i_crit_edge
    i32 16, label %if.then.sw.bb.i_crit_edge5
    i32 72, label %if.then.sw.bb.i_crit_edge6
    i32 80, label %if.then.sw.bb.i_crit_edge7
    i32 84, label %if.then.sw.bb.i_crit_edge8
    i32 88, label %if.then.sw.bb.i_crit_edge9
  ]

if.then.sw.bb.i_crit_edge9:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then.sw.bb.i_crit_edge8:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then.sw.bb.i_crit_edge7:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then.sw.bb.i_crit_edge6:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then.sw.bb.i_crit_edge5:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then.sw.bb.i_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb.i:                                          ; preds = %if.then.sw.bb.i_crit_edge, %if.then.sw.bb.i_crit_edge5, %if.then.sw.bb.i_crit_edge6, %if.then.sw.bb.i_crit_edge7, %if.then.sw.bb.i_crit_edge8, %if.then.sw.bb.i_crit_edge9
  %add.i = add nuw nsw i32 %offset, 1024
  br label %if.end

if.end:                                           ; preds = %sw.bb.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %offset.addr.0 = phi i32 [ %offset, %entry.if.end_crit_edge ], [ %add.i, %sw.bb.i ], [ %offset, %if.then.if.end_crit_edge ]
  %base.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %1 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.i, align 4
  %pgshift.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 3
  %3 = ptrtoint ptr %pgshift.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pgshift.i, align 4
  %shl.i = shl i32 %page, %4
  %add.ptr.i = getelementptr i8, ptr %2, i32 %shl.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %offset.addr.0
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !36
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_smmu_write_ns(ptr nocapture noundef readonly %smmu, i32 noundef %page, i32 noundef %offset, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page)
  %cmp = icmp eq i32 %page, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %0 = zext i32 %offset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %offset, label %if.then.if.end_crit_edge [
    i32 0, label %if.then.sw.bb.i_crit_edge
    i32 16, label %if.then.sw.bb.i_crit_edge4
    i32 72, label %if.then.sw.bb.i_crit_edge5
    i32 80, label %if.then.sw.bb.i_crit_edge6
    i32 84, label %if.then.sw.bb.i_crit_edge7
    i32 88, label %if.then.sw.bb.i_crit_edge8
  ]

if.then.sw.bb.i_crit_edge8:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then.sw.bb.i_crit_edge7:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then.sw.bb.i_crit_edge6:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then.sw.bb.i_crit_edge5:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then.sw.bb.i_crit_edge4:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then.sw.bb.i_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb.i:                                          ; preds = %if.then.sw.bb.i_crit_edge, %if.then.sw.bb.i_crit_edge4, %if.then.sw.bb.i_crit_edge5, %if.then.sw.bb.i_crit_edge6, %if.then.sw.bb.i_crit_edge7, %if.then.sw.bb.i_crit_edge8
  %add.i = add nuw nsw i32 %offset, 1024
  br label %if.end

if.end:                                           ; preds = %sw.bb.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %offset.addr.0 = phi i32 [ %offset, %entry.if.end_crit_edge ], [ %add.i, %sw.bb.i ], [ %offset, %if.then.if.end_crit_edge ]
  %1 = tail call i32 @llvm.bswap.i32(i32 %val)
  %base.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %pgshift.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 3
  %4 = ptrtoint ptr %pgshift.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pgshift.i, align 4
  %shl.i = shl i32 %page, %5
  %add.ptr.i = getelementptr i8, ptr %3, i32 %shl.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %offset.addr.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #7, !srcloc !37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mrvl_mmu500_readq(ptr nocapture noundef readonly %smmu, i32 noundef %page, i32 noundef %off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %pgshift.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 3
  %2 = ptrtoint ptr %pgshift.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pgshift.i, align 4
  %shl.i = shl i32 %page, %3
  %add.ptr.i = getelementptr i8, ptr %1, i32 %shl.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %off
  %add.ptr.i2 = getelementptr i32, ptr %add.ptr, i32 1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #7, !srcloc !36
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !36
  %6 = zext i32 %4 to i64
  %7 = zext i32 %5 to i64
  %8 = shl nuw i64 %7, 32
  %9 = or i64 %8, %6
  %10 = tail call i64 @llvm.bswap.i64(i64 %9) #7
  ret i64 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mrvl_mmu500_writeq(ptr nocapture noundef readonly %smmu, i32 noundef %page, i32 noundef %off, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %pgshift.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 3
  %2 = ptrtoint ptr %pgshift.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pgshift.i, align 4
  %shl.i = shl i32 %page, %3
  %add.ptr.i = getelementptr i8, ptr %1, i32 %shl.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %off
  %shr.i = lshr i64 %val, 32
  %conv.i = trunc i64 %shr.i to i32
  %4 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #7
  %add.ptr.i1 = getelementptr i8, ptr %add.ptr, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1, i32 %4) #7, !srcloc !37
  %conv1.i = trunc i64 %val to i32
  %5 = tail call i32 @llvm.bswap.i32(i32 %conv1.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #7, !srcloc !37
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mrvl_mmu500_cfg_probe(ptr nocapture noundef %smmu) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 4
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, -897
  store i32 %and, ptr %features, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu-impl.c", i32 211, i32 32}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu-impl.c", i32 214, i32 34}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu-impl.c", i32 215, i32 34}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu-impl.c", i32 221, i32 34}
!8 = !{ptr @arm_mmu500_impl, !9, !"arm_mmu500_impl", i1 false, i1 false}
!9 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu-impl.c", i32 144, i32 35}
!10 = !{ptr @cavium_impl, !11, !"cavium_impl", i1 false, i1 false}
!11 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu-impl.c", i32 85, i32 35}
!12 = !{ptr @cavium_cfg_probe.context_count, !13, !"context_count", i1 false, i1 false}
!13 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu-impl.c", i32 58, i32 18}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu-impl.c", i32 66, i32 2}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @cavium_cfg_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @cavium_cfg_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @calxeda_impl, !23, !"calxeda_impl", i1 false, i1 false}
!23 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu-impl.c", i32 45, i32 35}
!24 = !{ptr @mrvl_mmu500_impl, !25, !"mrvl_mmu500_impl", i1 false, i1 false}
!25 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu-impl.c", i32 183, i32 35}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 2000, i32 1}
!36 = !{i64 4966374}
!37 = !{i64 4965956}
!38 = !{i64 2148358494}
!39 = !{i64 2148273093, i64 2148273125, i64 2148273154, i64 2148273188, i64 2148273219, i64 2148273242}
!40 = !{i64 2148358722}
