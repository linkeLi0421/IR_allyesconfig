; ModuleID = '/llk/IR_all_yes/net/ncsi/ncsi-cmd.c_pt.bc'
source_filename = "../net/ncsi/ncsi-cmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ncsi_cmd_handler = type { i8, i32, ptr }
%struct.ncsi_cmd_arg = type { ptr, i8, i8, i8, i8, i16, i32, %union.anon.141, ptr, ptr }
%union.anon.141 = type { [4 x i32] }
%struct.ncsi_dev = type { i32, i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
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
%struct.ncsi_request = type { i8, i8, i32, ptr, ptr, ptr, %struct.timer_list, i8, i32, i32, %struct.nlmsghdr }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.ncsi_dev_priv = type { %struct.ncsi_dev, i32, i32, %struct.spinlock, i32, i32, %struct.list_head, ptr, [256 x %struct.ncsi_request], i32, i32, ptr, ptr, %struct.list_head, %struct.work_struct, %struct.packet_type, %struct.list_head, %struct.list_head, i8, i8, i32 }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.ncsi_pkt_hdr = type { i8, i8, i8, i8, i8, i8, i16, [2 x i32] }
%struct.ncsi_cmd_sp_pkt = type { %struct.ncsi_cmd_pkt_hdr, [3 x i8], i8, i32, [22 x i8] }
%struct.ncsi_cmd_pkt_hdr = type { %struct.ncsi_pkt_hdr }
%struct.ncsi_cmd_dc_pkt = type { %struct.ncsi_cmd_pkt_hdr, [3 x i8], i8, i32, [22 x i8] }
%struct.ncsi_cmd_ae_pkt = type { %struct.ncsi_cmd_pkt_hdr, [3 x i8], i8, i32, i32, [18 x i8] }
%struct.ncsi_cmd_sl_pkt = type { %struct.ncsi_cmd_pkt_hdr, i32, i32, i32, [18 x i8] }
%struct.ncsi_cmd_svf_pkt = type { %struct.ncsi_cmd_pkt_hdr, i16, i16, i16, i8, i8, i32, [18 x i8] }
%struct.ncsi_cmd_ev_pkt = type { %struct.ncsi_cmd_pkt_hdr, [3 x i8], i8, i32, [22 x i8] }
%struct.ncsi_cmd_sma_pkt = type { %struct.ncsi_cmd_pkt_hdr, [6 x i8], i8, i8, i32, [18 x i8] }
%struct.ncsi_cmd_ebf_pkt = type { %struct.ncsi_cmd_pkt_hdr, i32, i32, [22 x i8] }
%struct.ncsi_cmd_egmf_pkt = type { %struct.ncsi_cmd_pkt_hdr, i32, i32, [22 x i8] }
%struct.ncsi_cmd_snfc_pkt = type { %struct.ncsi_cmd_pkt_hdr, [3 x i8], i8, i32, [22 x i8] }
%struct.ncsi_cmd_oem_pkt = type { %struct.ncsi_cmd_pkt_hdr, i32, [0 x i8] }

@ncsi_cmd_handlers = internal constant { [30 x %struct.ncsi_cmd_handler], [88 x i8] } { [30 x %struct.ncsi_cmd_handler] [%struct.ncsi_cmd_handler { i8 0, i32 0, ptr @ncsi_cmd_handler_default }, %struct.ncsi_cmd_handler { i8 1, i32 4, ptr @ncsi_cmd_handler_sp }, %struct.ncsi_cmd_handler { i8 2, i32 0, ptr @ncsi_cmd_handler_default }, %struct.ncsi_cmd_handler { i8 3, i32 0, ptr @ncsi_cmd_handler_default }, %struct.ncsi_cmd_handler { i8 4, i32 4, ptr @ncsi_cmd_handler_dc }, %struct.ncsi_cmd_handler { i8 5, i32 4, ptr @ncsi_cmd_handler_rc }, %struct.ncsi_cmd_handler { i8 6, i32 0, ptr @ncsi_cmd_handler_default }, %struct.ncsi_cmd_handler { i8 7, i32 0, ptr @ncsi_cmd_handler_default }, %struct.ncsi_cmd_handler { i8 8, i32 8, ptr @ncsi_cmd_handler_ae }, %struct.ncsi_cmd_handler { i8 9, i32 8, ptr @ncsi_cmd_handler_sl }, %struct.ncsi_cmd_handler { i8 10, i32 0, ptr @ncsi_cmd_handler_default }, %struct.ncsi_cmd_handler { i8 11, i32 8, ptr @ncsi_cmd_handler_svf }, %struct.ncsi_cmd_handler { i8 12, i32 4, ptr @ncsi_cmd_handler_ev }, %struct.ncsi_cmd_handler { i8 13, i32 0, ptr @ncsi_cmd_handler_default }, %struct.ncsi_cmd_handler { i8 14, i32 8, ptr @ncsi_cmd_handler_sma }, %struct.ncsi_cmd_handler { i8 16, i32 4, ptr @ncsi_cmd_handler_ebf }, %struct.ncsi_cmd_handler { i8 17, i32 0, ptr @ncsi_cmd_handler_default }, %struct.ncsi_cmd_handler { i8 18, i32 4, ptr @ncsi_cmd_handler_egmf }, %struct.ncsi_cmd_handler { i8 19, i32 0, ptr @ncsi_cmd_handler_default }, %struct.ncsi_cmd_handler { i8 20, i32 4, ptr @ncsi_cmd_handler_snfc }, %struct.ncsi_cmd_handler { i8 21, i32 0, ptr @ncsi_cmd_handler_default }, %struct.ncsi_cmd_handler { i8 22, i32 0, ptr @ncsi_cmd_handler_default }, %struct.ncsi_cmd_handler { i8 23, i32 0, ptr @ncsi_cmd_handler_default }, %struct.ncsi_cmd_handler { i8 24, i32 0, ptr @ncsi_cmd_handler_default }, %struct.ncsi_cmd_handler { i8 25, i32 0, ptr @ncsi_cmd_handler_default }, %struct.ncsi_cmd_handler { i8 26, i32 0, ptr @ncsi_cmd_handler_default }, %struct.ncsi_cmd_handler { i8 27, i32 0, ptr @ncsi_cmd_handler_default }, %struct.ncsi_cmd_handler { i8 80, i32 -1, ptr @ncsi_cmd_handler_oem }, %struct.ncsi_cmd_handler { i8 81, i32 0, ptr null }, %struct.ncsi_cmd_handler { i8 82, i32 0, ptr @ncsi_cmd_handler_default }], [88 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Cannot send packet with type 0x%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"ncsi_cmd_handlers\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 242, i32 3 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [23 x i8] c"../net/ncsi/ncsi-cmd.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 346, i32 7 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @ncsi_cmd_handlers, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncsi_cmd_handlers to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ncsi_calculate_checksum(ptr nocapture noundef readonly %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp12 = icmp sgt i32 %len, 0
  br i1 %cmp12, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.014 = phi i32 [ %add4, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %checksum.013 = phi i32 [ %add3, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %data, i32 %i.014
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %add = or i32 %i.014, 1
  %arrayidx1 = getelementptr i8, ptr %data, i32 %add
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %or = or i32 %shl, %conv2
  %add3 = add i32 %or, %checksum.013
  %add4 = add i32 %i.014, 2
  %cmp = icmp slt i32 %add4, %len
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %checksum.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add3, %for.body.for.end_crit_edge ]
  %add5 = sub i32 0, %checksum.0.lcssa
  ret i32 %add5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ncsi_xmit_cmd(ptr noundef %nca) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %req_flags = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 6
  %0 = ptrtoint ptr %req_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %type1 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %2 = ptrtoint ptr %type1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %type1, align 4
  %phi.cast = zext i8 %3 to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %type.0 = phi i32 [ %phi.cast, %if.else ], [ 80, %entry.if.end_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.0117 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [30 x %struct.ncsi_cmd_handler], ptr @ncsi_cmd_handlers, i32 0, i32 %i.0117
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 4
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %type.0, i32 %conv)
  %cmp5 = icmp eq i32 %type.0, %conv
  br i1 %cmp5, label %if.then7, label %for.inc

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %i.0117)
  %tobool.not = icmp eq i32 %i.0117, 28
  %tobool14.not = icmp eq ptr %arrayidx, null
  %or.cond = or i1 %tobool.not, %tobool14.not
  br i1 %or.cond, label %if.then7.if.then15_crit_edge, label %if.end18

if.then7.if.then15_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0117, 1
  %exitcond.not = icmp eq i32 %inc, 30
  br i1 %exitcond.not, label %for.inc.if.then15_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.if.then15_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

if.then15:                                        ; preds = %for.inc.if.then15_crit_edge, %if.then7.if.then15_crit_edge
  %6 = ptrtoint ptr %nca to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nca, align 4
  %dev = getelementptr inbounds %struct.ncsi_dev, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %type16 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %10 = ptrtoint ptr %type16 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type16, align 4
  %conv17 = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str, i32 noundef %conv17) #9
  br label %cleanup

if.end18:                                         ; preds = %if.then7
  %12 = and i32 %i.0117, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %12)
  %cmp19.not = icmp eq i32 %12, 27
  br i1 %cmp19.not, label %if.end18.if.end25_crit_edge, label %if.then21

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %payload = getelementptr [30 x %struct.ncsi_cmd_handler], ptr @ncsi_cmd_handlers, i32 0, i32 %i.0117, i32 1
  %13 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %payload, align 4
  %conv23 = trunc i32 %14 to i16
  %payload24 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 5
  %15 = ptrtoint ptr %payload24 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv23, ptr %payload24, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.end18.if.end25_crit_edge
  %16 = ptrtoint ptr %nca to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nca, align 4
  %dev2.i = getelementptr inbounds %struct.ncsi_dev, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev2.i, align 4
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 19
  %20 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %hard_header_len.i, align 2
  %conv.i = zext i16 %21 to i32
  %needed_headroom.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 21
  %22 = ptrtoint ptr %needed_headroom.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %needed_headroom.i, align 8
  %conv3.i = zext i16 %23 to i32
  %add.i = add nuw nsw i32 %conv3.i, %conv.i
  %and.i = and i32 %add.i, 131056
  %add4.i = add nuw nsw i32 %and.i, 16
  %needed_tailroom.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 22
  %24 = ptrtoint ptr %needed_tailroom.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %needed_tailroom.i, align 2
  %call.i = tail call ptr @ncsi_alloc_request(ptr noundef %17, i32 noundef %1) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end25.cleanup_crit_edge, label %if.end.i

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end25
  %conv5.i = zext i16 %25 to i32
  %payload8.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 5
  %26 = ptrtoint ptr %payload8.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %payload8.i, align 4
  %conv9.i = zext i16 %27 to i32
  %add10.i = add nuw nsw i32 %conv9.i, 3
  %and11.i = and i32 %add10.i, 131068
  %28 = tail call i32 @llvm.umax.i32(i32 %and11.i, i32 26) #6
  %add6.i = add nuw nsw i32 %conv5.i, 20
  %add7.i = add nuw nsw i32 %add6.i, %add4.i
  %add13.i = add nuw nsw i32 %add7.i, %28
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add13.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #6
  %tobool15.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool15.not.i, label %if.then16.i, label %if.end28

if.then16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ncsi_free_request(ptr noundef nonnull %call.i) #6
  br label %cleanup

if.end28:                                         ; preds = %if.end.i
  %cmd.i = getelementptr inbounds %struct.ncsi_request, ptr %call.i, i32 0, i32 4
  %29 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i.i, ptr %cmd.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %30 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 %add4.i
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %32 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %33, i32 %add4.i
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %34 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 20
  %36 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %37 = getelementptr inbounds %struct.anon.0, ptr %call.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %19, ptr %37, align 8
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %39 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 -30472, ptr %protocol.i, align 8
  %40 = ptrtoint ptr %req_flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %req_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp30 = icmp eq i32 %41, 2
  br i1 %cmp30, label %if.then32, label %if.end28.if.end38_crit_edge

if.end28.if.end38_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %info = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 9
  %42 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %info, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %snd_seq33 = getelementptr inbounds %struct.ncsi_request, ptr %call.i, i32 0, i32 8
  %46 = ptrtoint ptr %snd_seq33 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %snd_seq33, align 4
  %47 = load ptr, ptr %info, align 4
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %snd_portid, align 4
  %snd_portid35 = getelementptr inbounds %struct.ncsi_request, ptr %call.i, i32 0, i32 9
  %50 = ptrtoint ptr %snd_portid35 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %snd_portid35, align 4
  %nlhdr = getelementptr inbounds %struct.ncsi_request, ptr %call.i, i32 0, i32 10
  %51 = load ptr, ptr %info, align 4
  %nlhdr37 = getelementptr inbounds %struct.genl_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %nlhdr37 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %nlhdr37, align 4
  %54 = call ptr @memcpy(ptr %nlhdr, ptr %53, i32 16)
  br label %if.end38

if.end38:                                         ; preds = %if.then32, %if.end28.if.end38_crit_edge
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %call.i, align 4
  %id39 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 2
  %57 = ptrtoint ptr %id39 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %id39, align 1
  %handler40 = getelementptr [30 x %struct.ncsi_cmd_handler], ptr @ncsi_cmd_handlers, i32 0, i32 %i.0117, i32 2
  %58 = ptrtoint ptr %handler40 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %handler40, align 4
  %60 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cmd.i, align 4
  %call41 = tail call i32 %59(ptr noundef %61, ptr noundef %nca) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ncsi_free_request(ptr noundef nonnull %call.i) #6
  br label %cleanup

if.end44:                                         ; preds = %if.end38
  %62 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cmd.i, align 4
  %call46 = tail call ptr @skb_push(ptr noundef %63, i32 noundef 14) #6
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %call46, i32 0, i32 2
  %64 = ptrtoint ptr %h_proto to i32
  call void @__asan_storeN_noabort(i32 %64, i32 2)
  store i16 -30472, ptr %h_proto, align 1
  %65 = call ptr @memset(ptr %call46, i32 255, i32 6)
  %66 = ptrtoint ptr %nca to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %nca, align 4
  %gma_flag = getelementptr inbounds %struct.ncsi_dev_priv, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %gma_flag to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %gma_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %69)
  %cmp48 = icmp eq i32 %69, 1
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %call46, i32 0, i32 1
  br i1 %cmp48, label %if.then50, label %if.else55

if.then50:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %dev54 = getelementptr inbounds %struct.ncsi_dev, ptr %67, i32 0, i32 2
  %70 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev54, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %71, i32 0, i32 86
  %72 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev_addr, align 64
  %74 = call ptr @memcpy(ptr %h_source, ptr %73, i32 6)
  br label %if.end58

if.else55:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %75 = call ptr @memset(ptr %h_source, i32 255, i32 6)
  br label %if.end58

if.end58:                                         ; preds = %if.else55, %if.then50
  %enabled = getelementptr inbounds %struct.ncsi_request, ptr %call.i, i32 0, i32 7
  %76 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %enabled, align 4
  %timer = getelementptr inbounds %struct.ncsi_request, ptr %call.i, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %77 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %77, 100
  %call59 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #6
  %78 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cmd.i, align 4
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %79, i32 0, i32 21
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #6
  %80 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #6, !srcloc !13
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %80, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end58.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !14

if.end58.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end58
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %81 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %81)
  %.not.i.i.i.i = icmp sgt i32 %81, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.skb_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !15

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.skb_get.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end58.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end58.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #6
  br label %skb_get.exit

