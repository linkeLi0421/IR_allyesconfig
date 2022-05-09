; ModuleID = '/llk/IR_all_yes/drivers/dma/dw/idma32.c_pt.bc'
source_filename = "../drivers/dma/dw/idma32.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+idma32_dma_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_idma32_dma_probe\09\09\09\09"
module asm "\09.long\09__crc_idma32_dma_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_idma32_dma_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22idma32_dma_probe\22\09\09\09\09\09"
module asm "__kstrtabns_idma32_dma_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+idma32_dma_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_idma32_dma_remove\09\09\09\09"
module asm "\09.long\09__crc_idma32_dma_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_idma32_dma_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22idma32_dma_remove\22\09\09\09\09\09"
module asm "__kstrtabns_idma32_dma_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dw_dma_chip = type { ptr, i32, i32, ptr, ptr, ptr, ptr }
%struct.dw_dma_platform_data = type { i32, i32, i32, i32, i32, [4 x i32], [8 x i32], [8 x i32], i32, i32 }
%struct.dw_dma = type { %struct.dma_device, [20 x i8], ptr, ptr, %struct.tasklet_struct, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.70, i32 }
%union.anon.70 = type { ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dw_dma_chan = type { %struct.dma_chan, ptr, i8, i8, i32, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, i32, i32, i8, i32, %struct.dw_dma_slave, %struct.dma_slave_config }
%struct.dw_dma_slave = type { ptr, i8, i8, i8, i8, i8, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.dw_dma_chan_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dw_dma_regs = type { [8 x %struct.dw_dma_chan_regs], %struct.dw_dma_irq_regs, %struct.dw_dma_irq_regs, %struct.dw_dma_irq_regs, %struct.dw_dma_irq_regs, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dw_dma_irq_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__kstrtab_idma32_dma_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_idma32_dma_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_idma32_dma_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @idma32_dma_probe to i32), ptr @__kstrtab_idma32_dma_probe, ptr @__kstrtabns_idma32_dma_probe }, section "___ksymtab_gpl+idma32_dma_probe", align 4
@__kstrtab_idma32_dma_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_idma32_dma_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_idma32_dma_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @idma32_dma_remove to i32), ptr @__kstrtab_idma32_dma_remove, ptr @__kstrtabns_idma32_dma_remove }, section "___ksymtab_gpl+idma32_dma_remove", align 4
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"idma32:dmac%d\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [27 x i8] c"../drivers/dma/dw/idma32.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 219, i32 39 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_idma32_dma_probe, ptr @__ksymtab_idma32_dma_remove, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @idma32_dma_probe(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 468, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdata = getelementptr inbounds %struct.dw_dma_chip, ptr %chip, i32 0, i32 6
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %quirks = getelementptr inbounds %struct.dw_dma_platform_data, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirks, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool1.not, ptr @idma32_initialize_chan_generic, ptr @idma32_initialize_chan_xbar
  %6 = getelementptr inbounds %struct.dw_dma, ptr %call.i, i32 0, i32 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spec.select, ptr %6, align 4
  %suspend_chan = getelementptr inbounds %struct.dw_dma, ptr %call.i, i32 0, i32 9
  %8 = ptrtoint ptr %suspend_chan to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @idma32_suspend_chan, ptr %suspend_chan, align 4
  %resume_chan = getelementptr inbounds %struct.dw_dma, ptr %call.i, i32 0, i32 10
  %9 = ptrtoint ptr %resume_chan to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @idma32_resume_chan, ptr %resume_chan, align 4
  %prepare_ctllo = getelementptr inbounds %struct.dw_dma, ptr %call.i, i32 0, i32 11
  %10 = ptrtoint ptr %prepare_ctllo to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @idma32_prepare_ctllo, ptr %prepare_ctllo, align 4
  %encode_maxburst = getelementptr inbounds %struct.dw_dma, ptr %call.i, i32 0, i32 12
  %11 = ptrtoint ptr %encode_maxburst to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @idma32_encode_maxburst, ptr %encode_maxburst, align 4
  %bytes2block = getelementptr inbounds %struct.dw_dma, ptr %call.i, i32 0, i32 13
  %12 = ptrtoint ptr %bytes2block to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @idma32_bytes2block, ptr %bytes2block, align 4
  %block2bytes = getelementptr inbounds %struct.dw_dma, ptr %call.i, i32 0, i32 14
  %13 = ptrtoint ptr %block2bytes to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @idma32_block2bytes, ptr %block2bytes, align 4
  %set_device_name = getelementptr inbounds %struct.dw_dma, ptr %call.i, i32 0, i32 15
  %14 = ptrtoint ptr %set_device_name to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @idma32_set_device_name, ptr %set_device_name, align 4
  %disable = getelementptr inbounds %struct.dw_dma, ptr %call.i, i32 0, i32 16
  %15 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @idma32_disable, ptr %disable, align 4
  %enable = getelementptr inbounds %struct.dw_dma, ptr %call.i, i32 0, i32 17
  %16 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @idma32_enable, ptr %enable, align 4
  %dw5 = getelementptr inbounds %struct.dw_dma_chip, ptr %chip, i32 0, i32 5
  %17 = ptrtoint ptr %dw5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %dw5, align 4
  %call6 = tail call i32 @do_dma_probe(ptr noundef %chip) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idma32_initialize_chan_xbar(ptr nocapture noundef readonly %dwc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dwc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dwc, align 4
  %regs.i = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 5120
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !16
  %5 = and i32 %4, -117440513
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %chan_id = getelementptr inbounds %struct.dma_chan, ptr %dwc, i32 0, i32 4
  %7 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chan_id, align 4
  %or = or i32 %6, %8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %9 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #9, !srcloc !18
  %10 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chan_id, align 4
  %mul = shl i32 %11, 2
  %add = add i32 %mul, 4096
  %add.ptr10 = getelementptr i8, ptr %3, i32 %add
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #9, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !19
  %13 = and i32 %12, -2063794177
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %direction = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 4
  %15 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %direction, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %entry.cleanup_crit_edge [
    i32 1, label %entry.do.body22_crit_edge
    i32 2, label %sw.bb19
  ]

entry.do.body22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22

do.body22:                                        ; preds = %sw.bb19, %entry.do.body22_crit_edge
  %.sink = phi i32 [ 257, %sw.bb19 ], [ 514, %entry.do.body22_crit_edge ]
  %or18 = or i32 %14, %.sink
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !20
  tail call void @arm_heavy_mb() #9
  %18 = tail call i32 @llvm.bswap.i32(i32 %or18)
  %19 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chan_id, align 4
  %mul27 = shl i32 %20, 2
  %add28 = add i32 %mul27, 4096
  %add.ptr29 = getelementptr i8, ptr %3, i32 %add28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %18) #9, !srcloc !18
  %21 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chan_id, align 4
  %mul34 = shl i32 %22, 2
  %add35 = add i32 %mul34, 4864
  %add.ptr36 = getelementptr i8, ptr %3, i32 %add35
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #9, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !21
  %24 = and i32 %23, 65535
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %slave1.i = getelementptr inbounds %struct.dma_chan, ptr %dwc, i32 0, i32 1
  %26 = ptrtoint ptr %slave1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %slave1.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %do.body22.idma32_get_slave_devfn.exit_crit_edge, label %lor.lhs.false.i

do.body22.idma32_get_slave_devfn.exit_crit_edge:  ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %idma32_get_slave_devfn.exit

lor.lhs.false.i:                                  ; preds = %do.body22
  %bus.i = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i, align 8
  %cmp.i = icmp eq ptr %29, @pci_bus_type
  br i1 %cmp.i, label %if.end.i, label %lor.lhs.false.i.idma32_get_slave_devfn.exit_crit_edge

lor.lhs.false.i.idma32_get_slave_devfn.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %idma32_get_slave_devfn.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %devfn.i = getelementptr i8, ptr %27, i32 -108
  %30 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %devfn.i, align 4
  br label %idma32_get_slave_devfn.exit

idma32_get_slave_devfn.exit:                      ; preds = %if.end.i, %lor.lhs.false.i.idma32_get_slave_devfn.exit_crit_edge, %do.body22.idma32_get_slave_devfn.exit_crit_edge
  %retval.0.i = phi i32 [ %31, %if.end.i ], [ 0, %lor.lhs.false.i.idma32_get_slave_devfn.exit_crit_edge ], [ 0, %do.body22.idma32_get_slave_devfn.exit_crit_edge ]
  %or42 = or i32 %retval.0.i, %25
  %32 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %direction, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %33, label %idma32_get_slave_devfn.exit.cleanup_crit_edge [
    i32 1, label %sw.bb44
    i32 2, label %sw.bb46
  ]

idma32_get_slave_devfn.exit.cleanup_crit_edge:    ; preds = %idma32_get_slave_devfn.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb44:                                          ; preds = %idma32_get_slave_devfn.exit
  call void @__sanitizer_cov_trace_pc() #11
  %or45 = or i32 %or42, 65536
  br label %do.body50

sw.bb46:                                          ; preds = %idma32_get_slave_devfn.exit
  call void @__sanitizer_cov_trace_pc() #11
  %and47 = and i32 %or42, -65537
  br label %do.body50

do.body50:                                        ; preds = %sw.bb46, %sw.bb44
  %value.1 = phi i32 [ %and47, %sw.bb46 ], [ %or45, %sw.bb44 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !22
  tail call void @arm_heavy_mb() #9
  %35 = tail call i32 @llvm.bswap.i32(i32 %value.1)
  %36 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %chan_id, align 4
  %mul55 = shl i32 %37, 2
  %add56 = add i32 %mul55, 4864
  %add.ptr57 = getelementptr i8, ptr %3, i32 %add56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %35) #9, !srcloc !18
  %38 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %direction, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %39, label %do.body50.cleanup_crit_edge [
    i32 1, label %sw.bb59
    i32 2, label %sw.bb63
  ]

do.body50.cleanup_crit_edge:                      ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb59:                                          ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %chan_id, align 4
  %conv = trunc i32 %42 to i8
  %src_id62 = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 14, i32 1
  %43 = ptrtoint ptr %src_id62 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %src_id62, align 4
  br label %sw.epilog70

sw.bb63:                                          ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #11
  %dst_id65 = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 14, i32 2
  %45 = ptrtoint ptr %dst_id65 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %dst_id65, align 1
  %47 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %chan_id, align 4
  %conv68 = trunc i32 %48 to i8
  br label %sw.epilog70

sw.epilog70:                                      ; preds = %sw.bb63, %sw.bb59
  %src_id.0 = phi i8 [ %conv68, %sw.bb63 ], [ %44, %sw.bb59 ]
  %dst_id.0 = phi i8 [ %46, %sw.bb63 ], [ %conv, %sw.bb59 ]
  %conv72 = zext i8 %dst_id.0 to i32
  %and73 = shl nuw nsw i32 %conv72, 4
  %shl = and i32 %and73, 240
  %conv75 = zext i8 %src_id.0 to i32
  %and76 = and i32 %conv75, 15
  %49 = shl i32 %conv72, 26
  %shl81 = and i32 %49, -1073741824
  %50 = shl nuw i32 %conv75, 24
  %shl86 = and i32 %50, 805306368
  %or78 = or i32 %shl86, %and76
  %or82 = or i32 %or78, %shl
  %or87 = or i32 %or82, %shl81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !23
  tail call void @arm_heavy_mb() #9
  %ch_regs.i = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 1
  %51 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ch_regs.i, align 4
  %CFG_LO = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %52, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CFG_LO, i32 50331648) #9, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !24
  tail call void @arm_heavy_mb() #9
  %53 = tail call i32 @llvm.bswap.i32(i32 %or87)
  %54 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ch_regs.i, align 4
  %CFG_HI = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %55, i32 0, i32 17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CFG_HI, i32 %53) #9, !srcloc !18
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog70, %do.body50.cleanup_crit_edge, %idma32_get_slave_devfn.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idma32_initialize_chan_generic(ptr nocapture noundef readonly %dwc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_id = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 14, i32 2
  %0 = ptrtoint ptr %dst_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dst_id, align 1
  %conv = zext i8 %1 to i32
  %and = shl nuw nsw i32 %conv, 4
  %shl = and i32 %and, 240
  %src_id = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 14, i32 1
  %2 = ptrtoint ptr %src_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %src_id, align 4
  %conv3 = zext i8 %3 to i32
  %and4 = and i32 %conv3, 15
  %or6 = or i32 %shl, %and4
  %4 = shl i32 %conv, 26
  %shl11 = and i32 %4, -1073741824
  %or12 = or i32 %or6, %shl11
  %5 = shl nuw i32 %conv3, 24
  %shl18 = and i32 %5, 805306368
  %or19 = or i32 %or12, %shl18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !25
  tail call void @arm_heavy_mb() #9
  %ch_regs.i = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 1
  %6 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ch_regs.i, align 4
  %CFG_LO = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %7, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CFG_LO, i32 50331648) #9, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !26
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %or19)
  %9 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ch_regs.i, align 4
  %CFG_HI = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %10, i32 0, i32 17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CFG_HI, i32 %8) #9, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idma32_suspend_chan(ptr nocapture noundef readonly %dwc, i1 noundef zeroext %drain) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_regs.i = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 1
  %0 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_regs.i, align 4
  %CFG_LO = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %1, i32 0, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CFG_LO) #9, !srcloc !15
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !27
  %or = or i32 %3, 1024
  %spec.select = select i1 %drain, i32 %or, i32 %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !28
  tail call void @arm_heavy_mb() #9
  %or3 = or i32 %spec.select, 256
  %4 = tail call i32 @llvm.bswap.i32(i32 %or3)
  %5 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ch_regs.i, align 4
  %CFG_LO5 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %6, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CFG_LO5, i32 %4) #9, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idma32_resume_chan(ptr nocapture noundef readonly %dwc, i1 noundef zeroext %drain) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_regs.i = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 1
  %0 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_regs.i, align 4
  %CFG_LO = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %1, i32 0, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CFG_LO) #9, !srcloc !15
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !29
  %and = and i32 %3, -1281
  %spec.select = select i1 %drain, i32 %and, i32 %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !30
  tail call void @arm_heavy_mb() #9
  %and3 = and i32 %spec.select, -257
  %4 = tail call i32 @llvm.bswap.i32(i32 %and3)
  %5 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ch_regs.i, align 4
  %CFG_LO5 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %6, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CFG_LO5, i32 %4) #9, !srcloc !18
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @idma32_prepare_ctllo(ptr nocapture noundef readonly %dwc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %direction = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 4
  %0 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %direction, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %1, label %entry.cond.end6_crit_edge [
    i32 2, label %cond.end.thread
    i32 1, label %cond.true4
  ]

entry.cond.end6_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end6

cond.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %src_maxburst = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 15, i32 5
  %3 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %src_maxburst, align 4
  %phi.cast19 = shl i32 %4, 14
  %phi.bo20 = and i32 %phi.cast19, 4177920
  br label %cond.end6

cond.true4:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dst_maxburst = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 15, i32 6
  %5 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dst_maxburst, align 4
  %phi.cast17 = shl i32 %6, 11
  %phi.bo = and i32 %phi.cast17, 522240
  %phi.bo18 = or i32 %phi.bo, 402653184
  br label %cond.end6

cond.end6:                                        ; preds = %cond.true4, %cond.end.thread, %entry.cond.end6_crit_edge
  %cond23 = phi i32 [ 0, %cond.true4 ], [ %phi.bo20, %cond.end.thread ], [ 0, %entry.cond.end6_crit_edge ]
  %cond7 = phi i32 [ %phi.bo18, %cond.true4 ], [ 402653184, %cond.end.thread ], [ 402653184, %entry.cond.end6_crit_edge ]
  %or12 = or i32 %cond7, %cond23
  ret i32 %or12
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @idma32_encode_maxburst(ptr nocapture noundef readnone %dwc, ptr nocapture noundef %maxburst) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %maxburst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %maxburst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  %2 = tail call i32 @llvm.ctlz.i32(i32 %1, i1 false) #9, !range !31
  %sub = sub nsw i32 31, %2
  %cond = select i1 %cmp, i32 %sub, i32 0
  %3 = ptrtoint ptr %maxburst to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cond, ptr %maxburst, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @idma32_bytes2block(ptr nocapture noundef readonly %dwc, i32 noundef %bytes, i32 noundef %width, ptr nocapture noundef writeonly %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %block_size = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 11
  %0 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %block_size, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 %bytes)
  %3 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %len, align 4
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @idma32_block2bytes(ptr nocapture noundef readnone %dwc, i32 noundef %block, i32 noundef %width) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %block, 131071
  ret i32 %and
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idma32_set_device_name(ptr nocapture noundef writeonly %dw, i32 noundef %id) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.dw_dma, ptr %dw, i32 0, i32 1
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 20, ptr noundef nonnull @.str, i32 noundef %id)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idma32_disable(ptr noundef %dw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @do_dw_dma_off(ptr noundef %dw) #9
  %regs.i.i = getelementptr inbounds %struct.dw_dma, ptr %dw, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i, align 4
  %FIFO_PARTITION1.i = getelementptr inbounds %struct.dw_dma_regs, ptr %1, i32 0, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !32
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i = getelementptr %struct.dw_dma_regs, ptr %1, i32 0, i32 41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1073743876) #9, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %FIFO_PARTITION1.i, i32 1073743876) #9, !srcloc !18
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %FIFO_PARTITION0.i = getelementptr inbounds %struct.dw_dma_regs, ptr %3, i32 0, i32 38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !32
  tail call void @arm_heavy_mb() #9
  %add.ptr.i10.i = getelementptr %struct.dw_dma_regs, ptr %3, i32 0, i32 39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 1073743876) #9, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %FIFO_PARTITION0.i, i32 1073743876) #9, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idma32_enable(ptr noundef %dw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i.i = getelementptr inbounds %struct.dw_dma, ptr %dw, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i, align 4
  %FIFO_PARTITION1.i = getelementptr inbounds %struct.dw_dma_regs, ptr %1, i32 0, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !32
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i = getelementptr %struct.dw_dma_regs, ptr %1, i32 0, i32 41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1073743876) #9, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %FIFO_PARTITION1.i, i32 1073743876) #9, !srcloc !18
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %FIFO_PARTITION0.i = getelementptr inbounds %struct.dw_dma_regs, ptr %3, i32 0, i32 38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !32
  tail call void @arm_heavy_mb() #9
  %add.ptr.i10.i = getelementptr %struct.dw_dma_regs, ptr %3, i32 0, i32 39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 1073743876) #9, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %FIFO_PARTITION0.i, i32 1073743876) #9, !srcloc !18
  tail call void @do_dw_dma_on(ptr noundef %dw) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_dma_probe(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @idma32_dma_remove(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @do_dma_remove(ptr noundef %chip) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_dma_remove(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_dw_dma_off(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_dw_dma_on(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @__ksymtab_idma32_dma_probe, !1, !"__ksymtab_idma32_dma_probe", i1 false, i1 false}
!1 = !{!"../drivers/dma/dw/idma32.c", i32 285, i32 1}
!2 = !{ptr @__ksymtab_idma32_dma_remove, !3, !"__ksymtab_idma32_dma_remove", i1 false, i1 false}
!3 = !{!"../drivers/dma/dw/idma32.c", i32 291, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/dma/dw/idma32.c", i32 219, i32 39}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 6273302}
!16 = !{i64 2154574716}
!17 = !{i64 2154575613}
!18 = !{i64 6272884}
!19 = !{i64 2154576419}
!20 = !{i64 2154579052}
!21 = !{i64 2154579886}
!22 = !{i64 2154581016}
!23 = !{i64 2154581639}
!24 = !{i64 2154582135}
!25 = !{i64 2154582793}
!26 = !{i64 2154583289}
!27 = !{i64 2154584076}
!28 = !{i64 2154584407}
!29 = !{i64 2154585227}
!30 = !{i64 2154585562}
!31 = !{i32 0, i32 33}
!32 = !{i64 2154560139}
!33 = !{i64 2154560524}
