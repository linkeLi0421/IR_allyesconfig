; ModuleID = '/llk/IR_all_yes/net/ife/ife.c_pt.bc'
source_filename = "../net/ife/ife.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ife_encode\22, \22a\22\09"
module asm "\09.weak\09__crc_ife_encode\09\09\09\09"
module asm "\09.long\09__crc_ife_encode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ife_encode:\09\09\09\09\09"
module asm "\09.asciz \09\22ife_encode\22\09\09\09\09\09"
module asm "__kstrtabns_ife_encode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ife_decode\22, \22a\22\09"
module asm "\09.weak\09__crc_ife_decode\09\09\09\09"
module asm "\09.long\09__crc_ife_decode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ife_decode:\09\09\09\09\09"
module asm "\09.asciz \09\22ife_decode\22\09\09\09\09\09"
module asm "__kstrtabns_ife_decode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ife_tlv_meta_decode\22, \22a\22\09"
module asm "\09.weak\09__crc_ife_tlv_meta_decode\09\09\09\09"
module asm "\09.long\09__crc_ife_tlv_meta_decode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ife_tlv_meta_decode:\09\09\09\09\09"
module asm "\09.asciz \09\22ife_tlv_meta_decode\22\09\09\09\09\09"
module asm "__kstrtabns_ife_tlv_meta_decode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ife_tlv_meta_next\22, \22a\22\09"
module asm "\09.weak\09__crc_ife_tlv_meta_next\09\09\09\09"
module asm "\09.long\09__crc_ife_tlv_meta_next\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ife_tlv_meta_next:\09\09\09\09\09"
module asm "\09.asciz \09\22ife_tlv_meta_next\22\09\09\09\09\09"
module asm "__kstrtabns_ife_tlv_meta_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ife_tlv_meta_encode\22, \22a\22\09"
module asm "\09.weak\09__crc_ife_tlv_meta_encode\09\09\09\09"
module asm "\09.long\09__crc_ife_tlv_meta_encode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ife_tlv_meta_encode:\09\09\09\09\09"
module asm "\09.asciz \09\22ife_tlv_meta_encode\22\09\09\09\09\09"
module asm "__kstrtabns_ife_tlv_meta_encode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.102, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.9 }
%union.anon.9 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.102 = type { ptr }
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
%struct.sk_buff = type { %union.anon, %union.anon.103, %union.anon.104, [48 x i8], %union.anon.105, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.107, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%union.anon.103 = type { ptr }
%union.anon.104 = type { i64 }
%union.anon.105 = type { %struct.anon.106 }
%struct.anon.106 = type { i32, ptr }
%union.anon.107 = type { %struct.anon.108 }
%struct.anon.108 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.109, i32, i32, i32, i16, i16, %union.anon.111, i32, %union.anon.112, %union.anon.113, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.109 = type { i32 }
%union.anon.111 = type { i32 }
%union.anon.112 = type { i32 }
%union.anon.113 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ifeheadr = type { i16, [0 x i8] }
%struct.meta_tlvhdr = type { i16, i16 }

@__kstrtab_ife_encode = external dso_local constant [0 x i8], align 1
@__kstrtabns_ife_encode = external dso_local constant [0 x i8], align 1
@__ksymtab_ife_encode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ife_encode to i32), ptr @__kstrtab_ife_encode, ptr @__kstrtabns_ife_encode }, section "___ksymtab_gpl+ife_encode", align 4
@__kstrtab_ife_decode = external dso_local constant [0 x i8], align 1
@__kstrtabns_ife_decode = external dso_local constant [0 x i8], align 1
@__ksymtab_ife_decode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ife_decode to i32), ptr @__kstrtab_ife_decode, ptr @__kstrtabns_ife_decode }, section "___ksymtab_gpl+ife_decode", align 4
@__kstrtab_ife_tlv_meta_decode = external dso_local constant [0 x i8], align 1
@__kstrtabns_ife_tlv_meta_decode = external dso_local constant [0 x i8], align 1
@__ksymtab_ife_tlv_meta_decode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ife_tlv_meta_decode to i32), ptr @__kstrtab_ife_tlv_meta_decode, ptr @__kstrtabns_ife_tlv_meta_decode }, section "___ksymtab_gpl+ife_tlv_meta_decode", align 4
@__kstrtab_ife_tlv_meta_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_ife_tlv_meta_next = external dso_local constant [0 x i8], align 1
@__ksymtab_ife_tlv_meta_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ife_tlv_meta_next to i32), ptr @__kstrtab_ife_tlv_meta_next, ptr @__kstrtabns_ife_tlv_meta_next }, section "___ksymtab_gpl+ife_tlv_meta_next", align 4
@__kstrtab_ife_tlv_meta_encode = external dso_local constant [0 x i8], align 1
@__kstrtabns_ife_tlv_meta_encode = external dso_local constant [0 x i8], align 1
@__ksymtab_ife_tlv_meta_encode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ife_tlv_meta_encode to i32), ptr @__kstrtab_ife_tlv_meta_encode, ptr @__kstrtabns_ife_tlv_meta_encode }, section "___ksymtab_gpl+ife_tlv_meta_encode", align 4
@__UNIQUE_ID_author364 = internal constant [47 x i8] c"ife.author=Jamal Hadi Salim <jhs@mojatatu.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author365 = internal constant [43 x i8] c"ife.author=Yotam Gigi <yotam.gi@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description366 = internal constant [36 x i8] c"ife.description=Inter-FE LFB action\00", section ".modinfo", align 1
@__UNIQUE_ID_file367 = internal constant [21 x i8] c"ife.file=net/ife/ife\00", section ".modinfo", align 1
@__UNIQUE_ID_license368 = internal constant [16 x i8] c"ife.license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author364, ptr @__UNIQUE_ID_author365, ptr @__UNIQUE_ID_description366, ptr @__UNIQUE_ID_file367, ptr @__UNIQUE_ID_license368, ptr @__ksymtab_ife_decode, ptr @__ksymtab_ife_encode, ptr @__ksymtab_ife_tlv_meta_decode, ptr @__ksymtab_ife_tlv_meta_encode, ptr @__ksymtab_ife_tlv_meta_next], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ife_encode(ptr noundef %skb, i16 noundef zeroext %metalen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %metalen to i32
  %add = add nuw nsw i32 %conv, 2
  %0 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 19
  %3 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %hard_header_len, align 2
  %conv1 = zext i16 %4 to i32
  %add2 = add nuw nsw i32 %add, %conv1
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %5 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %entry.skb_header_cloned.exit.i_crit_edge, label %if.end.i.i