skb_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.skb_get.exit_crit_edge
  %82 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cmd.i, align 4
  %call63 = tail call i32 @dev_queue_xmit(ptr noundef %83) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.then66, label %skb_get.exit.cleanup_crit_edge

skb_get.exit.cleanup_crit_edge:                   ; preds = %skb_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then66:                                        ; preds = %skb_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ncsi_free_request(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then66, %skb_get.exit.cleanup_crit_edge, %if.then43, %if.then16.i, %if.end25.cleanup_crit_edge, %if.then15
  %retval.0 = phi i32 [ %call41, %if.then43 ], [ %call63, %if.then66 ], [ -2, %if.then15 ], [ 0, %skb_get.exit.cleanup_crit_edge ], [ -12, %if.then16.i ], [ -12, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ncsi_free_request(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_cmd_handler_default(ptr noundef %skb, ptr nocapture noundef readonly %nca) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 48) #6
  %revision.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 1
  %0 = call ptr @memset(ptr %call.i, i32 0, i32 48)
  %1 = ptrtoint ptr %revision.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %revision.i, align 1
  %id.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 2
  %2 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id.i, align 1
  %id1.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %id1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %id1.i, align 1
  %type.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %type.i, align 4
  %type2.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %type2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %type2.i, align 4
  %package.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 3
  %8 = ptrtoint ptr %package.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %package.i, align 2
  %shl.i = shl i8 %9, 5
  %channel.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 4
  %10 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %channel.i, align 1
  %or.i = or i8 %shl.i, %11
  %channel5.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %channel5.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %or.i, ptr %channel5.i, align 1
  %payload.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 5
  %13 = ptrtoint ptr %payload.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %payload.i, align 4
  %length.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 6
  %15 = ptrtoint ptr %length.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %length.i, align 2
  %reserved1.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 7
  %16 = ptrtoint ptr %reserved1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %reserved1.i, align 4
  %arrayidx7.i = getelementptr %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx7.i, align 4
  %18 = load i16, ptr %payload.i, align 4
  %conv9.i = zext i16 %18 to i32
  %add.i = add nuw nsw i32 %conv9.i, 16
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry
  %i.014.i.i = phi i32 [ %add4.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry ]
  %checksum.013.i.i = phi i32 [ %add3.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry ]
  %arrayidx.i.i = getelementptr i8, ptr %call.i, i32 %i.014.i.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %20 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %add.i.i = or i32 %i.014.i.i, 1
  %arrayidx1.i.i = getelementptr i8, ptr %call.i, i32 %add.i.i
  %21 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %22 to i32
  %or.i.i = or i32 %shl.i.i, %conv2.i.i
  %add3.i.i = add i32 %or.i.i, %checksum.013.i.i
  %add4.i.i = add nuw nsw i32 %i.014.i.i, 2
  %cmp.i.i = icmp ult i32 %add4.i.i, %add.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %ncsi_cmd_build_header.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

ncsi_cmd_build_header.exit:                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add5.i.i = sub i32 0, %add3.i.i
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 16
  %add12.i = add nuw nsw i32 %conv9.i, 3
  %and.i = and i32 %add12.i, 131068
  %add.ptr13.i = getelementptr i8, ptr %add.ptr.i, i32 %and.i
  %23 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add5.i.i, ptr %add.ptr13.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_cmd_handler_sp(ptr noundef %skb, ptr nocapture noundef readonly %nca) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 48) #6
  %0 = call ptr @memset(ptr %call.i, i32 0, i32 48)
  %1 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  %hw_arbitration = getelementptr inbounds %struct.ncsi_cmd_sp_pkt, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %hw_arbitration to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %hw_arbitration, align 1
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %call.i, align 4
  %revision.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %revision.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %revision.i, align 1
  %reserved.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %reserved.i, align 2
  %id.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 2
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id.i, align 1
  %id1.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %id1.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %id1.i, align 1
  %type.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type.i, align 4
  %type2.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %type2.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %type2.i, align 4
  %package.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 3
  %14 = ptrtoint ptr %package.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %package.i, align 2
  %shl.i = shl i8 %15, 5
  %channel.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 4
  %16 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %channel.i, align 1
  %or.i = or i8 %shl.i, %17
  %channel5.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %channel5.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %or.i, ptr %channel5.i, align 1
  %payload.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 5
  %19 = ptrtoint ptr %payload.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %payload.i, align 4
  %length.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 6
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %length.i, align 2
  %reserved1.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 7
  %22 = ptrtoint ptr %reserved1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %reserved1.i, align 4
  %arrayidx7.i = getelementptr %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx7.i, align 4
  %24 = load i16, ptr %payload.i, align 4
  %conv9.i = zext i16 %24 to i32
  %add.i = add nuw nsw i32 %conv9.i, 16
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry
  %i.014.i.i = phi i32 [ %add4.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry ]
  %checksum.013.i.i = phi i32 [ %add3.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry ]
  %arrayidx.i.i = getelementptr i8, ptr %call.i, i32 %i.014.i.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %26 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %add.i.i = or i32 %i.014.i.i, 1
  %arrayidx1.i.i = getelementptr i8, ptr %call.i, i32 %add.i.i
  %27 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %28 to i32
  %or.i.i = or i32 %shl.i.i, %conv2.i.i
  %add3.i.i = add i32 %or.i.i, %checksum.013.i.i
  %add4.i.i = add nuw nsw i32 %i.014.i.i, 2
  %cmp.i.i = icmp ult i32 %add4.i.i, %add.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %ncsi_cmd_build_header.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

ncsi_cmd_build_header.exit:                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add5.i.i = sub i32 0, %add3.i.i
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 16
  %add12.i = add nuw nsw i32 %conv9.i, 3
  %and.i = and i32 %add12.i, 131068
  %add.ptr13.i = getelementptr i8, ptr %add.ptr.i, i32 %and.i
  %29 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add5.i.i, ptr %add.ptr13.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_cmd_handler_dc(ptr noundef %skb, ptr nocapture noundef readonly %nca) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 48) #6
  %0 = call ptr @memset(ptr %call.i, i32 0, i32 48)
  %1 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  %ald = getelementptr inbounds %struct.ncsi_cmd_dc_pkt, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %ald to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %ald, align 1
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %call.i, align 4
  %revision.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %revision.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %revision.i, align 1
  %reserved.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %reserved.i, align 2
  %id.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 2
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id.i, align 1
  %id1.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %id1.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %id1.i, align 1
  %type.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type.i, align 4
  %type2.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %type2.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %type2.i, align 4
  %package.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 3
  %14 = ptrtoint ptr %package.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %package.i, align 2
  %shl.i = shl i8 %15, 5
  %channel.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 4
  %16 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %channel.i, align 1
  %or.i = or i8 %shl.i, %17
  %channel5.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %channel5.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %or.i, ptr %channel5.i, align 1
  %payload.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 5
  %19 = ptrtoint ptr %payload.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %payload.i, align 4
  %length.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 6
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %length.i, align 2
  %reserved1.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 7
  %22 = ptrtoint ptr %reserved1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %reserved1.i, align 4
  %arrayidx7.i = getelementptr %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx7.i, align 4
  %24 = load i16, ptr %payload.i, align 4
  %conv9.i = zext i16 %24 to i32
  %add.i = add nuw nsw i32 %conv9.i, 16
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry
  %i.014.i.i = phi i32 [ %add4.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry ]
  %checksum.013.i.i = phi i32 [ %add3.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry ]
  %arrayidx.i.i = getelementptr i8, ptr %call.i, i32 %i.014.i.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %26 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %add.i.i = or i32 %i.014.i.i, 1
  %arrayidx1.i.i = getelementptr i8, ptr %call.i, i32 %add.i.i
  %27 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %28 to i32
  %or.i.i = or i32 %shl.i.i, %conv2.i.i
  %add3.i.i = add i32 %or.i.i, %checksum.013.i.i
  %add4.i.i = add nuw nsw i32 %i.014.i.i, 2
  %cmp.i.i = icmp ult i32 %add4.i.i, %add.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %ncsi_cmd_build_header.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

