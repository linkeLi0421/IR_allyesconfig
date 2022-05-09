; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/cadence/pcie-cadence.c_pt.bc'
source_filename = "../drivers/pci/controller/cadence/pcie-cadence.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cdns_pcie = type { ptr, ptr, ptr, i8, i32, ptr, ptr, ptr }
%struct.cdns_pcie_ops = type { ptr, ptr, ptr, ptr }
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

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"phy-names\00", [22 x i8] zeroinitializer }, align 32
@cdns_pcie_init_phy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 199, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"no phy-names.  PHY will not be initialized\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cdns_pcie_init_phy\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/pci/controller/cadence/pcie-cadence.c\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cdns_pcie_init_phy._entry_ptr = internal global ptr @cdns_pcie_init_phy._entry, section ".printk_index", align 4
@cdns_pcie_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdns_pcie_suspend_noirq, ptr @cdns_pcie_resume_noirq, ptr @cdns_pcie_suspend_noirq, ptr @cdns_pcie_resume_noirq, ptr @cdns_pcie_suspend_noirq, ptr @cdns_pcie_resume_noirq, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cdns_pcie_resume_noirq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 263, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to enable phy\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cdns_pcie_resume_noirq\00", [41 x i8] zeroinitializer }, align 32
@cdns_pcie_resume_noirq._entry_ptr = internal global ptr @cdns_pcie_resume_noirq._entry, section ".printk_index", align 4
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 197, i32 44 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 199, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"cdns_pcie_pm_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 271, i32 25 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [49 x i8] c"../drivers/pci/controller/cadence/pcie-cadence.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 263, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @cdns_pcie_init_phy._entry, ptr @cdns_pcie_init_phy._entry_ptr, ptr @cdns_pcie_resume_noirq._entry, ptr @cdns_pcie_resume_noirq._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @cdns_pcie_pm_ops, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_init_phy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_resume_noirq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cdns_pcie_detect_quiet_min_delay_set(ptr nocapture noundef readonly %pcie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1048660
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  %3 = or i32 %2, 100663296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcie, align 4
  %add.ptr.i4 = getelementptr i8, ptr %5, i32 1048660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %3) #5, !srcloc !29
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cdns_pcie_set_outbound_region(ptr noundef %pcie, i8 noundef zeroext %busnr, i8 noundef zeroext %fn, i32 noundef %r, i1 noundef zeroext %is_io, i64 noundef %cpu_addr, i64 noundef %pci_addr, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %size, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not.i5.i = icmp eq i32 %sub, 0
  %0 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 true) #5, !range !30
  %sub.i6.i = sub nuw nsw i32 32, %0
  %cond.i7.i = select i1 %tobool.not.i5.i, i32 0, i32 %sub.i6.i
  %sh_prom = zext i32 %cond.i7.i to i64
  %shl = shl nuw nsw i64 1, %sh_prom
  %shr.i.i = lshr i64 %shl, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool.not.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i, i1 true) #5, !range !30
  %add.i.i = sub nuw nsw i32 64, %1
  br label %cond.end6

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv1.i.i = trunc i64 %shl to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %conv1.i.i, 0
  %2 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i, i1 true) #5, !range !30
  %sub.i6.i.i = sub nuw nsw i32 32, %2
  %cond.i7.i.i = select i1 %tobool.not.i5.i.i, i32 0, i32 %sub.i6.i.i
  br label %cond.end6

