; ModuleID = '/llk/IR_all_yes/drivers/net/mdio/mdio-cavium.c_pt.bc'
source_filename = "../drivers/net/mdio/mdio-cavium.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cavium_mdiobus_read\22, \22a\22\09"
module asm "\09.weak\09__crc_cavium_mdiobus_read\09\09\09\09"
module asm "\09.long\09__crc_cavium_mdiobus_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cavium_mdiobus_read:\09\09\09\09\09"
module asm "\09.asciz \09\22cavium_mdiobus_read\22\09\09\09\09\09"
module asm "__kstrtabns_cavium_mdiobus_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cavium_mdiobus_write\22, \22a\22\09"
module asm "\09.weak\09__crc_cavium_mdiobus_write\09\09\09\09"
module asm "\09.long\09__crc_cavium_mdiobus_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cavium_mdiobus_write:\09\09\09\09\09"
module asm "\09.asciz \09\22cavium_mdiobus_write\22\09\09\09\09\09"
module asm "__kstrtabns_cavium_mdiobus_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cavium_mdiobus = type { ptr, ptr, i32 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__kstrtab_cavium_mdiobus_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_cavium_mdiobus_read = external dso_local constant [0 x i8], align 1
@__ksymtab_cavium_mdiobus_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cavium_mdiobus_read to i32), ptr @__kstrtab_cavium_mdiobus_read, ptr @__kstrtabns_cavium_mdiobus_read }, section "___ksymtab+cavium_mdiobus_read", align 4
@__kstrtab_cavium_mdiobus_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_cavium_mdiobus_write = external dso_local constant [0 x i8], align 1
@__ksymtab_cavium_mdiobus_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cavium_mdiobus_write to i32), ptr @__kstrtab_cavium_mdiobus_write, ptr @__kstrtabns_cavium_mdiobus_write }, section "___ksymtab+cavium_mdiobus_write", align 4
@__UNIQUE_ID_description281 = internal constant [76 x i8] c"mdio_cavium.description=Common code for OCTEON and Thunder MDIO bus drivers\00", section ".modinfo", align 1
@__UNIQUE_ID_author282 = internal constant [31 x i8] c"mdio_cavium.author=David Daney\00", section ".modinfo", align 1
@__UNIQUE_ID_file283 = internal constant [46 x i8] c"mdio_cavium.file=drivers/net/mdio/mdio-cavium\00", section ".modinfo", align 1
@__UNIQUE_ID_license284 = internal constant [27 x i8] c"mdio_cavium.license=GPL v2\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author282, ptr @__UNIQUE_ID_description281, ptr @__UNIQUE_ID_file283, ptr @__UNIQUE_ID_license284, ptr @__ksymtab_cavium_mdiobus_read, ptr @__ksymtab_cavium_mdiobus_write], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cavium_mdiobus_read(ptr nocapture noundef readonly %bus, i32 noundef %phy_id, i32 noundef %regnum) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %and = and i32 %regnum, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @cavium_mdiobus_c45_addr(ptr noundef %1, i32 noundef %phy_id, i32 noundef %regnum)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %2 = lshr i32 %regnum, 16
  %and2 = and i32 %2, 31
  br i1 %cmp, label %if.then.cleanup32_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3

if.then.cleanup32_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup32

if.else:                                          ; preds = %entry
  %mode.i = getelementptr inbounds %struct.cavium_mdiobus, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i = icmp eq i32 %4, 1
  br i1 %cmp.i, label %if.else.if.end3_crit_edge, label %if.end.i

