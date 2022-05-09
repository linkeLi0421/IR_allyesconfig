; ModuleID = '/llk/IR_all_yes/net/llc/llc_output.c_pt.bc'
source_filename = "../net/llc/llc_output.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+llc_mac_hdr_init\22, \22a\22\09"
module asm "\09.weak\09__crc_llc_mac_hdr_init\09\09\09\09"
module asm "\09.long\09__crc_llc_mac_hdr_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_llc_mac_hdr_init:\09\09\09\09\09"
module asm "\09.asciz \09\22llc_mac_hdr_init\22\09\09\09\09\09"
module asm "__kstrtabns_llc_mac_hdr_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+llc_build_and_send_ui_pkt\22, \22a\22\09"
module asm "\09.weak\09__crc_llc_build_and_send_ui_pkt\09\09\09\09"
module asm "\09.long\09__crc_llc_build_and_send_ui_pkt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_llc_build_and_send_ui_pkt:\09\09\09\09\09"
module asm "\09.asciz \09\22llc_build_and_send_ui_pkt\22\09\09\09\09\09"
module asm "__kstrtabns_llc_build_and_send_ui_pkt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.96, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.96 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.97, %union.anon.98, [48 x i8], %union.anon.99, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.101, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%union.anon.97 = type { ptr }
%union.anon.98 = type { i64 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i32, ptr }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.103, i32, i32, i32, i16, i16, %union.anon.105, i32, %union.anon.106, %union.anon.107, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.103 = type { i32 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { i16 }
%struct.llc_sap = type { i8, i8, i8, %struct.refcount_struct, ptr, %struct.llc_addr, %struct.list_head, %struct.spinlock, i32, [64 x %struct.hlist_nulls_head], [64 x %struct.hlist_head], %struct.callback_head }
%struct.llc_addr = type { i8, [6 x i8] }
%struct.hlist_nulls_head = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.llc_pdu_un = type { i8, i8, i8 }

@__kstrtab_llc_mac_hdr_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_llc_mac_hdr_init = external dso_local constant [0 x i8], align 1
@__ksymtab_llc_mac_hdr_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @llc_mac_hdr_init to i32), ptr @__kstrtab_llc_mac_hdr_init, ptr @__kstrtabns_llc_mac_hdr_init }, section "___ksymtab+llc_mac_hdr_init", align 4
@__kstrtab_llc_build_and_send_ui_pkt = external dso_local constant [0 x i8], align 1
@__kstrtabns_llc_build_and_send_ui_pkt = external dso_local constant [0 x i8], align 1
@__ksymtab_llc_build_and_send_ui_pkt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @llc_build_and_send_ui_pkt to i32), ptr @__kstrtab_llc_build_and_send_ui_pkt, ptr @__kstrtabns_llc_build_and_send_ui_pkt }, section "___ksymtab+llc_build_and_send_ui_pkt", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 772]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 772]
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_llc_build_and_send_ui_pkt, ptr @__ksymtab_llc_mac_hdr_init], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_mac_hdr_init(ptr noundef %skb, ptr noundef %sa, ptr noundef %da) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %type = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 32
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %type, align 16
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i16 %4, label %entry.sw.epilog_crit_edge [
    i16 1, label %entry.sw.bb_crit_edge
    i16 772, label %entry.sw.bb_crit_edge6
  ]

entry.sw.bb_crit_edge6:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge6
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %header_ops.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 49
  %8 = ptrtoint ptr %header_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %header_ops.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %sw.bb.dev_hard_header.exit_crit_edge, label %lor.lhs.false.i

sw.bb.dev_hard_header.exit_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %dev_hard_header.exit

lor.lhs.false.i:                                  ; preds = %sw.bb
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool2.not.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.dev_hard_header.exit_crit_edge, label %if.end.i

lor.lhs.false.i.dev_hard_header.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dev_hard_header.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  %call.i = tail call i32 %11(ptr noundef %skb, ptr noundef %2, i16 noundef zeroext 4, ptr noundef %da, ptr noundef %sa, i32 noundef %7) #3
  br label %dev_hard_header.exit

