; ModuleID = '/llk/IR_all_yes/arch/arm/mach-exynos/platsmp.c_pt.bc'
source_filename = "../arch/arm/mach-exynos/platsmp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.firmware_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@exynos_pen_release = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@exynos_scu_enable.scu_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"arm,cortex-a9-scu\00", [46 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@exynos_core_restart._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013cpu core %u restart failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"exynos_core_restart\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"arch/arm/mach-exynos/platsmp.c\00", [33 x i8] zeroinitializer }, align 32
@exynos_core_restart._entry_ptr = internal global ptr @exynos_core_restart._entry, section ".printk_index", align 4
@firmware_ops = external dso_local local_unnamed_addr global ptr, align 4
@exynos_smp_ops = dso_local local_unnamed_addr constant %struct.smp_operations { ptr null, ptr @exynos_smp_prepare_cpus, ptr @exynos_secondary_init, ptr @exynos_boot_secondary, ptr null, ptr @exynos_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@exynos_cpu_id = external dso_local local_unnamed_addr global i32, align 4
@pmu_base_addr = external dso_local local_unnamed_addr global ptr, align 4
@sysram_base_addr = external dso_local local_unnamed_addr global ptr, align 4
@boot_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"boot_lock\00", [22 x i8] zeroinitializer }, align 32
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@exynos_boot_secondary._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013cpu1 power enable failed\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"exynos_boot_secondary\00", [42 x i8] zeroinitializer }, align 32
@exynos_boot_secondary._entry_ptr = internal global ptr @exynos_boot_secondary._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@exynos_cpu_die._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014CPU%u: %u spurious wakeup calls\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"exynos_cpu_die\00", [17 x i8] zeroinitializer }, align 32
@exynos_cpu_die._entry_ptr = internal global ptr @exynos_cpu_die._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3846307840, i64 3846316032]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 3846307840, i64 3846316032]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 3846307840, i64 3846316032]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 3846307840, i64 3846316032]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 3846307840, i64 3846316032]
@___asan_gen_.13 = private unnamed_addr constant [19 x i8] c"exynos_pen_release\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 30, i32 14 }
@___asan_gen_.16 = private unnamed_addr constant [9 x i8] c"scu_base\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 171, i32 23 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 174, i32 44 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 224, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant [10 x i8] c"boot_lock\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 250, i32 8 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 354, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [34 x i8] c"../arch/arm/mach-exynos/platsmp.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 439, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @exynos_boot_secondary._entry, ptr @exynos_boot_secondary._entry_ptr, ptr @exynos_core_restart._entry, ptr @exynos_core_restart._entry_ptr, ptr @exynos_cpu_die._entry, ptr @exynos_cpu_die._entry_ptr, ptr @exynos_pen_release, ptr @exynos_scu_enable.scu_base, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @boot_lock, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_pen_release to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_scu_enable.scu_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_core_restart._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boot_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_boot_secondary._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_cpu_die._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos_cpu_power_down(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cpu)
  %cmp = icmp eq i32 %cpu, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @exynos_cpu_id to i32))
  %0 = load i32, ptr @exynos_cpu_id, align 4
  %and.i = and i32 %0, -4096
  %1 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %land.lhs.true.if.end6_crit_edge [
    i32 -448659456, label %land.lhs.true.if.then_crit_edge
    i32 -448651264, label %land.lhs.true.if.then_crit_edge22
  ]

land.lhs.true.if.then_crit_edge22:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %land.lhs.true.if.then_crit_edge22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %2 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 4096
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !36
  %4 = and i32 %3, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %if.then.cleanup11_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then.cleanup11_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup11

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  %mul = shl i32 %cpu, 7
  %add = add i32 %mul, 8192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %5 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i20 = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20) #5, !srcloc !36
  %7 = and i32 %6, -50331649
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %8 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i21 = getelementptr i8, ptr %8, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %7) #5, !srcloc !37
  br label %cleanup11

cleanup11:                                        ; preds = %if.end6, %if.then.cleanup11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos_cpu_power_up(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @exynos_cpu_id to i32))
  %0 = load i32, ptr @exynos_cpu_id, align 4
  %and.i = and i32 %0, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -481878016, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, -481878016
  %spec.select = select i1 %cmp.i.not, i32 -2147483645, i32 3
  %mul = shl i32 %cpu, 7
  %add = add i32 %mul, 8192
  %1 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %2 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %1) #5, !srcloc !37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exynos_cpu_power_state(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %cpu, 7
  %add1 = add i32 %mul, 8196
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %0 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 %add1
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !36
  %2 = lshr i32 %1, 24
  %and = and i32 %2, 3
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos_cluster_power_down(i32 noundef %cluster) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %cluster, 7
  %add = add i32 %mul, 9472
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %0 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos_cluster_power_up(i32 noundef %cluster) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %cluster, 7
  %add = add i32 %mul, 9472
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %0 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50331648) #5, !srcloc !37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exynos_cluster_power_state(i32 noundef %cluster) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %cluster, 7
  %add1 = add i32 %mul, 9476
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %0 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 %add1
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !36
  %2 = lshr i32 %1, 24
  %and = and i32 %2, 3
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos_scu_enable() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @exynos_scu_enable.scu_base, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then:                                          ; preds = %entry
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #5
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call ptr @of_iomap(ptr noundef nonnull %call, i32 noundef 0) #5
  store ptr %call3, ptr @exynos_scu_enable.scu_base, align 4
  tail call void @of_node_put(ptr noundef nonnull %call) #5
  br label %if.end6

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %1 = tail call i32 asm "mrc p15, 4, $0, c15, c0, 0", "=r"() #8, !srcloc !38
  %call5 = tail call ptr @ioremap(i32 noundef %1, i32 noundef 4096) #5
  store ptr %call5, ptr @exynos_scu_enable.scu_base, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then2, %entry.if.end6_crit_edge
  %2 = load ptr, ptr @exynos_scu_enable.scu_base, align 4
  tail call void @scu_enable(ptr noundef %2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scu_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos_core_restart(i32 noundef %core_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @exynos_cpu_id to i32))
  %0 = load i32, ptr @exynos_cpu_id, align 4
  %and.i = and i32 %0, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -481878016, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, -481878016
  br i1 %cmp.i.not, label %land.rhs.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.rhs.preheader:                               ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %1 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2312
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool3.not = icmp eq i32 %2, 0
  br i1 %tobool3.not, label %while.body, label %land.rhs.preheader.if.end6_crit_edge