if.else.if.end3_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %register_base.i = getelementptr inbounds %struct.cavium_mdiobus, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %register_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %register_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 24
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 28
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #3, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  %9 = zext i32 %8 to i64
  %10 = zext i32 %7 to i64
  %11 = shl nuw i64 %10, 32
  %.masked.i = and i64 %11, -4503608217305088
  %12 = or i64 %.masked.i, %9
  %13 = tail call i64 @llvm.bswap.i64(i64 %12) #3
  %14 = ptrtoint ptr %register_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %register_base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %15, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %16 = trunc i64 %13 to i32
  %conv.i.i = or i32 %16, 4096
  %17 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %17) #3, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  tail call void @arm_heavy_mb() #3
  %shr.i.i = lshr i64 %13, 32
  %conv3.i.i = trunc i64 %shr.i.i to i32
  %18 = tail call i32 @llvm.bswap.i32(i32 %conv3.i.i) #3
  %add.ptr.i15.i = getelementptr i8, ptr %15, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %18) #3, !srcloc !24
  %19 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %mode.i, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.end.i, %if.else.if.end3_crit_edge, %if.then.if.end3_crit_edge
  %regnum.addr.1 = phi i32 [ %and2, %if.then.if.end3_crit_edge ], [ %regnum, %if.else.if.end3_crit_edge ], [ %regnum, %if.end.i ]
  %op.1 = phi i32 [ 196608, %if.then.if.end3_crit_edge ], [ 65536, %if.else.if.end3_crit_edge ], [ 65536, %if.end.i ]
  %20 = shl i32 %phy_id, 8
  %21 = and i32 %20, 7936
  %bf.set951 = or i32 %op.1, %21
  %22 = and i32 %regnum.addr.1, 31
  %bf.set1453 = or i32 %bf.set951, %22
  %register_base = getelementptr inbounds %struct.cavium_mdiobus, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %register_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %register_base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %25 = tail call i32 @llvm.bswap.i32(i32 %bf.set1453) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %25) #3, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  tail call void @arm_heavy_mb() #3
  %add.ptr.i54 = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 0) #3, !srcloc !24
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end3
  %timeout.0 = phi i32 [ 1000, %if.end3 ], [ %dec, %do.body.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arm_delay_ops to i32))
  %26 = load ptr, ptr @arm_delay_ops, align 4
  tail call void %26(i32 noundef 1000) #3
  %27 = ptrtoint ptr %register_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %register_base, align 4
  %add.ptr16 = getelementptr i8, ptr %28, i32 16
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #3, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  %add.ptr.i55 = getelementptr i8, ptr %28, i32 20
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #3, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  %31 = call i32 @llvm.bswap.i32(i32 %29)
  %32 = zext i32 %31 to i64
  %33 = and i64 %32, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %tobool21.not = icmp eq i64 %33, 0
  %dec = add nsw i32 %timeout.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool22.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool21.not, i1 true, i1 %tobool22.not
  br i1 %or.cond, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %34 = and i64 %32, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %34)
  %tobool26.not = icmp eq i64 %34, 0
  %conv30 = and i32 %31, 65535
  %spec.select = select i1 %tobool26.not, i32 -5, i32 %conv30
  br label %cleanup32

cleanup32:                                        ; preds = %do.end, %if.then.cleanup32_crit_edge
  %retval.1 = phi i32 [ %call, %if.then.cleanup32_crit_edge ], [ %spec.select, %do.end ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cavium_mdiobus_c45_addr(ptr nocapture noundef %p, i32 noundef %phy_id, i32 noundef %regnum) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mode.i = getelementptr inbounds %struct.cavium_mdiobus, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %entry.cavium_mdiobus_set_mode.exit_crit_edge, label %if.end.i

entry.cavium_mdiobus_set_mode.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cavium_mdiobus_set_mode.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %register_base.i = getelementptr inbounds %struct.cavium_mdiobus, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %register_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %register_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 28
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #3, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  %6 = zext i32 %5 to i64
  %7 = zext i32 %4 to i64
  %8 = shl nuw i64 %7, 32
  %.masked.i = and i64 %8, -4503608217305088
  %9 = or i64 %.masked.i, %6
  %10 = tail call i64 @llvm.bswap.i64(i64 %9) #3
  %11 = ptrtoint ptr %register_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %register_base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %12, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %13 = trunc i64 %10 to i32
  %conv.i.i = or i32 %13, 16781312
  %14 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %14) #3, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  tail call void @arm_heavy_mb() #3
  %shr.i.i = lshr i64 %10, 32
  %conv3.i.i = trunc i64 %shr.i.i to i32
  %15 = tail call i32 @llvm.bswap.i32(i32 %conv3.i.i) #3
  %add.ptr.i15.i = getelementptr i8, ptr %12, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %15) #3, !srcloc !24
  %16 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %mode.i, align 4
  br label %cavium_mdiobus_set_mode.exit

