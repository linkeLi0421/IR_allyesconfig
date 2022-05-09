; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/freescale/enetc/enetc_mdio.c_pt.bc'
source_filename = "../drivers/net/ethernet/freescale/enetc/enetc_mdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+enetc_mdio_write\22, \22a\22\09"
module asm "\09.weak\09__crc_enetc_mdio_write\09\09\09\09"
module asm "\09.long\09__crc_enetc_mdio_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_enetc_mdio_write:\09\09\09\09\09"
module asm "\09.asciz \09\22enetc_mdio_write\22\09\09\09\09\09"
module asm "__kstrtabns_enetc_mdio_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+enetc_mdio_read\22, \22a\22\09"
module asm "\09.weak\09__crc_enetc_mdio_read\09\09\09\09"
module asm "\09.long\09__crc_enetc_mdio_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_enetc_mdio_read:\09\09\09\09\09"
module asm "\09.asciz \09\22enetc_mdio_read\22\09\09\09\09\09"
module asm "__kstrtabns_enetc_mdio_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+enetc_hw_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_enetc_hw_alloc\09\09\09\09"
module asm "\09.long\09__crc_enetc_hw_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_enetc_hw_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22enetc_hw_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_enetc_hw_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+enetc_mdio_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_enetc_mdio_lock\09\09\09\09"
module asm "\09.long\09__crc_enetc_mdio_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_enetc_mdio_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22enetc_mdio_lock\22\09\09\09\09\09"
module asm "__kstrtabns_enetc_mdio_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
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
%struct.enetc_hw = type { ptr, ptr, ptr }
%struct.enetc_mdio_priv = type { ptr, i32 }

@__kstrtab_enetc_mdio_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_enetc_mdio_write = external dso_local constant [0 x i8], align 1
@__ksymtab_enetc_mdio_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @enetc_mdio_write to i32), ptr @__kstrtab_enetc_mdio_write, ptr @__kstrtabns_enetc_mdio_write }, section "___ksymtab_gpl+enetc_mdio_write", align 4
@enetc_mdio_read.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl_enetc_mdio\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"enetc_mdio_read\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/freescale/enetc/enetc_mdio.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Error while reading PHY%d reg at %d.%hhu\0A\00", [54 x i8] zeroinitializer }, align 32
@__kstrtab_enetc_mdio_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_enetc_mdio_read = external dso_local constant [0 x i8], align 1
@__ksymtab_enetc_mdio_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @enetc_mdio_read to i32), ptr @__kstrtab_enetc_mdio_read, ptr @__kstrtabns_enetc_mdio_read }, section "___ksymtab_gpl+enetc_mdio_read", align 4
@__kstrtab_enetc_hw_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_enetc_hw_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_enetc_hw_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @enetc_hw_alloc to i32), ptr @__kstrtab_enetc_hw_alloc, ptr @__kstrtabns_enetc_hw_alloc }, section "___ksymtab_gpl+enetc_hw_alloc", align 4
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"enetc_mdio_lock\00", [16 x i8] zeroinitializer }, align 32
@enetc_mdio_lock = dso_local global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_enetc_mdio_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_enetc_mdio_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_enetc_mdio_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @enetc_mdio_lock to i32), ptr @__kstrtab_enetc_mdio_lock, ptr @__kstrtabns_enetc_mdio_lock }, section "___ksymtab_gpl+enetc_mdio_lock", align 4
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 149, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [16 x i8] c"enetc_mdio_lock\00", align 1
@___asan_gen_.21 = private constant [53 x i8] c"../drivers/net/ethernet/freescale/enetc/enetc_mdio.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 176, i32 1 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_enetc_hw_alloc, ptr @__ksymtab_enetc_mdio_lock, ptr @__ksymtab_enetc_mdio_read, ptr @__ksymtab_enetc_mdio_write, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @enetc_mdio_lock], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_mdio_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enetc_mdio_write(ptr nocapture noundef readonly %bus, i32 noundef %phy_id, i32 noundef %regnum, i16 noundef zeroext %value) #0 align 64 {
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
  %mdio_cfg.0 = select i1 %tobool.not, i32 8421640, i32 8421704
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %port.i = getelementptr inbounds %struct.enetc_hw, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port.i, align 4
  %mdio_base.i = getelementptr inbounds %struct.enetc_mdio_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %mdio_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mdio_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %7
  %call.i.i = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @enetc_mdio_lock) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  tail call void @arm_heavy_mb() #3
  %8 = tail call i32 @llvm.bswap.i32(i32 %mdio_cfg.0) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #3, !srcloc !27
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @enetc_mdio_lock, i32 noundef %call.i.i) #3
  %call = tail call fastcc i32 @enetc_mdio_wait_complete(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end7, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7:                                          ; preds = %entry
  %9 = lshr i32 %regnum, 16
  %dev_addr.0.in = select i1 %tobool.not, i32 %regnum, i32 %9
  %dev_addr.0 = and i32 %dev_addr.0.in, 31
  %and8 = shl i32 %phy_id, 5
  %shl = and i32 %and8, 992
  %or11 = or i32 %dev_addr.0, %shl
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %port.i47 = getelementptr inbounds %struct.enetc_hw, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %port.i47 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port.i47, align 4
  %14 = ptrtoint ptr %mdio_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mdio_base.i, align 4
  %add.i = add i32 %15, 4
  %add.ptr.i49 = getelementptr i8, ptr %13, i32 %add.i
  %call.i.i50 = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @enetc_mdio_lock) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  tail call void @arm_heavy_mb() #3
  %16 = tail call i32 @llvm.bswap.i32(i32 %or11) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %16) #3, !srcloc !27
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @enetc_mdio_lock, i32 noundef %call.i.i50) #3
  br i1 %tobool.not, label %if.end7.if.end20_crit_edge, label %if.then14