land.rhs.preheader.if.end6_crit_edge:             ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

while.body:                                       ; preds = %land.rhs.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 2147480) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %4 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %4, i32 2312
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #5, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not.1 = icmp eq i32 %5, 0
  br i1 %tobool3.not.1, label %while.body.1, label %while.body.if.end6_crit_edge

while.body.if.end6_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

while.body.1:                                     ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %7 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %7, i32 2312
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2) #5, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not.2 = icmp eq i32 %8, 0
  br i1 %tobool3.not.2, label %while.body.2, label %while.body.1.if.end6_crit_edge

while.body.1.if.end6_crit_edge:                   ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

while.body.2:                                     ; preds = %while.body.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %10 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %10, i32 2312
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3) #5, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not.3 = icmp eq i32 %11, 0
  br i1 %tobool3.not.3, label %while.body.3, label %while.body.2.if.end6_crit_edge

while.body.2.if.end6_crit_edge:                   ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

while.body.3:                                     ; preds = %while.body.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 2147480) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %13 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %13, i32 2312
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4) #5, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool3.not.4 = icmp eq i32 %14, 0
  br i1 %tobool3.not.4, label %while.body.4, label %while.body.3.if.end6_crit_edge

while.body.3.if.end6_crit_edge:                   ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

while.body.4:                                     ; preds = %while.body.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 2147480) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %16 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.5 = getelementptr i8, ptr %16, i32 2312
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.5) #5, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool3.not.5 = icmp eq i32 %17, 0
  br i1 %tobool3.not.5, label %while.body.5, label %while.body.4.if.end6_crit_edge

while.body.4.if.end6_crit_edge:                   ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

while.body.5:                                     ; preds = %while.body.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %19 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.6 = getelementptr i8, ptr %19, i32 2312
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.6) #5, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool3.not.6 = icmp eq i32 %20, 0
  br i1 %tobool3.not.6, label %while.body.6, label %while.body.5.if.end6_crit_edge

while.body.5.if.end6_crit_edge:                   ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

while.body.6:                                     ; preds = %while.body.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 2147480) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %22 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.7 = getelementptr i8, ptr %22, i32 2312
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.7) #5, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool3.not.7 = icmp eq i32 %23, 0
  br i1 %tobool3.not.7, label %while.body.7, label %while.body.6.if.end6_crit_edge

while.body.6.if.end6_crit_edge:                   ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

while.body.7:                                     ; preds = %while.body.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 2147480) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %25 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.8 = getelementptr i8, ptr %25, i32 2312
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.8) #5, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool3.not.8 = icmp eq i32 %26, 0
  br i1 %tobool3.not.8, label %while.body.8, label %while.body.7.if.end6_crit_edge

while.body.7.if.end6_crit_edge:                   ; preds = %while.body.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

while.body.8:                                     ; preds = %while.body.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 2147480) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %28 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.9 = getelementptr i8, ptr %28, i32 2312
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.9) #5, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool3.not.9 = icmp eq i32 %29, 0
  br i1 %tobool3.not.9, label %while.body.9, label %while.body.8.if.end6_crit_edge

while.body.8.if.end6_crit_edge:                   ; preds = %while.body.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

while.body.9:                                     ; preds = %while.body.8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 2147480) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %31 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.10 = getelementptr i8, ptr %31, i32 2312
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.10) #5, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool3.not.10 = icmp eq i32 %32, 0
  br i1 %tobool3.not.10, label %while.body.10, label %while.body.9.if.end6_crit_edge

while.body.9.if.end6_crit_edge:                   ; preds = %while.body.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

while.body.10:                                    ; preds = %while.body.9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 2147480) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %34 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.11 = getelementptr i8, ptr %34, i32 2312
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.11) #5, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool3.not.11 = icmp eq i32 %35, 0
  br i1 %tobool3.not.11, label %while.body.11, label %while.body.10.if.end6_crit_edge

while.body.10.if.end6_crit_edge:                  ; preds = %while.body.10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

while.body.11:                                    ; preds = %while.body.10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 2147480) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %37 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.12 = getelementptr i8, ptr %37, i32 2312
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.12) #5, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool3.not.12 = icmp eq i32 %38, 0
  br i1 %tobool3.not.12, label %while.body.12, label %while.body.11.if.end6_crit_edge

while.body.11.if.end6_crit_edge:                  ; preds = %while.body.11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

while.body.12:                                    ; preds = %while.body.11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 2147480) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %40 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.13 = getelementptr i8, ptr %40, i32 2312
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.13) #5, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool3.not.13 = icmp eq i32 %41, 0
  br i1 %tobool3.not.13, label %while.body.13, label %while.body.12.if.end6_crit_edge