cond.end6:                                        ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %cond.i7.i.i, %if.end.i.i ]
  %3 = call i32 @llvm.smax.i32(i32 %retval.0.i.i, i32 9)
  %sub10 = add nuw i32 %3, 62
  %and = and i32 %sub10, 63
  %conv12 = trunc i64 %pci_addr to i32
  %and13 = and i32 %conv12, -256
  %or = or i32 %and, %and13
  %shr = lshr i64 %pci_addr, 32
  %conv15 = trunc i64 %shr to i32
  %and16 = shl i32 %r, 5
  %mul = and i32 %and16, 992
  %add = or i32 %mul, 4194304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %5 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcie, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #5, !srcloc !29
  %add19 = or i32 %mul, 4194308
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %7 = tail call i32 @llvm.bswap.i32(i32 %conv15) #5
  %8 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcie, align 4
  %add.ptr.i92 = getelementptr i8, ptr %9, i32 %add19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 %7) #5, !srcloc !29
  %. = select i1 %is_io, i32 6, i32 2
  %is_rc = getelementptr inbounds %struct.cdns_pcie, ptr %pcie, i32 0, i32 3
  %10 = ptrtoint ptr %is_rc to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_rc, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool22.not = icmp eq i8 %11, 0
  %conv29 = zext i8 %fn to i32
  %shl30 = shl nuw i32 %conv29, 24
  %desc0.1.v = select i1 %tobool22.not, i32 %shl30, i32 8388608
  %desc0.1 = or i32 %desc0.1.v, %.
  %narrow = select i1 %tobool22.not, i8 0, i8 %busnr
  %desc1.0 = zext i8 %narrow to i32
  %add36 = or i32 %mul, 4194312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %desc0.1) #5
  %13 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcie, align 4
  %add.ptr.i93 = getelementptr i8, ptr %14, i32 %add36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 %12) #5, !srcloc !29
  %add39 = or i32 %mul, 4194316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %15 = shl nuw i32 %desc1.0, 24
  %16 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcie, align 4
  %add.ptr.i94 = getelementptr i8, ptr %17, i32 %add39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 %15) #5, !srcloc !29
  %ops = getelementptr inbounds %struct.cdns_pcie, ptr %pcie, i32 0, i32 7
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %cpu_addr_fixup = getelementptr inbounds %struct.cdns_pcie_ops, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu_addr_fixup to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cpu_addr_fixup, align 4
  %tobool40.not = icmp eq ptr %21, null
  %extract.t88 = trunc i64 %cpu_addr to i32
  %extract90 = lshr i64 %cpu_addr, 32
  %extract.t91 = trunc i64 %extract90 to i32
  br i1 %tobool40.not, label %cond.end6.if.end45_crit_edge, label %if.then41

