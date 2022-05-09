; ModuleID = '/llk/IR_all_yes/net/ax25/ax25_ip.c_pt.bc'
source_filename = "../net/ax25/ax25_ip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ax25_header_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_ax25_header_ops\09\09\09\09"
module asm "\09.long\09__crc_ax25_header_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ax25_header_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ax25_header_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ax25_header_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ax25_ip_xmit\22, \22a\22\09"
module asm "\09.weak\09__crc_ax25_ip_xmit\09\09\09\09"
module asm "\09.long\09__crc_ax25_ip_xmit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ax25_ip_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22ax25_ip_xmit\22\09\09\09\09\09"
module asm "__kstrtabns_ax25_ip_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ax25_address = type { [7 x i8] }
%struct.sk_buff = type { %union.anon, %union.anon.125, %union.anon.126, [48 x i8], %union.anon.127, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.129, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.125 = type { ptr }
%union.anon.126 = type { i64 }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, ptr }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.131, i32, i32, i32, i16, i16, %union.anon.133, i32, %union.anon.134, %union.anon.135, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.131 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ax25_route = type { ptr, %struct.refcount_struct, %struct.ax25_address, ptr, ptr, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.124, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
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
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.124 = type { ptr }
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
%struct.ax25_dev = type { ptr, ptr, ptr, ptr, ptr, [14 x i32], %struct.ax25_dama_info, %struct.refcount_struct }
%struct.ax25_dama_info = type { i8, %struct.timer_list, i16 }
%struct.ax25_cb = type { %struct.hlist_node, %struct.ax25_address, %struct.ax25_address, ptr, ptr, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, i32, i16, i16, i16, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, i8, %struct.timer_list, %struct.timer_list, ptr, %struct.refcount_struct }
%struct.sk_buff_head = type { %union.anon.95, i32, %struct.spinlock }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, ptr }
%struct.ax25_digi = type { [8 x %struct.ax25_address], [8 x i8], i8, i8 }

@ax25_header_ops = dso_local constant { %struct.header_ops, [40 x i8] } { %struct.header_ops { ptr @ax25_hard_header, ptr null, ptr null, ptr null, ptr @ax25_validate_header, ptr null }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_ax25_header_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ax25_header_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ax25_header_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ax25_header_ops to i32), ptr @__kstrtab_ax25_header_ops, ptr @__kstrtabns_ax25_header_ops }, section "___ksymtab+ax25_header_ops", align 4
@__kstrtab_ax25_ip_xmit = external dso_local constant [0 x i8], align 1
@__kstrtabns_ax25_ip_xmit = external dso_local constant [0 x i8], align 1
@__ksymtab_ax25_ip_xmit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ax25_ip_xmit to i32), ptr @__kstrtab_ax25_ip_xmit, ptr @__kstrtabns_ax25_ip_xmit }, section "___ksymtab+ax25_ip_xmit", align 4
@ax25_route_lock = external dso_local global %struct.rwlock_t, align 4
@ax25_hard_header._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013AX.25: ax25_hard_header - wrong protocol type 0x%2.2x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ax25_hard_header\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/ax25/ax25_ip.c\00", [45 x i8] zeroinitializer }, align 32
@ax25_hard_header._entry_ptr = internal global ptr @ax25_hard_header._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 86]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 2054]
@___asan_gen_.4 = private unnamed_addr constant [16 x i8] c"ax25_header_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 240, i32 25 }
@___asan_gen_.7 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [22 x i8] c"../net/ax25/ax25_ip.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 88, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_ax25_header_ops, ptr @__ksymtab_ax25_ip_xmit, ptr @ax25_hard_header._entry, ptr @ax25_hard_header._entry_ptr, ptr @ax25_header_ops, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_header_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_hard_header._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ax25_ip_xmit(ptr noundef %skb) #0 align 64 {
entry:
  %src_c = alloca %struct.ax25_address, align 1
  %dst_c = alloca %struct.ax25_address, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 1
  %add.ptr1 = getelementptr i8, ptr %1, i32 8
  tail call void @_raw_read_lock(ptr noundef nonnull @ax25_route_lock) #5
  %call = tail call ptr @ax25_get_route(ptr noundef %add.ptr, ptr noundef null) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.then5_crit_edge, label %if.end