while.body.12.if.end6_crit_edge:                  ; preds = %while.body.12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

while.body.13:                                    ; preds = %while.body.12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 2147480) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %43 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.14 = getelementptr i8, ptr %43, i32 2312
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.14) #5, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool3.not.14 = icmp eq i32 %44, 0
  br i1 %tobool3.not.14, label %while.body.14, label %while.body.13.if.end6_crit_edge

while.body.13.if.end6_crit_edge:                  ; preds = %while.body.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

while.body.14:                                    ; preds = %while.body.13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 2147480) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %46 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.15 = getelementptr i8, ptr %46, i32 2312
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.15) #5, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool3.not.15 = icmp eq i32 %47, 0
  br i1 %tobool3.not.15, label %while.body.15, label %while.body.14.if.end6_crit_edge

while.body.14.if.end6_crit_edge:                  ; preds = %while.body.14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

while.body.15:                                    ; preds = %while.body.14
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 2147480) #5
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %core_id) #9
  br label %cleanup

if.end6:                                          ; preds = %while.body.14.if.end6_crit_edge, %while.body.13.if.end6_crit_edge, %while.body.12.if.end6_crit_edge, %while.body.11.if.end6_crit_edge, %while.body.10.if.end6_crit_edge, %while.body.9.if.end6_crit_edge, %while.body.8.if.end6_crit_edge, %while.body.7.if.end6_crit_edge, %while.body.6.if.end6_crit_edge, %while.body.5.if.end6_crit_edge, %while.body.4.if.end6_crit_edge, %while.body.3.if.end6_crit_edge, %while.body.2.if.end6_crit_edge, %while.body.1.if.end6_crit_edge, %while.body.if.end6_crit_edge, %land.rhs.preheader.if.end6_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 2147480) #5
  %mul = shl i32 %core_id, 7
  %add7 = add i32 %mul, 8196
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %50 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i19 = getelementptr i8, ptr %50, i32 %add7
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #5, !srcloc !36
  %52 = or i32 %51, 196608
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %53 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i20 = getelementptr i8, ptr %53, i32 %add7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %52) #5, !srcloc !37
  %shl = shl i32 16, %core_id
  %54 = tail call i32 @llvm.bswap.i32(i32 %shl) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %55 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i21 = getelementptr i8, ptr %55, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %54) #5, !srcloc !37
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %while.body.15, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exynos_set_boot_addr(i32 noundef %core_id, i32 noundef %boot_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @firmware_ops to i32))
  %0 = load ptr, ptr @firmware_ops, align 4
  %set_cpu_boot_addr = getelementptr inbounds %struct.firmware_ops, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %set_cpu_boot_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %set_cpu_boot_addr, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.then4_crit_edge, label %cond.end

entry.if.then4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

cond.end:                                         ; preds = %entry
  %call = tail call i32 %2(i32 noundef %core_id, i32 noundef %boot_addr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call)
  %cond19 = icmp eq i32 %call, -38
  br i1 %cond19, label %cond.end.if.then4_crit_edge, label %cond.end.cleanup11_crit_edge

cond.end.cleanup11_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup11

cond.end.if.then4_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.then4:                                         ; preds = %cond.end.if.then4_crit_edge, %entry.if.then4_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @exynos_cpu_id to i32))
  %3 = load i32, ptr @exynos_cpu_id, align 4
  %and.i.i.i = and i32 %3, -131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 1126170624, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, 1126170624
  br i1 %cmp.i.not.i.i, label %land.lhs.true.i.i, label %if.then4.if.end.i.i_crit_edge

if.then4.if.end.i.i_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then4
  %call1.i.i = tail call i32 @exynos_rev() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %call1.i.i)
  %cmp.i.i = icmp eq i32 %call1.i.i, 17
  br i1 %cmp.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %4 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 2068
  br label %cpu_boot_reg_base.exit.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then4.if.end.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysram_base_addr to i32))
  %5 = load ptr, ptr @sysram_base_addr, align 4
  br label %cpu_boot_reg_base.exit.i

cpu_boot_reg_base.exit.i:                         ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %tobool.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i, label %cpu_boot_reg_base.exit.i.if.then7_crit_edge, label %if.end.i

cpu_boot_reg_base.exit.i.if.then7_crit_edge:      ; preds = %cpu_boot_reg_base.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

if.end.i:                                         ; preds = %cpu_boot_reg_base.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @exynos_cpu_id to i32))
  %6 = load i32, ptr @exynos_cpu_id, align 4
  %and.i.i = and i32 %6, -131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 -465567744, i32 %and.i.i)
  %cmp.i16.not.i = icmp eq i32 %and.i.i, -465567744
  br i1 %cmp.i16.not.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul.i = shl i32 %core_id, 2
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i, i32 %mul.i
  br label %cpu_boot_reg.exit

if.else.i:                                        ; preds = %if.end.i
  %and.i17.i = and i32 %6, -4096
  %7 = zext i32 %and.i17.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %and.i17.i, label %if.else.i.cpu_boot_reg.exit_crit_edge [
    i32 -448659456, label %if.else.i.if.then9.i_crit_edge
    i32 -448651264, label %if.else.i.if.then9.i_crit_edge25
  ]

if.else.i.if.then9.i_crit_edge25:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9.i

if.else.i.if.then9.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9.i

if.else.i.cpu_boot_reg.exit_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_boot_reg.exit

if.then9.i:                                       ; preds = %if.else.i.if.then9.i_crit_edge, %if.else.i.if.then9.i_crit_edge25
  %add.ptr10.i = getelementptr i8, ptr %retval.0.i.i, i32 4
  br label %cpu_boot_reg.exit

