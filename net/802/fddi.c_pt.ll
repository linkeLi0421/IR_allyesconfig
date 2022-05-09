; ModuleID = '/llk/IR_all_yes/net/802/fddi.c_pt.bc'
source_filename = "../net/802/fddi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+fddi_type_trans\22, \22a\22\09"
module asm "\09.weak\09__crc_fddi_type_trans\09\09\09\09"
module asm "\09.long\09__crc_fddi_type_trans\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fddi_type_trans:\09\09\09\09\09"
module asm "\09.asciz \09\22fddi_type_trans\22\09\09\09\09\09"
module asm "__kstrtabns_fddi_type_trans:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+alloc_fddidev\22, \22a\22\09"
module asm "\09.weak\09__crc_alloc_fddidev\09\09\09\09"
module asm "\09.long\09__crc_alloc_fddidev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_fddidev:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_fddidev\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_fddidev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.124, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
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
%struct.fddihdr = type <{ i8, [6 x i8], [6 x i8], %union.anon.145 }>
%union.anon.145 = type { %struct.fddi_snap_hdr }
%struct.fddi_snap_hdr = type { i8, i8, i8, [3 x i8], i16 }
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

@__kstrtab_fddi_type_trans = external dso_local constant [0 x i8], align 1
@__kstrtabns_fddi_type_trans = external dso_local constant [0 x i8], align 1
@__ksymtab_fddi_type_trans = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fddi_type_trans to i32), ptr @__kstrtab_fddi_type_trans, ptr @__kstrtabns_fddi_type_trans }, section "___ksymtab+fddi_type_trans", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fddi%d\00", [25 x i8] zeroinitializer }, align 32
@__kstrtab_alloc_fddidev = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_fddidev = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_fddidev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_fddidev to i32), ptr @__kstrtab_alloc_fddidev, ptr @__kstrtabns_alloc_fddidev }, section "___ksymtab+alloc_fddidev", align 4
@__UNIQUE_ID_file457 = internal constant [23 x i8] c"fddi.file=net/802/fddi\00", section ".modinfo", align 1
@__UNIQUE_ID_license458 = internal constant [17 x i8] c"fddi.license=GPL\00", section ".modinfo", align 1
@fddi_header_ops = internal constant { %struct.header_ops, [40 x i8] } { %struct.header_ops { ptr @fddi_header, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 2048, i64 2054, i64 34525]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 16, i64 2048, i64 2054, i64 34525]
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 173, i32 9 }
@___asan_gen_.5 = private unnamed_addr constant [16 x i8] c"fddi_header_ops\00", align 1
@___asan_gen_.6 = private constant [18 x i8] c"../net/802/fddi.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 140, i32 32 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_file457, ptr @__UNIQUE_ID_license458, ptr @__ksymtab_alloc_fddidev, ptr @__ksymtab_fddi_type_trans, ptr @.str, ptr @fddi_header_ops], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fddi_header_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @fddi_type_trans(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %2, align 8
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %6 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %hdr = getelementptr inbounds %struct.fddihdr, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hdr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %8)
  %cmp = icmp eq i8 %8, -32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 13) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 21) #4
  %ethertype = getelementptr inbounds %struct.fddihdr, ptr %1, i32 0, i32 3, i32 0, i32 4
  %9 = ptrtoint ptr %ethertype to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %ethertype, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %type.0 = phi i16 [ 4, %if.then ], [ %10, %if.else ]
  %daddr = getelementptr inbounds %struct.fddihdr, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %daddr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %daddr, align 1
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.else19, label %if.then5

if.then5:                                         ; preds = %if.end
  %broadcast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %bcmp49 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %daddr, ptr noundef dereferenceable(6) %broadcast, i32 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp49)
  %cmp10 = icmp eq i32 %bcmp49, 0
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %14 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.clear = and i16 %bf.load, 8191
  br i1 %cmp10, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  %bf.set = or i16 %bf.clear, 8192
  %15 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %bf.set, ptr %pkt_type, align 8
  br label %if.end34

if.else13:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  %bf.set17 = or i16 %bf.clear, 16384
  %16 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %bf.set17, ptr %pkt_type, align 8
  br label %if.end34

if.else19:                                        ; preds = %if.end
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 8
  %and20 = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.else19.if.end34_crit_edge, label %if.then22

if.else19.if.end34_crit_edge:                     ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then22:                                        ; preds = %if.else19
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %19 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_addr, align 64
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %daddr, ptr noundef dereferenceable(6) %20, i32 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool26.not = icmp eq i32 %bcmp, 0
  br i1 %tobool26.not, label %if.then22.if.end34_crit_edge, label %if.then27