entry.skb_header_cloned.exit.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_header_cloned.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %6 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #6
  %8 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i = and i32 %9, 65535
  %shr.i.i = ashr i32 %9, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %if.end.i.i, %entry.skb_header_cloned.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ %cmp.i.not.i, %if.end.i.i ], [ true, %entry.skb_header_cloned.exit.i_crit_edge ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %12 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %add2)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %add2
  %or.cond.i.i = and i1 %retval.0.i.i, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_header_cloned.exit.i.if.end_crit_edge, label %skb_cow_head.exit

skb_header_cloned.exit.i.if.end_crit_edge:        ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

skb_cow_head.exit:                                ; preds = %skb_header_cloned.exit.i
  %14 = tail call i32 @llvm.usub.sat.i32(i32 %add2, i32 %sub.ptr.sub.i.i.i) #6
  %add.i.i = add nuw nsw i32 %14, 127
  %and.i4.i = and i32 %add.i.i, 524160
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not, label %skb_cow_head.exit.if.end_crit_edge, label %skb_cow_head.exit.cleanup_crit_edge, !prof !28

skb_cow_head.exit.cleanup_crit_edge:              ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

skb_cow_head.exit.if.end_crit_edge:               ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %skb_cow_head.exit.if.end_crit_edge, %skb_header_cloned.exit.i.if.end_crit_edge
  %15 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i.i, align 4
  %idx.neg.i = sub nsw i32 0, %add2
  %add.ptr.i = getelementptr i8, ptr %16, i32 %idx.neg.i
  store ptr %add.ptr.i, ptr %data.i.i.i, align 4
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %17 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len1.i, align 4
  %add.i = add i32 %18, %add2
  store i32 %add.i, ptr %len1.i, align 4
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %0, align 8
  %hard_header_len7 = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 19
  %21 = ptrtoint ptr %hard_header_len7 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %hard_header_len7, align 2
  %conv8 = zext i16 %22 to i32
  %23 = call ptr @memcpy(ptr %add.ptr.i, ptr %16, i32 %conv8)
  %24 = load ptr, ptr %data.i.i.i, align 4
  %25 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %27 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %28 = load ptr, ptr %0, align 8
  %hard_header_len9 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 19
  %29 = ptrtoint ptr %hard_header_len9 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %hard_header_len9, align 2
  %conv10 = zext i16 %30 to i32
  %add.ptr = getelementptr i8, ptr %24, i32 %conv10
  %conv15 = trunc i32 %add to i16
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv15, ptr %add.ptr, align 2
  %tlv_data = getelementptr inbounds %struct.ifeheadr, ptr %add.ptr, i32 0, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %skb_cow_head.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %tlv_data, %if.end ], [ null, %skb_cow_head.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ife_decode(ptr noundef %skb, ptr nocapture noundef writeonly %metalen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 19
  %3 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %4 to i32
  %add = add nuw nsw i32 %conv, 2
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %7 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %6, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %add, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !29

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %add)
  %cmp3.i = icmp ult i32 %6, %add
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !29

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub i32 %add, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #6
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %0, align 8
  %hard_header_len1 = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 19
  %13 = ptrtoint ptr %hard_header_len1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %hard_header_len1, align 2
  %conv2 = zext i16 %14 to i32
  %add.ptr = getelementptr i8, ptr %10, i32 %conv2
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr, align 2
  %conv6 = zext i16 %16 to i32
  %add7 = add nuw nsw i32 %conv6, %conv2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %16)
  %cmp = icmp ult i16 %16, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end12, !prof !29

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %17 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len.i.i, align 4
  %19 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i43 = sub i32 %18, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %add7, i32 %sub.i.i43)
  %cmp.not.i44 = icmp ugt i32 %add7, %sub.i.i43
  br i1 %cmp.not.i44, label %if.end.i46, label %if.end12.if.end23_crit_edge, !prof !29