cpu_boot_reg.exit:                                ; preds = %if.then9.i, %if.else.i.cpu_boot_reg.exit_crit_edge, %if.then4.i
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then4.i ], [ %add.ptr10.i, %if.then9.i ], [ %retval.0.i.i, %if.else.i.cpu_boot_reg.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cpu_boot_reg.exit.if.then7_crit_edge, label %if.end9

cpu_boot_reg.exit.if.then7_crit_edge:             ; preds = %cpu_boot_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

if.then7:                                         ; preds = %cpu_boot_reg.exit.if.then7_crit_edge, %cpu_boot_reg_base.exit.i.if.then7_crit_edge
  %retval.0.i24 = phi ptr [ %retval.0.i, %cpu_boot_reg.exit.if.then7_crit_edge ], [ inttoptr (i32 -19 to ptr), %cpu_boot_reg_base.exit.i.if.then7_crit_edge ]
  %8 = ptrtoint ptr %retval.0.i24 to i32
  br label %cleanup11

if.end9:                                          ; preds = %cpu_boot_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %boot_addr)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %retval.0.i, i32 %9) #5, !srcloc !37
  br label %cleanup11

cleanup11:                                        ; preds = %if.end9, %if.then7, %cond.end.cleanup11_crit_edge
  %ret.1 = phi i32 [ %call, %cond.end.cleanup11_crit_edge ], [ %8, %if.then7 ], [ 0, %if.end9 ]
  ret i32 %ret.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exynos_get_boot_addr(i32 noundef %core_id, ptr noundef %boot_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @firmware_ops to i32))
  %0 = load ptr, ptr @firmware_ops, align 4
  %get_cpu_boot_addr = getelementptr inbounds %struct.firmware_ops, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %get_cpu_boot_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %get_cpu_boot_addr, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.then4_crit_edge, label %cond.end

entry.if.then4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

cond.end:                                         ; preds = %entry
  %call = tail call i32 %2(i32 noundef %core_id, ptr noundef %boot_addr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call)
  %cond20 = icmp eq i32 %call, -38
  br i1 %cond20, label %cond.end.if.then4_crit_edge, label %cond.end.cleanup12_crit_edge

cond.end.cleanup12_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup12

cond.end.if.then4_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.then4:                                         ; preds = %cond.end.if.then4_crit_edge, %entry.if.then4_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @exynos_cpu_id to i32))
  %3 = load i32, ptr @exynos_cpu_id, align 4
  %and.i.i.i = and i32 %3, -131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 1126170624, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, 1126170624
  br i1 %cmp.i.not.i.i, label %land.lhs.true.i.i, label %if.then4.if.end.i.i_crit_edge

if.then4.if.end.i.i_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then4
  %call1.i.i = tail call i32 @exynos_rev() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %call1.i.i)
  %cmp.i.i = icmp eq i32 %call1.i.i, 17
  br i1 %cmp.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %4 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 2068
  br label %cpu_boot_reg_base.exit.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then4.if.end.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysram_base_addr to i32))
  %5 = load ptr, ptr @sysram_base_addr, align 4
  br label %cpu_boot_reg_base.exit.i

cpu_boot_reg_base.exit.i:                         ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %tobool.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i, label %cpu_boot_reg_base.exit.i.if.then7_crit_edge, label %if.end.i

cpu_boot_reg_base.exit.i.if.then7_crit_edge:      ; preds = %cpu_boot_reg_base.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

if.end.i:                                         ; preds = %cpu_boot_reg_base.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @exynos_cpu_id to i32))
  %6 = load i32, ptr @exynos_cpu_id, align 4
  %and.i.i = and i32 %6, -131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 -465567744, i32 %and.i.i)
  %cmp.i16.not.i = icmp eq i32 %and.i.i, -465567744
  br i1 %cmp.i16.not.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul.i = shl i32 %core_id, 2
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i, i32 %mul.i
  br label %cpu_boot_reg.exit

if.else.i:                                        ; preds = %if.end.i
  %and.i17.i = and i32 %6, -4096
  %7 = zext i32 %and.i17.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %and.i17.i, label %if.else.i.cpu_boot_reg.exit_crit_edge [
    i32 -448659456, label %if.else.i.if.then9.i_crit_edge
    i32 -448651264, label %if.else.i.if.then9.i_crit_edge26
  ]

if.else.i.if.then9.i_crit_edge26:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9.i

if.else.i.if.then9.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9.i

if.else.i.cpu_boot_reg.exit_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_boot_reg.exit

if.then9.i:                                       ; preds = %if.else.i.if.then9.i_crit_edge, %if.else.i.if.then9.i_crit_edge26
  %add.ptr10.i = getelementptr i8, ptr %retval.0.i.i, i32 4
  br label %cpu_boot_reg.exit

cpu_boot_reg.exit:                                ; preds = %if.then9.i, %if.else.i.cpu_boot_reg.exit_crit_edge, %if.then4.i
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then4.i ], [ %add.ptr10.i, %if.then9.i ], [ %retval.0.i.i, %if.else.i.cpu_boot_reg.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cpu_boot_reg.exit.if.then7_crit_edge, label %if.end9

cpu_boot_reg.exit.if.then7_crit_edge:             ; preds = %cpu_boot_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

if.then7:                                         ; preds = %cpu_boot_reg.exit.if.then7_crit_edge, %cpu_boot_reg_base.exit.i.if.then7_crit_edge
  %retval.0.i25 = phi ptr [ %retval.0.i, %cpu_boot_reg.exit.if.then7_crit_edge ], [ inttoptr (i32 -19 to ptr), %cpu_boot_reg_base.exit.i.if.then7_crit_edge ]
  %8 = ptrtoint ptr %retval.0.i25 to i32
  br label %cleanup12

if.end9:                                          ; preds = %cpu_boot_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %retval.0.i) #5, !srcloc !36
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %boot_addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %boot_addr, align 4
  br label %cleanup12