entry.if.then5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5

if.end:                                           ; preds = %entry
  %digipeat2 = getelementptr inbounds %struct.ax25_route, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %digipeat2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %digipeat2, align 4
  %dev3 = getelementptr inbounds %struct.ax25_route, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3, align 4
  %ip_mode4 = getelementptr inbounds %struct.ax25_route, ptr %call, i32 0, i32 5
  %6 = ptrtoint ptr %ip_mode4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ip_mode4, align 4
  %phi.cast = zext i8 %7 to i32
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.end.if.then5_crit_edge, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5

if.then5:                                         ; preds = %if.end.if.then5_crit_edge, %entry.if.then5_crit_edge
  %ip_mode.0133 = phi i32 [ %phi.cast, %if.end.if.then5_crit_edge ], [ 32, %entry.if.then5_crit_edge ]
  %digipeat.0130 = phi ptr [ %3, %if.end.if.then5_crit_edge ], [ null, %entry.if.then5_crit_edge ]
  %8 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %ip_mode.0132 = phi i32 [ %ip_mode.0133, %if.then5 ], [ %phi.cast, %if.end.if.end6_crit_edge ]
  %digipeat.0129 = phi ptr [ %digipeat.0130, %if.then5 ], [ %3, %if.end.if.end6_crit_edge ]
  %dev.1 = phi ptr [ %10, %if.then5 ], [ %5, %if.end.if.end6_crit_edge ]
  %ax25_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev.1, i32 0, i32 81
  %11 = ptrtoint ptr %ax25_ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ax25_ptr.i, align 4
  %cmp8 = icmp eq ptr %12, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %put

if.end10:                                         ; preds = %if.end6
  %arrayidx = getelementptr i8, ptr %1, i32 16
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -52, i8 %14)
  %cmp11 = icmp eq i8 %14, -52
  br i1 %cmp11, label %if.then13, label %if.end10.if.end44_crit_edge

if.end10.if.end44_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then13:                                        ; preds = %if.end10
  %15 = zext i32 %ip_mode.0132 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ip_mode.0132, label %if.then13.if.end44_crit_edge [
    i32 86, label %if.then13.if.then22_crit_edge
    i32 32, label %land.lhs.true
  ]

if.then13.if.then22_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then22

if.then13.if.end44_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

land.lhs.true:                                    ; preds = %if.then13
  %values = getelementptr inbounds %struct.ax25_dev, ptr %12, i32 0, i32 5
  %16 = ptrtoint ptr %values to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %values, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool21.not = icmp eq i32 %17, 0
  br i1 %tobool21.not, label %land.lhs.true.if.end44_crit_edge, label %land.lhs.true.if.then22_crit_edge

land.lhs.true.if.then22_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then22

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then22:                                        ; preds = %land.lhs.true.if.then22_crit_edge, %if.then13.if.then22_crit_edge
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %src_c) #5
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %dst_c) #5
  %call23 = tail call ptr @skb_copy(ptr noundef %skb, i32 noundef 2592) #5
  %cmp24 = icmp eq ptr %call23, null
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %cleanup

