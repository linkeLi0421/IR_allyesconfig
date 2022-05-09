; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/epautoconf.c_pt.bc'
source_filename = "../drivers/usb/gadget/epautoconf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+usb_ep_autoconfig_ss\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_ep_autoconfig_ss\09\09\09\09"
module asm "\09.long\09__crc_usb_ep_autoconfig_ss\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_ep_autoconfig_ss:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_ep_autoconfig_ss\22\09\09\09\09\09"
module asm "__kstrtabns_usb_ep_autoconfig_ss:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usb_ep_autoconfig\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_ep_autoconfig\09\09\09\09"
module asm "\09.long\09__crc_usb_ep_autoconfig\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_ep_autoconfig:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_ep_autoconfig\22\09\09\09\09\09"
module asm "__kstrtabns_usb_ep_autoconfig:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usb_ep_autoconfig_release\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_ep_autoconfig_release\09\09\09\09"
module asm "\09.long\09__crc_usb_ep_autoconfig_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_ep_autoconfig_release:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_ep_autoconfig_release\22\09\09\09\09\09"
module asm "__kstrtabns_usb_ep_autoconfig_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usb_ep_autoconfig_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_ep_autoconfig_reset\09\09\09\09"
module asm "\09.long\09__crc_usb_ep_autoconfig_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_ep_autoconfig_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_ep_autoconfig_reset\22\09\09\09\09\09"
module asm "__kstrtabns_usb_ep_autoconfig_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }

@__kstrtab_usb_ep_autoconfig_ss = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_ep_autoconfig_ss = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_ep_autoconfig_ss = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_ep_autoconfig_ss to i32), ptr @__kstrtab_usb_ep_autoconfig_ss, ptr @__kstrtabns_usb_ep_autoconfig_ss }, section "___ksymtab_gpl+usb_ep_autoconfig_ss", align 4
@__kstrtab_usb_ep_autoconfig = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_ep_autoconfig = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_ep_autoconfig = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_ep_autoconfig to i32), ptr @__kstrtab_usb_ep_autoconfig, ptr @__kstrtabns_usb_ep_autoconfig }, section "___ksymtab_gpl+usb_ep_autoconfig", align 4
@__kstrtab_usb_ep_autoconfig_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_ep_autoconfig_release = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_ep_autoconfig_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_ep_autoconfig_release to i32), ptr @__kstrtab_usb_ep_autoconfig_release, ptr @__kstrtabns_usb_ep_autoconfig_release }, section "___ksymtab_gpl+usb_ep_autoconfig_release", align 4
@__kstrtab_usb_ep_autoconfig_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_ep_autoconfig_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_ep_autoconfig_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_ep_autoconfig_reset to i32), ptr @__kstrtab_usb_ep_autoconfig_reset, ptr @__kstrtabns_usb_ep_autoconfig_reset }, section "___ksymtab_gpl+usb_ep_autoconfig_reset", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_usb_ep_autoconfig, ptr @__ksymtab_usb_ep_autoconfig_release, ptr @__ksymtab_usb_ep_autoconfig_reset, ptr @__ksymtab_usb_ep_autoconfig_ss], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @usb_ep_autoconfig_ss(ptr noundef %gadget, ptr noundef %desc, ptr noundef %ep_comp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 2
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 8
  %match_ep = getelementptr inbounds %struct.usb_gadget_ops, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %match_ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %match_ep, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call ptr %3(ptr noundef %gadget, ptr noundef %desc, ptr noundef %ep_comp) #5
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.found_ep_crit_edge

if.then.found_ep_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %found_ep

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %ep_list = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end5
  %.pn.in = phi ptr [ %ep_list, %if.end5 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %ep_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %ep.0 = getelementptr i8, ptr %.pn, i32 -12
  %call8 = tail call i32 @usb_gadget_ep_match_desc(ptr noundef %gadget, ptr noundef %ep.0, ptr noundef %desc, ptr noundef %ep_comp) #5
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %for.body.for.cond_crit_edge, label %for.body.found_ep_crit_edge

for.body.found_ep_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %found_ep

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

found_ep:                                         ; preds = %for.body.found_ep_crit_edge, %if.then.found_ep_crit_edge
  %ep.1 = phi ptr [ %call, %if.then.found_ep_crit_edge ], [ %ep.0, %for.body.found_ep_crit_edge ]
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %5 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %wMaxPacketSize, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp17 = icmp eq i16 %6, 0
  br i1 %cmp17, label %if.then19, label %found_ep.if.end22_crit_edge

found_ep.if.end22_crit_edge:                      ; preds = %found_ep
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then19:                                        ; preds = %found_ep
  call void @__sanitizer_cov_trace_pc() #7
  %maxpacket_limit = getelementptr inbounds %struct.usb_ep, ptr %ep.1, i32 0, i32 7
  %7 = ptrtoint ptr %maxpacket_limit to i32
  call void @__asan_loadN_noabort(i32 %7, i32 7)
  %bf.load = load i56, ptr %maxpacket_limit, align 2
  %bf.lshr = lshr i56 %bf.load, 24
  %8 = trunc i56 %bf.lshr to i16
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %10 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %9, ptr %wMaxPacketSize, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %found_ep.if.end22_crit_edge
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 2
  %11 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bEndpointAddress, align 1
  %13 = and i8 %12, -128
  store i8 %13, ptr %bEndpointAddress, align 1
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep.1, i32 0, i32 1
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 4
  %arrayidx = getelementptr i8, ptr %15, i32 2
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %conv25 = zext i8 %17 to i32
  %18 = add nsw i32 %conv25, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %18)
  %19 = icmp ult i32 %18, -10
  br i1 %19, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %call31 = tail call i32 @simple_strtoul(ptr noundef %arrayidx, ptr noundef null, i32 noundef 10) #5
  %20 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bEndpointAddress, align 1
  %22 = trunc i32 %call31 to i8
  br label %if.end62

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool40.not = icmp eq i8 %13, 0
  br i1 %tobool40.not, label %if.else50, label %if.then41

if.then41:                                        ; preds = %if.else
  %in_epnum = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 14
  %23 = ptrtoint ptr %in_epnum to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %in_epnum, align 8
  %inc = add i32 %24, 1
  store i32 %inc, ptr %in_epnum, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc)
  %cmp42 = icmp ugt i32 %inc, 15
  br i1 %cmp42, label %if.then41.cleanup_crit_edge, label %if.end45

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end45:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #7
  %25 = trunc i32 %inc to i8
  br label %if.end62

if.else50:                                        ; preds = %if.else
  %out_epnum = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 13
  %26 = ptrtoint ptr %out_epnum to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %out_epnum, align 4
  %inc51 = add i32 %27, 1
  store i32 %inc51, ptr %out_epnum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc51)
  %cmp52 = icmp ugt i32 %inc51, 15
  br i1 %cmp52, label %if.else50.cleanup_crit_edge, label %if.end55

if.else50.cleanup_crit_edge:                      ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end55:                                         ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bEndpointAddress, align 1
  %30 = trunc i32 %inc51 to i8
  br label %if.end62