cleanup12:                                        ; preds = %if.end9, %if.then7, %cond.end.cleanup12_crit_edge
  %ret.1 = phi i32 [ %call, %cond.end.cleanup12_crit_edge ], [ %8, %if.then7 ], [ 0, %if.end9 ]
  ret i32 %ret.1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exynos_smp_prepare_cpus(i32 noundef %max_cpus) #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @exynos_sysram_init() #5
  tail call void @exynos_set_delayed_reset_assertion(i1 noundef zeroext true) #5
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #8, !srcloc !39
  %and.i = and i32 %0, -16711696
  call void @__sanitizer_cov_trace_const_cmp4(i32 1090568336, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 1090568336
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @exynos_scu_enable()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_secondary_init(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  store volatile i32 -1, ptr @exynos_pen_release, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %0(ptr noundef nonnull @exynos_pen_release, i32 noundef 4) #5
  %call.i.i = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr @exynos_pen_release to i32)) #5
  %call1.i.i = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr getelementptr inbounds (i32, ptr @exynos_pen_release, i32 1) to i32)) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.exynos_write_pen_release.exit_crit_edge, label %if.then.i.i.i

entry.exynos_write_pen_release.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exynos_write_pen_release.exit

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1(i32 noundef %call.i.i, i32 noundef %call1.i.i) #5
  br label %exynos_write_pen_release.exit

exynos_write_pen_release.exit:                    ; preds = %if.then.i.i.i, %entry.exynos_write_pen_release.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @boot_lock) #5
  tail call void @_raw_spin_unlock(ptr noundef nonnull @boot_lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_boot_secondary(i32 noundef %cpu, ptr nocapture noundef readnone %idle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and = and i32 %1, 255
  tail call void @_raw_spin_lock(ptr noundef nonnull @boot_lock) #5
  store volatile i32 %and, ptr @exynos_pen_release, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %2(ptr noundef nonnull @exynos_pen_release, i32 noundef 4) #5
  %call.i.i = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr @exynos_pen_release to i32)) #5
  %call1.i.i = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr getelementptr inbounds (i32, ptr @exynos_pen_release, i32 1) to i32)) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i, label %entry.exynos_write_pen_release.exit_crit_edge, label %if.then.i.i.i

entry.exynos_write_pen_release.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exynos_write_pen_release.exit

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %3(i32 noundef %call.i.i, i32 noundef %call1.i.i) #5
  br label %exynos_write_pen_release.exit

exynos_write_pen_release.exit:                    ; preds = %if.then.i.i.i, %entry.exynos_write_pen_release.exit_crit_edge
  %mul.i = shl nuw nsw i32 %and, 7
  %add1.i = add nuw nsw i32 %mul.i, 8196
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %4 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %add1.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !36
  %6 = and i32 %5, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then, label %exynos_write_pen_release.exit.if.end8_crit_edge

exynos_write_pen_release.exit.if.end8_crit_edge:  ; preds = %exynos_write_pen_release.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then:                                          ; preds = %exynos_write_pen_release.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @exynos_cpu_id to i32))
  %7 = load i32, ptr @exynos_cpu_id, align 4
  %and.i.i = and i32 %7, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -481878016, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, -481878016
  %spec.select.i = select i1 %cmp.i.not.i, i32 -2147483645, i32 3
  %add.i = add nuw nsw i32 %mul.i, 8192
  %8 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %9 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.i62 = getelementptr i8, ptr %9, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i62, i32 %8) #5, !srcloc !37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %10 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.i6580 = getelementptr i8, ptr %10, i32 %add1.i
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i6580) #5, !srcloc !36
  %12 = and i32 %11, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %12)
  %cmp.not81 = icmp eq i32 %12, 50331648
  br i1 %cmp.not81, label %if.then.if.end8_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  br label %if.end

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.end:                                           ; preds = %if.end.if.end_crit_edge, %if.then.if.end_crit_edge
  %timeout.082 = phi i32 [ %dec, %if.end.if.end_crit_edge ], [ 10, %if.then.if.end_crit_edge ]
  %dec = add nsw i32 %timeout.082, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %14 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.i65 = getelementptr i8, ptr %14, i32 %add1.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i65) #5, !srcloc !36
  %16 = and i32 %15, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %16)
  %cmp.not = icmp eq i32 %16, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp2 = icmp eq i32 %dec, 0
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp2
  br i1 %or.cond, label %while.end, label %if.end.if.end_crit_edge

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

while.end:                                        ; preds = %if.end
  br i1 %cmp2, label %do.end, label %while.end.if.end8_crit_edge

while.end.if.end8_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #9
  tail call void @_raw_spin_unlock(ptr noundef nonnull @boot_lock) #5
  br label %cleanup45

if.end8:                                          ; preds = %while.end.if.end8_crit_edge, %if.then.if.end8_crit_edge, %exynos_write_pen_release.exit.if.end8_crit_edge
  tail call void @exynos_core_restart(i32 noundef %and)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -100, %17
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub83 = add i32 %add.neg, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub83)
  %cmp1084 = icmp slt i32 %sub83, 0
  br i1 %cmp1084, label %while.body11.lr.ph, label %if.end8.while.end36_crit_edge