ncsi_cmd_build_header.exit:                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add5.i.i = sub i32 0, %add3.i.i
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 16
  %add12.i = add nuw nsw i32 %conv9.i, 3
  %and.i = and i32 %add12.i, 131068
  %add.ptr13.i = getelementptr i8, ptr %add.ptr.i, i32 %and.i
  %29 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add5.i.i, ptr %add.ptr13.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_cmd_handler_rc(ptr noundef %skb, ptr nocapture noundef readonly %nca) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 48) #6
  %revision.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 1
  %0 = call ptr @memset(ptr %call.i, i32 0, i32 48)
  %1 = ptrtoint ptr %revision.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %revision.i, align 1
  %id.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 2
  %2 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id.i, align 1
  %id1.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %id1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %id1.i, align 1
  %type.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %type.i, align 4
  %type2.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %type2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %type2.i, align 4
  %package.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 3
  %8 = ptrtoint ptr %package.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %package.i, align 2
  %shl.i = shl i8 %9, 5
  %channel.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 4
  %10 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %channel.i, align 1
  %or.i = or i8 %shl.i, %11
  %channel5.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %channel5.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %or.i, ptr %channel5.i, align 1
  %payload.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 5
  %13 = ptrtoint ptr %payload.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %payload.i, align 4
  %length.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 6
  %15 = ptrtoint ptr %length.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %length.i, align 2
  %reserved1.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 7
  %16 = ptrtoint ptr %reserved1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %reserved1.i, align 4
  %arrayidx7.i = getelementptr %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx7.i, align 4
  %18 = load i16, ptr %payload.i, align 4
  %conv9.i = zext i16 %18 to i32
  %add.i = add nuw nsw i32 %conv9.i, 16
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry
  %i.014.i.i = phi i32 [ %add4.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry ]
  %checksum.013.i.i = phi i32 [ %add3.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry ]
  %arrayidx.i.i = getelementptr i8, ptr %call.i, i32 %i.014.i.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %20 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %add.i.i = or i32 %i.014.i.i, 1
  %arrayidx1.i.i = getelementptr i8, ptr %call.i, i32 %add.i.i
  %21 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %22 to i32
  %or.i.i = or i32 %shl.i.i, %conv2.i.i
  %add3.i.i = add i32 %or.i.i, %checksum.013.i.i
  %add4.i.i = add nuw nsw i32 %i.014.i.i, 2
  %cmp.i.i = icmp ult i32 %add4.i.i, %add.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %ncsi_cmd_build_header.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

