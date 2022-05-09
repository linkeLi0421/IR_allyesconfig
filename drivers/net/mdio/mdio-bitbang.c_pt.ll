; ModuleID = '/llk/IR_all_yes/drivers/net/mdio/mdio-bitbang.c_pt.bc'
source_filename = "../drivers/net/mdio/mdio-bitbang.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mdiobb_read\22, \22a\22\09"
module asm "\09.weak\09__crc_mdiobb_read\09\09\09\09"
module asm "\09.long\09__crc_mdiobb_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mdiobb_read:\09\09\09\09\09"
module asm "\09.asciz \09\22mdiobb_read\22\09\09\09\09\09"
module asm "__kstrtabns_mdiobb_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mdiobb_write\22, \22a\22\09"
module asm "\09.weak\09__crc_mdiobb_write\09\09\09\09"
module asm "\09.long\09__crc_mdiobb_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mdiobb_write:\09\09\09\09\09"
module asm "\09.asciz \09\22mdiobb_write\22\09\09\09\09\09"
module asm "__kstrtabns_mdiobb_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+alloc_mdio_bitbang\22, \22a\22\09"
module asm "\09.weak\09__crc_alloc_mdio_bitbang\09\09\09\09"
module asm "\09.long\09__crc_alloc_mdio_bitbang\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_mdio_bitbang:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_mdio_bitbang\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_mdio_bitbang:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+free_mdio_bitbang\22, \22a\22\09"
module asm "\09.weak\09__crc_free_mdio_bitbang\09\09\09\09"
module asm "\09.long\09__crc_free_mdio_bitbang\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_mdio_bitbang:\09\09\09\09\09"
module asm "\09.asciz \09\22free_mdio_bitbang\22\09\09\09\09\09"
module asm "__kstrtabns_free_mdio_bitbang:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.mdiobb_ctrl = type { ptr, i32, i8, i8 }
%struct.mdiobb_ops = type { ptr, ptr, ptr, ptr, ptr }

@__kstrtab_mdiobb_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_mdiobb_read = external dso_local constant [0 x i8], align 1
@__ksymtab_mdiobb_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mdiobb_read to i32), ptr @__kstrtab_mdiobb_read, ptr @__kstrtabns_mdiobb_read }, section "___ksymtab+mdiobb_read", align 4
@__kstrtab_mdiobb_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_mdiobb_write = external dso_local constant [0 x i8], align 1
@__ksymtab_mdiobb_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mdiobb_write to i32), ptr @__kstrtab_mdiobb_write, ptr @__kstrtabns_mdiobb_write }, section "___ksymtab+mdiobb_write", align 4
@__kstrtab_alloc_mdio_bitbang = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_mdio_bitbang = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_mdio_bitbang = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_mdio_bitbang to i32), ptr @__kstrtab_alloc_mdio_bitbang, ptr @__kstrtabns_alloc_mdio_bitbang }, section "___ksymtab+alloc_mdio_bitbang", align 4
@__kstrtab_free_mdio_bitbang = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_mdio_bitbang = external dso_local constant [0 x i8], align 1
@__ksymtab_free_mdio_bitbang = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_mdio_bitbang to i32), ptr @__kstrtab_free_mdio_bitbang, ptr @__kstrtabns_free_mdio_bitbang }, section "___ksymtab+free_mdio_bitbang", align 4
@__UNIQUE_ID_file281 = internal constant [48 x i8] c"mdio_bitbang.file=drivers/net/mdio/mdio-bitbang\00", section ".modinfo", align 1
@__UNIQUE_ID_license282 = internal constant [28 x i8] c"mdio_bitbang.license=GPL v2\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_file281, ptr @__UNIQUE_ID_license282, ptr @__ksymtab_alloc_mdio_bitbang, ptr @__ksymtab_free_mdio_bitbang, ptr @__ksymtab_mdiobb_read, ptr @__ksymtab_mdiobb_write], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mdiobb_read(ptr nocapture noundef readonly %bus, i32 noundef %phy, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %and = and i32 %reg, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call fastcc i32 @mdiobb_cmd_addr(ptr noundef %1, i32 noundef %phy, i32 noundef %reg)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %op_c22_read = getelementptr inbounds %struct.mdiobb_ctrl, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %op_c22_read to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %op_c22_read, align 4
  %conv2 = zext i8 %3 to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %reg.sink = phi i32 [ %reg, %if.else ], [ %call, %if.then ]
  %conv2.sink = phi i32 [ %conv2, %if.else ], [ 32771, %if.then ]
  %conv3 = trunc i32 %phy to i8
  %conv4 = trunc i32 %reg.sink to i8
  tail call fastcc void @mdiobb_cmd(ptr noundef %1, i32 noundef %conv2.sink, i8 noundef zeroext %conv3, i8 noundef zeroext %conv4)
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %set_mdio_dir = getelementptr inbounds %struct.mdiobb_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %set_mdio_dir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_mdio_dir, align 4
  tail call void %7(ptr noundef %1, i32 noundef 0) #2
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #2
  %set_mdc.i = getelementptr inbounds %struct.mdiobb_ops, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %set_mdc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_mdc.i, align 4
  tail call void %12(ptr noundef %1, i32 noundef 1) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #2
  %14 = ptrtoint ptr %set_mdc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_mdc.i, align 4
  tail call void %15(ptr noundef %1, i32 noundef 0) #2
  %get_mdio_data.i = getelementptr inbounds %struct.mdiobb_ops, ptr %9, i32 0, i32 4
  %16 = ptrtoint ptr %get_mdio_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_mdio_data.i, align 4
  %call.i = tail call i32 %17(ptr noundef %1) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end.for.body.i.preheader_crit_edge, label %land.lhs.true