if.end8.while.end36_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end36

while.body11.lr.ph:                               ; preds = %if.end8
  %mul.i.i = shl nuw nsw i32 %and, 2
  %rem.i = and i32 %cpu, 31
  %add.i70 = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i70
  %div3.i = lshr i32 %cpu, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  br label %while.body11

while.body11:                                     ; preds = %cleanup.while.body11_crit_edge, %while.body11.lr.ph
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !41
  %call20 = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @exynos4_secondary_startup to i32)) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @firmware_ops to i32))
  %19 = load ptr, ptr @firmware_ops, align 4
  %set_cpu_boot_addr.i = getelementptr inbounds %struct.firmware_ops, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %set_cpu_boot_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_cpu_boot_addr.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %while.body11.if.then4.i_crit_edge, label %cond.end.i

while.body11.if.then4.i_crit_edge:                ; preds = %while.body11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4.i

cond.end.i:                                       ; preds = %while.body11
  %call.i = tail call i32 %21(i32 noundef %and, i32 noundef %call20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call.i)
  %cond19.i = icmp eq i32 %call.i, -38
  br i1 %cond19.i, label %cond.end.i.if.then4.i_crit_edge, label %cond.end.i.exynos_set_boot_addr.exit_crit_edge

cond.end.i.exynos_set_boot_addr.exit_crit_edge:   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exynos_set_boot_addr.exit

cond.end.i.if.then4.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4.i

if.then4.i:                                       ; preds = %cond.end.i.if.then4.i_crit_edge, %while.body11.if.then4.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @exynos_cpu_id to i32))
  %22 = load i32, ptr @exynos_cpu_id, align 4
  %and.i.i.i.i = and i32 %22, -131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 1126170624, i32 %and.i.i.i.i)
  %cmp.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 1126170624
  br i1 %cmp.i.not.i.i.i, label %land.lhs.true.i.i.i, label %if.then4.i.if.end.i.i.i_crit_edge

if.then4.i.if.end.i.i.i_crit_edge:                ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then4.i
  %call1.i.i.i = tail call i32 @exynos_rev() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %call1.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call1.i.i.i, 17
  br i1 %cmp.i.i.i, label %if.then.i.i.i67, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i

if.then.i.i.i67:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %23 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 2068
  br label %cpu_boot_reg_base.exit.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then4.i.if.end.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysram_base_addr to i32))
  %24 = load ptr, ptr @sysram_base_addr, align 4
  br label %cpu_boot_reg_base.exit.i.i

cpu_boot_reg_base.exit.i.i:                       ; preds = %if.end.i.i.i, %if.then.i.i.i67
  %retval.0.i.i.i = phi ptr [ %add.ptr.i.i.i, %if.then.i.i.i67 ], [ %24, %if.end.i.i.i ]
  %tobool.not.i.i = icmp eq ptr %retval.0.i.i.i, null
  br i1 %tobool.not.i.i, label %cpu_boot_reg_base.exit.i.i.if.then7.i_crit_edge, label %if.end.i.i

cpu_boot_reg_base.exit.i.i.if.then7.i_crit_edge:  ; preds = %cpu_boot_reg_base.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i

if.end.i.i:                                       ; preds = %cpu_boot_reg_base.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @exynos_cpu_id to i32))
  %25 = load i32, ptr @exynos_cpu_id, align 4
  %and.i.i.i = and i32 %25, -131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 -465567744, i32 %and.i.i.i)
  %cmp.i16.not.i.i = icmp eq i32 %and.i.i.i, -465567744
  br i1 %cmp.i16.not.i.i, label %if.then4.i.i, label %if.else.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i68 = getelementptr i8, ptr %retval.0.i.i.i, i32 %mul.i.i
  br label %cpu_boot_reg.exit.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %and.i17.i.i = and i32 %25, -4096
  %26 = zext i32 %and.i17.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %and.i17.i.i, label %if.else.i.i.cpu_boot_reg.exit.i_crit_edge [
    i32 -448659456, label %if.else.i.i.if.then9.i.i_crit_edge
    i32 -448651264, label %if.else.i.i.if.then9.i.i_crit_edge87
  ]

if.else.i.i.if.then9.i.i_crit_edge87:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9.i.i

if.else.i.i.if.then9.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9.i.i

if.else.i.i.cpu_boot_reg.exit.i_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_boot_reg.exit.i

if.then9.i.i:                                     ; preds = %if.else.i.i.if.then9.i.i_crit_edge, %if.else.i.i.if.then9.i.i_crit_edge87
  %add.ptr10.i.i = getelementptr i8, ptr %retval.0.i.i.i, i32 4
  br label %cpu_boot_reg.exit.i

cpu_boot_reg.exit.i:                              ; preds = %if.then9.i.i, %if.else.i.i.cpu_boot_reg.exit.i_crit_edge, %if.then4.i.i
  %retval.0.i.i = phi ptr [ %add.ptr.i.i68, %if.then4.i.i ], [ %add.ptr10.i.i, %if.then9.i.i ], [ %retval.0.i.i.i, %if.else.i.i.cpu_boot_reg.exit.i_crit_edge ]
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %cpu_boot_reg.exit.i.if.then7.i_crit_edge, label %exynos_set_boot_addr.exit.thread

cpu_boot_reg.exit.i.if.then7.i_crit_edge:         ; preds = %cpu_boot_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i