ncsi_cmd_build_header.exit:                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add5.i.i = sub i32 0, %add3.i.i
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 16
  %add12.i = add nuw nsw i32 %conv9.i, 3
  %and.i = and i32 %add12.i, 131068
  %add.ptr13.i = getelementptr i8, ptr %add.ptr.i, i32 %and.i
  %23 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add5.i.i, ptr %add.ptr13.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_cmd_handler_ae(ptr noundef %skb, ptr nocapture noundef readonly %nca) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 48) #6
  %0 = call ptr @memset(ptr %call.i, i32 0, i32 48)
  %1 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  %mc_id = getelementptr inbounds %struct.ncsi_cmd_ae_pkt, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %mc_id to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %mc_id, align 1
  %arrayidx1 = getelementptr %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 7, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx1, align 4
  %mode = getelementptr inbounds %struct.ncsi_cmd_ae_pkt, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %mode, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %call.i, align 4
  %revision.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %revision.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %revision.i, align 1
  %reserved.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %reserved.i, align 2
  %id.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 2
  %11 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %id.i, align 1
  %id1.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %id1.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %id1.i, align 1
  %type.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %type.i, align 4
  %type2.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %type2.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %type2.i, align 4
  %package.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 3
  %17 = ptrtoint ptr %package.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %package.i, align 2
  %shl.i = shl i8 %18, 5
  %channel.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 4
  %19 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %channel.i, align 1
  %or.i = or i8 %shl.i, %20
  %channel5.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 5
  %21 = ptrtoint ptr %channel5.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %or.i, ptr %channel5.i, align 1
  %payload.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 5
  %22 = ptrtoint ptr %payload.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %payload.i, align 4
  %length.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 6
  %24 = ptrtoint ptr %length.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %length.i, align 2
  %reserved1.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 7
  %25 = ptrtoint ptr %reserved1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %reserved1.i, align 4
  %arrayidx7.i = getelementptr %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 7, i32 1
  %26 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx7.i, align 4
  %27 = load i16, ptr %payload.i, align 4
  %conv9.i = zext i16 %27 to i32
  %add.i = add nuw nsw i32 %conv9.i, 16
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry
  %i.014.i.i = phi i32 [ %add4.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry ]
  %checksum.013.i.i = phi i32 [ %add3.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry ]
  %arrayidx.i.i = getelementptr i8, ptr %call.i, i32 %i.014.i.i
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %29 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %add.i.i = or i32 %i.014.i.i, 1
  %arrayidx1.i.i = getelementptr i8, ptr %call.i, i32 %add.i.i
  %30 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %31 to i32
  %or.i.i = or i32 %shl.i.i, %conv2.i.i
  %add3.i.i = add i32 %or.i.i, %checksum.013.i.i
  %add4.i.i = add nuw nsw i32 %i.014.i.i, 2
  %cmp.i.i = icmp ult i32 %add4.i.i, %add.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %ncsi_cmd_build_header.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