if.then22.if.end34_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then27:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  %pkt_type28 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %21 = ptrtoint ptr %pkt_type28 to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load29 = load i16, ptr %pkt_type28, align 8
  %bf.clear30 = and i16 %bf.load29, 8191
  %bf.set31 = or i16 %bf.clear30, 24576
  store i16 %bf.set31, ptr %pkt_type28, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then27, %if.then22.if.end34_crit_edge, %if.else19.if.end34_crit_edge, %if.else13, %if.then12
  ret i16 %type.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_fddidev(i32 noundef %sizeof_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_netdev_mqs(i32 noundef %sizeof_priv, ptr noundef nonnull @.str, i8 noundef zeroext 0, ptr noundef nonnull @fddi_setup, i32 noundef 1, i32 noundef 1) #4
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @fddi_setup(ptr nocapture noundef writeonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %header_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %0 = ptrtoint ptr %header_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @fddi_header_ops, ptr %header_ops, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 774, ptr %type, align 16
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 24, ptr %hard_header_len, align 2
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %3 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4470, ptr %mtu, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 30
  %4 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 21, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %5 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4470, ptr %max_mtu, align 4
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %6 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 6, ptr %addr_len, align 1
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 107
  %7 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 100, ptr %tx_queue_len, align 16
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4098, ptr %flags, align 8
  %broadcast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %9 = call ptr @memset(ptr %broadcast, i32 255, i32 6)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fddi_header(ptr noundef %skb, ptr nocapture noundef readonly %dev, i16 noundef zeroext %type, ptr noundef readonly %daddr, ptr noundef readonly %saddr, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i16 %type, label %if.then [
    i16 2048, label %entry.if.end_crit_edge
    i16 -31011, label %entry.if.end_crit_edge73
    i16 2054, label %entry.if.end_crit_edge74
  ]

entry.if.end_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.if.end_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge, %entry.if.end_crit_edge73, %entry.if.end_crit_edge74
  %hl.0 = phi i32 [ 13, %if.then ], [ 21, %entry.if.end_crit_edge ], [ 21, %entry.if.end_crit_edge73 ], [ 21, %entry.if.end_crit_edge74 ]
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %hl.0) #4
  %1 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 84, ptr %call, align 1
  %2 = zext i16 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.1)
  switch i16 %type, label %if.end.if.end30_crit_edge [
    i16 2048, label %if.end.if.then19_crit_edge
    i16 -31011, label %if.end.if.then19_crit_edge75
    i16 2054, label %if.end.if.then19_crit_edge76
  ]

if.end.if.then19_crit_edge76:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19

if.end.if.then19_crit_edge75:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19

if.end.if.then19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

if.then19:                                        ; preds = %if.end.if.then19_crit_edge, %if.end.if.then19_crit_edge75, %if.end.if.then19_crit_edge76
  %hdr = getelementptr inbounds %struct.fddihdr, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -86, ptr %hdr, align 1
  %ssap = getelementptr inbounds %struct.fddihdr, ptr %call, i32 0, i32 3, i32 0, i32 1
  %4 = ptrtoint ptr %ssap to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -86, ptr %ssap, align 1
  %ctrl = getelementptr inbounds %struct.fddihdr, ptr %call, i32 0, i32 3, i32 0, i32 2
  %5 = ptrtoint ptr %ctrl to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %ctrl, align 1
  %oui = getelementptr inbounds %struct.fddihdr, ptr %call, i32 0, i32 3, i32 0, i32 3
  %6 = ptrtoint ptr %oui to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %oui, align 1
  %arrayidx25 = getelementptr %struct.fddihdr, ptr %call, i32 0, i32 3, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx25, align 1
  %arrayidx28 = getelementptr %struct.fddihdr, ptr %call, i32 0, i32 3, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx28, align 1
  %ethertype = getelementptr inbounds %struct.fddihdr, ptr %call, i32 0, i32 3, i32 0, i32 4
  %9 = ptrtoint ptr %ethertype to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %type, ptr %ethertype, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.then19, %if.end.if.end30_crit_edge
  %cmp31.not = icmp eq ptr %saddr, null
  %saddr36 = getelementptr inbounds %struct.fddihdr, ptr %call, i32 0, i32 2
  br i1 %cmp31.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %10 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %addr_len, align 1
  %conv35 = zext i8 %11 to i32
  %12 = call ptr @memcpy(ptr %saddr36, ptr %saddr, i32 %conv35)
  br label %if.end40

if.else:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %13 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_addr, align 64
  %addr_len38 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %15 = ptrtoint ptr %addr_len38 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %addr_len38, align 1
  %conv39 = zext i8 %16 to i32
  %17 = call ptr @memcpy(ptr %saddr36, ptr %14, i32 %conv39)
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then33
  %cmp41.not = icmp eq ptr %daddr, null
  br i1 %cmp41.not, label %if.end48, label %if.then43

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  %daddr44 = getelementptr inbounds %struct.fddihdr, ptr %call, i32 0, i32 1
  %addr_len46 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %18 = ptrtoint ptr %addr_len46 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %addr_len46, align 1
  %conv47 = zext i8 %19 to i32
  %20 = call ptr @memcpy(ptr %daddr44, ptr %daddr, i32 %conv47)
  br label %cleanup

if.end48:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  %sub = sub nsw i32 0, %hl.0
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then43
  %retval.0 = phi i32 [ %hl.0, %if.then43 ], [ %sub, %if.end48 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind readonly willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @__ksymtab_fddi_type_trans, !1, !"__ksymtab_fddi_type_trans", i1 false, i1 false}
!1 = !{!"../net/802/fddi.c", i32 138, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/802/fddi.c", i32 173, i32 9}
!4 = !{ptr @__ksymtab_alloc_fddidev, !5, !"__ksymtab_alloc_fddidev", i1 false, i1 false}
!5 = !{!"../net/802/fddi.c", i32 176, i32 1}
!6 = !{ptr @__UNIQUE_ID_file457, !7, !"__UNIQUE_ID_file457", i1 false, i1 false}
!7 = !{!"../net/802/fddi.c", i32 178, i32 1}
!8 = !{ptr @__UNIQUE_ID_license458, !7, !"__UNIQUE_ID_license458", i1 false, i1 false}
!9 = !{ptr @fddi_header_ops, !10, !"fddi_header_ops", i1 false, i1 false}
!10 = !{!"../net/802/fddi.c", i32 140, i32 32}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