cavium_mdiobus_set_mode.exit:                     ; preds = %if.end.i, %entry.cavium_mdiobus_set_mode.exit_crit_edge
  %17 = and i32 %regnum, 65535
  %register_base = getelementptr inbounds %struct.cavium_mdiobus, ptr %p, i32 0, i32 1
  %18 = ptrtoint ptr %register_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %register_base, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %20 = tail call i32 @llvm.bswap.i32(i32 %17) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %20) #3, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  tail call void @arm_heavy_mb() #3
  %add.ptr.i39 = getelementptr i8, ptr %19, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 0) #3, !srcloc !24
  %21 = lshr i32 %regnum, 16
  %22 = shl i32 %phy_id, 8
  %23 = and i32 %22, 7936
  %24 = and i32 %21, 31
  %bf.set1438 = or i32 %24, %23
  %25 = ptrtoint ptr %register_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %register_base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %27 = tail call i32 @llvm.bswap.i32(i32 %bf.set1438) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %27) #3, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  tail call void @arm_heavy_mb() #3
  %add.ptr.i42 = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 0) #3, !srcloc !24
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %cavium_mdiobus_set_mode.exit
  %timeout.0 = phi i32 [ 1000, %cavium_mdiobus_set_mode.exit ], [ %dec, %land.rhs.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arm_delay_ops to i32))
  %28 = load ptr, ptr @arm_delay_ops, align 4
  tail call void %28(i32 noundef 1000) #3
  %29 = ptrtoint ptr %register_base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %register_base, align 4
  %add.ptr18 = getelementptr i8, ptr %30, i32 8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #3, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  %add.ptr.i43 = getelementptr i8, ptr %30, i32 12
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43) #3, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  %33 = and i32 %31, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not = icmp eq i32 %33, 0
  br i1 %tobool.not, label %do.end, label %land.rhs

land.rhs:                                         ; preds = %do.body
  %dec = add nsw i32 %timeout.0, -1
  %tobool22.not = icmp eq i32 %dec, 0
  br i1 %tobool22.not, label %land.rhs.do.end.thread_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

land.rhs.do.end.thread_crit_edge:                 ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.thread

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %timeout.0)
  %cmp = icmp slt i32 %timeout.0, 1
  br i1 %cmp, label %do.end.do.end.thread_crit_edge, label %do.end._crit_edge

do.end._crit_edge:                                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %34

do.end.do.end.thread_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.thread

do.end.thread:                                    ; preds = %do.end.do.end.thread_crit_edge, %land.rhs.do.end.thread_crit_edge
  br label %34

34:                                               ; preds = %do.end.thread, %do.end._crit_edge
  %35 = phi i32 [ -5, %do.end.thread ], [ 0, %do.end._crit_edge ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cavium_mdiobus_write(ptr nocapture noundef readonly %bus, i32 noundef %phy_id, i32 noundef %regnum, i16 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %and = and i32 %regnum, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @cavium_mdiobus_c45_addr(ptr noundef %1, i32 noundef %phy_id, i32 noundef %regnum)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %2 = lshr i32 %regnum, 16
  %and2 = and i32 %2, 31
  br i1 %cmp, label %if.then.cleanup34_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3

if.then.cleanup34_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup34

if.else:                                          ; preds = %entry
  %mode.i = getelementptr inbounds %struct.cavium_mdiobus, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i = icmp eq i32 %4, 1
  br i1 %cmp.i, label %if.else.if.end3_crit_edge, label %if.end.i

if.else.if.end3_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %register_base.i = getelementptr inbounds %struct.cavium_mdiobus, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %register_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %register_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 24
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 28
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #3, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  %9 = zext i32 %8 to i64
  %10 = zext i32 %7 to i64
  %11 = shl nuw i64 %10, 32
  %.masked.i = and i64 %11, -4503608217305088
  %12 = or i64 %.masked.i, %9
  %13 = tail call i64 @llvm.bswap.i64(i64 %12) #3
  %14 = ptrtoint ptr %register_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %register_base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %15, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %16 = trunc i64 %13 to i32
  %conv.i.i = or i32 %16, 4096
  %17 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %17) #3, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  tail call void @arm_heavy_mb() #3
  %shr.i.i = lshr i64 %13, 32
  %conv3.i.i = trunc i64 %shr.i.i to i32
  %18 = tail call i32 @llvm.bswap.i32(i32 %conv3.i.i) #3
  %add.ptr.i15.i = getelementptr i8, ptr %15, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %18) #3, !srcloc !24
  %19 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %mode.i, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.end.i, %if.else.if.end3_crit_edge, %if.then.if.end3_crit_edge
  %regnum.addr.1 = phi i32 [ %and2, %if.then.if.end3_crit_edge ], [ %regnum, %if.else.if.end3_crit_edge ], [ %regnum, %if.end.i ]
  %op.1 = phi i32 [ 65536, %if.then.if.end3_crit_edge ], [ 0, %if.else.if.end3_crit_edge ], [ 0, %if.end.i ]
  %register_base = getelementptr inbounds %struct.cavium_mdiobus, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %register_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %register_base, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %conv.i = zext i16 %val to i32
  %22 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %22) #3, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  tail call void @arm_heavy_mb() #3
  %add.ptr.i58 = getelementptr i8, ptr %21, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 0) #3, !srcloc !24
  %23 = shl i32 %phy_id, 8
  %24 = and i32 %23, 7936
  %bf.set1455 = or i32 %op.1, %24
  %25 = and i32 %regnum.addr.1, 31
  %bf.set1957 = or i32 %bf.set1455, %25
  %26 = ptrtoint ptr %register_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %register_base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %28 = tail call i32 @llvm.bswap.i32(i32 %bf.set1957) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %28) #3, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  tail call void @arm_heavy_mb() #3
  %add.ptr.i61 = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 0) #3, !srcloc !24
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %if.end3
  %timeout.0 = phi i32 [ 1000, %if.end3 ], [ %dec, %land.rhs.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arm_delay_ops to i32))
  %29 = load ptr, ptr @arm_delay_ops, align 4
  tail call void %29(i32 noundef 1000) #3
  %30 = ptrtoint ptr %register_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %register_base, align 4
  %add.ptr23 = getelementptr i8, ptr %31, i32 8
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #3, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  %add.ptr.i62 = getelementptr i8, ptr %31, i32 12
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i62) #3, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  %34 = and i32 %32, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool28.not = icmp eq i32 %34, 0
  br i1 %tobool28.not, label %do.end, label %land.rhs