if.end12.if.end23_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.end.i46:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %add7)
  %cmp3.i45 = icmp ult i32 %18, %add7
  br i1 %cmp3.i45, label %if.end.i46.cleanup_crit_edge, label %pskb_may_pull.exit52, !prof !29

if.end.i46.cleanup_crit_edge:                     ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

pskb_may_pull.exit52:                             ; preds = %if.end.i46
  %sub.i47 = sub i32 %add7, %sub.i.i43
  %call13.i48 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i47) #6
  %cmp14.i49.not = icmp eq ptr %call13.i48, null
  br i1 %cmp14.i49.not, label %pskb_may_pull.exit52.cleanup_crit_edge, label %pskb_may_pull.exit52.if.end23_crit_edge, !prof !29

pskb_may_pull.exit52.if.end23_crit_edge:          ; preds = %pskb_may_pull.exit52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

pskb_may_pull.exit52.cleanup_crit_edge:           ; preds = %pskb_may_pull.exit52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %pskb_may_pull.exit52.if.end23_crit_edge, %if.end12.if.end23_crit_edge
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %23 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %22 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %25 = trunc i32 %add7 to i16
  %conv1.i = add i16 %conv.i.i, %25
  %26 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv1.i, ptr %mac_header.i.i, align 2
  %27 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i.i, align 4
  %sub.i53 = sub i32 %28, %add7
  store i32 %sub.i53, ptr %len.i.i, align 4
  %29 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i53, i32 %30)
  %cmp.i = icmp ult i32 %sub.i53, %30
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !29

do.body4.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #6, !srcloc !30
  unreachable

__skb_pull.exit:                                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %22, i32 %add7
  %31 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr.i, ptr %data, align 4
  %sub = add i16 %16, -2
  %32 = ptrtoint ptr %metalen to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %sub, ptr %metalen, align 2
  %tlv_data = getelementptr inbounds %struct.ifeheadr, ptr %add.ptr, i32 0, i32 1
  br label %cleanup