if.then7.i:                                       ; preds = %cpu_boot_reg.exit.i.if.then7.i_crit_edge, %cpu_boot_reg_base.exit.i.i.if.then7.i_crit_edge
  %retval.0.i24.i = phi ptr [ %retval.0.i.i, %cpu_boot_reg.exit.i.if.then7.i_crit_edge ], [ inttoptr (i32 -19 to ptr), %cpu_boot_reg_base.exit.i.i.if.then7.i_crit_edge ]
  %27 = ptrtoint ptr %retval.0.i24.i to i32
  br label %exynos_set_boot_addr.exit

exynos_set_boot_addr.exit.thread:                 ; preds = %cpu_boot_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %28 = tail call i32 @llvm.bswap.i32(i32 %call20) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %retval.0.i.i, i32 %28) #5, !srcloc !37
  br label %if.end24

exynos_set_boot_addr.exit:                        ; preds = %if.then7.i, %cond.end.i.exynos_set_boot_addr.exit_crit_edge
  %ret.1.i = phi i32 [ %call.i, %cond.end.i.exynos_set_boot_addr.exit_crit_edge ], [ %27, %if.then7.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool22.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool22.not, label %exynos_set_boot_addr.exit.if.end24_crit_edge, label %exynos_set_boot_addr.exit.fail_crit_edge

exynos_set_boot_addr.exit.fail_crit_edge:         ; preds = %exynos_set_boot_addr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

exynos_set_boot_addr.exit.if.end24_crit_edge:     ; preds = %exynos_set_boot_addr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.end24:                                         ; preds = %exynos_set_boot_addr.exit.if.end24_crit_edge, %exynos_set_boot_addr.exit.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @firmware_ops to i32))
  %29 = load ptr, ptr @firmware_ops, align 4
  %cpu_boot = getelementptr inbounds %struct.firmware_ops, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %cpu_boot to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cpu_boot, align 4
  %tobool25.not = icmp eq ptr %31, null
  br i1 %tobool25.not, label %if.end24.cond.end_crit_edge, label %cond.true

if.end24.cond.end_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %call27 = tail call i32 %31(i32 noundef %and) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end24.cond.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @exynos_cpu_id to i32))
  %32 = load i32, ptr @exynos_cpu_id, align 4
  %and.i69 = and i32 %32, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -481878016, i32 %and.i69)
  %cmp.i.not = icmp eq i32 %and.i69, -481878016
  br i1 %cmp.i.not, label %if.then30, label %if.else

if.then30:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !43
  br label %if.end32

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @arch_send_wakeup_ipi_mask(ptr noundef %add.ptr.i) #5
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then30
  %33 = load volatile i32, ptr @exynos_pen_release, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp33 = icmp eq i32 %33, -1
  br i1 %cmp33, label %if.end32.while.end36_crit_edge, label %cleanup

if.end32.while.end36_crit_edge:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end36

cleanup:                                          ; preds = %if.end32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 2147480) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %35
  %cmp10 = icmp slt i32 %sub, 0
  br i1 %cmp10, label %cleanup.while.body11_crit_edge, label %cleanup.while.end36_crit_edge

cleanup.while.end36_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end36

cleanup.while.body11_crit_edge:                   ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body11

while.end36:                                      ; preds = %cleanup.while.end36_crit_edge, %if.end32.while.end36_crit_edge, %if.end8.while.end36_crit_edge
  %ret.1 = phi i32 [ -38, %if.end8.while.end36_crit_edge ], [ 0, %if.end32.while.end36_crit_edge ], [ 0, %cleanup.while.end36_crit_edge ]
  %36 = load volatile i32, ptr @exynos_pen_release, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp37.not = icmp eq i32 %36, -1
  %spec.select = select i1 %cmp37.not, i32 %ret.1, i32 -110
  br label %fail

fail:                                             ; preds = %while.end36, %exynos_set_boot_addr.exit.fail_crit_edge
  %ret.2 = phi i32 [ %spec.select, %while.end36 ], [ %ret.1.i, %exynos_set_boot_addr.exit.fail_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @boot_lock) #5
  %37 = load volatile i32, ptr @exynos_pen_release, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp40.not = icmp eq i32 %37, -1
  %spec.select60 = select i1 %cmp40.not, i32 0, i32 %ret.2
  br label %cleanup45

cleanup45:                                        ; preds = %fail, %do.end
  %retval.0 = phi i32 [ %spec.select60, %fail ], [ -110, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_cpu_die(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect ".arch\09armv7-a \0A\09stmfd\09sp!, {fp, ip} \0A\09mrc\09p15, 0, r0, c1, c0, 0\09@ get SCTLR \0A\09bic\09r0, r0, #(1 << 2) \0A\09mcr\09p15, 0, r0, c1, c0, 0\09@ set SCTLR \0A\09isb\09\0A\09bl\09v7_flush_dcache_louis \0A\09mrc\09p15, 0, r0, c1, c0, 1\09@ get ACTLR \0A\09bic\09r0, r0, #(1 << 6)\09@ disable local coherency \0A\09mcr\09p15, 0, r0, c1, c0, 1\09@ set ACTLR \0A\09isb\09\0A\09dsb\09\0A\09ldmfd\09sp!, {fp, ip}", "~{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r9},~{r10},~{lr},~{memory}"() #5, !srcloc !44
  %arrayidx.i = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.i = icmp eq i32 %and.i, 0
  %mul.i.i = shl nuw nsw i32 %and.i, 7
  %add.i.i = add nuw nsw i32 %mul.i.i, 8192
  br label %for.cond.i

for.cond.i:                                       ; preds = %exynos_cpu_power_down.exit.i.for.cond.i_crit_edge, %entry
  %spurious.0 = phi i32 [ 0, %entry ], [ %inc.i, %exynos_cpu_power_down.exit.i.for.cond.i_crit_edge ]
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %for.cond.i.if.end6.i.i_crit_edge

for.cond.i.if.end6.i.i_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i.i

land.lhs.true.i.i:                                ; preds = %for.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @exynos_cpu_id to i32))
  %2 = load i32, ptr @exynos_cpu_id, align 4
  %and.i.i.i = and i32 %2, -4096
  %3 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %and.i.i.i, label %land.lhs.true.i.i.if.end6.i.i_crit_edge [
    i32 -448659456, label %land.lhs.true.i.i.if.then.i.i_crit_edge
    i32 -448651264, label %land.lhs.true.i.i.if.then.i.i_crit_edge4
  ]

