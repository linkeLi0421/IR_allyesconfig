; ModuleID = '/llk/IR_all_yes/net/6lowpan/ndisc.c_pt.bc'
source_filename = "../net/6lowpan/ndisc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ndisc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nd_opt_hdr = type { i8, i8 }
%struct.ndisc_options = type { [15 x ptr], ptr, ptr, ptr, ptr, [3 x ptr] }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.neigh_table = type { i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, i32, ptr, ptr, ptr }
%struct.neigh_parms = type { %struct.possible_net_t, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i32] }
%struct.possible_net_t = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.140, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.140 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.wpan_dev = type { ptr, i32, %struct.list_head, ptr, ptr, ptr, i32, i16, i16, i64, %struct.atomic_t, %struct.atomic_t, i8, i8, i8, i8, i8, i8, i8 }

@lowpan_ndisc_ops = dso_local constant { %struct.ndisc_ops, [40 x i8] } { %struct.ndisc_ops { ptr @lowpan_ndisc_is_useropt, ptr @lowpan_ndisc_parse_options, ptr @lowpan_ndisc_update, ptr @lowpan_ndisc_opt_addr_space, ptr @lowpan_ndisc_fill_addr_option, ptr @lowpan_ndisc_prefix_rcv_add_addr }, [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 133, i64 134, i64 135, i64 136, i64 137]
@__sancov_gen_cov_switch_values.1 = internal global [6 x i64] [i64 4, i64 8, i64 133, i64 135, i64 136, i64 137]
@__sancov_gen_cov_switch_values.2 = internal global [6 x i64] [i64 4, i64 8, i64 133, i64 135, i64 136, i64 137]
@___asan_gen_.3 = private unnamed_addr constant [17 x i8] c"lowpan_ndisc_ops\00", align 1
@___asan_gen_.4 = private constant [23 x i8] c"../net/6lowpan/ndisc.c\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.4, i32 224, i32 24 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @lowpan_ndisc_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowpan_ndisc_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lowpan_ndisc_is_useropt(i8 noundef zeroext %nd_opt_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %nd_opt_type)
  %cmp = icmp eq i8 %nd_opt_type, 34
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lowpan_ndisc_parse_options(ptr nocapture noundef readonly %dev, ptr noundef %nd_opt, ptr nocapture noundef %ndopts) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp eq i32 %1, 1
  br i1 %cmp.i, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %nd_opt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nd_opt, align 1
  %.off = add i8 %3, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %sw.bb, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %if.end
  %nd_opt_len.i = getelementptr inbounds %struct.nd_opt_hdr, ptr %nd_opt, i32 0, i32 1
  %4 = ptrtoint ptr %nd_opt_len.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nd_opt_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cond.i = icmp eq i8 %5, 1
  br i1 %cond.i, label %sw.bb.i, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb.i:                                          ; preds = %sw.bb
  %idxprom.i = zext i8 %3 to i32
  %arrayidx.i = getelementptr %struct.ndisc_options, ptr %ndopts, i32 0, i32 5, i32 %idxprom.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.else.i, label %sw.bb.i.return_crit_edge

sw.bb.i.return_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %nd_opt, ptr %arrayidx.i, align 4
  br label %return

return:                                           ; preds = %if.else.i, %sw.bb.i.return_crit_edge, %sw.bb.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ 1, %sw.bb.i.return_crit_edge ], [ 1, %if.else.i ], [ 0, %sw.bb.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lowpan_ndisc_update(ptr nocapture noundef readonly %dev, ptr noundef %n, i32 noundef %flags, i8 noundef zeroext %icmp6_type, ptr nocapture noundef readonly %ndopts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp ne i32 %1, 1
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %entry.if.end2_crit_edge, label %if.then1

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2

if.then1:                                         ; preds = %entry
  %tbl.i.i = getelementptr inbounds %struct.neighbour, ptr %n, i32 0, i32 1
  %2 = ptrtoint ptr %tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tbl.i.i, align 4
  %entry_size.i.i = getelementptr inbounds %struct.neigh_table, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %entry_size.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %entry_size.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %n, i32 %5
  %6 = zext i8 %icmp6_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %icmp6_type, label %if.then1.sw.epilog.thread.i_crit_edge [
    i8 -123, label %if.then1.sw.bb.i_crit_edge
    i8 -122, label %if.then1.sw.bb.i_crit_edge4
    i8 -121, label %if.then1.sw.bb.i_crit_edge5
    i8 -119, label %if.then1.sw.bb8.i_crit_edge
    i8 -120, label %if.then1.sw.bb8.i_crit_edge6
  ]

if.then1.sw.bb8.i_crit_edge6:                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i

if.then1.sw.bb8.i_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i

if.then1.sw.bb.i_crit_edge5:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.then1.sw.bb.i_crit_edge4:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.then1.sw.bb.i_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.then1.sw.epilog.thread.i_crit_edge:            ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread.i

sw.bb.i:                                          ; preds = %if.then1.sw.bb.i_crit_edge, %if.then1.sw.bb.i_crit_edge4, %if.then1.sw.bb.i_crit_edge5
  %arrayidx.i = getelementptr %struct.ndisc_options, ptr %ndopts, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %sw.bb.i.sw.epilog.thread.i_crit_edge, label %if.then.i

sw.bb.i.sw.epilog.thread.i_crit_edge:             ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread.i

if.then.i:                                        ; preds = %sw.bb.i
  %nd_opt_len.i.i = getelementptr inbounds %struct.nd_opt_hdr, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %nd_opt_len.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nd_opt_len.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp.not.i.i = icmp ne i8 %10, 1
  %add.ptr.i1.i = getelementptr %struct.nd_opt_hdr, ptr %8, i32 1
  %tobool5.not11.i = icmp eq ptr %add.ptr.i1.i, null
  %tobool5.not.i = select i1 %cmp.not.i.i, i1 true, i1 %tobool5.not11.i
  br i1 %tobool5.not.i, label %if.then.i.if.end2_crit_edge, label %if.then.i.if.then24.i_crit_edge

if.then.i.if.then24.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24.i

if.then.i.if.end2_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2

sw.bb8.i:                                         ; preds = %if.then1.sw.bb8.i_crit_edge, %if.then1.sw.bb8.i_crit_edge6
  %arrayidx10.i = getelementptr %struct.ndisc_options, ptr %ndopts, i32 0, i32 5, i32 2
  %11 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx10.i, align 4
  %tobool11.not.i = icmp eq ptr %12, null
  br i1 %tobool11.not.i, label %sw.bb8.i.sw.epilog.thread.i_crit_edge, label %if.then12.i

sw.bb8.i.sw.epilog.thread.i_crit_edge:            ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread.i

if.then12.i:                                      ; preds = %sw.bb8.i
  %nd_opt_len.i2.i = getelementptr inbounds %struct.nd_opt_hdr, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %nd_opt_len.i2.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %nd_opt_len.i2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp.not.i3.i = icmp ne i8 %14, 1
  %add.ptr.i4.i = getelementptr %struct.nd_opt_hdr, ptr %12, i32 1
  %tobool16.not10.i = icmp eq ptr %add.ptr.i4.i, null
  %tobool16.not.i = select i1 %cmp.not.i3.i, i1 true, i1 %tobool16.not10.i
  br i1 %tobool16.not.i, label %if.then12.i.if.end2_crit_edge, label %if.then12.i.if.then24.i_crit_edge

if.then12.i.if.then24.i_crit_edge:                ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24.i

if.then12.i.if.end2_crit_edge:                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2

sw.epilog.thread.i:                               ; preds = %sw.bb8.i.sw.epilog.thread.i_crit_edge, %sw.bb.i.sw.epilog.thread.i_crit_edge, %if.then1.sw.epilog.thread.i_crit_edge
  %lock7.i = getelementptr inbounds %struct.neighbour, ptr %n, i32 0, i32 5
  tail call void @_raw_write_lock_bh(ptr noundef %lock7.i) #6
  br label %if.end30.i

if.then24.i:                                      ; preds = %if.then12.i.if.then24.i_crit_edge, %if.then.i.if.then24.i_crit_edge
  %lladdr_short.0.i = phi ptr [ %add.ptr.i4.i, %if.then12.i.if.then24.i_crit_edge ], [ %add.ptr.i1.i, %if.then.i.if.then24.i_crit_edge ]
  %lock.i = getelementptr inbounds %struct.neighbour, ptr %n, i32 0, i32 5
  tail call void @_raw_write_lock_bh(ptr noundef %lock.i) #6
  %15 = ptrtoint ptr %lladdr_short.0.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %lladdr_short.0.i, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #6
  %18 = and i16 %17, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not.i.i = icmp eq i16 %18, 0
  %spec.store.select.i = select i1 %tobool.not.i.i, i16 %17, i16 -257
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %spec.store.select.i, ptr %add.ptr.i.i, align 2
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then24.i, %sw.epilog.thread.i
  %lock9.i = phi ptr [ %lock7.i, %sw.epilog.thread.i ], [ %lock.i, %if.then24.i ]
  tail call void @_raw_write_unlock_bh(ptr noundef %lock9.i) #6
  br label %if.end2

if.end2:                                          ; preds = %if.end30.i, %if.then12.i.if.end2_crit_edge, %if.then.i.if.end2_crit_edge, %entry.if.end2_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lowpan_ndisc_opt_addr_space(ptr nocapture noundef readonly %dev, i8 noundef zeroext %icmp6_type, ptr noundef %neigh, ptr noundef %ha_buf, ptr nocapture noundef writeonly %ha) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp eq i32 %1, 1
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i8 %icmp6_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %icmp6_type, label %if.end.cleanup_crit_edge [
    i8 -119, label %sw.bb
    i8 -120, label %if.end.sw.bb10_crit_edge
    i8 -121, label %if.end.sw.bb10_crit_edge27
    i8 -123, label %if.end.sw.bb10_crit_edge28
  ]

if.end.sw.bb10_crit_edge28:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10

if.end.sw.bb10_crit_edge27:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10

if.end.sw.bb10_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %tbl.i = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 1
  %3 = ptrtoint ptr %tbl.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tbl.i, align 4
  %entry_size.i = getelementptr inbounds %struct.neigh_table, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %entry_size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %entry_size.i, align 4
  %add.ptr.i = getelementptr i8, ptr %neigh, i32 %6
  %lock = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 5
  tail call void @_raw_read_lock_bh(ptr noundef %lock) #6
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i, align 2
  %9 = and i16 %8, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i = icmp eq i16 %9, 0
  br i1 %tobool.not.i, label %if.then4, label %if.else

if.then4:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %ha_buf to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %8, ptr %ha_buf, align 1
  tail call void @_raw_read_unlock_bh(ptr noundef %lock) #6
  %11 = ptrtoint ptr %ha to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ha_buf, ptr %ha, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_read_unlock_bh(ptr noundef %lock) #6
  br label %cleanup

sw.bb10:                                          ; preds = %if.end.sw.bb10_crit_edge, %if.end.sw.bb10_crit_edge27, %if.end.sw.bb10_crit_edge28
  %priv.i = getelementptr i8, ptr %dev, i32 2808
  %12 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i, align 4
  %ieee802154_ptr = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 83
  %14 = ptrtoint ptr %ieee802154_ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ieee802154_ptr, align 4
  %short_addr12 = getelementptr inbounds %struct.wpan_dev, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %short_addr12 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %short_addr12, align 2
  %18 = lshr i16 %17, 4
  %19 = and i16 %18, 8
  %20 = xor i16 %19, 8
  %21 = zext i16 %20 to i32
  br label %cleanup

cleanup:                                          ; preds = %sw.bb10, %if.else, %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 8, %if.then4 ], [ 0, %if.else ], [ %21, %sw.bb10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lowpan_ndisc_fill_addr_option(ptr nocapture noundef readonly %dev, ptr noundef %skb, i8 noundef zeroext %icmp6_type, ptr noundef readonly %ha) #2 align 64 {
entry:
  %short_addr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %short_addr) #6
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp eq i32 %1, 1
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i8 %icmp6_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %icmp6_type, label %if.end.cleanup_crit_edge [
    i8 -119, label %sw.bb
    i8 -120, label %if.end.sw.epilog_crit_edge
    i8 -123, label %if.end.sw.bb4_crit_edge
    i8 -121, label %if.end.sw.bb4_crit_edge18
  ]

if.end.sw.bb4_crit_edge18:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

if.end.sw.bb4_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %tobool.not = icmp eq ptr %ha, null
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.then1

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then1:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %ha to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %ha, align 1
  br label %cleanup.sink.split

sw.bb4:                                           ; preds = %if.end.sw.bb4_crit_edge, %if.end.sw.bb4_crit_edge18
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %if.end.sw.epilog_crit_edge
  %opt_type.0 = phi i32 [ 1, %sw.bb4 ], [ 2, %if.end.sw.epilog_crit_edge ]
  %priv.i = getelementptr i8, ptr %dev, i32 2808
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 4
  %ieee802154_ptr = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 83
  %7 = ptrtoint ptr %ieee802154_ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ieee802154_ptr, align 4
  %short_addr6 = getelementptr inbounds %struct.wpan_dev, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %short_addr6 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %short_addr6, align 2
  %11 = and i16 %10, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not.i = icmp eq i16 %11, 0
  br i1 %tobool.not.i, label %sw.epilog.cleanup.sink.split_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.cleanup.sink.split_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.epilog.cleanup.sink.split_crit_edge, %if.then1
  %.sink = phi i16 [ %4, %if.then1 ], [ %10, %sw.epilog.cleanup.sink.split_crit_edge ]
  %opt_type.0.sink = phi i32 [ 2, %if.then1 ], [ %opt_type.0, %sw.epilog.cleanup.sink.split_crit_edge ]
  %12 = tail call i16 @llvm.bswap.i16(i16 %.sink) #6
  %13 = ptrtoint ptr %short_addr to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %short_addr, align 2
  call void @__ndisc_fill_addr_option(ptr noundef %skb, i32 noundef %opt_type.0.sink, ptr noundef nonnull %short_addr, i32 noundef 2, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.epilog.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %short_addr) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lowpan_ndisc_prefix_rcv_add_addr(ptr noundef %net, ptr noundef %dev, ptr noundef %pinfo, ptr noundef %in6_dev, ptr noundef %addr, i32 noundef %addr_type, i32 noundef %addr_flags, i1 noundef zeroext %sllao, i1 noundef zeroext %tokenized, i32 noundef %valid_lft, i32 noundef %prefered_lft, i1 noundef zeroext %dev_addr_generated) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp eq i32 %1, 1
  %2 = and i1 %cmp.i, %dev_addr_generated
  br i1 %2, label %land.lhs.true3, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

land.lhs.true3:                                   ; preds = %entry
  %add.ptr = getelementptr i8, ptr %addr, i32 8
  %call4 = tail call i32 @addrconf_ifid_802154_6lowpan(ptr noundef %add.ptr, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %land.lhs.true3.if.end11_crit_edge

land.lhs.true3.if.end11_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 @addrconf_prefix_rcv_add_addr(ptr noundef %net, ptr noundef %dev, ptr noundef %pinfo, ptr noundef %in6_dev, ptr noundef %addr, i32 noundef %addr_type, i32 noundef %addr_flags, i1 noundef zeroext %sllao, i1 noundef zeroext %tokenized, i32 noundef %valid_lft, i32 noundef %prefered_lft) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then, %land.lhs.true3.if.end11_crit_edge, %entry.if.end11_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ndisc_fill_addr_option(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @addrconf_ifid_802154_6lowpan(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @addrconf_prefix_rcv_add_addr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @lowpan_ndisc_ops, !1, !"lowpan_ndisc_ops", i1 false, i1 false}
!1 = !{!"../net/6lowpan/ndisc.c", i32 224, i32 24}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
