; ModuleID = '/llk/IR_all_yes/drivers/pci/host-bridge.c_pt.bc'
source_filename = "../drivers/pci/host-bridge.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pci_find_host_bridge\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_find_host_bridge\09\09\09\09"
module asm "\09.long\09__crc_pci_find_host_bridge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_find_host_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_find_host_bridge\22\09\09\09\09\09"
module asm "__kstrtabns_pci_find_host_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_set_host_bridge_release\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_set_host_bridge_release\09\09\09\09"
module asm "\09.long\09__crc_pci_set_host_bridge_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_set_host_bridge_release:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_set_host_bridge_release\22\09\09\09\09\09"
module asm "__kstrtabns_pci_set_host_bridge_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pcibios_resource_to_bus\22, \22a\22\09"
module asm "\09.weak\09__crc_pcibios_resource_to_bus\09\09\09\09"
module asm "\09.long\09__crc_pcibios_resource_to_bus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcibios_resource_to_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22pcibios_resource_to_bus\22\09\09\09\09\09"
module asm "__kstrtabns_pcibios_resource_to_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pcibios_bus_to_resource\22, \22a\22\09"
module asm "\09.weak\09__crc_pcibios_bus_to_resource\09\09\09\09"
module asm "\09.long\09__crc_pcibios_bus_to_resource\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcibios_bus_to_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22pcibios_bus_to_resource\22\09\09\09\09\09"
module asm "__kstrtabns_pcibios_bus_to_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [32 x i8], [0 x i32] }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.pci_bus_region = type { i32, i32 }