if.end.for.body.i.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %land.lhs.true.for.body.i.preheader_crit_edge, %if.end.for.body.i.preheader_crit_edge
  br label %for.body.i

land.lhs.true:                                    ; preds = %if.end
  %phy_ignore_ta_mask = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 14
  %18 = ptrtoint ptr %phy_ignore_ta_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %phy_ignore_ta_mask, align 4
  %shl = shl nuw i32 1, %phy
  %and7 = and i32 %19, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %land.lhs.true.for.body_crit_edge, label %land.lhs.true.for.body.i.preheader_crit_edge

land.lhs.true.for.body.i.preheader_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i.preheader

land.lhs.true.for.body_crit_edge:                 ; preds = %land.lhs.true
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %land.lhs.true.for.body_crit_edge
  %i.042 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %land.lhs.true.for.body_crit_edge ]
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #2
  %set_mdc.i36 = getelementptr inbounds %struct.mdiobb_ops, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %set_mdc.i36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %set_mdc.i36, align 4
  tail call void %24(ptr noundef %1, i32 noundef 1) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #2
  %26 = ptrtoint ptr %set_mdc.i36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_mdc.i36, align 4
  tail call void %27(ptr noundef %1, i32 noundef 0) #2
  %get_mdio_data.i37 = getelementptr inbounds %struct.mdiobb_ops, ptr %21, i32 0, i32 4
  %28 = ptrtoint ptr %get_mdio_data.i37 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %get_mdio_data.i37, align 4
  %call.i38 = tail call i32 %29(ptr noundef %1) #2
  %inc = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %ret.02.i = phi i16 [ %conv3.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %i.01.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ 15, %for.body.i.preheader ]
  %shl.i = shl i16 %ret.02.i, 1
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #2
  %set_mdc.i.i = getelementptr inbounds %struct.mdiobb_ops, ptr %31, i32 0, i32 1
  %33 = ptrtoint ptr %set_mdc.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %set_mdc.i.i, align 4
  tail call void %34(ptr noundef %1, i32 noundef 1) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #2
  %36 = ptrtoint ptr %set_mdc.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %set_mdc.i.i, align 4
  tail call void %37(ptr noundef %1, i32 noundef 0) #2
  %get_mdio_data.i.i = getelementptr inbounds %struct.mdiobb_ops, ptr %31, i32 0, i32 4
  %38 = ptrtoint ptr %get_mdio_data.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %get_mdio_data.i.i, align 4
  %call.i.i = tail call i32 %39(ptr noundef %1) #2
  %40 = trunc i32 %call.i.i to i16
  %conv3.i = or i16 %shl.i, %40
  %dec.i = add nsw i32 %i.01.i, -1
  %cmp.not.i = icmp eq i32 %i.01.i, 0
  br i1 %cmp.not.i, label %mdiobb_get_num.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