if.end7.if.end20_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

if.then14:                                        ; preds = %if.end7
  %and15 = and i32 %regnum, 65535
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %port.i51 = getelementptr inbounds %struct.enetc_hw, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %port.i51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %port.i51, align 4
  %21 = ptrtoint ptr %mdio_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mdio_base.i, align 4
  %add.i53 = add i32 %22, 12
  %add.ptr.i54 = getelementptr i8, ptr %20, i32 %add.i53
  %call.i.i55 = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @enetc_mdio_lock) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  tail call void @arm_heavy_mb() #3
  %23 = tail call i32 @llvm.bswap.i32(i32 %and15) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 %23) #3, !srcloc !27
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @enetc_mdio_lock, i32 noundef %call.i.i55) #3
  %call16 = tail call fastcc i32 @enetc_mdio_wait_complete(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then14.if.end20_crit_edge, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

if.end20:                                         ; preds = %if.then14.if.end20_crit_edge, %if.end7.if.end20_crit_edge
  %conv21 = zext i16 %value to i32
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %port.i56 = getelementptr inbounds %struct.enetc_hw, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %port.i56 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %port.i56, align 4
  %28 = ptrtoint ptr %mdio_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mdio_base.i, align 4
  %add.i58 = add i32 %29, 8
  %add.ptr.i59 = getelementptr i8, ptr %27, i32 %add.i58
  %call.i.i60 = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @enetc_mdio_lock) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  tail call void @arm_heavy_mb() #3
  %30 = tail call i32 @llvm.bswap.i32(i32 %conv21) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %30) #3, !srcloc !27
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @enetc_mdio_lock, i32 noundef %call.i.i60) #3
  %call22 = tail call fastcc i32 @enetc_mdio_wait_complete(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call16, %if.then14.cleanup_crit_edge ], [ %call22, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @enetc_mdio_wait_complete(ptr nocapture noundef readonly %mdio_priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #3
  %add.i = add i64 %call, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 55) #3
  %mdio_base.i.i = getelementptr inbounds %struct.enetc_mdio_priv, ptr %mdio_priv, i32 0, i32 1
  %0 = ptrtoint ptr %mdio_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_priv, align 4
  %port.i.i35 = getelementptr inbounds %struct.enetc_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port.i.i35 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i.i35, align 4
  %4 = ptrtoint ptr %mdio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio_base.i.i, align 4
  %add.ptr.i.i36 = getelementptr i8, ptr %3, i32 %5
  %call.i.i.i37 = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @enetc_mdio_lock) #3
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i36) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @enetc_mdio_lock, i32 noundef %call.i.i.i37) #3
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not38 = icmp eq i32 %7, 0
  br i1 %tobool.i.not38, label %entry.for.end_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