if.end27:                                         ; preds = %if.then22
  %18 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %cmp28.not = icmp eq ptr %20, null
  br i1 %cmp28.not, label %if.end27.if.end31_crit_edge, label %if.then30

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @skb_set_owner_w(ptr noundef nonnull %call23, ptr noundef nonnull %20) #5
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end27.if.end31_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  %data32 = getelementptr inbounds %struct.sk_buff, ptr %call23, i32 0, i32 19
  %21 = ptrtoint ptr %data32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data32, align 4
  %add.ptr33 = getelementptr i8, ptr %22, i32 1
  %23 = call ptr @memcpy(ptr %dst_c, ptr %add.ptr33, i32 7)
  %add.ptr34 = getelementptr i8, ptr %22, i32 8
  %24 = call ptr @memcpy(ptr %src_c, ptr %add.ptr34, i32 7)
  %call35 = tail call ptr @skb_pull(ptr noundef nonnull %call23, i32 noundef 16) #5
  %25 = ptrtoint ptr %data32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data32, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call23, i32 0, i32 18
  %27 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %26 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call23, i32 0, i32 15, i32 0, i32 20
  %29 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i, ptr %network_header.i, align 4
  %arrayidx37 = getelementptr %struct.ax25_dev, ptr %12, i32 0, i32 5, i32 11
  %30 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx37, align 4
  %call38 = call ptr @ax25_send_frame(ptr noundef nonnull %call23, i32 noundef %31, ptr noundef nonnull %src_c, ptr noundef nonnull %dst_c, ptr noundef %digipeat.0129, ptr noundef %dev.1) #5
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.end31.cleanup_crit_edge, label %if.then40

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then40:                                        ; preds = %if.end31
  %refcount.i = getelementptr inbounds %struct.ax25_cb, ptr %call38, i32 0, i32 36
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !21
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #5
  %32 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #5, !srcloc !22
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !23

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #5
  br label %cleanup

if.then.i:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !24
  %digipeat.i = getelementptr inbounds %struct.ax25_cb, ptr %call38, i32 0, i32 3
  %33 = ptrtoint ptr %digipeat.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %digipeat.i, align 4
  call void @kfree(ptr noundef %34) #5
  call void @kfree(ptr noundef nonnull %call38) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.then26
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %dst_c) #5
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %src_c) #5
  br label %put

if.end44:                                         ; preds = %land.lhs.true.if.end44_crit_edge, %if.then13.if.end44_crit_edge, %if.end10.if.end44_crit_edge
  %arrayidx45 = getelementptr i8, ptr %1, i32 7
  %35 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx45, align 1
  %37 = and i8 %36, 30
  %38 = or i8 %37, 96
  store i8 %38, ptr %arrayidx45, align 1
  %arrayidx55 = getelementptr i8, ptr %1, i32 14
  %39 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx55, align 1
  %41 = and i8 %40, 30
  %42 = or i8 %41, 97
  store i8 %42, ptr %arrayidx55, align 1
  %call67 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #5
  %cmp68.not = icmp eq ptr %digipeat.0129, null
  br i1 %cmp68.not, label %if.end44.if.end77_crit_edge, label %if.then70

if.end44.if.end77_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

if.then70:                                        ; preds = %if.end44
  %digipeat71 = getelementptr inbounds %struct.ax25_route, ptr %call, i32 0, i32 4
  %43 = ptrtoint ptr %digipeat71 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %digipeat71, align 4
  %call72 = tail call ptr @ax25_rt_build_path(ptr noundef %skb, ptr noundef %add.ptr1, ptr noundef %add.ptr, ptr noundef %44) #5
  %cmp73 = icmp eq ptr %call72, null
  br i1 %cmp73, label %if.then70.put_crit_edge, label %if.then70.if.end77_crit_edge

if.then70.if.end77_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

if.then70.put_crit_edge:                          ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #7
  br label %put

if.end77:                                         ; preds = %if.then70.if.end77_crit_edge, %if.end44.if.end77_crit_edge
  %skb.addr.0 = phi ptr [ %skb, %if.end44.if.end77_crit_edge ], [ %call72, %if.then70.if.end77_crit_edge ]
  tail call void @ax25_queue_xmit(ptr noundef %skb.addr.0, ptr noundef %dev.1) #5
  br label %put

