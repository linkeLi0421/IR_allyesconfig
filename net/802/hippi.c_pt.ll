; ModuleID = '/llk/IR_all_yes/net/802/hippi.c_pt.bc'
source_filename = "../net/802/hippi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+hippi_type_trans\22, \22a\22\09"
module asm "\09.weak\09__crc_hippi_type_trans\09\09\09\09"
module asm "\09.long\09__crc_hippi_type_trans\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hippi_type_trans:\09\09\09\09\09"
module asm "\09.asciz \09\22hippi_type_trans\22\09\09\09\09\09"
module asm "__kstrtabns_hippi_type_trans:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+hippi_mac_addr\22, \22a\22\09"
module asm "\09.weak\09__crc_hippi_mac_addr\09\09\09\09"
module asm "\09.long\09__crc_hippi_mac_addr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hippi_mac_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22hippi_mac_addr\22\09\09\09\09\09"
module asm "__kstrtabns_hippi_mac_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+hippi_neigh_setup_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_hippi_neigh_setup_dev\09\09\09\09"
module asm "\09.long\09__crc_hippi_neigh_setup_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hippi_neigh_setup_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22hippi_neigh_setup_dev\22\09\09\09\09\09"
module asm "__kstrtabns_hippi_neigh_setup_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+alloc_hippi_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_alloc_hippi_dev\09\09\09\09"
module asm "\09.long\09__crc_alloc_hippi_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_hippi_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_hippi_dev\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_hippi_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.124, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%union.anon.124 = type { ptr }
%union.anon.125 = type { i64 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, ptr }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.130, i32, i32, i32, i16, i16, %union.anon.132, i32, %union.anon.133, %union.anon.134, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.130 = type { i32 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.hippi_hdr = type { %struct.hippi_fp_hdr, %struct.hippi_le_hdr, %struct.hippi_snap_hdr }
%struct.hippi_fp_hdr = type { i32, i32 }
%struct.hippi_le_hdr = type { i8, [3 x i8], i8, [3 x i8], i16, [6 x i8], i16, [6 x i8] }
%struct.hippi_snap_hdr = type { i8, i8, i8, [3 x i8], i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.123, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.123 = type { ptr }
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
%struct.sockaddr = type { i16, [14 x i8] }
%struct.neigh_parms = type { %struct.possible_net_t, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i32] }
%struct.callback_head = type { ptr, ptr }

@__kstrtab_hippi_type_trans = external dso_local constant [0 x i8], align 1
@__kstrtabns_hippi_type_trans = external dso_local constant [0 x i8], align 1
@__ksymtab_hippi_type_trans = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hippi_type_trans to i32), ptr @__kstrtab_hippi_type_trans, ptr @__kstrtabns_hippi_type_trans }, section "___ksymtab+hippi_type_trans", align 4
@__kstrtab_hippi_mac_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_hippi_mac_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_hippi_mac_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hippi_mac_addr to i32), ptr @__kstrtab_hippi_mac_addr, ptr @__kstrtabns_hippi_mac_addr }, section "___ksymtab+hippi_mac_addr", align 4
@__kstrtab_hippi_neigh_setup_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_hippi_neigh_setup_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_hippi_neigh_setup_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hippi_neigh_setup_dev to i32), ptr @__kstrtab_hippi_neigh_setup_dev, ptr @__kstrtabns_hippi_neigh_setup_dev }, section "___ksymtab+hippi_neigh_setup_dev", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hip%d\00", [26 x i8] zeroinitializer }, align 32
@__kstrtab_alloc_hippi_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_hippi_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_hippi_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_hippi_dev to i32), ptr @__kstrtab_alloc_hippi_dev, ptr @__kstrtabns_alloc_hippi_dev }, section "___ksymtab+alloc_hippi_dev", align 4
@hippi_header_ops = internal constant { %struct.header_ops, [40 x i8] } { %struct.header_ops { ptr @hippi_header, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hippi_header._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"hippi_header(): length not supplied\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hippi_header\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net/802/hippi.c\00", [16 x i8] zeroinitializer }, align 32
@hippi_header._entry_ptr = internal global ptr @hippi_header._entry, section ".printk_index", align 4
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 189, i32 9 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"hippi_header_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 144, i32 32 }
@___asan_gen_.10 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private constant [19 x i8] c"../net/802/hippi.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 51, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab_alloc_hippi_dev, ptr @__ksymtab_hippi_mac_addr, ptr @__ksymtab_hippi_neigh_setup_dev, ptr @__ksymtab_hippi_type_trans, ptr @hippi_header._entry, ptr @hippi_header._entry_ptr, ptr @.str, ptr @hippi_header_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hippi_header_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hippi_header._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @hippi_type_trans(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %0, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %6 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %conv.i7 = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i = getelementptr i8, ptr %5, i32 %conv.i7
  %call1 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 40) #5
  %ethertype = getelementptr inbounds %struct.hippi_hdr, ptr %add.ptr.i, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %ethertype to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %ethertype, align 1
  ret i16 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hippi_mac_addr(ptr noundef %dev, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %2 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %addr_len.i, align 1
  %conv.i = zext i8 %3 to i32
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef %conv.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hippi_neigh_setup_dev(ptr nocapture readnone %dev, ptr nocapture noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.neigh_parms, ptr %p, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %data, align 4
  %tbl = getelementptr inbounds %struct.neigh_parms, ptr %p, i32 0, i32 5
  %1 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tbl, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %4)
  %cmp.not = icmp eq i32 %4, 10
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx2 = getelementptr %struct.neigh_parms, ptr %p, i32 0, i32 11, i32 1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_hippi_dev(i32 noundef %sizeof_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_netdev_mqs(i32 noundef %sizeof_priv, ptr noundef nonnull @.str, i8 noundef zeroext 0, ptr noundef nonnull @hippi_setup, i32 noundef 1, i32 noundef 1) #5
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @hippi_setup(ptr nocapture noundef writeonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %header_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %0 = ptrtoint ptr %header_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @hippi_header_ops, ptr %header_ops, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 780, ptr %type, align 16
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 40, ptr %hard_header_len, align 2
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %3 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 65280, ptr %mtu, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 30
  %4 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 68, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %5 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 65280, ptr %max_mtu, align 4
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %6 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 6, ptr %addr_len, align 1
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 107
  %7 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 25, ptr %tx_queue_len, align 16
  %broadcast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %8 = call ptr @memset(ptr %broadcast, i32 255, i32 6)
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %flags, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hippi_header(ptr noundef %skb, ptr nocapture noundef readonly %dev, i16 noundef zeroext %type, ptr noundef readonly %daddr, ptr nocapture noundef readnone %saddr, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 40) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  %sub = add i32 %1, -40
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %len.addr.0 = phi i32 [ %len, %entry.if.end_crit_edge ], [ %sub, %if.then ]
  %2 = ptrtoint ptr %call to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 75497496, ptr %call, align 1
  %add = add i32 %len.addr.0, 8
  %d2_size = getelementptr inbounds %struct.hippi_fp_hdr, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %d2_size to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %add, ptr %d2_size, align 1
  %le = getelementptr inbounds %struct.hippi_hdr, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %le to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %le, align 1
  %dest_addr_type = getelementptr inbounds %struct.hippi_hdr, ptr %call, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %dest_addr_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 34, ptr %dest_addr_type, align 1
  %src_switch_addr = getelementptr inbounds %struct.hippi_hdr, ptr %call, i32 0, i32 1, i32 3
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %6 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_addr, align 64
  %add.ptr = getelementptr i8, ptr %7, i32 3
  %8 = call ptr @memcpy(ptr %src_switch_addr, ptr %add.ptr, i32 3)
  %add.ptr24 = getelementptr %struct.hippi_hdr, ptr %call, i32 0, i32 1, i32 4
  %9 = call ptr @memset(ptr %add.ptr24, i32 0, i32 16)
  %snap = getelementptr inbounds %struct.hippi_hdr, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %snap to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -86, ptr %snap, align 1
  %ssap = getelementptr inbounds %struct.hippi_hdr, ptr %call, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %ssap to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -86, ptr %ssap, align 1
  %ctrl = getelementptr inbounds %struct.hippi_hdr, ptr %call, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %ctrl to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 3, ptr %ctrl, align 1
  %oui = getelementptr inbounds %struct.hippi_hdr, ptr %call, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %oui to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %oui, align 1
  %arrayidx30 = getelementptr %struct.hippi_hdr, ptr %call, i32 0, i32 2, i32 3, i32 1
  %14 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx30, align 1
  %arrayidx33 = getelementptr %struct.hippi_hdr, ptr %call, i32 0, i32 2, i32 3, i32 2
  %15 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx33, align 1
  %ethertype = getelementptr inbounds %struct.hippi_hdr, ptr %call, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %ethertype to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %type, ptr %ethertype, align 1
  %tobool35.not = icmp eq ptr %daddr, null
  br i1 %tobool35.not, label %if.end.cleanup_crit_edge, label %if.then36

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then36:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dest_switch_addr = getelementptr inbounds %struct.hippi_hdr, ptr %call, i32 0, i32 1, i32 1
  %add.ptr39 = getelementptr i8, ptr %daddr, i32 3
  %17 = call ptr @memcpy(ptr %dest_switch_addr, ptr %add.ptr39, i32 3)
  %add.ptr40 = getelementptr i8, ptr %daddr, i32 2
  %18 = ptrtoint ptr %add.ptr40 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %add.ptr40, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %if.end.cleanup_crit_edge
  %storemerge = phi i32 [ %19, %if.then36 ], [ 0, %if.end.cleanup_crit_edge ]
  %retval.0 = phi i32 [ 40, %if.then36 ], [ -40, %if.end.cleanup_crit_edge ]
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %20 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %storemerge, ptr %cb, align 4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__ksymtab_hippi_type_trans, !1, !"__ksymtab_hippi_type_trans", i1 false, i1 false}
!1 = !{!"../net/802/hippi.c", i32 113, i32 1}
!2 = !{ptr @__ksymtab_hippi_mac_addr, !3, !"__ksymtab_hippi_mac_addr", i1 false, i1 false}
!3 = !{!"../net/802/hippi.c", i32 127, i32 1}
!4 = !{ptr @__ksymtab_hippi_neigh_setup_dev, !5, !"__ksymtab_hippi_neigh_setup_dev", i1 false, i1 false}
!5 = !{!"../net/802/hippi.c", i32 142, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/802/hippi.c", i32 189, i32 9}
!8 = !{ptr @__ksymtab_alloc_hippi_dev, !9, !"__ksymtab_alloc_hippi_dev", i1 false, i1 false}
!9 = !{!"../net/802/hippi.c", i32 193, i32 1}
!10 = !{ptr @hippi_header_ops, !11, !"hippi_header_ops", i1 false, i1 false}
!11 = !{!"../net/802/hippi.c", i32 144, i32 32}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/802/hippi.c", i32 51, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @hippi_header._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @hippi_header._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
