; ModuleID = '/llk/IR_all_yes/drivers/pci/remove.c_pt.bc'
source_filename = "../drivers/pci/remove.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+pci_remove_bus\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_remove_bus\09\09\09\09"
module asm "\09.long\09__crc_pci_remove_bus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_remove_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_remove_bus\22\09\09\09\09\09"
module asm "__kstrtabns_pci_remove_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_stop_and_remove_bus_device\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_stop_and_remove_bus_device\09\09\09\09"
module asm "\09.long\09__crc_pci_stop_and_remove_bus_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_stop_and_remove_bus_device:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_stop_and_remove_bus_device\22\09\09\09\09\09"
module asm "__kstrtabns_pci_stop_and_remove_bus_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_stop_and_remove_bus_device_locked\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_stop_and_remove_bus_device_locked\09\09\09\09"
module asm "\09.long\09__crc_pci_stop_and_remove_bus_device_locked\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_stop_and_remove_bus_device_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_stop_and_remove_bus_device_locked\22\09\09\09\09\09"
module asm "__kstrtabns_pci_stop_and_remove_bus_device_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_stop_root_bus\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_stop_root_bus\09\09\09\09"
module asm "\09.long\09__crc_pci_stop_root_bus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_stop_root_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_stop_root_bus\22\09\09\09\09\09"
module asm "__kstrtabns_pci_stop_root_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_remove_root_bus\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_remove_root_bus\09\09\09\09"
module asm "\09.long\09__crc_pci_remove_root_bus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_remove_root_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_remove_root_bus\22\09\09\09\09\09"
module asm "__kstrtabns_pci_remove_root_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [32 x i8], [0 x i32] }