dev_hard_header.exit:                             ; preds = %if.end.i, %lor.lhs.false.i.dev_hard_header.exit_crit_edge, %sw.bb.dev_hard_header.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ 0, %lor.lhs.false.i.dev_hard_header.exit_crit_edge ], [ 0, %sw.bb.dev_hard_header.exit_crit_edge ]
  %12 = tail call i32 @llvm.smin.i32(i32 %retval.0.i, i32 0)
  br label %sw.epilog

sw.epilog:                                        ; preds = %dev_hard_header.exit, %entry.sw.epilog_crit_edge
  %rc.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ %12, %dev_hard_header.exit ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_build_and_send_ui_pkt(ptr nocapture noundef readonly %sap, ptr noundef %skb, ptr noundef %dmac, i8 noundef zeroext %dsap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %laddr = getelementptr inbounds %struct.llc_sap, ptr %sap, i32 0, i32 5
  %0 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %laddr, align 4
  %call.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 3) #3
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %6 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 %conv.i.i.i
  %7 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %dsap, ptr %add.ptr.i.i.i, align 1
  %ssap4.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %ssap4.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %1, ptr %ssap4.i, align 1
  %9 = load ptr, ptr %head.i.i, align 8
  %10 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i11 = zext i16 %10 to i32
  %add.ptr.i.i.i12 = getelementptr i8, ptr %9, i32 %conv.i.i.i11
  %ctrl_1.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i12, i32 0, i32 2
  %11 = ptrtoint ptr %ctrl_1.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %ctrl_1.i, align 1
  %12 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 86
  %15 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_addr, align 64
  %type.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 32
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %type.i, align 16
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.1)
  switch i16 %18, label %entry.if.else_crit_edge [
    i16 1, label %entry.sw.bb.i_crit_edge
    i16 772, label %entry.sw.bb.i_crit_edge18
  ]

entry.sw.bb.i_crit_edge18:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge18
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i, align 4
  %header_ops.i.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 49
  %22 = ptrtoint ptr %header_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %header_ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %sw.bb.i.if.then_crit_edge, label %lor.lhs.false.i.i

sw.bb.i.if.then_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

lor.lhs.false.i.i:                                ; preds = %sw.bb.i
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %tobool2.not.i.i = icmp eq ptr %25, null
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i.if.then_crit_edge, label %llc_mac_hdr_init.exit

lor.lhs.false.i.i.if.then_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

llc_mac_hdr_init.exit:                            ; preds = %lor.lhs.false.i.i
  %call.i.i = tail call i32 %25(ptr noundef %skb, ptr noundef %14, i16 noundef zeroext 4, ptr noundef %dmac, ptr noundef %16, i32 noundef %21) #3
  %26 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %llc_mac_hdr_init.exit.if.then_crit_edge, label %llc_mac_hdr_init.exit.if.else_crit_edge, !prof !13

llc_mac_hdr_init.exit.if.else_crit_edge:          ; preds = %llc_mac_hdr_init.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

llc_mac_hdr_init.exit.if.then_crit_edge:          ; preds = %llc_mac_hdr_init.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then:                                          ; preds = %llc_mac_hdr_init.exit.if.then_crit_edge, %lor.lhs.false.i.i.if.then_crit_edge, %sw.bb.i.if.then_crit_edge
  %call4 = tail call i32 @dev_queue_xmit(ptr noundef %skb) #3
  br label %if.end

if.else:                                          ; preds = %llc_mac_hdr_init.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %rc.0.i15 = phi i32 [ %26, %llc_mac_hdr_init.exit.if.else_crit_edge ], [ -22, %entry.if.else_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %rc.0 = phi i32 [ %call4, %if.then ], [ %rc.0.i15, %if.else ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

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

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @__ksymtab_llc_mac_hdr_init, !1, !"__ksymtab_llc_mac_hdr_init", i1 false, i1 false}
!1 = !{!"../net/llc/llc_output.c", i32 73, i32 1}
!2 = !{ptr @__ksymtab_llc_build_and_send_ui_pkt, !3, !"__ksymtab_llc_build_and_send_ui_pkt", i1 false, i1 false}
!3 = !{!"../net/llc/llc_output.c", i32 74, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"branch_weights", i32 2000, i32 1}