ncsi_cmd_build_header.exit:                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add5.i.i = sub i32 0, %add3.i.i
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 16
  %add12.i = add nuw nsw i32 %conv9.i, 3
  %and.i = and i32 %add12.i, 131068
  %add.ptr13.i = getelementptr i8, ptr %add.ptr.i, i32 %and.i
  %32 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add5.i.i, ptr %add.ptr13.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_cmd_handler_sl(ptr noundef %skb, ptr nocapture noundef readonly %nca) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 48) #6
  %0 = call ptr @memset(ptr %call.i, i32 0, i32 48)
  %1 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %mode = getelementptr %struct.ncsi_cmd_sl_pkt, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %mode, align 4
  %arrayidx1 = getelementptr %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 7, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx1, align 4
  %oem_mode = getelementptr inbounds %struct.ncsi_cmd_sl_pkt, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %oem_mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %oem_mode, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %call.i, align 4
  %revision.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %revision.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %revision.i, align 1
  %reserved.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %reserved.i, align 2
  %id.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 2
  %11 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %id.i, align 1
  %id1.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %id1.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %id1.i, align 1
  %type.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %type.i, align 4
  %type2.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %type2.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %type2.i, align 4
  %package.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 3
  %17 = ptrtoint ptr %package.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %package.i, align 2
  %shl.i = shl i8 %18, 5
  %channel.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 4
  %19 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %channel.i, align 1
  %or.i = or i8 %shl.i, %20
  %channel5.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 5
  %21 = ptrtoint ptr %channel5.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %or.i, ptr %channel5.i, align 1
  %payload.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 5
  %22 = ptrtoint ptr %payload.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %payload.i, align 4
  %length.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 6
  %24 = ptrtoint ptr %length.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %length.i, align 2
  %reserved1.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 7
  %25 = ptrtoint ptr %reserved1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %reserved1.i, align 4
  %arrayidx7.i = getelementptr %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 7, i32 1
  %26 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx7.i, align 4
  %27 = load i16, ptr %payload.i, align 4
  %conv9.i = zext i16 %27 to i32
  %add.i = add nuw nsw i32 %conv9.i, 16
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry
  %i.014.i.i = phi i32 [ %add4.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry ]
  %checksum.013.i.i = phi i32 [ %add3.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry ]
  %arrayidx.i.i = getelementptr i8, ptr %call.i, i32 %i.014.i.i
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %29 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %add.i.i = or i32 %i.014.i.i, 1
  %arrayidx1.i.i = getelementptr i8, ptr %call.i, i32 %add.i.i
  %30 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %31 to i32
  %or.i.i = or i32 %shl.i.i, %conv2.i.i
  %add3.i.i = add i32 %or.i.i, %checksum.013.i.i
  %add4.i.i = add nuw nsw i32 %i.014.i.i, 2
  %cmp.i.i = icmp ult i32 %add4.i.i, %add.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %ncsi_cmd_build_header.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

ncsi_cmd_build_header.exit:                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add5.i.i = sub i32 0, %add3.i.i
  %add12.i = add nuw nsw i32 %conv9.i, 3
  %and.i = and i32 %add12.i, 131068
  %add.ptr13.i = getelementptr i8, ptr %mode, i32 %and.i
  %32 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add5.i.i, ptr %add.ptr13.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_cmd_handler_svf(ptr noundef %skb, ptr nocapture noundef readonly %nca) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 48) #6
  %0 = call ptr @memset(ptr %call.i, i32 0, i32 48)
  %1 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 7
  %arrayidx = getelementptr [8 x i16], ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %vlan = getelementptr inbounds %struct.ncsi_cmd_svf_pkt, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %vlan to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %vlan, align 2
  %arrayidx1 = getelementptr [16 x i8], ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx1, align 2
  %index = getelementptr inbounds %struct.ncsi_cmd_svf_pkt, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %index, align 2
  %arrayidx2 = getelementptr [16 x i8], ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx2, align 1
  %enable = getelementptr inbounds %struct.ncsi_cmd_svf_pkt, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %enable, align 1
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %call.i, align 4
  %revision.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %revision.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %revision.i, align 1
  %reserved.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %reserved.i, align 2
  %id.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 2
  %14 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %id.i, align 1
  %id1.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %id1.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %id1.i, align 1
  %type.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %type.i, align 4
  %type2.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %type2.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %type2.i, align 4
  %package.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 3
  %20 = ptrtoint ptr %package.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %package.i, align 2
  %shl.i = shl i8 %21, 5
  %channel.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 4
  %22 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %channel.i, align 1
  %or.i = or i8 %shl.i, %23
  %channel5.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 5
  %24 = ptrtoint ptr %channel5.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %or.i, ptr %channel5.i, align 1
  %payload.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 5
  %25 = ptrtoint ptr %payload.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %payload.i, align 4
  %length.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 6
  %27 = ptrtoint ptr %length.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %length.i, align 2
  %reserved1.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 7
  %28 = ptrtoint ptr %reserved1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %reserved1.i, align 4
  %arrayidx7.i = getelementptr %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 7, i32 1
  %29 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %arrayidx7.i, align 4
  %30 = load i16, ptr %payload.i, align 4
  %conv9.i = zext i16 %30 to i32
  %add.i = add nuw nsw i32 %conv9.i, 16
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry
  %i.014.i.i = phi i32 [ %add4.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry ]
  %checksum.013.i.i = phi i32 [ %add3.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry ]
  %arrayidx.i.i = getelementptr i8, ptr %call.i, i32 %i.014.i.i
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %32 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %add.i.i = or i32 %i.014.i.i, 1
  %arrayidx1.i.i = getelementptr i8, ptr %call.i, i32 %add.i.i
  %33 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %34 to i32
  %or.i.i = or i32 %shl.i.i, %conv2.i.i
  %add3.i.i = add i32 %or.i.i, %checksum.013.i.i
  %add4.i.i = add nuw nsw i32 %i.014.i.i, 2
  %cmp.i.i = icmp ult i32 %add4.i.i, %add.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %ncsi_cmd_build_header.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