land.lhs.true.i.i.if.then.i.i_crit_edge4:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

land.lhs.true.i.i.if.then.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

land.lhs.true.i.i.if.end6.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i.if.then.i.i_crit_edge, %land.lhs.true.i.i.if.then.i.i_crit_edge4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %4 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 4096
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !36
  %6 = and i32 %5, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool4.not.i.i, label %if.then.i.i.exynos_cpu_power_down.exit.i_crit_edge, label %if.then.i.i.if.end6.i.i_crit_edge

if.then.i.i.if.end6.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i.i

if.then.i.i.exynos_cpu_power_down.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exynos_cpu_power_down.exit.i

if.end6.i.i:                                      ; preds = %if.then.i.i.if.end6.i.i_crit_edge, %land.lhs.true.i.i.if.end6.i.i_crit_edge, %for.cond.i.if.end6.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %7 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i20.i.i = getelementptr i8, ptr %7, i32 %add.i.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i.i) #5, !srcloc !36
  %9 = and i32 %8, -50331649
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %10 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i21.i.i = getelementptr i8, ptr %10, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i.i, i32 %9) #5, !srcloc !37
  br label %exynos_cpu_power_down.exit.i

exynos_cpu_power_down.exit.i:                     ; preds = %if.end6.i.i, %if.then.i.i.exynos_cpu_power_down.exit.i_crit_edge
  tail call void asm sideeffect "wfi", "~{memory}"() #5, !srcloc !45
  %11 = load volatile i32, ptr @exynos_pen_release, align 4
  %cmp.i = icmp eq i32 %11, %and.i
  %inc.i = add i32 %spurious.0, 1
  br i1 %cmp.i, label %platform_do_lowpower.exit, label %exynos_cpu_power_down.exit.i.for.cond.i_crit_edge

exynos_cpu_power_down.exit.i.for.cond.i_crit_edge: ; preds = %exynos_cpu_power_down.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

platform_do_lowpower.exit:                        ; preds = %exynos_cpu_power_down.exit.i
  %12 = tail call i32 asm sideeffect "mrc\09p15, 0, $0, c1, c0, 0\0A\09orr\09$0, $0, $1\0A\09mcr\09p15, 0, $0, c1, c0, 0\0A\09mrc\09p15, 0, $0, c1, c0, 1\0A\09orr\09$0, $0, $2\0A\09mcr\09p15, 0, $0, c1, c0, 1\0A", "=&r,Ir,Ir,~{cc}"(i32 4, i32 64) #5, !srcloc !46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spurious.0)
  %tobool.not = icmp eq i32 %spurious.0, 0
  br i1 %tobool.not, label %platform_do_lowpower.exit.if.end_crit_edge, label %do.end

platform_do_lowpower.exit.if.end_crit_edge:       ; preds = %platform_do_lowpower.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %platform_do_lowpower.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %cpu, i32 noundef %spurious.0) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %platform_do_lowpower.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_rev() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_sysram_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_set_delayed_reset_assertion(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phys_addr_symbol(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos4_secondary_startup() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_send_wakeup_ipi_mask(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !17, !19, !20, !21, !22, !24, !25, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @exynos_pen_release, !1, !"exynos_pen_release", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-exynos/platsmp.c", i32 30, i32 14}
!2 = !{ptr @exynos_scu_enable.scu_base, !3, !"scu_base", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-exynos/platsmp.c", i32 171, i32 23}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-exynos/platsmp.c", i32 174, i32 44}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-exynos/platsmp.c", i32 224, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @exynos_core_restart._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @exynos_core_restart._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @exynos_smp_ops, !13, !"exynos_smp_ops", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-exynos/platsmp.c", i32 443, i32 29}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-exynos/platsmp.c", i32 250, i32 8}
!16 = !{ptr @boot_lock, !15, !"boot_lock", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../arch/arm/mach-exynos/platsmp.c", i32 354, i32 4}
!19 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @exynos_boot_secondary._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @exynos_boot_secondary._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-exynos/platsmp.c", i32 439, i32 3}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @exynos_cpu_die._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @exynos_cpu_die._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i64 2984492}
!37 = !{i64 2984074}
!38 = !{i64 6499065}
!39 = !{i64 2153976950}
!40 = !{i64 2154000837}
!41 = !{i64 2154005576}
!42 = !{i64 2149475943}
!43 = !{i64 2149476042, i64 2149476069, i64 2149476116, i64 2149476138, i64 2149476166, i64 2149476186}
!44 = !{i64 2154006956, i64 2154006973, i64 2154007003, i64 2154007051, i64 2154007094, i64 2154007142, i64 2154007156, i64 2154007206, i64 2154007254, i64 2154007312, i64 2154007360, i64 2154007374, i64 2154007388}
!45 = !{i64 2153996742}
!46 = !{i64 878, i64 910, i64 931, i64 963, i64 995, i64 1016}