land.rhs:                                         ; preds = %do.body
  %dec = add nsw i32 %timeout.0, -1
  %tobool29.not = icmp eq i32 %dec, 0
  br i1 %tobool29.not, label %land.rhs.do.end.thread_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

land.rhs.do.end.thread_crit_edge:                 ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.thread

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %timeout.0)
  %cmp30 = icmp slt i32 %timeout.0, 1
  br i1 %cmp30, label %do.end.do.end.thread_crit_edge, label %do.end.cleanup34_crit_edge

do.end.cleanup34_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup34

do.end.do.end.thread_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.thread

do.end.thread:                                    ; preds = %do.end.do.end.thread_crit_edge, %land.rhs.do.end.thread_crit_edge
  br label %cleanup34

cleanup34:                                        ; preds = %do.end.thread, %do.end.cleanup34_crit_edge, %if.then.cleanup34_crit_edge
  %retval.1 = phi i32 [ %call, %if.then.cleanup34_crit_edge ], [ -5, %do.end.thread ], [ 0, %do.end.cleanup34_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @__ksymtab_cavium_mdiobus_read, !1, !"__ksymtab_cavium_mdiobus_read", i1 false, i1 false}
!1 = !{!"../drivers/net/mdio/mdio-cavium.c", i32 101, i32 1}
!2 = !{ptr @__ksymtab_cavium_mdiobus_write, !3, !"__ksymtab_cavium_mdiobus_write", i1 false, i1 false}
!3 = !{!"../drivers/net/mdio/mdio-cavium.c", i32 146, i32 1}
!4 = !{ptr @__UNIQUE_ID_description281, !5, !"__UNIQUE_ID_description281", i1 false, i1 false}
!5 = !{!"../drivers/net/mdio/mdio-cavium.c", i32 148, i32 1}
!6 = !{ptr @__UNIQUE_ID_author282, !7, !"__UNIQUE_ID_author282", i1 false, i1 false}
!7 = !{!"../drivers/net/mdio/mdio-cavium.c", i32 149, i32 1}
!8 = !{ptr @__UNIQUE_ID_file283, !9, !"__UNIQUE_ID_file283", i1 false, i1 false}
!9 = !{!"../drivers/net/mdio/mdio-cavium.c", i32 150, i32 1}
!10 = !{ptr @__UNIQUE_ID_license284, !9, !"__UNIQUE_ID_license284", i1 false, i1 false}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{i64 2977892}
!21 = !{i64 2155274819}
!22 = !{i64 2155275257}
!23 = !{i64 2155275627}
!24 = !{i64 2977474}
!25 = !{i64 2155276000}