@pci_bus_sem = external dso_local global %struct.rw_semaphore, align 4
@__kstrtab_pci_remove_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_remove_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_remove_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_remove_bus to i32), ptr @__kstrtab_pci_remove_bus, ptr @__kstrtabns_pci_remove_bus }, section "___ksymtab+pci_remove_bus", align 4
@__kstrtab_pci_stop_and_remove_bus_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_stop_and_remove_bus_device = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_stop_and_remove_bus_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_stop_and_remove_bus_device to i32), ptr @__kstrtab_pci_stop_and_remove_bus_device, ptr @__kstrtabns_pci_stop_and_remove_bus_device }, section "___ksymtab+pci_stop_and_remove_bus_device", align 4
@__kstrtab_pci_stop_and_remove_bus_device_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_stop_and_remove_bus_device_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_stop_and_remove_bus_device_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_stop_and_remove_bus_device_locked to i32), ptr @__kstrtab_pci_stop_and_remove_bus_device_locked, ptr @__kstrtabns_pci_stop_and_remove_bus_device_locked }, section "___ksymtab_gpl+pci_stop_and_remove_bus_device_locked", align 4
@__kstrtab_pci_stop_root_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_stop_root_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_stop_root_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_stop_root_bus to i32), ptr @__kstrtab_pci_stop_root_bus, ptr @__kstrtabns_pci_stop_root_bus }, section "___ksymtab_gpl+pci_stop_root_bus", align 4
@__kstrtab_pci_remove_root_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_remove_root_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_remove_root_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_remove_root_bus to i32), ptr @__kstrtab_pci_remove_root_bus, ptr @__kstrtabns_pci_remove_root_bus }, section "___ksymtab_gpl+pci_remove_root_bus", align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_pci_remove_bus, ptr @__ksymtab_pci_remove_root_bus, ptr @__ksymtab_pci_stop_and_remove_bus_device, ptr @__ksymtab_pci_stop_and_remove_bus_device_locked, ptr @__ksymtab_pci_stop_root_bus], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_remove_bus(ptr noundef %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_proc_detach_bus(ptr noundef %bus) #2
  tail call void @down_write(ptr noundef nonnull @pci_bus_sem) #2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %bus) #2
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %bus, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %bus, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %bus, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @pci_bus_release_busn_res(ptr noundef %bus) #2
  tail call void @up_write(ptr noundef nonnull @pci_bus_sem) #2
  %ops = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 9
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 8
  %remove_bus = getelementptr inbounds %struct.pci_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %remove_bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %remove_bus, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %list_del.exit.if.end_crit_edge, label %if.then

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %11(ptr noundef %bus) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del.exit.if.end_crit_edge
  tail call void @pcibios_remove_bus(ptr noundef %bus) #2
  %dev = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 21
  tail call void @device_unregister(ptr noundef %dev) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_proc_detach_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bus_release_busn_res(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcibios_remove_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_stop_and_remove_bus_device(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @pci_stop_bus_device(ptr noundef %dev)
  tail call fastcc void @pci_remove_bus_device(ptr noundef %dev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pci_stop_bus_device(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subordinate, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  %devices = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 3
  %prev = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev, align 4
  %cmp.not19 = icmp eq ptr %3, %devices
  br i1 %cmp.not19, label %if.then.if.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %child.020 = phi ptr [ %tmp.0, %for.body.for.body_crit_edge ], [ %3, %if.then.for.body_crit_edge ]
  %tmp.0.in = getelementptr inbounds %struct.list_head, ptr %child.020, i32 0, i32 1
  %4 = ptrtoint ptr %tmp.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.0 = load ptr, ptr %tmp.0.in, align 4
  tail call fastcc void @pci_stop_bus_device(ptr noundef %child.020)
  %cmp.not = icmp eq ptr %tmp.0, %devices
  br i1 %cmp.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @pci_pme_active(ptr noundef %dev, i1 noundef zeroext false) #2
  %priv_flags.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 81
  %5 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %priv_flags.i.i, align 4
  %and1.i.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.pci_stop_dev.exit_crit_edge, label %if.then.i

if.end.pci_stop_dev.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %pci_stop_dev.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void @device_release_driver(ptr noundef %dev1.i) #2
  %call2.i = tail call i32 @pci_proc_detach_device(ptr noundef %dev) #2
  tail call void @pci_remove_sysfs_dev_files(ptr noundef %dev) #2
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %priv_flags.i.i) #2
  br label %pci_stop_dev.exit

pci_stop_dev.exit:                                ; preds = %if.then.i, %if.end.pci_stop_dev.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pci_remove_bus_device(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subordinate, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  %devices = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devices, align 4
  %cmp.not22 = icmp eq ptr %3, %devices
  br i1 %cmp.not22, label %if.then.for.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %child.023 = phi ptr [ %tmp.0, %for.body.for.body_crit_edge ], [ %3, %if.then.for.body_crit_edge ]
  %4 = ptrtoint ptr %child.023 to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.0 = load ptr, ptr %child.023, align 8
  tail call fastcc void @pci_remove_bus_device(ptr noundef %child.023)
  %cmp.not = icmp eq ptr %tmp.0, %devices
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  tail call void @pci_remove_bus(ptr noundef nonnull %1)
  %5 = ptrtoint ptr %subordinate to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %subordinate, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  %parent.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 0, i32 2
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.pci_destroy_dev.exit_crit_edge, label %if.end.i

if.end.pci_destroy_dev.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %pci_destroy_dev.exit

if.end.i:                                         ; preds = %if.end
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void @device_del(ptr noundef %dev1.i) #2
  tail call void @down_write(ptr noundef nonnull @pci_bus_sem) #2
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dev) #2
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %dev, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %dev, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %dev, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @up_write(ptr noundef nonnull @pci_bus_sem) #2
  tail call void @pcie_aspm_exit_link_state(ptr noundef %dev) #2
  tail call void @pci_bridge_d3_update(ptr noundef %dev) #2
  %resource.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %list_del.exit.i
  %i.04.i.i = phi i32 [ 0, %list_del.exit.i ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %parent.i.i = getelementptr %struct.resource, ptr %resource.i.i, i32 %i.04.i.i, i32 5
  %16 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %if.then.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr.i.i = getelementptr %struct.resource, ptr %resource.i.i, i32 %i.04.i.i
  %call.i.i = tail call i32 @release_resource(ptr noundef %add.ptr.i.i) #2
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i.i.if.end.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.04.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 17
  br i1 %exitcond.not.i.i, label %pci_free_resources.exit.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i.i

pci_free_resources.exit.i:                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @put_device(ptr noundef %dev1.i) #2
  br label %pci_destroy_dev.exit

pci_destroy_dev.exit:                             ; preds = %pci_free_resources.exit.i, %if.end.pci_destroy_dev.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_stop_and_remove_bus_device_locked(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_lock_rescan_remove() #2
  tail call fastcc void @pci_stop_bus_device(ptr noundef %dev) #2
  tail call fastcc void @pci_remove_bus_device(ptr noundef %dev) #2
  tail call void @pci_unlock_rescan_remove() #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_lock_rescan_remove() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unlock_rescan_remove() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_stop_root_bus(ptr noundef readonly %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %bridge = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 20
  %2 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bridge, align 8
  %devices = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 3
  %prev = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev, align 4
  %cmp.not24 = icmp eq ptr %5, %devices
  br i1 %cmp.not24, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %child.025 = phi ptr [ %tmp.0, %for.body.for.body_crit_edge ], [ %5, %if.end.for.body_crit_edge ]
  %tmp.0.in = getelementptr inbounds %struct.list_head, ptr %child.025, i32 0, i32 1
  %6 = ptrtoint ptr %tmp.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %tmp.0 = load ptr, ptr %tmp.0.in, align 4
  tail call fastcc void @pci_stop_bus_device(ptr noundef %child.025)
  %cmp.not = icmp eq ptr %tmp.0, %devices
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @device_release_driver(ptr noundef %3) #2
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_release_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_remove_root_bus(ptr noundef %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %bridge = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 20
  %2 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bridge, align 8
  %devices = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 3
  %4 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devices, align 4
  %cmp.not27 = icmp eq ptr %5, %devices
  br i1 %cmp.not27, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %child.028 = phi ptr [ %tmp.0, %for.body.for.body_crit_edge ], [ %5, %if.end.for.body_crit_edge ]
  %6 = ptrtoint ptr %child.028 to i32
  call void @__asan_load4_noabort(i32 %6)
  %tmp.0 = load ptr, ptr %child.028, align 8
  tail call fastcc void @pci_remove_bus_device(ptr noundef %child.028)
  %cmp.not = icmp eq ptr %tmp.0, %devices
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @pci_remove_bus(ptr noundef %bus)
  %bus16 = getelementptr inbounds %struct.pci_host_bridge, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %bus16 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %bus16, align 32
  tail call void @device_del(ptr noundef %3) #2
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_pme_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_proc_detach_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_remove_sysfs_dev_files(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcie_aspm_exit_link_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bridge_d3_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__ksymtab_pci_remove_bus, !1, !"__ksymtab_pci_remove_bus", i1 false, i1 false}
!1 = !{!"../drivers/pci/remove.c", i32 64, i32 1}
!2 = !{ptr @__ksymtab_pci_stop_and_remove_bus_device, !3, !"__ksymtab_pci_stop_and_remove_bus_device", i1 false, i1 false}
!3 = !{!"../drivers/pci/remove.c", i32 120, i32 1}
!4 = !{ptr @__ksymtab_pci_stop_and_remove_bus_device_locked, !5, !"__ksymtab_pci_stop_and_remove_bus_device_locked", i1 false, i1 false}
!5 = !{!"../drivers/pci/remove.c", i32 128, i32 1}
!6 = !{ptr @__ksymtab_pci_stop_root_bus, !7, !"__ksymtab_pci_stop_root_bus", i1 false, i1 false}
!7 = !{!"../drivers/pci/remove.c", i32 146, i32 1}
!8 = !{ptr @__ksymtab_pci_remove_root_bus, !9, !"__ksymtab_pci_remove_root_bus", i1 false, i1 false}
!9 = !{!"../drivers/pci/remove.c", i32 166, i32 1}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