land.lhs.true:                                    ; preds = %if.then20.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call12 = tail call i64 @ktime_get() #3
  call void @__sanitizer_cov_trace_cmp8(i64 %call12, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call12, %add.i
  br i1 %cmp3.i, label %if.then15, label %if.then20

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %mdio_priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdio_priv, align 4
  %port.i.i29 = getelementptr inbounds %struct.enetc_hw, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %port.i.i29 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port.i.i29, align 4
  %12 = ptrtoint ptr %mdio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mdio_base.i.i, align 4
  %add.ptr.i.i31 = getelementptr i8, ptr %11, i32 %13
  %call.i.i.i32 = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @enetc_mdio_lock) #3
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i31) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @enetc_mdio_lock, i32 noundef %call.i.i.i32) #3
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i33.not = icmp eq i32 %15, 0
  %phi.sel = select i1 %tobool.i33.not, i32 0, i32 -110
  br label %for.end

if.then20:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #3
  %16 = ptrtoint ptr %mdio_priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mdio_priv, align 4
  %port.i.i = getelementptr inbounds %struct.enetc_hw, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %port.i.i, align 4
  %20 = ptrtoint ptr %mdio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mdio_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %21
  %call.i.i.i = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @enetc_mdio_lock) #3
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @enetc_mdio_lock, i32 noundef %call.i.i.i) #3
  %23 = and i32 %22, 16777216
  %tobool.i.not = icmp eq i32 %23, 0
  br i1 %tobool.i.not, label %if.then20.for.end_crit_edge, label %if.then20.land.lhs.true_crit_edge

if.then20.land.lhs.true_crit_edge:                ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true

if.then20.for.end_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %if.then20.for.end_crit_edge, %if.then15, %entry.for.end_crit_edge
  %is_busy.0.in = phi i32 [ %phi.sel, %if.then15 ], [ 0, %entry.for.end_crit_edge ], [ 0, %if.then20.for.end_crit_edge ]
  ret i32 %is_busy.0.in
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enetc_mdio_read(ptr noundef %bus, i32 noundef %phy_id, i32 noundef %regnum) #0 align 64 {
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
  %2 = lshr i32 %regnum, 16
  %mdio_cfg.0 = select i1 %tobool.not, i32 8421640, i32 8421704
  %dev_addr.0.in = select i1 %tobool.not, i32 %regnum, i32 %2
  %dev_addr.0 = and i32 %dev_addr.0.in, 31
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %port.i = getelementptr inbounds %struct.enetc_hw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port.i, align 4
  %mdio_base.i = getelementptr inbounds %struct.enetc_mdio_priv, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %mdio_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mdio_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %8
  %call.i.i = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @enetc_mdio_lock) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  tail call void @arm_heavy_mb() #3
  %9 = tail call i32 @llvm.bswap.i32(i32 %mdio_cfg.0) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #3, !srcloc !27
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @enetc_mdio_lock, i32 noundef %call.i.i) #3
  %call = tail call fastcc i32 @enetc_mdio_wait_complete(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end7, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7:                                          ; preds = %entry
  %and8 = shl i32 %phy_id, 5
  %shl = and i32 %and8, 992
  %or11 = or i32 %dev_addr.0, %shl
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %port.i71 = getelementptr inbounds %struct.enetc_hw, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %port.i71 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port.i71, align 4
  %14 = ptrtoint ptr %mdio_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mdio_base.i, align 4
  %add.i = add i32 %15, 4
  %add.ptr.i73 = getelementptr i8, ptr %13, i32 %add.i
  %call.i.i74 = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @enetc_mdio_lock) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  tail call void @arm_heavy_mb() #3
  %16 = tail call i32 @llvm.bswap.i32(i32 %or11) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73, i32 %16) #3, !srcloc !27
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @enetc_mdio_lock, i32 noundef %call.i.i74) #3
  br i1 %tobool.not, label %if.end7.if.end20_crit_edge, label %if.then14

if.end7.if.end20_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