ncsi_cmd_build_header.exit:                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add5.i.i = sub i32 0, %add3.i.i
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 16
  %add12.i = add nuw nsw i32 %conv9.i, 3
  %and.i = and i32 %add12.i, 131068
  %add.ptr13.i = getelementptr i8, ptr %add.ptr.i, i32 %and.i
  %35 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add5.i.i, ptr %add.ptr13.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_cmd_handler_ev(ptr noundef %skb, ptr nocapture noundef readonly %nca) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 48) #6
  %0 = call ptr @memset(ptr %call.i, i32 0, i32 48)
  %1 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 7
  %arrayidx = getelementptr [16 x i8], ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %mode = getelementptr inbounds %struct.ncsi_cmd_ev_pkt, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %mode, align 1
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %call.i, align 4
  %revision.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %revision.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %revision.i, align 1
  %reserved.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %reserved.i, align 2
  %id.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 2
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id.i, align 1
  %id1.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %id1.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %id1.i, align 1
  %type.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type.i, align 4
  %type2.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %type2.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %type2.i, align 4
  %package.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 3
  %14 = ptrtoint ptr %package.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %package.i, align 2
  %shl.i = shl i8 %15, 5
  %channel.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 4
  %16 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %channel.i, align 1
  %or.i = or i8 %shl.i, %17
  %channel5.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %channel5.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %or.i, ptr %channel5.i, align 1
  %payload.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 5
  %19 = ptrtoint ptr %payload.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %payload.i, align 4
  %length.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 6
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %length.i, align 2
  %reserved1.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 7
  %22 = ptrtoint ptr %reserved1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %reserved1.i, align 4
  %arrayidx7.i = getelementptr %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx7.i, align 4
  %24 = load i16, ptr %payload.i, align 4
  %conv9.i = zext i16 %24 to i32
  %add.i = add nuw nsw i32 %conv9.i, 16
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry
  %i.014.i.i = phi i32 [ %add4.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry ]
  %checksum.013.i.i = phi i32 [ %add3.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry ]
  %arrayidx.i.i = getelementptr i8, ptr %call.i, i32 %i.014.i.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %26 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %add.i.i = or i32 %i.014.i.i, 1
  %arrayidx1.i.i = getelementptr i8, ptr %call.i, i32 %add.i.i
  %27 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %28 to i32
  %or.i.i = or i32 %shl.i.i, %conv2.i.i
  %add3.i.i = add i32 %or.i.i, %checksum.013.i.i
  %add4.i.i = add nuw nsw i32 %i.014.i.i, 2
  %cmp.i.i = icmp ult i32 %add4.i.i, %add.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %ncsi_cmd_build_header.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

ncsi_cmd_build_header.exit:                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add5.i.i = sub i32 0, %add3.i.i
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 16
  %add12.i = add nuw nsw i32 %conv9.i, 3
  %and.i = and i32 %add12.i, 131068
  %add.ptr13.i = getelementptr i8, ptr %add.ptr.i, i32 %and.i
  %29 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add5.i.i, ptr %add.ptr13.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_cmd_handler_sma(ptr noundef %skb, ptr nocapture noundef readonly %nca) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 48) #6
  %0 = call ptr @memset(ptr %call.i, i32 0, i32 48)
  %1 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %arrayidx1 = getelementptr %struct.ncsi_cmd_sma_pkt, ptr %call.i, i32 0, i32 1, i32 0
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %arrayidx1, align 1
  %arrayidx.1 = getelementptr [16 x i8], ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.1, align 1
  %arrayidx1.1 = getelementptr %struct.ncsi_cmd_sma_pkt, ptr %call.i, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %arrayidx1.1, align 1
  %arrayidx.2 = getelementptr [16 x i8], ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.2, align 1
  %arrayidx1.2 = getelementptr %struct.ncsi_cmd_sma_pkt, ptr %call.i, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %arrayidx1.2, align 1
  %arrayidx.3 = getelementptr [16 x i8], ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.3, align 1
  %arrayidx1.3 = getelementptr %struct.ncsi_cmd_sma_pkt, ptr %call.i, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx1.3, align 1
  %arrayidx.4 = getelementptr %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 7, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.4, align 1
  %arrayidx1.4 = getelementptr %struct.ncsi_cmd_sma_pkt, ptr %call.i, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx1.4, align 1
  %arrayidx.5 = getelementptr [16 x i8], ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.5, align 1
  %arrayidx1.5 = getelementptr %struct.ncsi_cmd_sma_pkt, ptr %call.i, i32 0, i32 1, i32 5
  %19 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx1.5, align 1
  %arrayidx2 = getelementptr [16 x i8], ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx2, align 2
  %index = getelementptr inbounds %struct.ncsi_cmd_sma_pkt, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %index, align 2
  %arrayidx3 = getelementptr [16 x i8], ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx3, align 1
  %at_e = getelementptr inbounds %struct.ncsi_cmd_sma_pkt, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %at_e to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %at_e, align 1
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %call.i, align 4
  %revision.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 1
  %27 = ptrtoint ptr %revision.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %revision.i, align 1
  %reserved.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 2
  %28 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %reserved.i, align 2
  %id.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 2
  %29 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %id.i, align 1
  %id1.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 3
  %31 = ptrtoint ptr %id1.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %id1.i, align 1
  %type.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %32 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %type.i, align 4
  %type2.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 4
  %34 = ptrtoint ptr %type2.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %type2.i, align 4
  %package.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 3
  %35 = ptrtoint ptr %package.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %package.i, align 2
  %shl.i = shl i8 %36, 5
  %channel.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 4
  %37 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %channel.i, align 1
  %or.i = or i8 %shl.i, %38
  %channel5.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 5
  %39 = ptrtoint ptr %channel5.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %or.i, ptr %channel5.i, align 1
  %payload.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 5
  %40 = ptrtoint ptr %payload.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %payload.i, align 4
  %length.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 6
  %42 = ptrtoint ptr %length.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %length.i, align 2
  %reserved1.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 7
  %43 = ptrtoint ptr %reserved1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %reserved1.i, align 4
  %arrayidx7.i = getelementptr %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 7, i32 1
  %44 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %arrayidx7.i, align 4
  %45 = load i16, ptr %payload.i, align 4
  %conv9.i = zext i16 %45 to i32
  %add.i = add nuw nsw i32 %conv9.i, 16
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry
  %i.014.i.i = phi i32 [ %add4.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry ]
  %checksum.013.i.i = phi i32 [ %add3.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry ]
  %arrayidx.i.i = getelementptr i8, ptr %call.i, i32 %i.014.i.i
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %47 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %add.i.i = or i32 %i.014.i.i, 1
  %arrayidx1.i.i = getelementptr i8, ptr %call.i, i32 %add.i.i
  %48 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %49 to i32
  %or.i.i = or i32 %shl.i.i, %conv2.i.i
  %add3.i.i = add i32 %or.i.i, %checksum.013.i.i
  %add4.i.i = add nuw nsw i32 %i.014.i.i, 2
  %cmp.i.i = icmp ult i32 %add4.i.i, %add.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %ncsi_cmd_build_header.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