mdiobb_get_num.exit:                              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  %conv15 = zext i16 %conv3.i to i32
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748) #2
  %set_mdc.i39 = getelementptr inbounds %struct.mdiobb_ops, ptr %42, i32 0, i32 1
  %44 = ptrtoint ptr %set_mdc.i39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %set_mdc.i39, align 4
  tail call void %45(ptr noundef %1, i32 noundef 1) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748) #2
  %47 = ptrtoint ptr %set_mdc.i39 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %set_mdc.i39, align 4
  tail call void %48(ptr noundef %1, i32 noundef 0) #2
  %get_mdio_data.i40 = getelementptr inbounds %struct.mdiobb_ops, ptr %42, i32 0, i32 4
  %49 = ptrtoint ptr %get_mdio_data.i40 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %get_mdio_data.i40, align 4
  %call.i41 = tail call i32 %50(ptr noundef %1) #2
  br label %cleanup

cleanup:                                          ; preds = %mdiobb_get_num.exit, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv15, %mdiobb_get_num.exit ], [ 65535, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mdiobb_cmd_addr(ptr noundef %ctrl, i32 noundef %phy, i32 noundef %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %addr, 16
  %and = and i32 %shr, 31
  %conv = trunc i32 %phy to i8
  %conv2 = trunc i32 %and to i8
  tail call fastcc void @mdiobb_cmd(ptr noundef %ctrl, i32 noundef 32768, i8 noundef zeroext %conv, i8 noundef zeroext %conv2)
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  %set_mdio_data.i = getelementptr inbounds %struct.mdiobb_ops, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %set_mdio_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_mdio_data.i, align 4
  tail call void %3(ptr noundef %ctrl, i32 noundef 1) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #2
  %set_mdc.i = getelementptr inbounds %struct.mdiobb_ops, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %set_mdc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_mdc.i, align 4
  tail call void %6(ptr noundef %ctrl, i32 noundef 1) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #2
  %8 = ptrtoint ptr %set_mdc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_mdc.i, align 4
  tail call void %9(ptr noundef %ctrl, i32 noundef 0) #2
  %10 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl, align 4
  %set_mdio_data.i12 = getelementptr inbounds %struct.mdiobb_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %set_mdio_data.i12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_mdio_data.i12, align 4
  tail call void %13(ptr noundef %ctrl, i32 noundef 0) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #2
  %set_mdc.i13 = getelementptr inbounds %struct.mdiobb_ops, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %set_mdc.i13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_mdc.i13, align 4
  tail call void %16(ptr noundef %ctrl, i32 noundef 1) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #2
  %18 = ptrtoint ptr %set_mdc.i13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_mdc.i13, align 4
  tail call void %19(ptr noundef %ctrl, i32 noundef 0) #2
  %conv.i = and i32 %addr, 65535
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.05.i = phi i32 [ 15, %entry ], [ %i.0.i, %for.body.i.for.body.i_crit_edge ]
  %shr.i = lshr i32 %conv.i, %i.05.i
  %and.i = and i32 %shr.i, 1
  %20 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctrl, align 4
  %set_mdio_data.i.i = getelementptr inbounds %struct.mdiobb_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %set_mdio_data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_mdio_data.i.i, align 4
  tail call void %23(ptr noundef %ctrl, i32 noundef %and.i) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #2
  %set_mdc.i.i = getelementptr inbounds %struct.mdiobb_ops, ptr %21, i32 0, i32 1
  %25 = ptrtoint ptr %set_mdc.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set_mdc.i.i, align 4
  tail call void %26(ptr noundef %ctrl, i32 noundef 1) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #2
  %28 = ptrtoint ptr %set_mdc.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_mdc.i.i, align 4
  tail call void %29(ptr noundef %ctrl, i32 noundef 0) #2
  %i.0.i = add nsw i32 %i.05.i, -1
  %cmp.i.not = icmp eq i32 %i.05.i, 0
  br i1 %cmp.i.not, label %mdiobb_send_num.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

mdiobb_send_num.exit:                             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  %30 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctrl, align 4
  %set_mdio_dir = getelementptr inbounds %struct.mdiobb_ops, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %set_mdio_dir to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_mdio_dir, align 4
  tail call void %33(ptr noundef %ctrl, i32 noundef 0) #2
  %34 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctrl, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #2
  %set_mdc.i14 = getelementptr inbounds %struct.mdiobb_ops, ptr %35, i32 0, i32 1
  %37 = ptrtoint ptr %set_mdc.i14 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %set_mdc.i14, align 4
  tail call void %38(ptr noundef %ctrl, i32 noundef 1) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748) #2
  %40 = ptrtoint ptr %set_mdc.i14 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %set_mdc.i14, align 4
  tail call void %41(ptr noundef %ctrl, i32 noundef 0) #2
  %get_mdio_data.i = getelementptr inbounds %struct.mdiobb_ops, ptr %35, i32 0, i32 4
  %42 = ptrtoint ptr %get_mdio_data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %get_mdio_data.i, align 4
  %call.i = tail call i32 %43(ptr noundef %ctrl) #2
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mdiobb_cmd(ptr noundef %ctrl, i32 noundef %op, i8 noundef zeroext %phy, i8 noundef zeroext %reg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  %set_mdio_dir = getelementptr inbounds %struct.mdiobb_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %set_mdio_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_mdio_dir, align 4
  tail call void %3(ptr noundef %ctrl, i32 noundef 1) #2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.039 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl, align 4
  %set_mdio_data.i = getelementptr inbounds %struct.mdiobb_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %set_mdio_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_mdio_data.i, align 4
  tail call void %7(ptr noundef %ctrl, i32 noundef 1) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #2
  %set_mdc.i = getelementptr inbounds %struct.mdiobb_ops, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %set_mdc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_mdc.i, align 4
  tail call void %10(ptr noundef %ctrl, i32 noundef 1) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #2
  %12 = ptrtoint ptr %set_mdc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_mdc.i, align 4
  tail call void %13(ptr noundef %ctrl, i32 noundef 0) #2
  %inc = add nuw nsw i32 %i.039, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %14 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctrl, align 4
  %set_mdio_data.i19 = getelementptr inbounds %struct.mdiobb_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %set_mdio_data.i19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_mdio_data.i19, align 4
  tail call void %17(ptr noundef %ctrl, i32 noundef 0) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #2
  %set_mdc.i20 = getelementptr inbounds %struct.mdiobb_ops, ptr %15, i32 0, i32 1
  %19 = ptrtoint ptr %set_mdc.i20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %set_mdc.i20, align 4
  tail call void %20(ptr noundef %ctrl, i32 noundef 1) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #2
  %22 = ptrtoint ptr %set_mdc.i20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_mdc.i20, align 4
  tail call void %23(ptr noundef %ctrl, i32 noundef 0) #2
  %24 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctrl, align 4
  %set_mdio_data.i23 = getelementptr inbounds %struct.mdiobb_ops, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %set_mdio_data.i23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_mdio_data.i23, align 4
  %and = lshr i32 %op, 15
  %and.lobit = and i32 %and, 1
  %28 = xor i32 %and.lobit, 1
  tail call void %27(ptr noundef %ctrl, i32 noundef %28) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #2
  %set_mdc.i24 = getelementptr inbounds %struct.mdiobb_ops, ptr %25, i32 0, i32 1
  %30 = ptrtoint ptr %set_mdc.i24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_mdc.i24, align 4
  tail call void %31(ptr noundef %ctrl, i32 noundef 1) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #2
  %33 = ptrtoint ptr %set_mdc.i24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %set_mdc.i24, align 4
  tail call void %34(ptr noundef %ctrl, i32 noundef 0) #2
  %shr18 = lshr i32 %op, 1
  %and2 = and i32 %shr18, 1
  %35 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ctrl, align 4
  %set_mdio_data.i25 = getelementptr inbounds %struct.mdiobb_ops, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %set_mdio_data.i25 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %set_mdio_data.i25, align 4
  tail call void %38(ptr noundef %ctrl, i32 noundef %and2) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748) #2
  %set_mdc.i26 = getelementptr inbounds %struct.mdiobb_ops, ptr %36, i32 0, i32 1
  %40 = ptrtoint ptr %set_mdc.i26 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %set_mdc.i26, align 4
  tail call void %41(ptr noundef %ctrl, i32 noundef 1) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748) #2
  %43 = ptrtoint ptr %set_mdc.i26 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %set_mdc.i26, align 4
  tail call void %44(ptr noundef %ctrl, i32 noundef 0) #2
  %and4 = and i32 %op, 1
  %45 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctrl, align 4
  %set_mdio_data.i27 = getelementptr inbounds %struct.mdiobb_ops, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %set_mdio_data.i27 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %set_mdio_data.i27, align 4
  tail call void %48(ptr noundef %ctrl, i32 noundef %and4) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748) #2
  %set_mdc.i28 = getelementptr inbounds %struct.mdiobb_ops, ptr %46, i32 0, i32 1
  %50 = ptrtoint ptr %set_mdc.i28 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %set_mdc.i28, align 4
  tail call void %51(ptr noundef %ctrl, i32 noundef 1) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748) #2
  %53 = ptrtoint ptr %set_mdc.i28 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %set_mdc.i28, align 4
  tail call void %54(ptr noundef %ctrl, i32 noundef 0) #2
  %conv.i = zext i8 %phy to i32
  %shr.i = lshr i32 %conv.i, 4
  %and.i = and i32 %shr.i, 1
  %55 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ctrl, align 4
  %set_mdio_data.i.i = getelementptr inbounds %struct.mdiobb_ops, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %set_mdio_data.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %set_mdio_data.i.i, align 4
  tail call void %58(ptr noundef %ctrl, i32 noundef %and.i) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748) #2
  %set_mdc.i.i = getelementptr inbounds %struct.mdiobb_ops, ptr %56, i32 0, i32 1
  %60 = ptrtoint ptr %set_mdc.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %set_mdc.i.i, align 4
  tail call void %61(ptr noundef %ctrl, i32 noundef 1) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748) #2
  %63 = ptrtoint ptr %set_mdc.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %set_mdc.i.i, align 4
  tail call void %64(ptr noundef %ctrl, i32 noundef 0) #2
  %shr.i.1 = lshr i32 %conv.i, 3
  %and.i.1 = and i32 %shr.i.1, 1
  %65 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ctrl, align 4
  %set_mdio_data.i.i.1 = getelementptr inbounds %struct.mdiobb_ops, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %set_mdio_data.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %set_mdio_data.i.i.1, align 4
  tail call void %68(ptr noundef %ctrl, i32 noundef %and.i.1) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748) #2
  %set_mdc.i.i.1 = getelementptr inbounds %struct.mdiobb_ops, ptr %66, i32 0, i32 1
  %70 = ptrtoint ptr %set_mdc.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %set_mdc.i.i.1, align 4
  tail call void %71(ptr noundef %ctrl, i32 noundef 1) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748) #2
  %73 = ptrtoint ptr %set_mdc.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %set_mdc.i.i.1, align 4
  tail call void %74(ptr noundef %ctrl, i32 noundef 0) #2
  %shr.i.2 = lshr i32 %conv.i, 2
  %and.i.2 = and i32 %shr.i.2, 1
  %75 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ctrl, align 4
  %set_mdio_data.i.i.2 = getelementptr inbounds %struct.mdiobb_ops, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %set_mdio_data.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %set_mdio_data.i.i.2, align 4
  tail call void %78(ptr noundef %ctrl, i32 noundef %and.i.2) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %79(i32 noundef 214748) #2
  %set_mdc.i.i.2 = getelementptr inbounds %struct.mdiobb_ops, ptr %76, i32 0, i32 1
  %80 = ptrtoint ptr %set_mdc.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %set_mdc.i.i.2, align 4
  tail call void %81(ptr noundef %ctrl, i32 noundef 1) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 214748) #2
  %83 = ptrtoint ptr %set_mdc.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %set_mdc.i.i.2, align 4
  tail call void %84(ptr noundef %ctrl, i32 noundef 0) #2
  %shr.i.3 = lshr i32 %conv.i, 1
  %and.i.3 = and i32 %shr.i.3, 1
  %85 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ctrl, align 4
  %set_mdio_data.i.i.3 = getelementptr inbounds %struct.mdiobb_ops, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %set_mdio_data.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %set_mdio_data.i.i.3, align 4
  tail call void %88(ptr noundef %ctrl, i32 noundef %and.i.3) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %89(i32 noundef 214748) #2
  %set_mdc.i.i.3 = getelementptr inbounds %struct.mdiobb_ops, ptr %86, i32 0, i32 1
  %90 = ptrtoint ptr %set_mdc.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %set_mdc.i.i.3, align 4
  tail call void %91(ptr noundef %ctrl, i32 noundef 1) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %92(i32 noundef 214748) #2
  %93 = ptrtoint ptr %set_mdc.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %set_mdc.i.i.3, align 4
  tail call void %94(ptr noundef %ctrl, i32 noundef 0) #2
  %and.i.4 = and i32 %conv.i, 1
  %95 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ctrl, align 4
  %set_mdio_data.i.i.4 = getelementptr inbounds %struct.mdiobb_ops, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %set_mdio_data.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %set_mdio_data.i.i.4, align 4
  tail call void %98(ptr noundef %ctrl, i32 noundef %and.i.4) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %99(i32 noundef 214748) #2
  %set_mdc.i.i.4 = getelementptr inbounds %struct.mdiobb_ops, ptr %96, i32 0, i32 1
  %100 = ptrtoint ptr %set_mdc.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %set_mdc.i.i.4, align 4
  tail call void %101(ptr noundef %ctrl, i32 noundef 1) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %102(i32 noundef 214748) #2
  %103 = ptrtoint ptr %set_mdc.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %set_mdc.i.i.4, align 4
  tail call void %104(ptr noundef %ctrl, i32 noundef 0) #2
  %conv.i29 = zext i8 %reg to i32
  %shr.i31 = lshr i32 %conv.i29, 4
  %and.i32 = and i32 %shr.i31, 1
  %105 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ctrl, align 4
  %set_mdio_data.i.i33 = getelementptr inbounds %struct.mdiobb_ops, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %set_mdio_data.i.i33 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %set_mdio_data.i.i33, align 4
  tail call void %108(ptr noundef %ctrl, i32 noundef %and.i32) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %109(i32 noundef 214748) #2
  %set_mdc.i.i34 = getelementptr inbounds %struct.mdiobb_ops, ptr %106, i32 0, i32 1
  %110 = ptrtoint ptr %set_mdc.i.i34 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %set_mdc.i.i34, align 4
  tail call void %111(ptr noundef %ctrl, i32 noundef 1) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %112 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %112(i32 noundef 214748) #2
  %113 = ptrtoint ptr %set_mdc.i.i34 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %set_mdc.i.i34, align 4
  tail call void %114(ptr noundef %ctrl, i32 noundef 0) #2
  %shr.i31.1 = lshr i32 %conv.i29, 3
  %and.i32.1 = and i32 %shr.i31.1, 1
  %115 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ctrl, align 4
  %set_mdio_data.i.i33.1 = getelementptr inbounds %struct.mdiobb_ops, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %set_mdio_data.i.i33.1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %set_mdio_data.i.i33.1, align 4
  tail call void %118(ptr noundef %ctrl, i32 noundef %and.i32.1) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %119(i32 noundef 214748) #2
  %set_mdc.i.i34.1 = getelementptr inbounds %struct.mdiobb_ops, ptr %116, i32 0, i32 1
  %120 = ptrtoint ptr %set_mdc.i.i34.1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %set_mdc.i.i34.1, align 4
  tail call void %121(ptr noundef %ctrl, i32 noundef 1) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %122 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %122(i32 noundef 214748) #2
  %123 = ptrtoint ptr %set_mdc.i.i34.1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %set_mdc.i.i34.1, align 4
  tail call void %124(ptr noundef %ctrl, i32 noundef 0) #2
  %shr.i31.2 = lshr i32 %conv.i29, 2
  %and.i32.2 = and i32 %shr.i31.2, 1
  %125 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ctrl, align 4
  %set_mdio_data.i.i33.2 = getelementptr inbounds %struct.mdiobb_ops, ptr %126, i32 0, i32 3
  %127 = ptrtoint ptr %set_mdio_data.i.i33.2 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %set_mdio_data.i.i33.2, align 4
  tail call void %128(ptr noundef %ctrl, i32 noundef %and.i32.2) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %129 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %129(i32 noundef 214748) #2
  %set_mdc.i.i34.2 = getelementptr inbounds %struct.mdiobb_ops, ptr %126, i32 0, i32 1
  %130 = ptrtoint ptr %set_mdc.i.i34.2 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %set_mdc.i.i34.2, align 4
  tail call void %131(ptr noundef %ctrl, i32 noundef 1) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %132 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %132(i32 noundef 214748) #2
  %133 = ptrtoint ptr %set_mdc.i.i34.2 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %set_mdc.i.i34.2, align 4
  tail call void %134(ptr noundef %ctrl, i32 noundef 0) #2
  %shr.i31.3 = lshr i32 %conv.i29, 1
  %and.i32.3 = and i32 %shr.i31.3, 1
  %135 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ctrl, align 4
  %set_mdio_data.i.i33.3 = getelementptr inbounds %struct.mdiobb_ops, ptr %136, i32 0, i32 3
  %137 = ptrtoint ptr %set_mdio_data.i.i33.3 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %set_mdio_data.i.i33.3, align 4
  tail call void %138(ptr noundef %ctrl, i32 noundef %and.i32.3) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %139 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %139(i32 noundef 214748) #2
  %set_mdc.i.i34.3 = getelementptr inbounds %struct.mdiobb_ops, ptr %136, i32 0, i32 1
  %140 = ptrtoint ptr %set_mdc.i.i34.3 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %set_mdc.i.i34.3, align 4
  tail call void %141(ptr noundef %ctrl, i32 noundef 1) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %142(i32 noundef 214748) #2
  %143 = ptrtoint ptr %set_mdc.i.i34.3 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %set_mdc.i.i34.3, align 4
  tail call void %144(ptr noundef %ctrl, i32 noundef 0) #2
  %and.i32.4 = and i32 %conv.i29, 1
  %145 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ctrl, align 4
  %set_mdio_data.i.i33.4 = getelementptr inbounds %struct.mdiobb_ops, ptr %146, i32 0, i32 3
  %147 = ptrtoint ptr %set_mdio_data.i.i33.4 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %set_mdio_data.i.i33.4, align 4
  tail call void %148(ptr noundef %ctrl, i32 noundef %and.i32.4) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %149 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %149(i32 noundef 214748) #2
  %set_mdc.i.i34.4 = getelementptr inbounds %struct.mdiobb_ops, ptr %146, i32 0, i32 1
  %150 = ptrtoint ptr %set_mdc.i.i34.4 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %set_mdc.i.i34.4, align 4
  tail call void %151(ptr noundef %ctrl, i32 noundef 1) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %152 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %152(i32 noundef 214748) #2
  %153 = ptrtoint ptr %set_mdc.i.i34.4 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %set_mdc.i.i34.4, align 4
  tail call void %154(ptr noundef %ctrl, i32 noundef 0) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mdiobb_write(ptr nocapture noundef readonly %bus, i32 noundef %phy, i32 noundef %reg, i16 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %and = and i32 %reg, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call fastcc i32 @mdiobb_cmd_addr(ptr noundef %1, i32 noundef %phy, i32 noundef %reg)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %op_c22_write = getelementptr inbounds %struct.mdiobb_ctrl, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %op_c22_write to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %op_c22_write, align 1
  %conv2 = zext i8 %3 to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %reg.sink = phi i32 [ %reg, %if.else ], [ %call, %if.then ]
  %conv2.sink = phi i32 [ %conv2, %if.else ], [ 32769, %if.then ]
  %conv3 = trunc i32 %phy to i8
  %conv4 = trunc i32 %reg.sink to i8
  tail call fastcc void @mdiobb_cmd(ptr noundef %1, i32 noundef %conv2.sink, i8 noundef zeroext %conv3, i8 noundef zeroext %conv4)
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %set_mdio_data.i = getelementptr inbounds %struct.mdiobb_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %set_mdio_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_mdio_data.i, align 4
  tail call void %7(ptr noundef %1, i32 noundef 1) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #2
  %set_mdc.i = getelementptr inbounds %struct.mdiobb_ops, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %set_mdc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_mdc.i, align 4
  tail call void %10(ptr noundef %1, i32 noundef 1) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #2
  %12 = ptrtoint ptr %set_mdc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_mdc.i, align 4
  tail call void %13(ptr noundef %1, i32 noundef 0) #2
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %set_mdio_data.i20 = getelementptr inbounds %struct.mdiobb_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %set_mdio_data.i20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_mdio_data.i20, align 4
  tail call void %17(ptr noundef %1, i32 noundef 0) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #2
  %set_mdc.i21 = getelementptr inbounds %struct.mdiobb_ops, ptr %15, i32 0, i32 1
  %19 = ptrtoint ptr %set_mdc.i21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %set_mdc.i21, align 4
  tail call void %20(ptr noundef %1, i32 noundef 1) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #2
  %22 = ptrtoint ptr %set_mdc.i21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_mdc.i21, align 4
  tail call void %23(ptr noundef %1, i32 noundef 0) #2
  %conv.i = zext i16 %val to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %i.05.i = phi i32 [ 15, %if.end ], [ %i.0.i, %for.body.i.for.body.i_crit_edge ]
  %shr.i = lshr i32 %conv.i, %i.05.i
  %and.i = and i32 %shr.i, 1
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %set_mdio_data.i.i = getelementptr inbounds %struct.mdiobb_ops, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %set_mdio_data.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_mdio_data.i.i, align 4
  tail call void %27(ptr noundef %1, i32 noundef %and.i) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #2
  %set_mdc.i.i = getelementptr inbounds %struct.mdiobb_ops, ptr %25, i32 0, i32 1
  %29 = ptrtoint ptr %set_mdc.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_mdc.i.i, align 4
  tail call void %30(ptr noundef %1, i32 noundef 1) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748) #2
  %32 = ptrtoint ptr %set_mdc.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_mdc.i.i, align 4
  tail call void %33(ptr noundef %1, i32 noundef 0) #2
  %i.0.i = add nsw i32 %i.05.i, -1
  %cmp.i.not = icmp eq i32 %i.05.i, 0
  br i1 %cmp.i.not, label %mdiobb_send_num.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