if.end62:                                         ; preds = %if.end55, %if.end45, %if.then28
  %.sink95 = phi i8 [ -128, %if.end45 ], [ %30, %if.end55 ], [ %22, %if.then28 ]
  %.sink = phi i8 [ %25, %if.end45 ], [ %29, %if.end55 ], [ %21, %if.then28 ]
  %conv48 = or i8 %.sink, %.sink95
  %31 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv48, ptr %bEndpointAddress, align 1
  %address = getelementptr inbounds %struct.usb_ep, ptr %ep.1, i32 0, i32 8
  %32 = ptrtoint ptr %address to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv48, ptr %address, align 1
  %desc64 = getelementptr inbounds %struct.usb_ep, ptr %ep.1, i32 0, i32 9
  %33 = ptrtoint ptr %desc64 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %desc64, align 4
  %comp_desc = getelementptr inbounds %struct.usb_ep, ptr %ep.1, i32 0, i32 10
  %34 = ptrtoint ptr %comp_desc to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %comp_desc, align 4
  %claimed = getelementptr inbounds %struct.usb_ep, ptr %ep.1, i32 0, i32 5
  %35 = ptrtoint ptr %claimed to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %claimed, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.else50.cleanup_crit_edge, %if.then41.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %ep.1, %if.end62 ], [ null, %if.then41.cleanup_crit_edge ], [ null, %if.else50.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_ep_match_desc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @usb_ep_autoconfig(ptr noundef %gadget, ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_ep_autoconfig_ss(ptr noundef %gadget, ptr noundef %desc, ptr noundef null)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %0 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bmAttributes, align 1
  %2 = and i8 %1, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %cmp = icmp eq i8 %2, 2
  br i1 %cmp, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %maxpacket_limit = getelementptr inbounds %struct.usb_ep, ptr %call, i32 0, i32 7
  %3 = ptrtoint ptr %maxpacket_limit to i32
  call void @__asan_loadN_noabort(i32 %3, i32 7)
  %bf.load = load i56, ptr %maxpacket_limit, align 2
  %bf.lshr = lshr i56 %bf.load, 24
  %4 = trunc i56 %bf.lshr to i32
  %bf.cast = and i32 %4, 65535
  %5 = tail call i32 @llvm.umin.i32(i32 %bf.cast, i32 64)
  %conv9 = trunc i32 %5 to i16
  %6 = shl nuw nsw i16 %conv9, 8
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %7 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %wMaxPacketSize, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @usb_ep_autoconfig_release(ptr nocapture noundef writeonly %ep) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %claimed = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 5
  %0 = ptrtoint ptr %claimed to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %claimed, align 4
  %1 = ptrtoint ptr %ep to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %ep, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_ep_autoconfig_reset(ptr noundef %gadget) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ep_list = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 4
  %0 = ptrtoint ptr %ep_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn14 = load ptr, ptr %ep_list, align 4
  %cmp.not15 = icmp eq ptr %.pn14, %ep_list
  br i1 %cmp.not15, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn16 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn14, %entry.for.body_crit_edge ]
  %ep.0 = getelementptr i8, ptr %.pn16, i32 -12
  %claimed = getelementptr i8, ptr %.pn16, i32 12
  %1 = ptrtoint ptr %claimed to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %claimed, align 4
  %2 = ptrtoint ptr %ep.0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ep.0, align 4
  %3 = ptrtoint ptr %.pn16 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn16, align 4
  %cmp.not = icmp eq ptr %.pn, %ep_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %in_epnum = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 14
  %4 = ptrtoint ptr %in_epnum to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %in_epnum, align 8
  %out_epnum = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 13
  %5 = ptrtoint ptr %out_epnum to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %out_epnum, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @__ksymtab_usb_ep_autoconfig_ss, !1, !"__ksymtab_usb_ep_autoconfig_ss", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/epautoconf.c", i32 115, i32 1}
!2 = !{ptr @__ksymtab_usb_ep_autoconfig, !3, !"__ksymtab_usb_ep_autoconfig", i1 false, i1 false}
!3 = !{!"../drivers/usb/gadget/epautoconf.c", i32 175, i32 1}
!4 = !{ptr @__ksymtab_usb_ep_autoconfig_release, !5, !"__ksymtab_usb_ep_autoconfig_release", i1 false, i1 false}
!5 = !{!"../drivers/usb/gadget/epautoconf.c", i32 192, i32 1}
!6 = !{ptr @__ksymtab_usb_ep_autoconfig_reset, !7, !"__ksymtab_usb_ep_autoconfig_reset", i1 false, i1 false}
!7 = !{!"../drivers/usb/gadget/epautoconf.c", i32 214, i32 1}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