ncsi_cmd_build_header.exit:                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add5.i.i = sub i32 0, %add3.i.i
  %add12.i = add nuw nsw i32 %conv9.i, 3
  %and.i = and i32 %add12.i, 131068
  %add.ptr13.i = getelementptr %struct.ncsi_cmd_sma_pkt, ptr %call.i, i32 0, i32 1, i32 %and.i
  %50 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add5.i.i, ptr %add.ptr13.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_cmd_handler_ebf(ptr noundef %skb, ptr nocapture noundef readonly %nca) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 48) #6
  %0 = call ptr @memset(ptr %call.i, i32 0, i32 48)
  %1 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %mode = getelementptr %struct.ncsi_cmd_ebf_pkt, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %mode, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %call.i, align 4
  %revision.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %revision.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %revision.i, align 1
  %reserved.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %reserved.i, align 2
  %id.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 2
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id.i, align 1
  %id1.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %id1.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %id1.i, align 1
  %type.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type.i, align 4
  %type2.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %type2.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %type2.i, align 4
  %package.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 3
  %14 = ptrtoint ptr %package.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %package.i, align 2
  %shl.i = shl i8 %15, 5
  %channel.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 4
  %16 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %channel.i, align 1
  %or.i = or i8 %shl.i, %17
  %channel5.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %channel5.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %or.i, ptr %channel5.i, align 1
  %payload.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 5
  %19 = ptrtoint ptr %payload.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %payload.i, align 4
  %length.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 6
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %length.i, align 2
  %reserved1.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 7
  %22 = ptrtoint ptr %reserved1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %reserved1.i, align 4
  %arrayidx7.i = getelementptr %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx7.i, align 4
  %24 = load i16, ptr %payload.i, align 4
  %conv9.i = zext i16 %24 to i32
  %add.i = add nuw nsw i32 %conv9.i, 16
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry
  %i.014.i.i = phi i32 [ %add4.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry ]
  %checksum.013.i.i = phi i32 [ %add3.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry ]
  %arrayidx.i.i = getelementptr i8, ptr %call.i, i32 %i.014.i.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %26 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %add.i.i = or i32 %i.014.i.i, 1
  %arrayidx1.i.i = getelementptr i8, ptr %call.i, i32 %add.i.i
  %27 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %28 to i32
  %or.i.i = or i32 %shl.i.i, %conv2.i.i
  %add3.i.i = add i32 %or.i.i, %checksum.013.i.i
  %add4.i.i = add nuw nsw i32 %i.014.i.i, 2
  %cmp.i.i = icmp ult i32 %add4.i.i, %add.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %ncsi_cmd_build_header.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

ncsi_cmd_build_header.exit:                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add5.i.i = sub i32 0, %add3.i.i
  %add12.i = add nuw nsw i32 %conv9.i, 3
  %and.i = and i32 %add12.i, 131068
  %add.ptr13.i = getelementptr i8, ptr %mode, i32 %and.i
  %29 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add5.i.i, ptr %add.ptr13.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_cmd_handler_egmf(ptr noundef %skb, ptr nocapture noundef readonly %nca) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 48) #6
  %0 = call ptr @memset(ptr %call.i, i32 0, i32 48)
  %1 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %mode = getelementptr %struct.ncsi_cmd_egmf_pkt, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %mode, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %call.i, align 4
  %revision.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %revision.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %revision.i, align 1
  %reserved.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %reserved.i, align 2
  %id.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 2
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id.i, align 1
  %id1.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %id1.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %id1.i, align 1
  %type.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type.i, align 4
  %type2.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %type2.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %type2.i, align 4
  %package.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 3
  %14 = ptrtoint ptr %package.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %package.i, align 2
  %shl.i = shl i8 %15, 5
  %channel.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 4
  %16 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %channel.i, align 1
  %or.i = or i8 %shl.i, %17
  %channel5.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %channel5.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %or.i, ptr %channel5.i, align 1
  %payload.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 5
  %19 = ptrtoint ptr %payload.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %payload.i, align 4
  %length.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 6
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %length.i, align 2
  %reserved1.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 7
  %22 = ptrtoint ptr %reserved1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %reserved1.i, align 4
  %arrayidx7.i = getelementptr %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx7.i, align 4
  %24 = load i16, ptr %payload.i, align 4
  %conv9.i = zext i16 %24 to i32
  %add.i = add nuw nsw i32 %conv9.i, 16
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry
  %i.014.i.i = phi i32 [ %add4.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry ]
  %checksum.013.i.i = phi i32 [ %add3.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry ]
  %arrayidx.i.i = getelementptr i8, ptr %call.i, i32 %i.014.i.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %26 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %add.i.i = or i32 %i.014.i.i, 1
  %arrayidx1.i.i = getelementptr i8, ptr %call.i, i32 %add.i.i
  %27 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %28 to i32
  %or.i.i = or i32 %shl.i.i, %conv2.i.i
  %add3.i.i = add i32 %or.i.i, %checksum.013.i.i
  %add4.i.i = add nuw nsw i32 %i.014.i.i, 2
  %cmp.i.i = icmp ult i32 %add4.i.i, %add.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %ncsi_cmd_build_header.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