cleanup:                                          ; preds = %__skb_pull.exit, %pskb_may_pull.exit52.cleanup_crit_edge, %if.end.i46.cleanup_crit_edge, %if.end.cleanup_crit_edge, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %tlv_data, %__skb_pull.exit ], [ null, %pskb_may_pull.exit.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %pskb_may_pull.exit52.cleanup_crit_edge ], [ null, %if.end.i.cleanup_crit_edge ], [ null, %if.end.i46.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ife_tlv_meta_decode(ptr noundef readonly %skbdata, ptr noundef readnone %ifehdr_end, ptr nocapture noundef writeonly %attrtype, ptr nocapture noundef %dlen, ptr noundef writeonly %totlen) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %skbdata, i32 4
  %cmp.i = icmp ugt ptr %add.ptr.i, %ifehdr_end
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !29

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %len.i = getelementptr inbounds %struct.meta_tlvhdr, ptr %skbdata, i32 0, i32 1
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %1)
  %cmp2.i = icmp ult i16 %1, 4
  br i1 %cmp2.i, label %if.end.i.cleanup_crit_edge, label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %conv.i = zext i16 %1 to i32
  %sub.i = add nuw nsw i32 %conv.i, 3
  %and.i = and i32 %sub.i, 131068
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv.i)
  %cmp8.i = icmp uge i32 %and.i, %conv.i
  %add.ptr16.i = getelementptr i8, ptr %skbdata, i32 %and.i
  %cmp17.i = icmp ule ptr %add.ptr16.i, %ifehdr_end
  %or.cond = and i1 %cmp8.i, %cmp17.i
  br i1 %or.cond, label %if.end, label %if.end5.i.cleanup_crit_edge

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.end5.i
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %len.i, align 2
  %sub = add i16 %3, -4
  %4 = ptrtoint ptr %dlen to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %sub, ptr %dlen, align 2
  %5 = ptrtoint ptr %skbdata to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %skbdata, align 2
  %7 = ptrtoint ptr %attrtype to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %attrtype, align 2
  %tobool.not = icmp eq ptr %totlen, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %dlen to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dlen, align 2
  %sub.i12 = add i16 %9, 7
  %and.i13 = and i16 %sub.i12, -4
  %10 = ptrtoint ptr %totlen to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %and.i13, ptr %totlen, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr.i, %if.then2 ], [ %add.ptr.i, %if.end.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.i.cleanup_crit_edge ], [ null, %if.end5.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ife_tlv_meta_next(ptr noundef readonly %skbdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.meta_tlvhdr, ptr %skbdata, i32 0, i32 1
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %len, align 2
  %sub = add i16 %1, 3
  %and = and i16 %sub, -4
  %conv2 = zext i16 %and to i32
  %add.ptr = getelementptr i8, ptr %skbdata, i32 %conv2
  ret ptr %add.ptr
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ife_tlv_meta_encode(ptr nocapture noundef writeonly %skbdata, i16 noundef zeroext %attrtype, i16 noundef zeroext %dlen, ptr nocapture noundef readonly %dval) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %dlen to i32
  %sub.i = add nuw nsw i32 %conv, 7
  %add.ptr = getelementptr i8, ptr %skbdata, i32 4
  %conv2 = zext i16 %attrtype to i32
  %shl = shl nuw i32 %conv2, 16
  %add = add nuw nsw i32 %conv, 4
  %or = or i32 %add, %shl
  %0 = ptrtoint ptr %skbdata to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %or, ptr %skbdata, align 4
  %conv4 = and i32 %sub.i, 65532
  %sub = add nsw i32 %conv4, -4
  %1 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  %2 = call ptr @memcpy(ptr %add.ptr, ptr %dval, i32 %conv)
  ret i32 %conv4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__ksymtab_ife_encode, !1, !"__ksymtab_ife_encode", i1 false, i1 false}
!1 = !{!"../net/ife/ife.c", i32 64, i32 1}
!2 = !{ptr @__ksymtab_ife_decode, !3, !"__ksymtab_ife_decode", i1 false, i1 false}
!3 = !{!"../net/ife/ife.c", i32 91, i32 1}
!4 = !{ptr @__ksymtab_ife_tlv_meta_decode, !5, !"__ksymtab_ife_tlv_meta_decode", i1 false, i1 false}
!5 = !{!"../net/ife/ife.c", i32 143, i32 1}
!6 = !{ptr @__ksymtab_ife_tlv_meta_next, !7, !"__ksymtab_ife_tlv_meta_next", i1 false, i1 false}
!7 = !{!"../net/ife/ife.c", i32 154, i32 1}
!8 = !{ptr @__ksymtab_ife_tlv_meta_encode, !9, !"__ksymtab_ife_tlv_meta_encode", i1 false, i1 false}
!9 = !{!"../net/ife/ife.c", i32 171, i32 1}
!10 = !{ptr @__UNIQUE_ID_author364, !11, !"__UNIQUE_ID_author364", i1 false, i1 false}
!11 = !{!"../net/ife/ife.c", i32 173, i32 1}
!12 = !{ptr @__UNIQUE_ID_author365, !13, !"__UNIQUE_ID_author365", i1 false, i1 false}
!13 = !{!"../net/ife/ife.c", i32 174, i32 1}
!14 = !{ptr @__UNIQUE_ID_description366, !15, !"__UNIQUE_ID_description366", i1 false, i1 false}
!15 = !{!"../net/ife/ife.c", i32 175, i32 1}
!16 = !{ptr @__UNIQUE_ID_file367, !17, !"__UNIQUE_ID_file367", i1 false, i1 false}
!17 = !{!"../net/ife/ife.c", i32 176, i32 1}
!18 = !{ptr @__UNIQUE_ID_license368, !17, !"__UNIQUE_ID_license368", i1 false, i1 false}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"branch_weights", i32 2000, i32 1}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i64 2154566956, i64 2154567444, i64 2154566993, i64 2154567049, i64 2154567083, i64 2154567107, i64 2154567148, i64 2154567169, i64 2154567197, i64 2154567231}