if.then14:                                        ; preds = %if.end7
  %and15 = and i32 %regnum, 65535
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %port.i75 = getelementptr inbounds %struct.enetc_hw, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %port.i75 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %port.i75, align 4
  %21 = ptrtoint ptr %mdio_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mdio_base.i, align 4
  %add.i77 = add i32 %22, 12
  %add.ptr.i78 = getelementptr i8, ptr %20, i32 %add.i77
  %call.i.i79 = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @enetc_mdio_lock) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  tail call void @arm_heavy_mb() #3
  %23 = tail call i32 @llvm.bswap.i32(i32 %and15) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78, i32 %23) #3, !srcloc !27
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @enetc_mdio_lock, i32 noundef %call.i.i79) #3
  %call16 = tail call fastcc i32 @enetc_mdio_wait_complete(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then14.if.end20_crit_edge, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

if.end20:                                         ; preds = %if.then14.if.end20_crit_edge, %if.end7.if.end20_crit_edge
  %or21 = or i32 %or11, 32768
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %port.i80 = getelementptr inbounds %struct.enetc_hw, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %port.i80 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %port.i80, align 4
  %28 = ptrtoint ptr %mdio_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mdio_base.i, align 4
  %add.i82 = add i32 %29, 4
  %add.ptr.i83 = getelementptr i8, ptr %27, i32 %add.i82
  %call.i.i84 = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @enetc_mdio_lock) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  tail call void @arm_heavy_mb() #3
  %30 = tail call i32 @llvm.bswap.i32(i32 %or21) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 %30) #3, !srcloc !27
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @enetc_mdio_lock, i32 noundef %call.i.i84) #3
  %call22 = tail call fastcc i32 @enetc_mdio_wait_complete(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %port.i85 = getelementptr inbounds %struct.enetc_hw, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %port.i85 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %port.i85, align 4
  %35 = ptrtoint ptr %mdio_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mdio_base.i, align 4
  %add.ptr.i87 = getelementptr i8, ptr %34, i32 %36
  %call.i.i88 = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @enetc_mdio_lock) #3
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i87) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @enetc_mdio_lock, i32 noundef %call.i.i88) #3
  %38 = and i32 %37, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool28.not = icmp eq i32 %38, 0
  br i1 %tobool28.not, label %if.end37, label %do.body

do.body:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @enetc_mdio_read.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@enetc_mdio_read, %if.then34)) #3
          to label %cleanup [label %if.then34], !srcloc !30

if.then34:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %dev = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @enetc_mdio_read.__UNIQUE_ID_ddebug353, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %phy_id, i32 noundef %dev_addr.0, i32 noundef %regnum) #3
  br label %cleanup

if.end37:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %port.i89 = getelementptr inbounds %struct.enetc_hw, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %port.i89 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %port.i89, align 4
  %43 = ptrtoint ptr %mdio_base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mdio_base.i, align 4
  %add.i91 = add i32 %44, 8
  %add.ptr.i92 = getelementptr i8, ptr %42, i32 %add.i91
  %call.i.i93 = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @enetc_mdio_lock) #3
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @enetc_mdio_lock, i32 noundef %call.i.i93) #3
  %46 = and i32 %45, -65536
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then34, %do.body, %if.end20.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %47, %if.end37 ], [ %call, %entry.cleanup_crit_edge ], [ %call16, %if.then14.cleanup_crit_edge ], [ %call22, %if.end20.cleanup_crit_edge ], [ 65535, %if.then34 ], [ 65535, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @enetc_hw_alloc(ptr noundef %dev, ptr noundef %port_regs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %port = getelementptr inbounds %struct.enetc_hw, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %port_regs, ptr %port, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_write_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__ksymtab_enetc_mdio_write, !1, !"__ksymtab_enetc_mdio_write", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_mdio.c", i32 103, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_mdio.c", i32 149, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @enetc_mdio_read.__UNIQUE_ID_ddebug353, !3, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!8 = !{ptr @__ksymtab_enetc_mdio_read, !9, !"__ksymtab_enetc_mdio_read", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_mdio.c", i32 159, i32 1}
!10 = !{ptr @__ksymtab_enetc_hw_alloc, !11, !"__ksymtab_enetc_hw_alloc", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_mdio.c", i32 173, i32 1}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_mdio.c", i32 176, i32 1}
!14 = !{ptr @enetc_mdio_lock, !13, !"enetc_mdio_lock", i1 false, i1 false}
!15 = !{ptr @__ksymtab_enetc_mdio_lock, !16, !"__ksymtab_enetc_mdio_lock", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_mdio.c", i32 177, i32 1}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i64 2153778092}
!27 = !{i64 6235970}
!28 = !{i64 6236388}
!29 = !{i64 2153776737}
!30 = !{i64 2148366215, i64 2148366220, i64 2148366233, i64 2148366277, i64 2148366311, i64 2148366332}