put:                                              ; preds = %if.end77, %if.then70.put_crit_edge, %cleanup, %if.then9
  call void @_raw_read_unlock(ptr noundef nonnull @ax25_route_lock) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ax25_get_route(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_set_owner_w(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ax25_send_frame(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ax25_rt_build_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_queue_xmit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax25_hard_header(ptr noundef %skb, ptr nocapture noundef readonly %dev, i16 noundef zeroext %type, ptr noundef readonly %daddr, ptr noundef readonly %saddr, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %type to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %type)
  %cmp = icmp eq i16 %type, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 17) #5
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %call, align 1
  %cmp2.not = icmp eq ptr %daddr, null
  br i1 %cmp2.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr = getelementptr i8, ptr %call, i32 1
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %1 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr_len, align 1
  %conv5 = zext i8 %2 to i32
  %3 = call ptr @memcpy(ptr %incdec.ptr, ptr %daddr, i32 %conv5)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %arrayidx = getelementptr i8, ptr %call, i32 7
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = and i8 %5, 30
  %7 = or i8 %6, 96
  store i8 %7, ptr %arrayidx, align 1
  %add.ptr = getelementptr i8, ptr %call, i32 8
  %cmp16.not = icmp eq ptr %saddr, null
  br i1 %cmp16.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %addr_len19 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %8 = ptrtoint ptr %addr_len19 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %addr_len19, align 1
  %conv20 = zext i8 %9 to i32
  %10 = call ptr @memcpy(ptr %add.ptr, ptr %saddr, i32 %conv20)
  br label %if.end23

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %11 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_addr, align 64
  %addr_len21 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %13 = ptrtoint ptr %addr_len21 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %addr_len21, align 1
  %conv22 = zext i8 %14 to i32
  %15 = call ptr @memcpy(ptr %add.ptr, ptr %12, i32 %conv22)
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then18
  %arrayidx24 = getelementptr i8, ptr %call, i32 14
  %16 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx24, align 1
  %18 = and i8 %17, 30
  %19 = or i8 %18, 97
  store i8 %19, ptr %arrayidx24, align 1
  %add.ptr36 = getelementptr i8, ptr %call, i32 15
  %incdec.ptr37 = getelementptr i8, ptr %call, i32 16
  %20 = ptrtoint ptr %add.ptr36 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 3, ptr %add.ptr36, align 1
  %21 = zext i16 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.3)
  switch i16 %type, label %do.end [
    i16 2048, label %if.end23.sw.epilog_crit_edge
    i16 2054, label %sw.bb40
  ]

if.end23.sw.epilog_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end:                                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb40, %if.end23.sw.epilog_crit_edge
  %.sink = phi i8 [ 0, %do.end ], [ -51, %sw.bb40 ], [ -52, %if.end23.sw.epilog_crit_edge ]
  %22 = ptrtoint ptr %incdec.ptr37 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %.sink, ptr %incdec.ptr37, align 1
  %. = select i1 %cmp2.not, i32 -17, i32 17
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ax25_validate_header(ptr noundef %header, i32 noundef %len) #0 align 64 {
entry:
  %digi = alloca %struct.ax25_digi, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %digi) #5
  %0 = call ptr @memset(ptr %digi, i32 255, i32 66)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %header to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %header, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %header, i32 1
  %sub = add i32 %len, -1
  %call = call ptr @ax25_addr_parse(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef null, ptr noundef null, ptr noundef nonnull %digi, ptr noundef null, ptr noundef null) #5
  %tobool4 = icmp ne ptr %call, null
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool4, %if.end3 ], [ false, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %digi) #5
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ax25_addr_parse(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @ax25_header_ops, !1, !"ax25_header_ops", i1 false, i1 false}
!1 = !{!"../net/ax25/ax25_ip.c", i32 240, i32 25}
!2 = !{ptr @__ksymtab_ax25_header_ops, !3, !"__ksymtab_ax25_header_ops", i1 false, i1 false}
!3 = !{!"../net/ax25/ax25_ip.c", i32 245, i32 1}
!4 = !{ptr @__ksymtab_ax25_ip_xmit, !5, !"__ksymtab_ax25_ip_xmit", i1 false, i1 false}
!5 = !{!"../net/ax25/ax25_ip.c", i32 246, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/ax25/ax25_ip.c", i32 88, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @ax25_hard_header._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @ax25_hard_header._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 2148339879}
!22 = !{i64 2148254343, i64 2148254375, i64 2148254404, i64 2148254438, i64 2148254469, i64 2148254492}
!23 = !{!"branch_weights", i32 2000, i32 1}
!24 = !{i64 2149276159}