mdiobb_send_num.exit:                             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %set_mdio_dir = getelementptr inbounds %struct.mdiobb_ops, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %set_mdio_dir to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %set_mdio_dir, align 4
  tail call void %37(ptr noundef %1, i32 noundef 0) #2
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748) #2
  %set_mdc.i22 = getelementptr inbounds %struct.mdiobb_ops, ptr %39, i32 0, i32 1
  %41 = ptrtoint ptr %set_mdc.i22 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %set_mdc.i22, align 4
  tail call void %42(ptr noundef %1, i32 noundef 1) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748) #2
  %44 = ptrtoint ptr %set_mdc.i22 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %set_mdc.i22, align 4
  tail call void %45(ptr noundef %1, i32 noundef 0) #2
  %get_mdio_data.i = getelementptr inbounds %struct.mdiobb_ops, ptr %39, i32 0, i32 4
  %46 = ptrtoint ptr %get_mdio_data.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %get_mdio_data.i, align 4
  %call.i = tail call i32 %47(ptr noundef %1) #2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_mdio_bitbang(ptr noundef %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @mdiobus_alloc_size(i32 noundef 0) #2
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @__module_get(ptr noundef %3) #2
  %read = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mdiobb_read, ptr %read, align 4
  %write = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 5
  %5 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mdiobb_write, ptr %write, align 8
  %priv = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ctrl, ptr %priv, align 8
  %override_op_c22 = getelementptr inbounds %struct.mdiobb_ctrl, ptr %ctrl, i32 0, i32 1
  %7 = ptrtoint ptr %override_op_c22 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %override_op_c22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not = icmp eq i32 %8, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %op_c22_read = getelementptr inbounds %struct.mdiobb_ctrl, ptr %ctrl, i32 0, i32 2
  %9 = ptrtoint ptr %op_c22_read to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %op_c22_read, align 4
  %op_c22_write = getelementptr inbounds %struct.mdiobb_ctrl, ptr %ctrl, i32 0, i32 3
  %10 = ptrtoint ptr %op_c22_write to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %op_c22_write, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_mdio_bitbang(ptr noundef %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @module_put(ptr noundef %5) #2
  tail call void @mdiobus_free(ptr noundef %bus) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @__ksymtab_mdiobb_read, !1, !"__ksymtab_mdiobb_read", i1 false, i1 false}
!1 = !{!"../drivers/net/mdio/mdio-bitbang.c", i32 183, i32 1}
!2 = !{ptr @__ksymtab_mdiobb_write, !3, !"__ksymtab_mdiobb_write", i1 false, i1 false}
!3 = !{!"../drivers/net/mdio/mdio-bitbang.c", i32 205, i32 1}
!4 = !{ptr @__ksymtab_alloc_mdio_bitbang, !5, !"__ksymtab_alloc_mdio_bitbang", i1 false, i1 false}
!5 = !{!"../drivers/net/mdio/mdio-bitbang.c", i32 227, i32 1}
!6 = !{ptr @__ksymtab_free_mdio_bitbang, !7, !"__ksymtab_free_mdio_bitbang", i1 false, i1 false}
!7 = !{!"../drivers/net/mdio/mdio-bitbang.c", i32 236, i32 1}
!8 = !{ptr @__UNIQUE_ID_file281, !9, !"__UNIQUE_ID_file281", i1 false, i1 false}
!9 = !{!"../drivers/net/mdio/mdio-bitbang.c", i32 238, i32 1}
!10 = !{ptr @__UNIQUE_ID_license282, !9, !"__UNIQUE_ID_license282", i1 false, i1 false}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