cond.end6.if.end45_crit_edge:                     ; preds = %cond.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.then41:                                        ; preds = %cond.end6
  call void @__sanitizer_cov_trace_pc() #7
  %call44 = tail call i64 %21(ptr noundef %pcie, i64 noundef %cpu_addr) #5
  %extract.t = trunc i64 %call44 to i32
  %extract = lshr i64 %call44, 32
  %extract.t89 = trunc i64 %extract to i32
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %cond.end6.if.end45_crit_edge
  %cpu_addr.addr.0.off0 = phi i32 [ %extract.t, %if.then41 ], [ %extract.t88, %cond.end6.if.end45_crit_edge ]
  %cpu_addr.addr.0.off32 = phi i32 [ %extract.t89, %if.then41 ], [ %extract.t91, %cond.end6.if.end45_crit_edge ]
  %and50 = and i32 %cpu_addr.addr.0.off0, -256
  %or51 = or i32 %and50, %and
  %add57 = or i32 %mul, 4194328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %22 = tail call i32 @llvm.bswap.i32(i32 %or51) #5
  %23 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcie, align 4
  %add.ptr.i95 = getelementptr i8, ptr %24, i32 %add57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95, i32 %22) #5, !srcloc !29
  %add60 = or i32 %mul, 4194332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %25 = tail call i32 @llvm.bswap.i32(i32 %cpu_addr.addr.0.off32) #5
  %26 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pcie, align 4
  %add.ptr.i96 = getelementptr i8, ptr %27, i32 %add60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96, i32 %25) #5, !srcloc !29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cdns_pcie_set_outbound_region_for_normal_msg(ptr noundef %pcie, i8 noundef zeroext %busnr, i8 noundef zeroext %fn, i32 noundef %r, i64 noundef %cpu_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %is_rc = getelementptr inbounds %struct.cdns_pcie, ptr %pcie, i32 0, i32 3
  %0 = ptrtoint ptr %is_rc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_rc, align 4, !range !31
  %ops = getelementptr inbounds %struct.cdns_pcie, ptr %pcie, i32 0, i32 7
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %cpu_addr_fixup = getelementptr inbounds %struct.cdns_pcie_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu_addr_fixup to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpu_addr_fixup, align 4
  %tobool5.not = icmp eq ptr %5, null
  %extract.t51 = trunc i64 %cpu_addr to i32
  %extract53 = lshr i64 %cpu_addr, 32
  %extract.t54 = trunc i64 %extract53 to i32
  br i1 %tobool5.not, label %entry.if.end9_crit_edge, label %if.then6

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i64 %5(ptr noundef %pcie, i64 noundef %cpu_addr) #5
  %extract.t = trunc i64 %call to i32
  %extract = lshr i64 %call, 32
  %extract.t52 = trunc i64 %extract to i32
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %entry.if.end9_crit_edge
  %cpu_addr.addr.0.off0 = phi i32 [ %extract.t, %if.then6 ], [ %extract.t51, %entry.if.end9_crit_edge ]
  %cpu_addr.addr.0.off32 = phi i32 [ %extract.t52, %if.then6 ], [ %extract.t54, %entry.if.end9_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %narrow = select i1 %tobool.not, i8 0, i8 %busnr
  %desc1.0 = zext i8 %narrow to i32
  %conv2 = zext i8 %fn to i32
  %shl = shl nuw i32 %conv2, 24
  %or4 = or i32 %shl, 12
  %desc0.0 = select i1 %tobool.not, i32 %or4, i32 8388620
  %and12 = and i32 %cpu_addr.addr.0.off0, -256
  %or13 = or i32 %and12, 16
  %and16 = shl i32 %r, 5
  %mul = and i32 %and16, 992
  %add = or i32 %mul, 4194304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcie, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !29
  %add19 = or i32 %mul, 4194308
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcie, align 4
  %add.ptr.i55 = getelementptr i8, ptr %9, i32 %add19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 0) #5, !srcloc !29
  %add22 = or i32 %mul, 4194312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %desc0.0) #5
  %11 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcie, align 4
  %add.ptr.i56 = getelementptr i8, ptr %12, i32 %add22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %10) #5, !srcloc !29
  %add25 = or i32 %mul, 4194316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %13 = shl nuw i32 %desc1.0, 24
  %14 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcie, align 4
  %add.ptr.i57 = getelementptr i8, ptr %15, i32 %add25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 %13) #5, !srcloc !29
  %add28 = or i32 %mul, 4194328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %16 = tail call i32 @llvm.bswap.i32(i32 %or13) #5
  %17 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcie, align 4
  %add.ptr.i58 = getelementptr i8, ptr %18, i32 %add28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %16) #5, !srcloc !29
  %add31 = or i32 %mul, 4194332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %19 = tail call i32 @llvm.bswap.i32(i32 %cpu_addr.addr.0.off32) #5
  %20 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcie, align 4
  %add.ptr.i59 = getelementptr i8, ptr %21, i32 %add31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %19) #5, !srcloc !29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cdns_pcie_reset_outbound_region(ptr nocapture noundef readonly %pcie, i32 noundef %r) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = shl i32 %r, 5
  %mul = and i32 %and, 992
  %add = or i32 %mul, 4194304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %0 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !29
  %add3 = or i32 %mul, 4194308
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %2 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie, align 4
  %add.ptr.i26 = getelementptr i8, ptr %3, i32 %add3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 0) #5, !srcloc !29
  %add6 = or i32 %mul, 4194312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcie, align 4
  %add.ptr.i27 = getelementptr i8, ptr %5, i32 %add6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 0) #5, !srcloc !29
  %add9 = or i32 %mul, 4194316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcie, align 4
  %add.ptr.i28 = getelementptr i8, ptr %7, i32 %add9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 0) #5, !srcloc !29
  %add12 = or i32 %mul, 4194328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcie, align 4
  %add.ptr.i29 = getelementptr i8, ptr %9, i32 %add12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 0) #5, !srcloc !29
  %add15 = or i32 %mul, 4194332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcie, align 4
  %add.ptr.i30 = getelementptr i8, ptr %11, i32 %add15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 0) #5, !srcloc !29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cdns_pcie_disable_phy(ptr nocapture noundef readonly %pcie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_count = getelementptr inbounds %struct.cdns_pcie, ptr %pcie, i32 0, i32 4
  %0 = ptrtoint ptr %phy_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not8 = icmp eq i32 %1, 0
  br i1 %tobool.not8, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %phy = getelementptr inbounds %struct.cdns_pcie, ptr %pcie, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %i.09 = phi i32 [ %1, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add i32 %i.09, -1
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %dec
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @phy_power_off(ptr noundef %5) #5
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 4
  %arrayidx2 = getelementptr ptr, ptr %7, i32 %dec
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 4
  %call3 = tail call i32 @phy_exit(ptr noundef %9) #5
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdns_pcie_enable_phy(ptr nocapture noundef readonly %pcie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_count = getelementptr inbounds %struct.cdns_pcie, ptr %pcie, i32 0, i32 4
  %0 = ptrtoint ptr %phy_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp40 = icmp sgt i32 %1, 0
  br i1 %cmp40, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %phy = getelementptr inbounds %struct.cdns_pcie, ptr %pcie, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.041 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.041
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @phy_init(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %for.body.err_phy_crit_edge, label %if.end

for.body.err_phy_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_phy

if.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 4
  %arrayidx3 = getelementptr ptr, ptr %7, i32 %i.041
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3, align 4
  %call4 = tail call i32 @phy_power_on(ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %for.inc

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy, align 4
  %arrayidx8 = getelementptr ptr, ptr %11, i32 %i.041
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx8, align 4
  %call9 = tail call i32 @phy_exit(ptr noundef %13) #5
  br label %err_phy

for.inc:                                          ; preds = %if.end
  %inc = add nuw nsw i32 %i.041, 1
  %14 = ptrtoint ptr %phy_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %phy_count, align 4
  %cmp = icmp slt i32 %inc, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

err_phy:                                          ; preds = %if.then6, %for.body.err_phy_crit_edge
  %ret.0 = phi i32 [ %call4, %if.then6 ], [ %call, %for.body.err_phy_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.041)
  %cmp1143.not = icmp eq i32 %i.041, 0
  br i1 %cmp1143.not, label %err_phy.cleanup_crit_edge, label %err_phy.while.body_crit_edge

err_phy.while.body_crit_edge:                     ; preds = %err_phy
  br label %while.body

err_phy.cleanup_crit_edge:                        ; preds = %err_phy
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %err_phy.while.body_crit_edge
  %dec44.in = phi i32 [ %dec44, %while.body.while.body_crit_edge ], [ %i.041, %err_phy.while.body_crit_edge ]
  %dec44 = add nsw i32 %dec44.in, -1
  %16 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy, align 4
  %arrayidx13 = getelementptr ptr, ptr %17, i32 %dec44
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx13, align 4
  %call14 = tail call i32 @phy_power_off(ptr noundef %19) #5
  %20 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phy, align 4
  %arrayidx16 = getelementptr ptr, ptr %21, i32 %dec44
  %22 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx16, align 4
  %call17 = tail call i32 @phy_exit(ptr noundef %23) #5
  %cmp11 = icmp sgt i32 %dec44.in, 1
  br i1 %cmp11, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %err_phy.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_phy.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %while.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdns_pcie_init_phy(ptr noundef %dev, ptr nocapture noundef %pcie) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #5
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %name, align 4, !annotation !32
  %call.i = tail call i32 @of_property_read_string_helper(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  %phy_count1 = getelementptr inbounds %struct.cdns_pcie, ptr %pcie, i32 0, i32 4
  %3 = ptrtoint ptr %phy_count1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %phy_count1, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i, i32 4) #5
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %if.end.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !33

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end
  %6 = extractvalue { i32, i1 } %4, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %6, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %devm_kcalloc.exit86

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

devm_kcalloc.exit86:                              ; preds = %devm_kcalloc.exit
  %call5.i.i83 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %6, i32 noundef 3520) #5
  %tobool6.not = icmp eq ptr %call5.i.i83, null
  br i1 %tobool6.not, label %devm_kcalloc.exit86.cleanup_crit_edge, label %devm_kcalloc.exit86.for.body_crit_edge

devm_kcalloc.exit86.for.body_crit_edge:           ; preds = %devm_kcalloc.exit86
  br label %for.body

devm_kcalloc.exit86.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit86
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %devm_kcalloc.exit86.for.body_crit_edge
  %i.098 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %devm_kcalloc.exit86.for.body_crit_edge ]
  %call.i87 = call i32 @of_property_read_string_helper(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %name, i32 noundef 1, i32 noundef %i.098) #5
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  %call11 = call ptr @devm_phy_get(ptr noundef %dev, ptr noundef %8) #5
  %arrayidx = getelementptr ptr, ptr %call5.i.i, i32 %i.098
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call11, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call11 to i32
  br label %err_phy

if.end17:                                         ; preds = %for.body
  %call20 = call ptr @device_link_add(ptr noundef %dev, ptr noundef %call11, i32 noundef 1) #5
  %arrayidx21 = getelementptr ptr, ptr %call5.i.i83, i32 %i.098
  %11 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call20, ptr %arrayidx21, align 4
  %tobool23.not = icmp eq ptr %call20, null
  br i1 %tobool23.not, label %if.then24, label %for.inc

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.le = getelementptr ptr, ptr %call5.i.i, i32 %i.098
  %12 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.le, align 4
  call void @devm_phy_put(ptr noundef %dev, ptr noundef %13) #5
  br label %err_phy

for.inc:                                          ; preds = %if.end17
  %inc = add nuw nsw i32 %i.098, 1
  %exitcond.not = icmp eq i32 %inc, %call.i
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  %phy_count27 = getelementptr inbounds %struct.cdns_pcie, ptr %pcie, i32 0, i32 4
  %14 = ptrtoint ptr %phy_count27 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call.i, ptr %phy_count27, align 4
  %phy28 = getelementptr inbounds %struct.cdns_pcie, ptr %pcie, i32 0, i32 5
  %15 = ptrtoint ptr %phy28 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call5.i.i, ptr %phy28, align 4
  %link29 = getelementptr inbounds %struct.cdns_pcie, ptr %pcie, i32 0, i32 6
  %16 = ptrtoint ptr %link29 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call5.i.i83, ptr %link29, align 4
  %call30 = call i32 @cdns_pcie_enable_phy(ptr noundef %pcie)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %for.end.cleanup_crit_edge, label %for.end.err_phy_crit_edge

for.end.err_phy_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_phy

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_phy:                                          ; preds = %for.end.err_phy_crit_edge, %if.then24, %if.then14
  %i.093 = phi i32 [ %i.098, %if.then14 ], [ %i.098, %if.then24 ], [ %call.i, %for.end.err_phy_crit_edge ]
  %ret.0 = phi i32 [ %10, %if.then14 ], [ -22, %if.then24 ], [ %call30, %for.end.err_phy_crit_edge ]
  %dec99 = add i32 %i.093, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec99)
  %cmp34100 = icmp sgt i32 %dec99, -1
  br i1 %cmp34100, label %err_phy.while.body_crit_edge, label %err_phy.cleanup_crit_edge

err_phy.cleanup_crit_edge:                        ; preds = %err_phy
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_phy.while.body_crit_edge:                     ; preds = %err_phy
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %err_phy.while.body_crit_edge
  %dec101 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec99, %err_phy.while.body_crit_edge ]
  %arrayidx35 = getelementptr ptr, ptr %call5.i.i83, i32 %dec101
  %17 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx35, align 4
  call void @device_link_del(ptr noundef %18) #5
  %arrayidx36 = getelementptr ptr, ptr %call5.i.i, i32 %dec101
  %19 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx36, align 4
  call void @devm_phy_put(ptr noundef %dev, ptr noundef %20) #5
  %dec = add nsw i32 %dec101, -1
  %cmp34.not = icmp eq i32 %dec101, 0
  br i1 %cmp34.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %err_phy.cleanup_crit_edge, %for.end.cleanup_crit_edge, %devm_kcalloc.exit86.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit86.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %ret.0, %err_phy.cleanup_crit_edge ], [ %ret.0, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #5
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_phy_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_link_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_pcie_suspend_noirq(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %phy_count.i = getelementptr inbounds %struct.cdns_pcie, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %phy_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not8.i = icmp eq i32 %3, 0
  br i1 %tobool.not8.i, label %entry.cdns_pcie_disable_phy.exit_crit_edge, label %while.body.lr.ph.i

entry.cdns_pcie_disable_phy.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cdns_pcie_disable_phy.exit

while.body.lr.ph.i:                               ; preds = %entry
  %phy.i = getelementptr inbounds %struct.cdns_pcie, ptr %1, i32 0, i32 5
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %i.09.i = phi i32 [ %3, %while.body.lr.ph.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add i32 %i.09.i, -1
  %4 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %5, i32 %dec.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @phy_power_off(ptr noundef %7) #5
  %8 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy.i, align 4
  %arrayidx2.i = getelementptr ptr, ptr %9, i32 %dec.i
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx2.i, align 4
  %call3.i = tail call i32 @phy_exit(ptr noundef %11) #5
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.cdns_pcie_disable_phy.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.body.i.cdns_pcie_disable_phy.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cdns_pcie_disable_phy.exit

cdns_pcie_disable_phy.exit:                       ; preds = %while.body.i.cdns_pcie_disable_phy.exit_crit_edge, %entry.cdns_pcie_disable_phy.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_pcie_resume_noirq(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @cdns_pcie_enable_phy(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !15, !16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/cadence/pcie-cadence.c", i32 197, i32 44}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/cadence/pcie-cadence.c", i32 199, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @cdns_pcie_init_phy._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @cdns_pcie_init_phy._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @cdns_pcie_pm_ops, !11, !"cdns_pcie_pm_ops", i1 false, i1 false}
!11 = !{!"../drivers/pci/controller/cadence/pcie-cadence.c", i32 271, i32 25}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pci/controller/cadence/pcie-cadence.c", i32 263, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @cdns_pcie_resume_noirq._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @cdns_pcie_resume_noirq._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i64 5004734}
!27 = !{i64 2155417010}
!28 = !{i64 2155416159}
!29 = !{i64 5004316}
!30 = !{i32 0, i32 33}
!31 = !{i8 0, i8 2}
!32 = !{!"auto-init"}
!33 = !{!"branch_weights", i32 1, i32 2000}