@__kstrtab_pci_find_host_bridge = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_find_host_bridge = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_find_host_bridge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_find_host_bridge to i32), ptr @__kstrtab_pci_find_host_bridge, ptr @__kstrtabns_pci_find_host_bridge }, section "___ksymtab_gpl+pci_find_host_bridge", align 4
@__kstrtab_pci_set_host_bridge_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_set_host_bridge_release = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_set_host_bridge_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_set_host_bridge_release to i32), ptr @__kstrtab_pci_set_host_bridge_release, ptr @__kstrtabns_pci_set_host_bridge_release }, section "___ksymtab_gpl+pci_set_host_bridge_release", align 4
@__kstrtab_pcibios_resource_to_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcibios_resource_to_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_pcibios_resource_to_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcibios_resource_to_bus to i32), ptr @__kstrtab_pcibios_resource_to_bus, ptr @__kstrtabns_pcibios_resource_to_bus }, section "___ksymtab+pcibios_resource_to_bus", align 4
@__kstrtab_pcibios_bus_to_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcibios_bus_to_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_pcibios_bus_to_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcibios_bus_to_resource to i32), ptr @__kstrtab_pcibios_bus_to_resource, ptr @__kstrtabns_pcibios_bus_to_resource }, section "___ksymtab+pcibios_bus_to_resource", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_pci_find_host_bridge, ptr @__ksymtab_pci_set_host_bridge_release, ptr @__ksymtab_pcibios_bus_to_resource, ptr @__ksymtab_pcibios_resource_to_bus], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pci_find_host_bridge(ptr nocapture noundef readonly %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %bus.addr.0.i = phi ptr [ %bus, %entry ], [ %1, %while.cond.i.while.cond.i_crit_edge ]
  %parent.i = getelementptr inbounds %struct.pci_bus, ptr %bus.addr.0.i, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %find_pci_root_bus.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

find_pci_root_bus.exit:                           ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %bridge = getelementptr inbounds %struct.pci_bus, ptr %bus.addr.0.i, i32 0, i32 20
  %2 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bridge, align 8
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pci_get_host_bridge_device(ptr nocapture noundef readonly %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %bus.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.cond.i.while.cond.i_crit_edge ]
  %parent.i = getelementptr inbounds %struct.pci_bus, ptr %bus.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %find_pci_root_bus.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

find_pci_root_bus.exit:                           ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %bridge1 = getelementptr inbounds %struct.pci_bus, ptr %bus.addr.0.i, i32 0, i32 20
  %4 = ptrtoint ptr %bridge1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bridge1, align 8
  %call2 = tail call ptr @kobject_get(ptr noundef %5) #6
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_put_host_bridge_device(ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kobject_put(ptr noundef %dev) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @pci_set_host_bridge_release(ptr nocapture noundef writeonly %bridge, ptr noundef %release_fn, ptr noundef %release_data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %release_fn1 = getelementptr inbounds %struct.pci_host_bridge, ptr %bridge, i32 0, i32 11
  %0 = ptrtoint ptr %release_fn1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %release_fn, ptr %release_fn1, align 16
  %release_data2 = getelementptr inbounds %struct.pci_host_bridge, ptr %bridge, i32 0, i32 12
  %1 = ptrtoint ptr %release_data2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %release_data, ptr %release_data2, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcibios_resource_to_bus(ptr nocapture noundef readonly %bus, ptr nocapture noundef writeonly %region, ptr nocapture noundef readonly %res) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %entry
  %bus.addr.0.i.i = phi ptr [ %bus, %entry ], [ %1, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %parent.i.i = getelementptr inbounds %struct.pci_bus, ptr %bus.addr.0.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %pci_find_host_bridge.exit, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

pci_find_host_bridge.exit:                        ; preds = %while.cond.i.i
  %bridge.i = getelementptr inbounds %struct.pci_bus, ptr %bus.addr.0.i.i, i32 0, i32 20
  %2 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bridge.i, align 8
  %windows = getelementptr inbounds %struct.pci_host_bridge, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %windows to i32
  call void @__asan_load4_noabort(i32 %4)
  %window.022 = load ptr, ptr %windows, align 4
  %cmp.not23 = icmp eq ptr %window.022, %windows
  br i1 %cmp.not23, label %pci_find_host_bridge.exit.for.end_crit_edge, label %for.body.lr.ph

pci_find_host_bridge.exit.for.end_crit_edge:      ; preds = %pci_find_host_bridge.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %pci_find_host_bridge.exit
  %flags.i17.i = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 3
  %5 = ptrtoint ptr %flags.i17.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i17.i, align 4
  %and3.i = and i32 %6, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %end9.i = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.body.lr.ph
  %window.024 = phi ptr [ %window.022, %for.body.lr.ph ], [ %window.0, %for.cond.backedge.for.body_crit_edge ]
  %res2 = getelementptr inbounds %struct.resource_entry, ptr %window.024, i32 0, i32 1
  %7 = ptrtoint ptr %res2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %res2, align 4
  %flags.i.i = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i.i, align 4
  %11 = xor i32 %6, %10
  %12 = and i32 %11, 7936
  %and.i = and i32 %10, 536870912
  %13 = or i32 %12, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %14 = icmp eq i32 %13, 0
  %or.cond19.i = select i1 %14, i1 %tobool4.not.i, i1 false
  br i1 %or.cond19.i, label %if.end6.i, label %for.body.for.cond.backedge_crit_edge

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.backedge

if.end6.i:                                        ; preds = %for.body
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %8, align 4
  %17 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %res, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp8.not.i = icmp ugt i32 %16, %18
  br i1 %cmp8.not.i, label %if.end6.i.for.cond.backedge_crit_edge, label %land.rhs.i

if.end6.i.for.cond.backedge_crit_edge:            ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.backedge

land.rhs.i:                                       ; preds = %if.end6.i
  %end.i = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 1
  %19 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %end.i, align 4
  %21 = ptrtoint ptr %end9.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %end9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp10.i.not = icmp ult i32 %20, %22
  br i1 %cmp10.i.not, label %land.rhs.i.for.cond.backedge_crit_edge, label %if.then

land.rhs.i.for.cond.backedge_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %land.rhs.i.for.cond.backedge_crit_edge, %if.end6.i.for.cond.backedge_crit_edge, %for.body.for.cond.backedge_crit_edge
  %23 = ptrtoint ptr %window.024 to i32
  call void @__asan_load4_noabort(i32 %23)
  %window.0 = load ptr, ptr %window.024, align 4
  %cmp.not = icmp eq ptr %window.0, %windows
  br i1 %cmp.not, label %for.cond.backedge.for.end_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.backedge.for.end_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then:                                          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  %offset4 = getelementptr inbounds %struct.resource_entry, ptr %window.024, i32 0, i32 2
  %24 = ptrtoint ptr %offset4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset4, align 4
  br label %for.end

for.end:                                          ; preds = %if.then, %for.cond.backedge.for.end_crit_edge, %pci_find_host_bridge.exit.for.end_crit_edge
  %offset.0 = phi i32 [ %25, %if.then ], [ 0, %pci_find_host_bridge.exit.for.end_crit_edge ], [ 0, %for.cond.backedge.for.end_crit_edge ]
  %26 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %res, align 4
  %sub = sub i32 %27, %offset.0
  %28 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub, ptr %region, align 4
  %end = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %29 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %end, align 4
  %sub11 = sub i32 %30, %offset.0
  %end12 = getelementptr inbounds %struct.pci_bus_region, ptr %region, i32 0, i32 1
  %31 = ptrtoint ptr %end12 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub11, ptr %end12, align 4
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcibios_bus_to_resource(ptr nocapture noundef readonly %bus, ptr nocapture noundef %res, ptr nocapture noundef readonly %region) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %entry
  %bus.addr.0.i.i = phi ptr [ %bus, %entry ], [ %1, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %parent.i.i = getelementptr inbounds %struct.pci_bus, ptr %bus.addr.0.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %pci_find_host_bridge.exit, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

pci_find_host_bridge.exit:                        ; preds = %while.cond.i.i
  %bridge.i = getelementptr inbounds %struct.pci_bus, ptr %bus.addr.0.i.i, i32 0, i32 20
  %2 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bridge.i, align 8
  %windows = getelementptr inbounds %struct.pci_host_bridge, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %windows to i32
  call void @__asan_load4_noabort(i32 %4)
  %window.046 = load ptr, ptr %windows, align 4
  %cmp.not47 = icmp eq ptr %window.046, %windows
  br i1 %cmp.not47, label %pci_find_host_bridge.exit.for.end_crit_edge, label %for.body.lr.ph

pci_find_host_bridge.exit.for.end_crit_edge:      ; preds = %pci_find_host_bridge.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %pci_find_host_bridge.exit
  %flags.i = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 3
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %end2.i = getelementptr inbounds %struct.pci_bus_region, ptr %region, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %window.048 = phi ptr [ %window.046, %for.body.lr.ph ], [ %window.0, %cleanup.for.body_crit_edge ]
  %res3 = getelementptr inbounds %struct.resource_entry, ptr %window.048, i32 0, i32 1
  %7 = ptrtoint ptr %res3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %res3, align 4
  %flags.i40 = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %flags.i40 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i40, align 4
  %11 = xor i32 %10, %6
  %12 = and i32 %11, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp5.not = icmp eq i32 %12, 0
  br i1 %cmp5.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %8, align 4
  %offset7 = getelementptr inbounds %struct.resource_entry, ptr %window.048, i32 0, i32 2
  %15 = ptrtoint ptr %offset7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset7, align 4
  %sub = sub i32 %14, %16
  %17 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %region, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %18)
  %cmp.not.i = icmp ugt i32 %sub, %18
  br i1 %cmp.not.i, label %if.end.cleanup_crit_edge, label %region_contains.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

region_contains.exit:                             ; preds = %if.end
  %end = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 1
  %19 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %end, align 4
  %sub11 = sub i32 %20, %16
  %21 = ptrtoint ptr %end2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %end2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub11, i32 %22)
  %cmp3.i.not = icmp ult i32 %sub11, %22
  br i1 %cmp3.i.not, label %region_contains.exit.cleanup_crit_edge, label %region_contains.exit.for.end_crit_edge

region_contains.exit.for.end_crit_edge:           ; preds = %region_contains.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

region_contains.exit.cleanup_crit_edge:           ; preds = %region_contains.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %region_contains.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %23 = ptrtoint ptr %window.048 to i32
  call void @__asan_load4_noabort(i32 %23)
  %window.0 = load ptr, ptr %window.048, align 4
  %cmp.not = icmp eq ptr %window.0, %windows
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %region_contains.exit.for.end_crit_edge, %pci_find_host_bridge.exit.for.end_crit_edge
  %offset.2 = phi i32 [ 0, %pci_find_host_bridge.exit.for.end_crit_edge ], [ %16, %region_contains.exit.for.end_crit_edge ], [ 0, %cleanup.for.end_crit_edge ]
  %24 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %region, align 4
  %add = add i32 %25, %offset.2
  %26 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add, ptr %res, align 4
  %end24 = getelementptr inbounds %struct.pci_bus_region, ptr %region, i32 0, i32 1
  %27 = ptrtoint ptr %end24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %end24, align 4
  %add25 = add i32 %28, %offset.2
  %end26 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %29 = ptrtoint ptr %end26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add25, ptr %end26, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @__ksymtab_pci_find_host_bridge, !1, !"__ksymtab_pci_find_host_bridge", i1 false, i1 false}
!1 = !{!"../drivers/pci/host-bridge.c", i32 26, i32 1}
!2 = !{ptr @__ksymtab_pci_set_host_bridge_release, !3, !"__ksymtab_pci_set_host_bridge_release", i1 false, i1 false}
!3 = !{!"../drivers/pci/host-bridge.c", i32 49, i32 1}
!4 = !{ptr @__ksymtab_pcibios_resource_to_bus, !5, !"__ksymtab_pcibios_resource_to_bus", i1 false, i1 false}
!5 = !{!"../drivers/pci/host-bridge.c", i32 68, i32 1}
!6 = !{ptr @__ksymtab_pcibios_bus_to_resource, !7, !"__ksymtab_pcibios_bus_to_resource", i1 false, i1 false}
!7 = !{!"../drivers/pci/host-bridge.c", i32 101, i32 1}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