ncsi_cmd_build_header.exit:                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add5.i.i = sub i32 0, %add3.i.i
  %add12.i = add nuw nsw i32 %conv9.i, 3
  %and.i = and i32 %add12.i, 131068
  %add.ptr13.i = getelementptr i8, ptr %mode, i32 %and.i
  %29 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add5.i.i, ptr %add.ptr13.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_cmd_handler_snfc(ptr noundef %skb, ptr nocapture noundef readonly %nca) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 48) #6
  %0 = call ptr @memset(ptr %call.i, i32 0, i32 48)
  %1 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  %mode = getelementptr inbounds %struct.ncsi_cmd_snfc_pkt, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %mode, align 1
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %call.i, align 4
  %revision.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %revision.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %revision.i, align 1
  %reserved.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %reserved.i, align 2
  %id.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 2
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id.i, align 1
  %id1.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %id1.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %id1.i, align 1
  %type.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type.i, align 4
  %type2.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %type2.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %type2.i, align 4
  %package.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 3
  %14 = ptrtoint ptr %package.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %package.i, align 2
  %shl.i = shl i8 %15, 5
  %channel.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 4
  %16 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %channel.i, align 1
  %or.i = or i8 %shl.i, %17
  %channel5.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %channel5.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %or.i, ptr %channel5.i, align 1
  %payload.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 5
  %19 = ptrtoint ptr %payload.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %payload.i, align 4
  %length.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 6
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %length.i, align 2
  %reserved1.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 7
  %22 = ptrtoint ptr %reserved1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %reserved1.i, align 4
  %arrayidx7.i = getelementptr %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx7.i, align 4
  %24 = load i16, ptr %payload.i, align 4
  %conv9.i = zext i16 %24 to i32
  %add.i = add nuw nsw i32 %conv9.i, 16
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry
  %i.014.i.i = phi i32 [ %add4.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry ]
  %checksum.013.i.i = phi i32 [ %add3.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry ]
  %arrayidx.i.i = getelementptr i8, ptr %call.i, i32 %i.014.i.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %26 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %add.i.i = or i32 %i.014.i.i, 1
  %arrayidx1.i.i = getelementptr i8, ptr %call.i, i32 %add.i.i
  %27 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %28 to i32
  %or.i.i = or i32 %shl.i.i, %conv2.i.i
  %add3.i.i = add i32 %or.i.i, %checksum.013.i.i
  %add4.i.i = add nuw nsw i32 %i.014.i.i, 2
  %cmp.i.i = icmp ult i32 %add4.i.i, %add.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %ncsi_cmd_build_header.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

ncsi_cmd_build_header.exit:                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add5.i.i = sub i32 0, %add3.i.i
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 16
  %add12.i = add nuw nsw i32 %conv9.i, 3
  %and.i = and i32 %add12.i, 131068
  %add.ptr13.i = getelementptr i8, ptr %add.ptr.i, i32 %and.i
  %29 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add5.i.i, ptr %add.ptr13.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_cmd_handler_oem(ptr noundef %skb, ptr nocapture noundef readonly %nca) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %payload1 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 5
  %0 = ptrtoint ptr %payload1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %payload1, align 4
  %conv = zext i16 %1 to i32
  %add = add nuw nsw i32 %conv, 3
  %and = and i32 %add, 131068
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %and)
  %cmp = icmp ugt i32 %and, 26
  %phi.bo = add nuw nsw i32 %and, 20
  %spec.select = select i1 %cmp, i32 %phi.bo, i32 46
  %call.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %spec.select) #6
  %2 = call ptr @memset(ptr %call.i, i32 0, i32 %spec.select)
  %mfr_id = getelementptr %struct.ncsi_cmd_oem_pkt, ptr %call.i, i32 0, i32 1
  %data = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 8
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = ptrtoint ptr %payload1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %payload1, align 4
  %conv5 = zext i16 %6 to i32
  %7 = call ptr @memcpy(ptr %mfr_id, ptr %4, i32 %conv5)
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %call.i, align 4
  %revision.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %revision.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %revision.i, align 1
  %reserved.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %reserved.i, align 2
  %id.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 2
  %11 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %id.i, align 1
  %id1.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %id1.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %id1.i, align 1
  %type.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %type.i, align 4
  %type2.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %type2.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %type2.i, align 4
  %package.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 3
  %17 = ptrtoint ptr %package.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %package.i, align 2
  %shl.i = shl i8 %18, 5
  %channel.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 4
  %19 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %channel.i, align 1
  %or.i = or i8 %shl.i, %20
  %channel5.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 5
  %21 = ptrtoint ptr %channel5.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %or.i, ptr %channel5.i, align 1
  %22 = load i16, ptr %payload1, align 4
  %length.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 6
  %23 = ptrtoint ptr %length.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %length.i, align 2
  %reserved1.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 7
  %24 = ptrtoint ptr %reserved1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %reserved1.i, align 4
  %arrayidx7.i = getelementptr %struct.ncsi_pkt_hdr, ptr %call.i, i32 0, i32 7, i32 1
  %25 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %arrayidx7.i, align 4
  %26 = load i16, ptr %payload1, align 4
  %conv9.i = zext i16 %26 to i32
  %add.i = add nuw nsw i32 %conv9.i, 16
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry
  %i.014.i.i = phi i32 [ %add4.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry ]
  %checksum.013.i.i = phi i32 [ %add3.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry ]
  %arrayidx.i.i = getelementptr i8, ptr %call.i, i32 %i.014.i.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %28 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %add.i.i = or i32 %i.014.i.i, 1
  %arrayidx1.i.i = getelementptr i8, ptr %call.i, i32 %add.i.i
  %29 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %30 to i32
  %or.i.i = or i32 %shl.i.i, %conv2.i.i
  %add3.i.i = add i32 %or.i.i, %checksum.013.i.i
  %add4.i.i = add nuw nsw i32 %i.014.i.i, 2
  %cmp.i.i = icmp ult i32 %add4.i.i, %add.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %ncsi_cmd_build_header.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

ncsi_cmd_build_header.exit:                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add5.i.i = sub i32 0, %add3.i.i
  %add12.i = add nuw nsw i32 %conv9.i, 3
  %and.i = and i32 %add12.i, 131068
  %add.ptr13.i = getelementptr i8, ptr %mfr_id, i32 %and.i
  %31 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add5.i.i, ptr %add.ptr13.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ncsi_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ncsi/ncsi-cmd.c", i32 346, i32 7}
!2 = !{ptr @ncsi_cmd_handlers, !3, !"ncsi_cmd_handlers", i1 false, i1 false}
!3 = !{!"../net/ncsi/ncsi-cmd.c", i32 242, i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 2148349983, i64 2148350015, i64 2148350044, i64 2148350078, i64 2148350109, i64 2148350132}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{!"branch_weights", i32 2000, i32 1}
